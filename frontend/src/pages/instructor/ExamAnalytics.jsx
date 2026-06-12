import { useState, useEffect } from 'react';
import { supabase } from '../../services/supabase';
import { BarChart3, Users, ClipboardCheck, TrendingUp, TrendingDown } from 'lucide-react';

export default function ExamAnalytics() {
  const [loading, setLoading] = useState(true);
  const [exams, setExams] = useState([]);
  const [stats, setStats] = useState({ total: 0, avgScore: 0, passed: 0, flagged: 0 });

  useEffect(() => {
    const load = async () => {
      const { data: attempts } = await supabase.from('csv_exam_attempts')
        .select('percentage, status, submitted_at, csv_mock_exams(test_name, certificate_level, wing)')
        .in('status', ['submitted', 'flagged'])
        .order('submitted_at', { ascending: false })
        .limit(50);

      const all = attempts || [];
      const avg = all.length ? Math.round(all.reduce((s, a) => s + (a.percentage || 0), 0) / all.length) : 0;
      const passed = all.filter(a => (a.percentage || 0) >= 50).length;
      const flagged = all.filter(a => a.status === 'flagged').length;

      setStats({ total: all.length, avgScore: avg, passed, flagged });
      setExams(all);
      setLoading(false);
    };
    load();
  }, []);

  if (loading) return (
    <div className="flex items-center justify-center min-h-[60vh]">
      <div className="w-10 h-10 border-3 border-gold-500/30 border-t-gold-500 rounded-full animate-spin" />
    </div>
  );

  return (
    <div className="max-w-7xl mx-auto space-y-4 md:space-y-6 animate-fadeIn">
      <div>
        <h1 className="text-xl md:text-2xl font-bold text-navy-900 flex items-center gap-2">
          <BarChart3 className="w-6 h-6 md:w-7 md:h-7 text-gold-500" /> Exam Analytics
        </h1>
        <p className="text-surface-700 text-sm">Performance overview across all mock examinations</p>
      </div>

      <div className="grid grid-cols-2 lg:grid-cols-4 gap-3 md:gap-4">
        {[
          { label: 'Total Attempts', value: stats.total, icon: ClipboardCheck, color: 'text-navy-500', bg: 'bg-navy-500/10' },
          { label: 'Average Score', value: stats.avgScore + '%', icon: BarChart3, color: 'text-gold-500', bg: 'bg-gold-500/10' },
          { label: 'Passed', value: stats.passed, icon: TrendingUp, color: 'text-mgreen-600', bg: 'bg-mgreen-600/10' },
          { label: 'Flagged', value: stats.flagged, icon: TrendingDown, color: 'text-danger', bg: 'bg-danger-bg' },
        ].map((s, i) => (
          <div key={i} className="ncc-stat-card">
            <div className={`w-8 h-8 md:w-10 md:h-10 rounded-xl ${s.bg} flex items-center justify-center mb-2 md:mb-3`}>
              <s.icon className={`w-4 h-4 md:w-5 md:h-5 ${s.color}`} />
            </div>
            <p className="text-xl md:text-2xl font-bold text-navy-900">{s.value}</p>
            <p className="text-xs md:text-sm text-surface-700">{s.label}</p>
          </div>
        ))}
      </div>

      {/* Recent Attempts Table */}
      <div className="ncc-glass-card overflow-hidden">
        <div className="p-4 border-b border-surface-100">
          <h2 className="font-bold text-navy-900 text-sm md:text-base">Recent Exam Attempts</h2>
        </div>
        {/* Desktop */}
        <div className="hidden md:block overflow-x-auto">
          <table className="w-full">
            <thead>
              <tr className="bg-surface-50 text-left text-xs font-bold text-surface-700 uppercase tracking-wider">
                <th className="p-4">Exam</th>
                <th className="p-4">Certificate</th>
                <th className="p-4">Score</th>
                <th className="p-4">Status</th>
                <th className="p-4">Date</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-surface-100">
              {exams.map((a, i) => (
                <tr key={i} className="hover:bg-surface-50 transition">
                  <td className="p-4 font-medium text-navy-900 text-sm">{a.csv_mock_exams?.test_name || 'Unknown'}</td>
                  <td className="p-4"><span className="ncc-badge bg-navy-900/10 text-navy-900">{a.csv_mock_exams?.certificate_level}</span></td>
                  <td className="p-4">
                    <span className={`font-bold text-sm ${(a.percentage || 0) >= 50 ? 'text-mgreen-600' : 'text-danger'}`}>{a.percentage || 0}%</span>
                  </td>
                  <td className="p-4">
                    <span className={`ncc-badge text-[10px] ${a.status === 'flagged' ? 'bg-danger/10 text-danger' : 'bg-mgreen-600/10 text-mgreen-600'}`}>
                      {a.status === 'flagged' ? '🚩 Flagged' : '✅ Submitted'}
                    </span>
                  </td>
                  <td className="p-4 text-sm text-surface-400">{a.submitted_at ? new Date(a.submitted_at).toLocaleDateString() : '—'}</td>
                </tr>
              ))}
              {exams.length === 0 && (
                <tr><td colSpan={5} className="p-8 text-center text-surface-400">No exam attempts found.</td></tr>
              )}
            </tbody>
          </table>
        </div>
        {/* Mobile */}
        <div className="md:hidden divide-y divide-surface-100">
          {exams.map((a, i) => (
            <div key={i} className="p-4 space-y-1">
              <div className="flex items-center justify-between">
                <h3 className="font-bold text-navy-900 text-sm">{a.csv_mock_exams?.test_name || 'Unknown'}</h3>
                <span className={`font-bold text-sm ${(a.percentage || 0) >= 50 ? 'text-mgreen-600' : 'text-danger'}`}>{a.percentage || 0}%</span>
              </div>
              <div className="flex gap-2 text-xs">
                <span className={`ncc-badge text-[10px] ${a.status === 'flagged' ? 'bg-danger/10 text-danger' : 'bg-mgreen-600/10 text-mgreen-600'}`}>
                  {a.status === 'flagged' ? 'Flagged' : 'Submitted'}
                </span>
                <span className="text-surface-400">{a.submitted_at ? new Date(a.submitted_at).toLocaleDateString() : ''}</span>
              </div>
            </div>
          ))}
          {exams.length === 0 && (
            <div className="p-8 text-center text-surface-400">No exam attempts found.</div>
          )}
        </div>
      </div>
    </div>
  );
}
