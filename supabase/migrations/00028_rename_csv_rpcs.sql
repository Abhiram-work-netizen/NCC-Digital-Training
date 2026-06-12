-- 00028_rename_csv_rpcs.sql
-- Renames the CSV exam RPCs to prevent naming conflicts with legacy functions
-- This solves the "Could not choose the best candidate function" error in PostgREST

-- Drop the new conflicting functions (from 00024)
DROP FUNCTION IF EXISTS public.fn_start_exam(INTEGER);
DROP FUNCTION IF EXISTS public.fn_submit_exam(UUID, JSONB, INTEGER, INTEGER);

-- Recreate them with unique names specific to the CSV engine

CREATE OR REPLACE FUNCTION public.fn_start_csv_exam(p_test_id INTEGER)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
    v_attempt_id UUID;
    v_duration INTEGER;
    v_questions JSONB;
BEGIN
    -- 1. Get test duration
    SELECT time_limit_minutes INTO v_duration
    FROM csv_mock_exams
    WHERE test_id = p_test_id AND is_active = TRUE;

    IF v_duration IS NULL THEN
        RAISE EXCEPTION 'Test not found or inactive';
    END IF;

    -- 2. Create attempt
    INSERT INTO csv_exam_attempts (user_id, test_id, status)
    VALUES (auth.uid(), p_test_id, 'in_progress')
    RETURNING id INTO v_attempt_id;

    -- 3. Randomly select questions based on distribution (mock logic)
    -- For this beta version, we just pull ALL questions for the subjects
    -- In production, this would parse `question_distribution` and pick N random questions per subject
    WITH SelectedQuestions AS (
        SELECT q.question_id, q.question_text, q.options, q.subject_code, q.difficulty
        FROM csv_questions q
        JOIN csv_mock_exams m ON m.test_id = p_test_id
        WHERE m.question_distribution LIKE '%' || q.subject_code || '%'
        AND q.active = TRUE
        -- LIMIT logic would go here
    )
    SELECT jsonb_agg(
        jsonb_build_object(
            'id', question_id,
            'question_text', question_text,
            'options', options,
            'subject_code', subject_code,
            'difficulty', difficulty
        )
    ) INTO v_questions
    FROM SelectedQuestions;

    -- 4. Save attempt questions
    INSERT INTO csv_attempt_questions (attempt_id, question_id, subject_code)
    SELECT v_attempt_id, q->>'id', q->>'subject_code'
    FROM jsonb_array_elements(v_questions) q;

    -- 5. Return payload
    RETURN jsonb_build_object(
        'attempt_id', v_attempt_id,
        'duration_minutes', v_duration,
        'csv_questions', v_questions
    );
END;
$$;


CREATE OR REPLACE FUNCTION public.fn_submit_csv_exam(
    p_attempt_id UUID,
    p_answers JSONB, -- Format: {"question_id": "selected_option"}
    p_tab_switches INTEGER DEFAULT 0,
    p_time_spent INTEGER DEFAULT 0
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
    v_test_id INTEGER;
    v_total_q INTEGER := 0;
    v_correct_q INTEGER := 0;
    v_score INTEGER := 0;
    v_percentage INTEGER := 0;
    v_status VARCHAR := 'submitted';
    v_record RECORD;
BEGIN
    -- Validate attempt
    SELECT test_id INTO v_test_id
    FROM csv_exam_attempts
    WHERE id = p_attempt_id AND user_id = auth.uid() AND status = 'in_progress';

    IF v_test_id IS NULL THEN
        RAISE EXCEPTION 'Invalid or already submitted attempt';
    END IF;

    -- Grade answers
    FOR v_record IN 
        SELECT aq.question_id, q.correct_answer
        FROM csv_attempt_questions aq
        JOIN csv_questions q ON q.question_id = aq.question_id
        WHERE aq.attempt_id = p_attempt_id
    LOOP
        v_total_q := v_total_q + 1;
        
        -- Check if answer is correct
        IF p_answers->>v_record.question_id = v_record.correct_answer THEN
            v_correct_q := v_correct_q + 1;
            
            -- Save individual correct answer
            UPDATE csv_attempt_questions
            SET selected_answer = p_answers->>v_record.question_id,
                is_correct = TRUE,
                score_awarded = 1
            WHERE attempt_id = p_attempt_id AND question_id = v_record.question_id;
        ELSE
            -- Save incorrect answer
            UPDATE csv_attempt_questions
            SET selected_answer = p_answers->>v_record.question_id,
                is_correct = FALSE,
                score_awarded = 0
            WHERE attempt_id = p_attempt_id AND question_id = v_record.question_id;
        END IF;
    END LOOP;

    v_score := v_correct_q;
    IF v_total_q > 0 THEN
        v_percentage := (v_correct_q * 100) / v_total_q;
    END IF;

    IF p_tab_switches >= 5 THEN
        v_status := 'flagged';
    END IF;

    -- Finalize attempt
    UPDATE csv_exam_attempts
    SET status = v_status,
        score = v_score,
        total_questions = v_total_q,
        percentage = v_percentage,
        time_taken_seconds = p_time_spent,
        tab_switches = p_tab_switches,
        submitted_at = now()
    WHERE id = p_attempt_id;

    RETURN jsonb_build_object(
        'status', v_status,
        'score', v_score,
        'total_questions', v_total_q,
        'percentage', v_percentage,
        'total_correct', v_correct_q
    );
END;
$$;
