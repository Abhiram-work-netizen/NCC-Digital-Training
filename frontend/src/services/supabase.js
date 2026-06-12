import { createClient } from '@supabase/supabase-js';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL || 'http://localhost:54321';
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY || 'public-anon-key';

// Establish connection to real Supabase
const realSupabase = createClient(supabaseUrl, supabaseAnonKey);

// Check if Mock Mode is requested, or if we should fallback because of default local URL
const USE_MOCK = import.meta.env.VITE_USE_MOCK === 'true' || 
                 supabaseUrl === 'http://localhost:54321' || 
                 !import.meta.env.VITE_SUPABASE_URL;

console.log(`[NCC Digital Training] Mode: ${USE_MOCK ? 'OFFLINE MOCK MODE' : 'ONLINE SUPABASE MODE'}`);

// ============================================
// INITIALIZATION
// ============================================
const defaultAuthUsers = [
  { id: 'd0000000-0000-0000-0000-000000000001', email: 'admin@ncc.gov.in', password: 'Admin@123', full_name: 'Platform Administrator', role: 'admin' },
  { id: 'd0000000-0000-0000-0000-000000000002', email: 'instructor@ncc.gov.in', password: 'Instructor@123', full_name: 'Col. Rajveer Singh', role: 'instructor' },
  { id: 'c0000000-0000-0000-0000-000000000003', email: 'cadet@ncc.gov.in', password: 'Cadet@123', full_name: 'Cadet Rohan Sharma', role: 'cadet', wing: 'Army', certificate_level: 'B', ncc_number: 'DL/20/SD/A/100234', level: 2, exp: 1200 }
];

const SYLLABUS_VERSION = 'ncc_mock_v1';
if (USE_MOCK && localStorage.getItem(SYLLABUS_VERSION) !== 'true') {
  localStorage.setItem(SYLLABUS_VERSION, 'true');
  localStorage.setItem('ncc_mock_initialized', 'true');
  
  // Auth & Profiles
  localStorage.setItem('ncc_mock_auth_users', JSON.stringify(defaultAuthUsers));
  localStorage.setItem('ncc_mock_cadet_profiles', JSON.stringify([
    { id: 'c0000000-0000-0000-0000-000000000003', full_name: 'Cadet Rohan Sharma', wing: 'Army', certificate_level: 'B', ncc_number: 'DL/20/SD/A/100234', level: 2, exp: 1200, created_at: new Date().toISOString() }
  ]));
  localStorage.setItem('ncc_mock_instructor_profiles', JSON.stringify([
    { id: 'd0000000-0000-0000-0000-000000000002', full_name: 'Col. Rajveer Singh', rank: 'Colonel', unit: '1st Punjab Bn NCC' }
  ]));
  localStorage.setItem('ncc_mock_admin_profiles', JSON.stringify([
    { id: 'd0000000-0000-0000-0000-000000000001', full_name: 'Platform Administrator' }
  ]));
  
  // Other existing tables
  localStorage.setItem('ncc_mock_courses', JSON.stringify([]));
  localStorage.setItem('ncc_mock_chapters', JSON.stringify([]));
  localStorage.setItem('ncc_mock_announcements', JSON.stringify([]));
  localStorage.setItem('ncc_mock_user_progress', JSON.stringify([]));
  localStorage.setItem('ncc_mock_course_enrollments', JSON.stringify([]));
  localStorage.setItem('ncc_mock_notifications', JSON.stringify([
    { id: 'notif-1', user_id: 'c0000000-0000-0000-0000-000000000003', type: 'system', title: 'Welcome!', content: 'Welcome to NCC Digital Training portal.', link: '/dashboard', is_read: false, created_at: new Date().toISOString() }
  ]));

  // New CSV-driven tables
  localStorage.setItem('ncc_mock_subjects', JSON.stringify([]));
  localStorage.setItem('ncc_mock_modules', JSON.stringify([]));
  localStorage.setItem('ncc_mock_questions', JSON.stringify([]));
  localStorage.setItem('ncc_mock_mock_exams', JSON.stringify([]));
  localStorage.setItem('ncc_mock_exam_attempts', JSON.stringify([]));
  localStorage.setItem('ncc_mock_attempt_questions', JSON.stringify([]));
  localStorage.setItem('ncc_mock_grading_policy', JSON.stringify([]));
  localStorage.setItem('ncc_mock_analytics_config', JSON.stringify([]));
  localStorage.setItem('ncc_mock_anticheat_config', JSON.stringify([]));
  localStorage.setItem('ncc_mock_import_logs', JSON.stringify([]));
}

