import { useState } from 'react';
import { Upload, FileText, FileQuestion, BookOpen, Layers } from 'lucide-react';
import CsvUploadModal from '../../components/CsvUploadModal';

export default function InstructorImports() {
  const [csvModalType, setCsvModalType] = useState(null);

  const importOptions = [
    {
      id: 'csv_questions',
      title: 'Import Questions',
      description: 'Upload a CSV of questions for the question repository.',
      icon: FileQuestion,
      color: 'text-gold-500',
      bg: 'bg-gold-500/10'
    },
    {
      id: 'csv_subjects',
      title: 'Import Subjects',
      description: 'Upload a CSV defining subjects and their codes.',
      icon: BookOpen,
      color: 'text-navy-500',
      bg: 'bg-navy-500/10'
    },
    {
      id: 'csv_modules',
      title: 'Import Modules',
      description: 'Upload a CSV mapping modules to subjects.',
      icon: Layers,
      color: 'text-mgreen-600',
      bg: 'bg-mgreen-600/10'
    },
    {
      id: 'csv_mock_exams',
      title: 'Import Mock Exams',
      description: 'Upload a CSV containing mock exam definitions.',
      icon: FileText,
      color: 'text-wing-airforce',
      bg: 'bg-wing-airforce-bg'
    }
  ];

  return (
    <div className="max-w-7xl mx-auto space-y-4 md:space-y-6 animate-fadeIn">
      <div>
        <h1 className="text-xl md:text-2xl font-bold text-navy-900 flex items-center gap-2">
          <Upload className="w-6 h-6 md:w-7 md:h-7 text-gold-500" /> Bulk Imports
        </h1>
        <p className="text-surface-700 text-sm">Import bulk data using CSV templates</p>
      </div>

      <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-4">
        {importOptions.map((opt) => (
          <div key={opt.id} className="ncc-glass-card p-6 flex flex-col items-center text-center group">
            <div className={`w-16 h-16 rounded-2xl ${opt.bg} flex items-center justify-center mb-4 group-hover:scale-110 transition-transform duration-300`}>
              <opt.icon className={`w-8 h-8 ${opt.color}`} />
            </div>
            <h3 className="font-bold text-navy-900 mb-2">{opt.title}</h3>
            <p className="text-sm text-surface-600 mb-6 flex-1">{opt.description}</p>
            <button
              onClick={() => setCsvModalType(opt.id)}
              className="w-full ncc-btn ncc-btn-primary py-2.5 cursor-pointer"
            >
              Select File
            </button>
          </div>
        ))}
      </div>

      <div className="ncc-glass-card p-6 mt-6">
        <h3 className="font-bold text-navy-900 mb-2 text-lg">CSV Formatting Guidelines</h3>
        <ul className="list-disc pl-5 space-y-2 text-sm text-surface-700">
          <li>Ensure your CSV headers exactly match the required database columns.</li>
          <li>For boolean fields (e.g., active), use `TRUE` or `FALSE`.</li>
          <li>Use comma as the delimiter. If a field contains commas, wrap it in double quotes.</li>
          <li>Subject codes must exactly match existing subjects in the database.</li>
        </ul>
      </div>

      <CsvUploadModal
        isOpen={!!csvModalType}
        onClose={() => setCsvModalType(null)}
        tableType={csvModalType || 'csv_questions'}
        onSuccess={() => setCsvModalType(null)}
      />
    </div>
  );
}
