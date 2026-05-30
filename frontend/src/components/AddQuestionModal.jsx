import { useState } from 'react';
import { supabase } from '../services/supabase';
import { X, Save, Plus, Trash2, HelpCircle } from 'lucide-react';

export default function AddQuestionModal({ isOpen, onClose, onSave, questionToEdit = null, banks = [] }) {
  const [loading, setLoading] = useState(false);
  const [formData, setFormData] = useState(questionToEdit || {
    question_text: '',
    question_type: 'mcq',
    options: ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
    correct_answer: '',
    difficulty: 'medium',
    bank_id: banks[0]?.id || '',
    topic_tag: '',
    explanation: '',
    points: 1
  });

  if (!isOpen) return null;

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    try {
      const dataToSave = { ...formData };
      if (dataToSave.question_type === 'true_false') {
        dataToSave.options = ['True', 'False'];
      } else if (dataToSave.question_type === 'short_answer') {
        dataToSave.options = null;
      }

      let error;
      if (questionToEdit?.id) {
        const { error: err } = await supabase
          .from('questions')
          .update(dataToSave)
          .eq('id', questionToEdit.id);
        error = err;
      } else {
        const { error: err } = await supabase
          .from('questions')
          .insert(dataToSave);
        error = err;
      }

      if (error) throw error;
      onSave();
      onClose();
    } catch (err) {
      alert(err.message);
    } finally {
      setLoading(false);
    }
  };

  const handleOptionChange = (index, value) => {
    const newOptions = [...formData.options];
    newOptions[index] = value;
    setFormData({ ...formData, options: newOptions });
  };

  return (
    <div className="fixed inset-0 z-[2000] bg-navy-900/60 backdrop-blur-sm flex items-center justify-center p-4">
      <div className="bg-white rounded-3xl w-full max-w-2xl max-h-[90vh] overflow-hidden flex flex-col shadow-2xl animate-scaleIn">
        <div className="p-4 md:p-6 border-b border-surface-100 flex items-center justify-between bg-surface-50/50">
          <h2 className="text-xl font-bold text-navy-900 flex items-center gap-2">
            <HelpCircle className="w-6 h-6 text-gold-500" />
            {questionToEdit ? 'Edit Question' : 'Add New Question'}
          </h2>
          <button onClick={onClose} className="p-2 hover:bg-surface-200 rounded-xl transition cursor-pointer">
            <X className="w-5 h-5 text-surface-500" />
          </button>
        </div>

        <form onSubmit={handleSubmit} className="flex-1 overflow-y-auto p-4 md:p-8 space-y-6">
          <div className="grid md:grid-cols-2 gap-6">
            <div className="space-y-1.5">
              <label className="text-xs font-bold text-navy-900 uppercase tracking-wider">Question Bank</label>
              <select 
                value={formData.bank_id} 
                onChange={e => setFormData({...formData, bank_id: e.target.value})}
                className="ncc-input h-11"
                required
              >
                {banks.map(b => <option key={b.id} value={b.id}>{b.title}</option>)}
              </select>
            </div>
            <div className="space-y-1.5">
              <label className="text-xs font-bold text-navy-900 uppercase tracking-wider">Difficulty</label>
              <select 
                value={formData.difficulty} 
                onChange={e => setFormData({...formData, difficulty: e.target.value})}
                className="ncc-input h-11"
              >
                <option value="easy">Easy</option>
                <option value="medium">Medium</option>
                <option value="hard">Hard</option>
              </select>
            </div>
          </div>

          <div className="space-y-1.5">
            <label className="text-xs font-bold text-navy-900 uppercase tracking-wider">Question Text</label>
            <textarea 
              value={formData.question_text} 
              onChange={e => setFormData({...formData, question_text: e.target.value})}
              className="ncc-input min-h-[100px] py-3"
              placeholder="Enter question text..."
              required
            />
          </div>

          <div className="grid md:grid-cols-2 gap-6">
            <div className="space-y-1.5">
              <label className="text-xs font-bold text-navy-900 uppercase tracking-wider">Question Type</label>
              <div className="grid grid-cols-3 gap-2">
                {['mcq', 'true_false', 'short_answer'].map(type => (
                  <button
                    key={type}
                    type="button"
                    onClick={() => setFormData({...formData, question_type: type})}
                    className={`py-2 text-[10px] md:text-xs font-bold rounded-lg border-2 transition cursor-pointer ${
                      formData.question_type === type 
                        ? 'bg-navy-900 border-navy-900 text-white shadow-md' 
                        : 'border-surface-200 text-surface-600 hover:border-navy-200'
                    }`}
                  >
                    {type.replace('_', ' ').toUpperCase()}
                  </button>
                ))}
              </div>
            </div>
            <div className="space-y-1.5">
              <label className="text-xs font-bold text-navy-900 uppercase tracking-wider">Points</label>
              <input 
                type="number" 
                value={formData.points} 
                onChange={e => setFormData({...formData, points: parseInt(e.target.value)})}
                className="ncc-input h-11"
                min="1"
                max="10"
              />
            </div>
          </div>

          {formData.question_type === 'mcq' && (
            <div className="space-y-4 bg-surface-50 p-4 rounded-2xl border border-surface-100">
              <label className="text-xs font-bold text-navy-900 uppercase tracking-wider block">Options</label>
              {formData.options.map((opt, i) => (
                <div key={i} className="flex gap-2">
                  <input 
                    type="text" 
                    value={opt} 
                    onChange={e => handleOptionChange(i, e.target.value)}
                    className="ncc-input h-10 flex-1"
                    placeholder={`Option ${i+1}`}
                    required
                  />
                  <button 
                    type="button"
                    onClick={() => setFormData({...formData, correct_answer: opt})}
                    className={`px-3 rounded-lg text-[10px] font-bold uppercase transition cursor-pointer ${
                      formData.correct_answer === opt && opt !== ''
                        ? 'bg-mgreen-600 text-white' 
                        : 'bg-white border border-surface-200 text-surface-400 hover:border-mgreen-600'
                    }`}
                  >
                    Correct
                  </button>
                </div>
              ))}
            </div>
          )}

          {formData.question_type === 'true_false' && (
            <div className="space-y-1.5">
              <label className="text-xs font-bold text-navy-900 uppercase tracking-wider">Correct Answer</label>
              <div className="flex gap-4">
                {['True', 'False'].map(opt => (
                  <button
                    key={opt}
                    type="button"
                    onClick={() => setFormData({...formData, correct_answer: opt})}
                    className={`flex-1 py-3 rounded-xl border-2 font-bold transition cursor-pointer ${
                      formData.correct_answer === opt 
                        ? 'bg-mgreen-600 border-mgreen-600 text-white' 
                        : 'bg-white border-surface-200 text-surface-600 hover:border-mgreen-200'
                    }`}
                  >
                    {opt}
                  </button>
                ))}
              </div>
            </div>
          )}

          {formData.question_type === 'short_answer' && (
            <div className="space-y-1.5">
              <label className="text-xs font-bold text-navy-900 uppercase tracking-wider">Correct Answer (Keyword)</label>
              <input 
                type="text" 
                value={formData.correct_answer} 
                onChange={e => setFormData({...formData, correct_answer: e.target.value})}
                className="ncc-input h-11"
                placeholder="Enter exact keyword..."
                required
              />
            </div>
          )}

          <div className="space-y-1.5">
            <label className="text-xs font-bold text-navy-900 uppercase tracking-wider">Explanation (Optional)</label>
            <textarea 
              value={formData.explanation} 
              onChange={e => setFormData({...formData, explanation: e.target.value})}
              className="ncc-input min-h-[80px] py-3"
              placeholder="Explain why this is the correct answer..."
            />
          </div>
        </form>

        <div className="p-4 md:p-6 border-t border-surface-100 bg-surface-50/50 flex gap-3">
          <button 
            type="button" 
            onClick={onClose} 
            className="ncc-btn ncc-btn-ghost flex-1 cursor-pointer"
          >
            Cancel
          </button>
          <button 
            onClick={handleSubmit}
            disabled={loading}
            className="ncc-btn ncc-btn-primary flex-1 cursor-pointer"
          >
            {loading ? 'Saving...' : <><Save className="w-4 h-4" /> Save Question</>}
          </button>
        </div>
      </div>
    </div>
  );
}