// Generate standard UUID
function uuidv4() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    var r = Math.random() * 16 | 0, v = c === 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}

// ============================================
// MOCK CLIENT DEFINITION
// ============================================
class MockQueryBuilder {
  constructor(table, client) {
    this.table = table;
    this.client = client;
    this.filters = [];
    this.orderBy = null;
    this.limitVal = null;
    this.action = 'select'; // select, insert, update, upsert, delete
    this.actionData = null;
    this.selectOptions = null;
  }

  select(fields, options = {}) {
    this.action = 'select';
    this.selectOptions = options;
    return this;
  }

  eq(field, value) {
    this.filters.push({ type: 'eq', field, value });
    return this;
  }

  in(field, array) {
    this.filters.push({ type: 'in', field, value: array });
    return this;
  }

  or(queryString) {
    this.filters.push({ type: 'or', value: queryString });
    return this;
  }

  order(field, options = {}) {
    this.orderBy = { field, ascending: options.ascending !== false };
    return this;
  }

  limit(number) {
    this.limitVal = number;
    return this;
  }

  insert(data) {
    this.action = 'insert';
    this.actionData = data;
    return this;
  }

  update(data) {
    this.action = 'update';
    this.actionData = data;
    return this;
  }

  upsert(data, options = {}) {
    this.action = 'upsert';
    this.actionData = data;
    this.upsertOptions = options;
    return this;
  }

  delete() {
    this.action = 'delete';
    return this;
  }

  async execute() {
    return this.client._execute(this);
  }

  then(onfulfilled, onrejected) {
    return this.execute().then(onfulfilled, onrejected);
  }

  async single() {
    const { data, error } = await this.execute();
    if (error) return { data: null, error };
    if (!data || data.length === 0) return { data: null, error: { message: 'Row not found' } };
    return { data: data[0], error: null };
  }

  async maybeSingle() {
    const { data, error } = await this.execute();
    if (error) return { data: null, error };
    if (!data || data.length === 0) return { data: null, error: null };
    return { data: data[0], error: null };
  }
}

class MockChannel {
  constructor(name, client) {
    this.name = name;
    this.client = client;
    this.callbacks = [];
  }

  on(event, filter, callback) {
    this.callbacks.push({ event, filter, callback });
    return this;
  }

  subscribe() {
    this.client._subscribeChannel(this);
    return this;
  }
}

