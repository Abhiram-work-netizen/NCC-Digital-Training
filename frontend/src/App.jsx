import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider, useAuth } from './hooks/AuthContext';
import ErrorBoundary from './components/ErrorBoundary';
import MainLayout from './layouts/MainLayout';
import CourseLayout from './layouts/CourseLayout';
import Login from './pages/Login';
import Register from './pages/Register';
import Dashboard from './pages/Dashboard';
import CourseCatalog from './pages/CourseCatalog';
import CourseDetail from './pages/CourseDetail';
import ChapterViewer from './pages/ChapterViewer';
import PracticeTests from './pages/PracticeTests';
import ExamRoom from './pages/ExamRoom';
import ExamResults from './pages/ExamResults';
import Performance from './pages/Performance';
import Profile from './pages/Profile';
import InstructorDashboard from './pages/InstructorDashboard';
import InstructorCourseManager from './pages/InstructorCourseManager';
import AdminPanel from './pages/AdminPanel';

const ProtectedRoute = ({ children, allowedRoles }) => {
  const { user, role, loading } = useAuth();
  if (loading) return <div className="flex items-center justify-center h-screen"><div className="ncc-skeleton w-12 h-12 rounded-full"></div></div>;
  if (!user) return <Navigate to="/login" />;
  if (allowedRoles && !allowedRoles.includes(role)) return <Navigate to="/dashboard" />;
  return children;
};

function App() {
  return (
    <ErrorBoundary>
      <AuthProvider>
        <Router>
          <Routes>
            {/* Public Routes */}
            <Route path="/login" element={<Login />} />
            <Route path="/register" element={<Register />} />

            {/* Protected Routes with Main Sidebar Layout */}
            <Route element={<ProtectedRoute><MainLayout /></ProtectedRoute>}>
              <Route path="/" element={<Navigate to="/dashboard" />} />
              <Route path="/dashboard" element={<Dashboard />} />
              <Route path="/courses" element={<CourseCatalog />} />
              <Route path="/practice-tests" element={<PracticeTests />} />
              <Route path="/performance" element={<Performance />} />
              <Route path="/profile" element={<Profile />} />
              <Route path="/exam-results/:attemptId" element={<ExamResults />} />
              <Route path="/instructor" element={<ProtectedRoute allowedRoles={['instructor', 'admin']}><InstructorDashboard /></ProtectedRoute>} />
              <Route path="/instructor/course/:courseId" element={<ProtectedRoute allowedRoles={['instructor', 'admin']}><InstructorCourseManager /></ProtectedRoute>} />
              <Route path="/admin" element={<ProtectedRoute allowedRoles={['admin']}><AdminPanel /></ProtectedRoute>} />
            </Route>

            {/* Immersive Course Layout */}
            <Route path="/course/:courseId" element={<ProtectedRoute><CourseLayout /></ProtectedRoute>}>
              <Route index element={<CourseDetail />} />
              <Route path="chapter/:chapterId" element={<ChapterViewer />} />
            </Route>

            {/* Fullscreen Exam */}
            <Route path="/exam/:testId" element={<ProtectedRoute><ExamRoom /></ProtectedRoute>} />
          </Routes>
        </Router>
      </AuthProvider>
    </ErrorBoundary>
  );
}

export default App;
