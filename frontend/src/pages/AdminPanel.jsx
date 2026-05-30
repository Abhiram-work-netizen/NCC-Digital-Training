import { useState, useEffect } from 'react';
import { supabase } from '../services/supabase';
import { Shield, Users, BookOpen, Activity, AlertTriangle, Search, Trash2, UserPlus } from 'lucide-react';

export default function AdminPanel() {
  const [search, setSearch] = useState('');
  const [users, setUsers] = useState([]);
  const [activity, setActivity] = useState([]);
  const [stats, setStats] = useState({ users: 0, courses: 0, tests: 0, flagged: 0 });
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const load = async () => {
      // Get all cadets
      const { data: cadets } = await supabase.from('cadet_profiles').select('id, full_name, wing, certificate_level, ncc_number');
      // Get instructors
      const { data: instructors } = await supabase.from('instructor_profiles').select('id, full_name, department');
      // Get admins
      const { data: admins } = await supabase.from('admin_profiles').select('id, full_name');

      const allUsers = [
        ...(cadets || []).map(c => ({ ...c, role: 'cadet', status: 'active' })),
        ...(instructors || []).map(i => ({ ...i, role: 'instructor', wing: 'Common', status: 'active' })),
        ...(admins || []).map(a => ({ ...a, role: 'admin', wing: 'Common', status: 'active' })),
      ];
      setUsers(allUsers);

      // Courses count
      const { count: courseCount } = await supabase.from('courses').select('id', { count: 'exact', head: true });
      // Today's tests
      const { count: testCount } = await supabase.from('test_attempts').select('id', { count: 'exact', head: true });
      // Flagged
      const { count: flaggedCount } = await supabase.from('test_attempts')
        .select('id', { count: 'exact', head: true }).eq('status', 'flagged');

      setStats({
        users: allUsers.length,
        courses: courseCount || 0,
        tests: testCount || 0,
        flagged: flaggedCount || 0
      });

      // Recent activity from test attempts
      const { data: recentAttempts } = await supabase.from('test_attempts')
        .select('score, status, submitted_at, tests(title)')
        .order('submitted_at', { ascending: false }).limit(5);
      setActivity((recentAttempts || []).map(a => ({
        text: `${a.status === 'flagged' ? '🚩 Flagged' : '✅'} ${a.tests?.title || 'Test'} — Score: ${a.score || 0}%`,
        time: a.submitted_at ? new Date(a.submitted_at).toLocaleString() : '',
        type: a.status === 'flagged' ? 'warning' : 'success'
      })));

      setLoading(false);
    };
    load();
  }, []);

  const filtered = users.filter(u => (u.full_name || '').toLowerCase().includes(search.toLowerCase()));

  if (loading) return (
    <div className="flex items-center justify-center min-h-[60vh]">
      <div className="w-10 h-10 border-3 border-gold-500/30 border-t-gold-500 rounded-full animate-spin" />
    </div>
  );

  return (
    <div className="max-w-7xl mx-auto space-y-4 md:space-y-6 animate-fadeIn">
      <div>
        <h1 className="text-xl md:text-2xl font-bold text-navy-900 flex items-center gap-2">
          <Shield className="w-6 h-6 md:w-7 md:h-7 text-gold-500" /> Admin Panel
        </h1>
        <p className="text-surface-700 text-sm">Platform management and monitoring</p>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-2 lg:grid-cols-4 gap-3 md:gap-4">
        {[
          { label: 'Total Users', value: stats.users, icon: Users, color: 'text-navy-500', bg: 'bg-navy-500/10' },
          { label: 'Courses', value: stats.courses, icon: BookOpen, color: 'text-mgreen-600', bg: 'bg-mgreen-600/10' },
          { label: 'Attempts', value: stats.tests, icon: Activity, color: 'text-gold-500', bg: 'bg-gold-500/10' },
          { label: 'Flagged', value: stats.flagged, icon: AlertTriangle, color: 'text-danger', bg: 'bg-danger-bg' },
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

      <div className="grid lg:grid-cols-3 gap-4 md:gap-6">
        {/* User table */}
        <div className="lg:col-span-2 ncc-glass-card overflow-hidden">
          <div className="p-3 md:p-4 border-b border-surface-100 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3">
            <h2 className="font-bold text-navy-900 text-sm md:text-base">User Management</h2>
            <div className="relative w-full sm:w-auto">
              <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-surface-300" />
              <input type="text" placeholder="Search..." value={search} onChange={e => setSearch(e.target.value)} className="ncc-input ncc-input-icon py-1.5 text-sm" />
            </div>
          </div>
          <div className="overflow-x-auto">
            <table className="w-full min-w-[420px]">
              <thead>
                <tr className="bg-surface-50 text-left text-xs font-bold text-surface-700 uppercase tracking-wider">
                  <th className="p-2.5 md:p-3">Name</th>
                  <th className="p-2.5 md:p-3">Role</th>
                  <th className="p-2.5 md:p-3">Wing</th>
                  <th className="p-2.5 md:p-3">Status</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-surface-100">
                {filtered.map((u, i) => (
                  <tr key={i} className="hover:bg-surface-50 transition">
                    <td className="p-2.5 md:p-3 font-medium text-navy-900 text-sm">{u.full_name || 'N/A'}</td>
                    <td className="p-2.5 md:p-3">
                      <span className={`ncc-badge ${u.role === 'admin' ? 'bg-navy-900/10 text-navy-900' : u.role === 'instructor' ? 'bg-gold-500/10 text-gold-600' : 'bg-surface-100 text-surface-700'}`}>{u.role}</span>
                    </td>
                    <td className="p-2.5 md:p-3 text-sm">{u.wing || '—'}</td>
                    <td className="p-2.5 md:p-3">
                      <span className="inline-flex items-center gap-1 text-xs font-medium text-mgreen-600">
                        <span className="w-1.5 h-1.5 rounded-full bg-mgreen-600" /> active
                      </span>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>

        {/* Activity */}
        <div className="ncc-glass-card p-4 md:p-5">
          <h2 className="font-bold text-navy-900 mb-3 md:mb-4 flex items-center gap-2 text-sm md:text-base"><Activity className="w-5 h-5 text-gold-500" /> Recent Activity</h2>
          {activity.length === 0 ? (
            <p className="text-sm text-surface-700">No recent activity.</p>
          ) : (
            <div className="space-y-4">
              {activity.map((act, i) => (
                <div key={i} className="flex items-start gap-3">
                  <span className={`w-2 h-2 rounded-full mt-2 flex-shrink-0 ${act.type === 'warning' ? 'bg-warning' : 'bg-mgreen-600'}`} />
                  <div>
                    <p className="text-sm text-navy-900">{act.text}</p>
                    <p className="text-xs text-surface-300 mt-0.5">{act.time}</p>
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