class MockSupabaseClient {
  constructor() {
    this.channels = [];
    this.auth = {
      signUp: async ({ email, password, options = {} }) => {
        const users = JSON.parse(localStorage.getItem('ncc_mock_auth_users') || '[]');
        if (users.find(u => u.email === email)) {
          return { data: null, error: { message: 'User already exists' } };
        }
        const newId = uuidv4();
        const newUser = { id: newId, email, password, role: 'cadet' };
        users.push(newUser);
        localStorage.setItem('ncc_mock_auth_users', JSON.stringify(users));

        // Create profile
        const metadata = options.data || {};
        const profiles = JSON.parse(localStorage.getItem('ncc_mock_cadet_profiles') || '[]');
        const newProfile = {
          id: newId,
          full_name: metadata.full_name || 'Cadet',
          wing: metadata.wing || 'Common',
          certificate_level: metadata.certificate_level || 'A',
          ncc_number: metadata.ncc_number || '',
          level: 1,
          exp: 0,
          created_at: new Date().toISOString()
        };
        profiles.push(newProfile);
        localStorage.setItem('ncc_mock_cadet_profiles', JSON.stringify(profiles));

        if (!options.mockNoSessionPersist) {
          // Set active user session
          localStorage.setItem('ncc_mock_session_user', JSON.stringify(newUser));
          this._triggerAuthChange('SIGNED_IN', newUser);
        }

        return { data: { user: newUser, session: options.mockNoSessionPersist ? null : { user: newUser } }, error: null };
      },

      admin: {
        createUser: async ({ email, password, user_metadata = {} }) => {
          const users = JSON.parse(localStorage.getItem('ncc_mock_auth_users') || '[]');
          if (users.find(u => u.email === email)) {
            return { data: null, error: { message: 'User already exists' } };
          }
          const newId = uuidv4();
          const newUser = { id: newId, email, password, role: user_metadata.role || 'cadet' };
          users.push(newUser);
          localStorage.setItem('ncc_mock_auth_users', JSON.stringify(users));

          const role = user_metadata.role || 'cadet';
          if (role === 'cadet') {
            const profiles = JSON.parse(localStorage.getItem('ncc_mock_cadet_profiles') || '[]');
            profiles.push({
              id: newId,
              full_name: user_metadata.full_name || 'Cadet',
              wing: user_metadata.wing || 'Common',
              certificate_level: user_metadata.certificate_level || 'A',
              ncc_number: user_metadata.ncc_number || '',
              level: 1,
              exp: 0,
              created_at: new Date().toISOString()
            });
            localStorage.setItem('ncc_mock_cadet_profiles', JSON.stringify(profiles));
          } else if (role === 'instructor') {
            const profiles = JSON.parse(localStorage.getItem('ncc_mock_instructor_profiles') || '[]');
            profiles.push({
              id: newId,
              full_name: user_metadata.full_name || 'Instructor',
              created_at: new Date().toISOString()
            });
            localStorage.setItem('ncc_mock_instructor_profiles', JSON.stringify(profiles));
          } else if (role === 'admin') {
            const profiles = JSON.parse(localStorage.getItem('ncc_mock_admin_profiles') || '[]');
            profiles.push({
              id: newId,
              full_name: user_metadata.full_name || 'Admin',
              created_at: new Date().toISOString()
            });
            localStorage.setItem('ncc_mock_admin_profiles', JSON.stringify(profiles));
          }

          return { data: { user: newUser }, error: null };
        }
      },

      signInWithPassword: async ({ email, password }) => {
        const users = JSON.parse(localStorage.getItem('ncc_mock_auth_users') || '[]');
        const user = users.find(u => u.email === email);
        if (!user || user.password !== password) {
          return { data: null, error: { message: 'Invalid email or password' } };
        }

        localStorage.setItem('ncc_mock_session_user', JSON.stringify(user));
        this._triggerAuthChange('SIGNED_IN', user);

        return { data: { user, session: { user } }, error: null };
      },

      signOut: async () => {
        localStorage.removeItem('ncc_mock_session_user');
        this._triggerAuthChange('SIGNED_OUT', null);
        return { error: null };
      },

      getSession: async () => {
        const user = JSON.parse(localStorage.getItem('ncc_mock_session_user') || 'null');
        return { data: { session: user ? { user } : null }, error: null };
      },

      getUser: async (token) => {
        // Fallback simple validation
        const user = JSON.parse(localStorage.getItem('ncc_mock_session_user') || 'null');
        return { data: { user }, error: user ? null : { message: 'Invalid token' } };
      },

      onAuthStateChange: (callback) => {
        const id = uuidv4();
        this.listeners[id] = callback;
        // Trigger initial callback
        const user = JSON.parse(localStorage.getItem('ncc_mock_session_user') || 'null');
        callback(user ? 'SIGNED_IN' : 'SIGNED_OUT', user ? { user } : null);

        return {
          data: {
            subscription: {
              unsubscribe: () => {
                delete this.listeners[id];
              }
            }
          }
        };
      }
    };
    this.listeners = {};
  }

  _triggerAuthChange(event, user) {
    Object.values(this.listeners).forEach(cb => cb(event, user ? { user } : null));
  }

  from(table) {
    return new MockQueryBuilder(table, this);
  }

  channel(name) {
    return new MockChannel(name, this);
  }

  removeChannel(chan) {
    this.channels = this.channels.filter(c => c !== chan);
  }

  _subscribeChannel(chan) {
    this.channels.push(chan);
  }

  _notifyChanges(table, eventType, oldRow, newRow) {
    for (const chan of this.channels) {
      for (const cb of chan.callbacks) {
        if (cb.event === 'postgres_changes') {
          const filterOpts = cb.filter || {};
          if (filterOpts.table === table) {
            let match = true;
            if (filterOpts.filter) {
              const parts = filterOpts.filter.split('=eq.');
              if (parts.length === 2) {
                const field = parts[0];
                const val = parts[1];
                const targetRow = newRow || oldRow;
                if (targetRow && String(targetRow[field]) !== String(val)) {
                  match = false;
                }
              }
            }
            if (match) {
              cb.callback({
                eventType,
                new: newRow,
                old: oldRow
              });
            }
          }
        }
      }
    }
  }

  _getTableData(table) {
    return JSON.parse(localStorage.getItem(`ncc_mock_${table}`) || '[]');
  }

  _saveTableData(table, data) {
    localStorage.setItem(`ncc_mock_${table}`, JSON.stringify(data));
  }

