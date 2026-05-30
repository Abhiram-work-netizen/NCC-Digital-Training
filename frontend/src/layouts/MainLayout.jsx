import React, { useState, useEffect } from 'react';
import { Outlet, Link, useLocation } from 'react-router-dom';
import { useAuth } from '../hooks/AuthContext';
import {
  LayoutDashboard, BookOpen, ClipboardCheck, BarChart3, User,
  GraduationCap, Shield, LogOut, Menu, X, Bell, ChevronDown
} from 'lucide-react';
import nccLogo from '../assets/ncc-seeklogo.png';
import NotificationPanel from '../components/NotificationPanel';
import { supabase } from '../services/supabase';

const NAV_ITEMS = [
  { path: '/dashboard', icon: LayoutDashboard, label: 'Dashboard' },
  { path: '/courses', icon: BookOpen, label: 'My Courses' },
  { path: '/practice-tests', icon: ClipboardCheck, label: 'Practice Tests' },
  { path: '/performance', icon: BarChart3, label: 'Performance' },
  { path: '/profile', icon: User, label: 'Profile' },
];

const INSTRUCTOR_ITEMS = [
  { path: '/instructor', icon: GraduationCap, label: 'Instructor Panel' },
];

const ADMIN_ITEMS = [
  { path: '/admin', icon: Shield, label: 'Admin Panel' },
];

// Bottom nav shows max 5 items (the core 5)
const BOTTOM_NAV_ITEMS = [
  { path: '/dashboard', icon: LayoutDashboard, label: 'Home' },
  { path: '/courses', icon: BookOpen, label: 'Courses' },
  { path: '/practice-tests', icon: ClipboardCheck, label: 'Tests' },
  { path: '/performance', icon: BarChart3, label: 'Stats' },
  { path: '/profile', icon: User, label: 'Profile' },
];

const wingColors = {
  'Army': { bg: 'bg-wing-army-bg', text: 'text-wing-army', border: 'border-wing-army' },
  'Navy': { bg: 'bg-wing-navy-bg', text: 'text-wing-navy', border: 'border-wing-navy' },
  'Air Force': { bg: 'bg-wing-airforce-bg', text: 'text-wing-airforce', border: 'border-wing-airforce' },
};