  _execute(builder) {
    let list = this._getTableData(builder.table);

    // Filter evaluations
    for (const filter of builder.filters) {
      if (filter.type === 'eq') {
        list = list.filter(r => String(r[filter.field]) === String(filter.value));
      } else if (filter.type === 'in') {
        const arr = Array.isArray(filter.value) ? filter.value : [];
        list = list.filter(r => arr.map(String).includes(String(r[filter.field])));
      } else if (filter.type === 'or') {
        const conditions = filter.value.split(',');
        list = list.filter(r => {
          return conditions.some(cond => {
            const parts = cond.split('.');
            if (parts.length >= 3 && parts[1] === 'eq') {
              const field = parts[0];
              const value = parts[2].replace(/^["']|["']$/g, '');
              return String(r[field]) === String(value);
            }
            return false;
          });
        });
      }
    }

    // Sorting
    if (builder.orderBy) {
      const field = builder.orderBy.field;
      const asc = builder.orderBy.ascending;
      list.sort((a, b) => {
        if (a[field] < b[field]) return asc ? -1 : 1;
        if (a[field] > b[field]) return asc ? 1 : -1;
        return 0;
      });
    }

    // Limit
    if (builder.limitVal !== null) {
      list = list.slice(0, builder.limitVal);
    }

    // Actions
    if (builder.action === 'select') {
      // Resolve relationship joins for mock queries
      if (builder.table === 'csv_mock_exams') {
        const courses = this._getTableData('courses');
        list = list.map(t => {
          const course = courses.find(c => c.id === t.course_id);
          return {
            ...t,
            courses: course ? {
              id: course.id,
              title: course.title,
              description: course.description,
              target_wing: course.target_wing,
              certificate_level: course.certificate_level
            } : null
          };
        });
      } else if (builder.table === 'course_enrollments') {
        const courses = this._getTableData('courses');
        list = list.map(e => {
          const course = courses.find(c => c.id === e.course_id);
          return {
            ...e,
            courses: course ? {
              id: course.id,
              title: course.title,
              description: course.description,
              target_wing: course.target_wing,
              certificate_level: course.certificate_level
            } : null
          };
        });
      } else if (builder.table === 'csv_questions') {
        const csv_subjects = this._getTableData('csv_subjects');
        list = list.map(q => {
          const subject = csv_subjects.find(s => s.subject_code === q.subject_code);
          return {
            ...q,
            csv_subjects: subject ? {
              subject_name: subject.subject_name
            } : null
          };
        });
      } else if (builder.table === 'csv_modules') {
        const chapters = this._getTableData('chapters');
        list = list.map(m => {
          const modChapters = chapters.filter(c => c.module_id === m.id);
          return {
            ...m,
            chapters: modChapters
          };
        });
      } else if (builder.table === 'csv_exam_attempts') {
        const tests = this._getTableData('csv_mock_exams');
        list = list.map(ta => {
          const test = tests.find(t => t.test_id === ta.test_id);
          return {
            ...ta,
            tests: test ? {
              id: test.test_id,
              title: test.test_name,
              course_id: test.course_id,
              passing_score: test.passing_percent
            } : null
          };
        });
      }

      let count = null;
      if (builder.selectOptions?.count === 'exact') {
        count = list.length;
      }
      if (builder.selectOptions?.head === true) {
        return { data: [], error: null, count };
      }
      return { data: list, error: null, count };
    }

    if (builder.action === 'insert') {
      const fullList = this._getTableData(builder.table);
      const itemsToInsert = Array.isArray(builder.actionData) ? builder.actionData : [builder.actionData];
      const inserted = [];

      for (const item of itemsToInsert) {
        const newItem = { ...item };
        if (!newItem.id) newItem.id = uuidv4();
        if (!newItem.created_at) newItem.created_at = new Date().toISOString();
        fullList.push(newItem);
        inserted.push(newItem);
        this._notifyChanges(builder.table, 'INSERT', null, newItem);
      }

      this._saveTableData(builder.table, fullList);
      return { data: inserted, error: null };
    }

    if (builder.action === 'update') {
      const fullList = this._getTableData(builder.table);
      const updated = [];

      const filteredIds = list.map(r => r.id);
      const updatedList = fullList.map(r => {
        if (filteredIds.includes(r.id)) {
          const oldRow = { ...r };
          const merged = { ...r, ...builder.actionData };
          updated.push(merged);
          this._notifyChanges(builder.table, 'UPDATE', oldRow, merged);
          return merged;
        }
        return r;
      });

      this._saveTableData(builder.table, updatedList);
      return { data: updated, error: null };
    }

    if (builder.action === 'upsert') {
      const fullList = this._getTableData(builder.table);
      const itemsToUpsert = Array.isArray(builder.actionData) ? builder.actionData : [builder.actionData];
      const onConflict = builder.upsertOptions?.onConflict || 'id';
      const conflictKeys = onConflict.split(',');

      const upserted = [];

      for (const item of itemsToUpsert) {
        // Find match based on conflict keys
        const index = fullList.findIndex(existing => {
          return conflictKeys.every(k => String(existing[k.trim()]) === String(item[k.trim()]));
        });

        if (index !== -1) {
          // Update
          const oldRow = { ...fullList[index] };
          fullList[index] = { ...fullList[index], ...item };
          upserted.push(fullList[index]);
          this._notifyChanges(builder.table, 'UPDATE', oldRow, fullList[index]);
        } else {
          // Insert
          const newItem = { ...item };
          if (!newItem.id) newItem.id = uuidv4();
          if (!newItem.created_at) newItem.created_at = new Date().toISOString();
          fullList.push(newItem);
          upserted.push(newItem);
          this._notifyChanges(builder.table, 'INSERT', null, newItem);
        }
      }

      this._saveTableData(builder.table, fullList);
      return { data: upserted, error: null };
    }

    if (builder.action === 'delete') {
      const fullList = this._getTableData(builder.table);
      const filteredIds = list.map(r => r.id);
      const remaining = fullList.filter(r => !filteredIds.includes(r.id));
      const deleted = fullList.filter(r => filteredIds.includes(r.id));

      for (const deletedItem of deleted) {
        this._notifyChanges(builder.table, 'DELETE', deletedItem, null);
      }

      this._saveTableData(builder.table, remaining);
      return { data: deleted, error: null };
    }

    return { data: [], error: null };
  }

  // ============================================
  // DATABASE PROCEDURES (RPCs)
  // ============================================
  async rpc(fn, params = {}) {
    // 1. fn_get_course_chapter_ids
    if (fn === 'fn_get_course_chapter_ids') {
      const courseId = params.p_course_id;
      const csv_modules = this._getTableData('csv_modules').filter(m => m.course_id === courseId);
      const moduleIds = csv_modules.map(m => m.id);
      const chapters = this._getTableData('chapters').filter(c => moduleIds.includes(c.module_id));
      return { data: chapters.map(c => c.id), error: null };
    }

    // 2. fn_start_exam
    if (fn === 'fn_start_exam') {
      const testId = params.p_test_id;
      const tests = this._getTableData('csv_mock_exams');
      const test = tests.find(t => t.test_id === testId);
      if (!test) return { data: null, error: { message: 'Test not found' } };

      const allQuestions = this._getTableData('csv_questions');
      
      const distribution = (test.question_distribution || '').split('|');
      let selected = [];
      
      distribution.forEach(item => {
        if(!item) return;
        const [subjectCode, countStr] = item.split(':');
        const count = parseInt(countStr, 10) || 0;
        let candidates = allQuestions.filter(q => q.subject_code === subjectCode && String(q.active).toUpperCase() === 'TRUE');
        candidates = candidates.sort(() => 0.5 - Math.random());
        selected = selected.concat(candidates.slice(0, count));
      });

      selected = selected.sort(() => 0.5 - Math.random());

      const currentUser = JSON.parse(localStorage.getItem('ncc_mock_session_user') || '{}');
      const attemptId = uuidv4();
      const attempt = {
        id: attemptId,
        test_id: testId,
        user_id: currentUser.id,
        status: 'in_progress',
        started_at: new Date().toISOString(),
        total_questions: selected.length,
        time_spent_seconds: 0,
        tab_switch_count: 0
      };

      const attempts = this._getTableData('csv_exam_attempts');
      attempts.push(attempt);
      this._saveTableData('csv_exam_attempts', attempts);
      
      const attemptQuestionsAll = this._getTableData('csv_attempt_questions');
      selected.forEach(q => {
        attemptQuestionsAll.push({
          id: uuidv4(),
          attempt_id: attemptId,
          question_id: q.question_id,
          question_text: q.question_text,
          option_a: q.option_a,
          option_b: q.option_b,
          option_c: q.option_c,
          option_d: q.option_d,
          correct_answer: q.correct_answer,
          explanation: q.explanation,
          subject_code: q.subject_code,
          user_answer: null,
          is_correct: null
        });
      });
      this._saveTableData('csv_attempt_questions', attemptQuestionsAll);

      return {
        data: {
          attempt_id: attemptId,
          duration_minutes: parseInt(test.time_limit_minutes) || 20,
          test_title: test.test_name,
          csv_questions: selected.map(q => ({
            id: q.question_id,
            question_text: q.question_text,
            options: [q.option_a, q.option_b, q.option_c, q.option_d].filter(Boolean)
          }))
        },
        error: null
      };
    }

    // 3. fn_submit_exam
    if (fn === 'fn_submit_exam') {
      const attemptId = params.p_attempt_id;
      const answers = params.p_answers || {};
      const tabSwitches = params.p_tab_switches || 0;
      const timeSpent = params.p_time_spent || 0;

      const attempts = this._getTableData('csv_exam_attempts');
      const attemptIndex = attempts.findIndex(a => a.id === attemptId);
      if (attemptIndex === -1) return { data: null, error: { message: 'Attempt not found' } };
      const attempt = attempts[attemptIndex];

      const test = this._getTableData('csv_mock_exams').find(t => t.test_id === attempt.test_id);
      
      const attemptQuestionsAll = this._getTableData('csv_attempt_questions');
      const attemptQuestions = attemptQuestionsAll.filter(q => q.attempt_id === attemptId);

      let correct = 0;
      let total = attemptQuestions.length;

      for (const q of attemptQuestions) {
        const uAns = answers[q.question_id];
        let correctText = '';
        if (q.correct_answer === 'A') correctText = q.option_a;
        if (q.correct_answer === 'B') correctText = q.option_b;
        if (q.correct_answer === 'C') correctText = q.option_c;
        if (q.correct_answer === 'D') correctText = q.option_d;
        
        const isCorrect = uAns && ((String(uAns).trim() === String(correctText).trim()) || (String(uAns).trim() === String(q.correct_answer).trim()));
        
        if (isCorrect) correct++;

        q.user_answer = uAns;
        q.is_correct = !!isCorrect;
      }
      
      this._saveTableData('csv_attempt_questions', attemptQuestionsAll);

      const pct = total > 0 ? Math.round((correct / total) * 100) : 0;
      
      const gradingPolicies = this._getTableData('csv_grading_policy');
      let gradeInfo = { grade: 'FAIL', badge: 'none', label: 'Fail', message: 'Below pass mark.', colour_code: '#c62828' };
      for (const gp of gradingPolicies) {
        if (pct >= parseInt(gp.min_percent) && pct <= parseInt(gp.max_percent)) {
          gradeInfo = gp;
          break;
        }
      }

      const expGain = pct * 10; 

      attempt.submitted_at = new Date().toISOString();
      attempt.score = correct; 
      attempt.percentage = pct;
      attempt.total_questions = total;
      attempt.tab_switch_count = tabSwitches;
      attempt.time_spent_seconds = timeSpent;
      const anticheat = this._getTableData('csv_anticheat_config');
      const maxSwitchesSetting = anticheat.find(c => c.setting_key === 'max_tab_switches_before_flag');
      const maxSwitches = maxSwitchesSetting ? parseInt(maxSwitchesSetting.value) : 2;
      attempt.status = tabSwitches >= maxSwitches ? 'flagged' : 'submitted';

      attempts[attemptIndex] = attempt;
      this._saveTableData('csv_exam_attempts', attempts);

      const currentUser = JSON.parse(localStorage.getItem('ncc_mock_session_user') || '{}');
      const profiles = this._getTableData('cadet_profiles');
      const pIndex = profiles.findIndex(p => p.id === currentUser.id);
      let newLevel = 1;

      if (pIndex !== -1) {
        const profile = profiles[pIndex];
        profile.exp = (profile.exp || 0) + expGain;
        newLevel = Math.floor(profile.exp / 1000) + 1;
        if (newLevel > (profile.level || 1)) {
          profile.level = newLevel;
          const notifs = this._getTableData('notifications');
          const levelNotif = {
            id: uuidv4(),
            user_id: currentUser.id,
            type: 'achievement',
            title: 'Level Up! 🎖️',
            content: `Congratulations! You have reached Level ${newLevel}. Keep up the dedication!`,
            link: '/profile',
            is_read: false,
            created_at: new Date().toISOString()
          };
          notifs.push(levelNotif);
          this._saveTableData('notifications', notifs);
          this._notifyChanges('notifications', 'INSERT', null, levelNotif);
        }
        profiles[pIndex] = profile;
        this._saveTableData('cadet_profiles', profiles);
      }

      const notifs = this._getTableData('notifications');
      const notif = {
        id: uuidv4(),
        user_id: currentUser.id,
        type: 'exam',
        title: `Exam Results: ${test ? test.test_name : 'Mock Exam'}`,
        content: `You scored ${pct}% (${correct}/${total}) and earned ${expGain} EXP.`,
        link: `/exam-results/${attemptId}`,
        is_read: false,
        created_at: new Date().toISOString()
      };
      notifs.push(notif);
      this._saveTableData('notifications', notifs);
      this._notifyChanges('notifications', 'INSERT', null, notif);

      return {
        data: {
          score: correct,
          total: total,
          exp_gain: expGain,
          percentage: pct,
          status: attempt.status,
          passed: pct >= (test ? test.passing_percent : 60),
          grade_info: gradeInfo
        },
        error: null
      };
    }

    // 4. fn_get_exam_results
    if (fn === 'fn_get_exam_results') {
      const attemptId = params.p_attempt_id;
      const attempt = this._getTableData('csv_exam_attempts').find(a => a.id === attemptId);
      if (!attempt) return { data: null, error: { message: 'Results not found' } };

      const test = this._getTableData('csv_mock_exams').find(t => t.test_id === attempt.test_id);
      const attemptQuestions = this._getTableData('csv_attempt_questions').filter(q => q.attempt_id === attemptId);
      
      let correct = attemptQuestions.filter(q => q.is_correct).length;
      let total = attempt.total_questions || 1;
      let pct = Math.round((correct / total) * 100);

      const gradingPolicies = this._getTableData('csv_grading_policy');
      let gradeInfo = { grade: 'FAIL', badge: 'none', label: 'Fail', message: 'Below pass mark.', colour_code: '#c62828' };
      for (const gp of gradingPolicies) {
        if (pct >= parseInt(gp.min_percent) && pct <= parseInt(gp.max_percent)) {
          gradeInfo = gp;
          break;
        }
      }

      return {
        data: {
          attempt_id: attempt.id,
          test_title: test ? test.test_name : 'Mock Exam',
          score: correct,
          total_questions: attempt.total_questions || 0,
          passed: pct >= (test ? test.passing_percent : 60),
          time_spent: attempt.time_spent_seconds,
          tab_switches: attempt.tab_switch_count,
          status: attempt.status,
          grading_data: attemptQuestions.map(q => {
             let correctText = '';
             if (q.correct_answer === 'A') correctText = q.option_a;
             if (q.correct_answer === 'B') correctText = q.option_b;
             if (q.correct_answer === 'C') correctText = q.option_c;
             if (q.correct_answer === 'D') correctText = q.option_d;
             return {
                 question_id: q.question_id,
                 question_text: q.question_text,
                 topic_tag: q.subject_code,
                 user_answer: q.user_answer,
                 correct_answer: correctText || q.correct_answer,
                 is_correct: q.is_correct
             }
          }),
          grade_info: gradeInfo
        },
        error: null
      };
    }

    if (fn === 'fn_import_csv_data') {
      const { table, data } = params;
      let existing = this._getTableData(table) || [];
      
      let pk = 'id';
      if (table === 'csv_questions') pk = 'question_id';
      else if (table === 'csv_subjects') pk = 'subject_code';
      else if (table === 'csv_modules') pk = 'module_id';
      else if (table === 'csv_mock_exams') pk = 'test_id';
      else if (table === 'csv_grading_policy') pk = 'grade';
      else if (table === 'csv_analytics_config') pk = 'metric_id';
      else if (table === 'csv_anticheat_config') pk = 'setting_key';

      let imported = 0;
      let updated = 0;
      let skipped = 0;

      data.forEach(row => {
        if (!row[pk]) {
          skipped++;
          return;
        }
        const index = existing.findIndex(r => r[pk] === row[pk]);
        if (index !== -1) {
          existing[index] = { ...existing[index], ...row };
          updated++;
        } else {
          existing.push(row);
          imported++;
        }
      });

      this._saveTableData(table, existing);

      const logs = this._getTableData('csv_import_logs') || [];
      logs.push({
        id: uuidv4(),
        table_name: table,
        imported_count: imported,
        updated_count: updated,
        skipped_count: skipped,
        created_at: new Date().toISOString()
      });
      this._saveTableData('csv_import_logs', logs);

      return { data: { imported, updated, skipped }, error: null };
    }

    // 5. fn_mark_notification_read
    if (fn === 'fn_mark_notification_read') {
      const notifId = params.p_notification_id;
      const notifs = this._getTableData('notifications');
      const idx = notifs.findIndex(n => n.id === notifId);
      if (idx !== -1) {
        const oldNotif = { ...notifs[idx] };
        notifs[idx].is_read = true;
        this._saveTableData('notifications', notifs);
        this._notifyChanges('notifications', 'UPDATE', oldNotif, notifs[idx]);
      }
      return { data: null, error: null };
    }

    return { data: null, error: { message: 'RPC function not supported in mock client' } };
  }
}

class RealCustomAuth {
  constructor(client) {
    this.client = client;
    this.listeners = {};
    const saved = localStorage.getItem('ncc_custom_session');
    this.session = saved ? JSON.parse(saved) : null;
  }

  _trigger(event, session) {
    Object.values(this.listeners).forEach(cb => cb(event, session));
  }

  async signUp({ email, password, options = {} }) {
    const { data: existing } = await this.client.from('cadet_profiles').select('id').eq('email', email).maybeSingle();
    if (existing) return { data: null, error: { message: 'User already exists' } };
    
    // Simple fallback UUID generator if crypto is unavailable
    const newId = (typeof crypto !== 'undefined' && crypto.randomUUID) ? crypto.randomUUID() : 'id-' + Date.now();
    const metadata = options.data || {};
    
    const { error } = await this.client.from('cadet_profiles').insert([{
      id: newId,
      email,
      password,
      full_name: metadata.full_name || 'Cadet',
      wing: metadata.wing || 'Common',
      certificate_level: metadata.certificate_level || 'A',
      ncc_number: metadata.ncc_number || ''
    }]);

    if (error) return { data: null, error };
    
    const user = { id: newId, email, role: 'cadet' };
    const session = { user };
    localStorage.setItem('ncc_custom_session', JSON.stringify(session));
    this.session = session;
    this._trigger('SIGNED_IN', session);
    
    return { data: { user, session }, error: null };
  }

  async signInWithPassword({ email, password }) {
    let { data: user, error } = await this.client.from('cadet_profiles').select('*').eq('email', email).eq('password', password).maybeSingle();
    
    if (user) {
      user.role = 'cadet';
    } else {
      const res = await this.client.from('instructor_profiles').select('*').eq('email', email).eq('password', password).maybeSingle();
      if (res.data) {
        user = res.data;
        user.role = 'instructor';
      }
    }
    
    if (!user) {
      const res = await this.client.from('admin_profiles').select('*').eq('email', email).eq('password', password).maybeSingle();
      if (res.data) {
        user = res.data;
        user.role = 'admin';
      }
    }

    if (!user) {
      return { data: null, error: { message: 'Invalid login credentials' } };
    }

    const session = { user };
    localStorage.setItem('ncc_custom_session', JSON.stringify(session));
    this.session = session;
    this._trigger('SIGNED_IN', session);
    
    return { data: { user, session }, error: null };
  }

  async signOut() {
    localStorage.removeItem('ncc_custom_session');
    this.session = null;
    this._trigger('SIGNED_OUT', null);
    return { error: null };
  }

  async getSession() {
    return { data: { session: this.session }, error: null };
  }
  
  async getUser() {
    return { data: { user: this.session?.user || null }, error: null };
  }

  onAuthStateChange(callback) {
    const id = Date.now().toString();
    this.listeners[id] = callback;
    callback(this.session ? 'SIGNED_IN' : 'SIGNED_OUT', this.session);
    return { data: { subscription: { unsubscribe: () => { delete this.listeners[id]; } } } };
  }

  // Admin override for UserModal
  get admin() {
    return {
      createUser: async ({ email, password, user_metadata = {} }) => {
        const newId = (typeof crypto !== 'undefined' && crypto.randomUUID) ? crypto.randomUUID() : 'id-' + Date.now();
        const table = user_metadata.role === 'admin' ? 'admin_profiles' : user_metadata.role === 'instructor' ? 'instructor_profiles' : 'cadet_profiles';
        
        const { error } = await this.client.from(table).insert([{
          id: newId,
          email,
          password,
          full_name: user_metadata.full_name || 'User',
          wing: user_metadata.wing,
          certificate_level: user_metadata.certificate_level,
          ncc_number: user_metadata.ncc_number
        }]);

        if (error) return { data: null, error };
        return { data: { user: { id: newId, email, role: user_metadata.role || 'cadet' } }, error: null };
      }
    };
  }
}

const customRealAuth = new RealCustomAuth(realSupabase);
const customRealSupabase = new Proxy(realSupabase, {
  get(target, prop) {
    if (prop === 'auth') return customRealAuth;
    return target[prop];
  }
});

const mockSupabase = new MockSupabaseClient();

export const supabase = USE_MOCK ? mockSupabase : customRealSupabase;

export const adminAuthClient = USE_MOCK ? mockSupabase : customRealSupabase;