const MainLayout = () => {
  const { user, profile, role, signOut, fetchProfile } = useAuth();
  const location = useLocation();
  const [sidebarOpen, setSidebarOpen] = useState(false);
  const [isNotificationsOpen, setIsNotificationsOpen] = useState(false);
  const [unreadCount, setUnreadCount] = useState(0);

  useEffect(() => {
    if (user) {
      fetchUnreadCount();
      
      // Realtime subscription for Notifications
      const notifChannel = supabase
        .channel('unread_notifications')
        .on('postgres_changes', { 
          event: '*', 
          schema: 'public', 
          table: 'notifications', 
          filter: `user_id=eq.${user.id}` 
        }, () => {
          fetchUnreadCount();
        })
        .subscribe();

      // Realtime subscription for Profile (EXP/Level updates)
      const profileChannel = supabase
        .channel('profile_updates')
        .on('postgres_changes', {
          event: 'UPDATE',
          schema: 'public',
          table: 'cadet_profiles',
          filter: `id=eq.${user.id}`
        }, () => {
          fetchProfile(user.id);
        })
        .subscribe();

      return () => {
        supabase.removeChannel(notifChannel);
        supabase.removeChannel(profileChannel);
      };
    }
  }, [user]);

  const fetchUnreadCount = async () => {
    const { count } = await supabase
      .from('notifications')
      .select('*', { count: 'exact', head: true })
      .eq('user_id', user.id)
      .eq('is_read', false);
    setUnreadCount(count || 0);
  };

  const items = [
    ...NAV_ITEMS,
    ...(role === 'instructor' || role === 'admin' ? INSTRUCTOR_ITEMS : []),
    ...(role === 'admin' ? ADMIN_ITEMS : []),
  ];

  const wing = profile?.wing || 'Common';
  const wc = wingColors[wing] || { bg: 'bg-gold-200', text: 'text-gold-600', border: 'border-gold-500' };

  return (
    <div className="flex h-screen overflow-hidden bg-surface-50">
      {/* Mobile overlay */}
      {sidebarOpen && (
        <div className="ncc-sidebar-overlay md:hidden" onClick={() => setSidebarOpen(false)} />
      )}


      {/* Sidebar — hidden on mobile, shown on desktop */}
      <aside className={`ncc-sidebar w-[270px] flex flex-col h-full flex-shrink-0 z-[70] ${sidebarOpen ? 'open' : ''}`}>
        <div className="p-5 border-b border-white/5">
          <div className="flex items-center gap-3">
            <img src={nccLogo} alt="NCC" className="w-8 h-8 object-contain drop-shadow-md" />
            <div>
              <h1 className="text-white font-bold text-[15px] tracking-tight leading-tight">NCC Digital</h1>
              <p className="text-[11px] text-gold-400 font-medium tracking-wider uppercase">Training Platform</p>
            </div>
          </div>
        </div>

        <nav className="flex-1 overflow-y-auto p-3 space-y-1">
          <p className="text-[10px] font-bold text-navy-400 uppercase tracking-[0.15em] px-3 mb-2 mt-2">Main Menu</p>
          {items.map((item) => {
            const isActive = location.pathname === item.path ||
              (item.path !== '/' && location.pathname.startsWith(item.path));
            const Icon = item.icon;
            return (
              <Link
                key={item.path}
                to={item.path}
                className={`ncc-sidebar-link ${isActive ? 'active' : ''}`}
                onClick={() => setSidebarOpen(false)}
              >
                <Icon className="w-[18px] h-[18px]" />
                <span>{item.label}</span>
              </Link>
            );
          })}
        </nav>

        <div className="p-4 border-t border-white/5 mt-auto">
          <Link 
            to="/profile"
            onClick={() => setSidebarOpen(false)}
            className="flex items-center gap-3 p-3 rounded-xl hover:bg-white/10 transition-all group mb-3"
          >
            <div className="w-10 h-10 rounded-full bg-gold-500/20 border border-gold-500/30 flex items-center justify-center text-gold-500 font-bold text-lg">
              {profile?.full_name?.charAt(0) || user?.email?.charAt(0)?.toUpperCase() || 'C'}
            </div>
            <div className="flex-1 min-w-0">
              <p className="text-sm font-bold text-white truncate">{profile?.full_name || 'Cadet'}</p>
              <p className="text-[11px] text-surface-400 truncate">{profile?.wing || 'Common Wing'}</p>
            </div>
          </Link>
          
          <button
            onClick={signOut}
            className="w-full flex items-center gap-3 px-4 py-3 rounded-xl text-red-400 hover:bg-red-500/10 transition-all font-semibold text-sm cursor-pointer border border-red-500/10"
          >
            <LogOut className="w-4 h-4" />
            Sign Out
          </button>
        </div>
      </aside>

      {/* Main Content */}
      <div className="flex-1 flex flex-col overflow-hidden">
        {/* Top Bar */}
        <header className="h-14 md:h-16 bg-white border-b border-surface-200 flex items-center justify-between px-4 md:px-6 flex-shrink-0 z-10">
          <div className="flex items-center gap-3">
            <button
              className="md:hidden p-2 rounded-lg hover:bg-surface-100 transition cursor-pointer"
              onClick={() => setSidebarOpen(!sidebarOpen)}
            >
              {sidebarOpen ? <X className="w-5 h-5" /> : <Menu className="w-5 h-5" />}
            </button>
            {/* Mobile logo in top bar */}
            <div className="md:hidden flex items-center gap-2">
              <img src={nccLogo} alt="NCC" className="w-6 h-6 object-contain" />
              <span className="font-bold text-navy-900 text-sm">NCC Digital</span>
            </div>
            
            {/* Desktop page title */}
            <div className="hidden md:block">
              <h2 className="text-lg font-bold text-navy-900">
                {items.find(i => location.pathname === i.path || (i.path !== '/' && location.pathname.startsWith(i.path)))?.label || 'NCC Platform'}
              </h2>
            </div>
          </div>

          <div className="flex items-center gap-2 md:gap-3">
            {wing !== 'Common' && (
              <span className={`ncc-badge ncc-badge-${wing.toLowerCase().replace(' ', '')} hidden sm:inline-flex`}>
                {wing}
              </span>
            )}
            
            {/* Profile Avatar (Mobile + Desktop) */}
            <Link 
              to="/profile" 
              className="flex items-center justify-center w-9 h-9 rounded-full bg-navy-50 border border-surface-200 text-navy-600 font-bold hover:border-gold-500 transition-all active:scale-95"
            >
              {profile?.full_name?.charAt(0) || user?.email?.charAt(0)?.toUpperCase() || 'C'}
            </Link>

            {/* Unified Notification Bell */}
            <button 
              onClick={() => setIsNotificationsOpen(true)}
              className="relative p-2 rounded-lg hover:bg-surface-100 transition-all cursor-pointer active:scale-95"
            >
              <Bell className="w-5 h-5 text-surface-700" />
              {unreadCount > 0 && (
                <span className="absolute top-1.5 right-1.5 w-4 h-4 bg-red-500 text-white text-[10px] font-bold flex items-center justify-center rounded-full border-2 border-white">
                  {unreadCount > 9 ? '9+' : unreadCount}
                </span>
              )}
            </button>
          </div>
        </header>

        {/* Page Content — extra bottom padding on mobile for bottom nav */}
        <main className="flex-1 overflow-y-auto p-4 md:p-6 pb-32 md:pb-6">
          <Outlet />
        </main>
      </div>

      {/* Mobile Bottom Navigation Bar */}
      <nav className="ncc-mobile-nav">
        {BOTTOM_NAV_ITEMS.map((item) => {
          const isActive = location.pathname === item.path ||
            (item.path !== '/' && location.pathname.startsWith(item.path));
          const Icon = item.icon;
          return (
            <Link
              key={item.path}
              to={item.path}
              className={`ncc-mobile-nav-item ${isActive ? 'active' : ''}`}
            >
              <Icon className="w-5 h-5" />
              <span>{item.label}</span>
            </Link>
          );
        })}
      </nav>

      {/* Notifications Overlay — Placed at the end for guaranteed top-most rendering */}
      {isNotificationsOpen && (
        <div 
          className="fixed inset-0 bg-navy-900/40 backdrop-blur-sm z-[9999]"
          onClick={() => setIsNotificationsOpen(false)}
        >
          <div 
            className="absolute right-0 top-0 bottom-0 w-full max-w-xs bg-white shadow-2xl animate-slideInRight"
            onClick={e => e.stopPropagation()}
          >
            <NotificationPanel onClose={() => setIsNotificationsOpen(false)} onRefresh={fetchUnreadCount} />
          </div>
        </div>
      )}
    </div>
  );
};

export default MainLayout;
