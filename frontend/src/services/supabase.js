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
// COMPREHENSIVE SYLLABUS DEFINITION & GENERATOR
// ============================================
const SYLLABUS_DEFINITION = [
  // 1. Common Subjects
  { wing: 'Common', level: 'A', courses: [
    'NCC At a Glance', 'Drill & Commands', 'Weapon Training & Infantry Weapons', 'National Integration',
    'Leadership & Personality Development', 'Civil Defence & Disaster Management', 'Social Service & Awareness',
    'Health, Hygiene & Sanitation', 'Yoga & Asanas', 'Home Nursing', 'Posture Training',
    'Obstacles Training & Adventure Activities'
  ]},
  { wing: 'Common', level: 'B', courses: [
    'Career in Defence Services', 'Services Tests & Interviews', 'Self-Defence', 'Environment and Ecology',
    'Famous Leaders of India', 'History of India', 'Armed Forces & Military History', 'Map Reading',
    'Communication', 'Field Craft & Battle Craft', 'Personality Development & Officer Like Qualities (OLQs)',
    'Disaster Management & Social Awareness'
  ]},
  { wing: 'Common', level: 'C', courses: [
    'Advanced Leadership', 'Advanced Drill', 'National Security', 'Armed Forces Organisation',
    'Disaster Management', 'Social Service & Community Development', 'Personality Development & Communication Skills',
    'Map Reading & Navigation', 'Field Craft & Battle Craft', 'Military History & War Heroes',
    'General Awareness & Current Affairs', 'Officer Like Qualities (OLQs) & Interview Skills'
  ]},
  // 2. Army
  { wing: 'Army', level: 'A', courses: [
    'Field Craft Basics', 'Drill with Arms', 'Weapon Training', 'Section Formation', 'Guard Mounting', 'Battle Craft Basics'
  ]},
  { wing: 'Army', level: 'B', courses: [
    'Advanced Weapon Training', 'Field Signals', 'Patrolling', 'Camouflage & Concealment', 'Section Battle Drill', 'Ambush & Defence'
  ]},
  { wing: 'Army', level: 'C', courses: [
    'Tactical Exercises', 'Platoon Formation', 'Advanced Battle Craft', 'Internal Security Duties', 'Field Engineering', 'Communication Procedures', 'Map Reading Advanced'
  ]},
  // 3. Navy
  { wing: 'Navy', level: 'A', courses: [
    'Naval Orientation', 'Parts of Ship', 'Seamanship', 'Boat Pulling', 'Rigging', 'Naval Communication Basics'
  ]},
  { wing: 'Navy', level: 'B', courses: [
    'Navigation', 'Anchoring', 'Ship Modelling', 'Naval Signals', 'Boat Sailing', 'Tides & Compass'
  ]},
  { wing: 'Navy', level: 'C', courses: [
    'Advanced Navigation', 'Naval Warfare Basics', 'Ship Organisation', 'Communication Systems', 'Sailing Expeditions', 'Naval Weapons Basics', 'Leadership at Sea'
  ]},
  // 4. Air Force
  { wing: 'Air Force', level: 'A', courses: [
    'Principles of Flight', 'Airframe & Aircraft Parts', 'Flying Basics', 'Aviation History', 'Aero Modelling', 'Air Navigation Basics'
  ]},
  { wing: 'Air Force', level: 'B', courses: [
    'Aircraft Instruments', 'Meteorology', 'Air Traffic Control Basics', 'Navigation Advanced', 'Aero Engines', 'Map Reading for Aviation'
  ]},
  { wing: 'Air Force', level: 'C', courses: [
    'Advanced Aviation Subjects', 'Flight Navigation', 'Aircraft Recognition', 'Air Power & Warfare', 'Aero Engine Systems', 'Aviation Safety', 'Air Force Leadership & Communication'
  ]}
];

// Stable hash function to generate deterministic UUIDs
const generateStableId = (prefix, name) => {
  let hash = 0;
  for (let i = 0; i < name.length; i++) {
    hash = (hash << 5) - hash + name.charCodeAt(i);
    hash |= 0;
  }
  const hex = Math.abs(hash).toString(16).padStart(8, '0');
  return `${prefix}-0000-0000-0000-${hex.padStart(12, '0')}`;
};

// Maps of specific courses to original IDs to keep history and profiles clean
const courseIdMap = {
  'NCC At a Glance': 'a1000000-0000-0000-0000-000000000001',
  'Drill & Commands': 'a1000000-0000-0000-0000-000000000002',
  'National Integration': 'a1000000-0000-0000-0000-000000000003',
  'Health, Hygiene & Sanitation': 'a1000000-0000-0000-0000-000000000004',
  'Map Reading': 'a1000000-0000-0000-0000-000000000005',
  'Weapon Training': 'a1000000-0000-0000-0000-000000000006'
};

const getCourseId = (title, wing, level) => {
  if (courseIdMap[title]) return courseIdMap[title];
  return generateStableId('a1000000', `${wing}-${level}-${title}`);
};

const generatedCourses = [];
const generatedModules = [];
const generatedChapters = [];
const generatedQuestionBanks = [];
const generatedQuestions = [];
const generatedTests = [];

// Seed announcements
const generatedAnnouncements = [
  { id: 'ann-1', title: 'Annual Training Camp 2026', content: 'Registration is now open for the Annual Training Camp (ATC) at NCC Academy, Delhi Cantt. All B & C certificate cadets are eligible. Report date: 1 June 2026.', priority: 'high', target_wing: 'Common', is_active: true, created_at: new Date(Date.now() - 3600000 * 2).toISOString() },
  { id: 'ann-2', title: 'B Certificate Exam Schedule', content: 'B Certificate written examination scheduled for 15 July 2026. Mock tests are now available on the platform. Start practicing today!', priority: 'high', target_wing: 'Common', is_active: true, created_at: new Date(Date.now() - 3600000 * 24).toISOString() },
  { id: 'ann-3', title: 'Army Wing: Firing Practice', content: 'Live firing practice with .22 Rifle scheduled for next weekend at the Range. Mandatory for all Army wing B/C cert cadets.', priority: 'normal', target_wing: 'Army', is_active: true, created_at: new Date(Date.now() - 3600000 * 48).toISOString() }
];

SYLLABUS_DEFINITION.forEach((def, defIndex) => {
  def.courses.forEach((title, cIndex) => {
    const courseId = getCourseId(title, def.wing, def.level);
    const duration = 4 + (cIndex % 7); // 4 to 10 hours

    generatedCourses.push({
      id: courseId,
      title: title,
      description: `${title} official training course for Certificate ${def.level} cadets in the ${def.wing} wing.`,
      target_wing: def.wing,
      certificate_level: def.level,
      duration_hours: duration
    });

    // Modules
    const isSingleModule = (title === 'NCC At a Glance');
    const mod1Id = generateStableId('b1000000', courseId + '1');
    const mod2Id = generateStableId('b1000000', courseId + '2');
    
    let module1Title = `Core Concepts of ${title}`;
    let module2Title = `Practical Training & Operations`;
    
    if (title === 'NCC At a Glance') {
      module1Title = 'NCC History, Aims & Organisation';
    } else if (title === 'Drill & Commands') {
      module1Title = 'Basic Foot Drill';
      module2Title = 'Parade Formations';
    } else if (title === 'Health, Hygiene & Sanitation') {
      module1Title = 'First Aid Fundamentals';
      module2Title = 'Personal Hygiene';
    } else if (title === 'Map Reading') {
      module1Title = 'Introduction to Maps';
      module2Title = 'Compass & Navigation';
    }

    if (isSingleModule) {
      generatedModules.push(
        { id: mod1Id, course_id: courseId, title: module1Title, order_index: 1 }
      );
    } else {
      generatedModules.push(
        { id: mod1Id, course_id: courseId, title: module1Title, order_index: 1 },
        { id: mod2Id, course_id: courseId, title: module2Title, order_index: 2 }
      );
    }

    // Chapters
    const ch1Id = generateStableId('c1000000', courseId + '1-1');
    const ch2Id = generateStableId('c1000000', courseId + '1-2');
    const ch3Id = generateStableId('c1000000', courseId + '2-1');
    const ch4Id = generateStableId('c1000000', courseId + '2-2');

    let ch1 = {
      id: ch1Id,
      module_id: mod1Id,
      title: `Introduction to ${title}`,
      content_type: 'markdown',
      order_index: 1,
      content: `# Introduction to ${title}

## Overview
This chapter covers the basic fundamentals of **${title}**, required for National Cadet Corps (NCC) Certificate **${def.level}** cadets of the **${def.wing}** wing.

## Key Learning Areas
- Basic definitions and principles of **${title}**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **${title}** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.`
    };

    let ch2 = {
      id: ch2Id,
      module_id: mod1Id,
      title: `Theoretical Principles of ${title}`,
      content_type: 'markdown',
      order_index: 2,
      content: `# Theoretical Principles of ${title}

## Study Material
Here we explore the detailed guidelines and regulations surrounding **${title}**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.`
    };

    let ch3 = {
      id: ch3Id,
      module_id: mod2Id,
      title: `Practical Training & Operations`,
      content_type: 'markdown',
      order_index: 1,
      content: `# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **${title}**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.`
    };

    let ch4 = {
      id: ch4Id,
      module_id: mod2Id,
      title: `Mock Evaluation & Exercises`,
      content_type: 'markdown',
      order_index: 2,
      content: `# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **${title}**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.`
    };

    // Override custom chapters if course matches
    if (title === 'NCC At a Glance') {
      ch1 = {
        id: 'c1000000-0000-0000-0000-000000000001',
        module_id: mod1Id,
        title: 'NCC Training Slideshow',
        content_type: 'embed',
        order_index: 1,
        content_data: {
          embed_url: 'https://docs.google.com/presentation/d/11HaCvdxdSy4TXuh7HfnX7wWDA2Mkvgv2/embed?start=false&loop=false&delayms=3000'
        },
        content: 'Interactive Google Slides Presentation'
      };
    } else if (title === 'Drill & Commands') {
      ch1 = {
        id: 'c1000000-0000-0000-0000-000000000004',
        module_id: mod1Id,
        title: 'Attention and Stand at Ease',
        content_type: 'markdown',
        order_index: 1,
        content: `# Attention and Stand at Ease

## Position of Attention (Savdhan)
The Position of Attention is the basic military position from which all drill movements begin.

### Correct Position
1. **Heels** together, touching and in line
2. **Feet** turned out equally, forming an angle of 30 degrees
3. **Knees** straight but not locked
4. **Body** erect, weight balanced on both feet
5. **Shoulders** level, square to the front
6. **Arms** hanging naturally, thumbs behind the second joint of the forefinger
7. **Head** erect, neck touching the collar, eyes looking straight ahead
8. **Chest** lifted naturally

### Word of Command
**"Squad — ATTENTION!"** (Daste — SAVDHAN!)
- Cautionary: "Squad" — to alert
- Executive: "ATTENTION" — to execute

## Stand at Ease (Vishram)
### Correct Position
1. Left foot moves **15 inches** (38 cm) to the left
2. Arms placed behind the back, right hand holding left hand
3. Body weight distributed equally on both feet
4. Remain silent and still

### Word of Command
**"Stand at — EASE!"** (Vishram!)`
      };

      ch2 = {
        id: 'c1000000-0000-0000-0000-000000000005',
        module_id: mod1Id,
        title: 'Turning and Saluting',
        content_type: 'markdown',
        order_index: 2,
        content: `# Turning and Saluting

## Turnings at the Halt
All turnings are done in two movements:

### Right Turn (Dahine Mud)
1. **Movement 1**: Turn 90° to the right on right heel and left toe
2. **Movement 2**: Bring left foot smartly alongside right foot

### Left Turn (Bayein Mud)
1. **Movement 1**: Turn 90° to the left on left heel and right toe
2. **Movement 2**: Bring right foot smartly alongside left foot

### About Turn (Peeche Mud)
1. **Movement 1**: Turn 180° to the right on right heel and left toe
2. **Movement 2**: Bring left foot smartly alongside right foot

## Saluting

### Hand Salute (Salami Shastra)
The salute is the military greeting. It is a mark of mutual respect and courtesy.

**How to perform:**
1. Raise right hand smartly by the shortest route
2. Fingers extended and close together, palm facing left
3. Tip of middle finger touches the right eyebrow (or cap brim)
4. Upper arm horizontal, forearm at 45 degrees
5. Hold for the required duration
6. Cut away smartly to the position of attention

### When to Salute
- National Flag and National Anthem
- All commissioned officers
- During funeral processions
- War memorials`
      };
    } else if (title === 'Health, Hygiene & Sanitation') {
      ch1 = {
        id: 'c1000000-0000-0000-0000-000000000006',
        module_id: mod1Id,
        title: 'Fractures and Bandaging',
        content_type: 'markdown',
        order_index: 1,
        content: `# Fractures and Bandaging

## Types of Fractures
1. **Simple (Closed)**: Bone breaks but skin is intact
2. **Compound (Open)**: Bone breaks and pierces skin
3. **Greenstick**: Incomplete fracture (common in children)
4. **Comminuted**: Bone shatters into multiple pieces

## Signs of Fracture
- Severe pain at the site
- Swelling and tenderness
- Deformity or unnatural position
- Loss of function of the limb
- Crepitus (grating sound)

## First Aid for Fractures
1. **Do NOT move** the casualty unnecessarily
2. **Immobilize** the fracture using splints
3. Apply splint **above and below** the fracture point
4. Pad the splint with soft material
5. Check circulation below the splint regularly
6. Treat for shock — keep warm, elevate legs

## Common Bandaging Techniques
| Type | Use |
|------|-----|
| Triangular | Arm sling, head wounds |
| Roller | Securing dressings |
| Figure-of-eight | Ankle, wrist joints |
| Spiral | Limbs |

> **Remember**: RICE — Rest, Ice, Compression, Elevation`
      };
    } else if (title === 'Map Reading') {
      ch1 = {
        id: 'c1000000-0000-0000-0000-000000000007',
        module_id: mod1Id,
        title: 'Topographic Maps and Conventional Signs',
        content_type: 'markdown',
        order_index: 1,
        content: `# Topographic Maps and Conventional Signs

## What is a Topographic Map?
A topographic map represents the physical features of the earth's surface including hills, valleys, rivers, roads, and buildings using **contour lines** and **conventional signs**.

## Scale of Maps
| Scale | Type | Use |
|-------|------|-----|
| 1:25,000 | Large | Tactical operations |
| 1:50,000 | Medium | General military use |
| 1:250,000 | Small | Strategic planning |

## Conventional Signs
Conventional signs are **standardized symbols** used on maps:

### Colors Used
- **Black**: Man-made features (roads, buildings, text)
- **Brown**: Contour lines, earth features
- **Blue**: Water features (rivers, lakes, wells)
- **Green**: Vegetation (forests, orchards)
- **Red**: Main roads, important boundaries

## Contour Lines
- Lines joining points of **equal elevation**
- Close together = **steep slope**
- Far apart = **gentle slope**
- V-shaped pointing uphill = **valley/stream**
- V-shaped pointing downhill = **ridge/spur**

## Grid References
- **4-figure**: Identifies a grid square (e.g., 2345)
- **6-figure**: Pinpoints exact location (e.g., 234456)
- Always read **Eastings first**, then Northings
- Remember: **"Go along the corridor, then up the stairs"**`
      };
    }

    if (title === 'NCC At a Glance') {
      generatedChapters.push(ch1);
    } else {
      generatedChapters.push(ch1, ch2, ch3, ch4);
    }

    // Question bank
    const bankId = generateStableId('d1000000', courseId);
    generatedQuestionBanks.push({
      id: bankId,
      course_id: courseId,
      title: `${title} Bank`,
      description: `Questions on ${title}`
    });

    // Questions pool
    const q1Id = generateStableId('f0000001', courseId);
    const q2Id = generateStableId('f0000002', courseId);
    const q3Id = generateStableId('f0000003', courseId);
    const q4Id = generateStableId('f0000004', courseId);

    let questionsPool = [
      {
        id: q1Id,
        bank_id: bankId,
        question_text: `What is a key focus area in studying ${title}?`,
        question_type: 'mcq',
        options: ['Theory only', 'Practical application', 'Preparation for tests', 'All of the above'],
        correct_answer: 'All of the above',
        difficulty: 'easy',
        topic_tag: 'General',
        explanation: `Syllabus courses combine theoretical and practical instructions.`,
        points: 1
      },
      {
        id: q2Id,
        bank_id: bankId,
        question_text: `Which value is most prioritized in ${title} training?`,
        question_type: 'mcq',
        options: ['Speed', 'Discipline & Unity', 'Competition', 'Individual effort'],
        correct_answer: 'Discipline & Unity',
        difficulty: 'easy',
        topic_tag: 'Values',
        explanation: `Unity and Discipline is the motto of the NCC.`,
        points: 1
      },
      {
        id: q3Id,
        bank_id: bankId,
        question_text: `True or False: Cadet evaluations for ${title} contain both written and practical parts.`,
        question_type: 'mcq',
        options: ['True', 'False'],
        correct_answer: 'True',
        difficulty: 'medium',
        topic_tag: 'Evaluation',
        explanation: `Written and practical components are standard for Certificate grades.`,
        points: 1
      },
      {
        id: q4Id,
        bank_id: bankId,
        question_text: `What is recommended to master the skills of ${title}?`,
        question_type: 'mcq',
        options: ['Self study and mock tests', 'Active camp and parade attendance', 'Discussing with senior commanders', 'All of the above'],
        correct_answer: 'All of the above',
        difficulty: 'medium',
        topic_tag: 'Training',
        explanation: `A holistic training approach is highly effective.`,
        points: 1
      }
    ];

    if (title === 'NCC At a Glance') {
      questionsPool = [
        { id: generateStableId('f0000001', courseId), bank_id: bankId, question_text: 'When was the NCC established in India?', question_type: 'mcq', options: ['1946', '1947', '1948', '1950'], correct_answer: '1948', difficulty: 'easy', topic_tag: 'History', explanation: 'NCC was established on 15 July 1948 under the NCC Act XXXI of 1948.', points: 1 },
        { id: generateStableId('f0000002', courseId), bank_id: bankId, question_text: 'What is the motto of the NCC?', question_type: 'mcq', options: ['Service Before Self', 'Unity and Discipline', 'Duty Honor Country', 'Jai Hind'], correct_answer: 'Unity and Discipline', difficulty: 'easy', topic_tag: 'Basics', explanation: 'The NCC motto is "Unity and Discipline".', points: 1 },
        { id: generateStableId('f0000003', courseId), bank_id: bankId, question_text: 'Who was the first Director General of NCC?', question_type: 'mcq', options: ['Lt Gen Grubb', 'Gen Cariappa', 'Maj Gen Sinha', 'Gen Thimayya'], correct_answer: 'Lt Gen Grubb', difficulty: 'medium', topic_tag: 'History', explanation: 'Lt Gen Grubb was the first DG of NCC appointed in 1948.', points: 1 },
        { id: generateStableId('f0000004', courseId), bank_id: bankId, question_text: 'The NCC was raised on the recommendation of which committee?', question_type: 'mcq', options: ['Kunzru Committee', 'Nehru Committee', 'Patel Committee', 'Kothari Committee'], correct_answer: 'Kunzru Committee', difficulty: 'medium', topic_tag: 'History', explanation: 'Pandit H.N. Kunzru Committee (1946) recommended establishing NCC.', points: 1 }
      ];
    } else if (title === 'Drill & Commands') {
      questionsPool = [
        { id: generateStableId('f0000001', courseId), bank_id: bankId, question_text: 'At the position of attention, the angle between feet should be?', question_type: 'mcq', options: ['15 degrees', '30 degrees', '45 degrees', '60 degrees'], correct_answer: '30 degrees', difficulty: 'easy', topic_tag: 'Foot Drill', explanation: 'At attention, feet are turned out equally forming a 30-degree angle.', points: 1 },
        { id: generateStableId('f0000002', courseId), bank_id: bankId, question_text: 'In "Stand at Ease," the left foot moves how many inches to the left?', question_type: 'mcq', options: ['10 inches', '12 inches', '15 inches', '18 inches'], correct_answer: '15 inches', difficulty: 'medium', topic_tag: 'Foot Drill', explanation: 'The left foot moves 15 inches to the left.', points: 1 },
        { id: generateStableId('f0000003', courseId), bank_id: bankId, question_text: 'About Turn involves rotation of how many degrees?', question_type: 'mcq', options: ['90 degrees', '120 degrees', '180 degrees', '360 degrees'], correct_answer: '180 degrees', difficulty: 'easy', topic_tag: 'Turnings', explanation: 'About Turn (Peeche Mud) involves a 180-degree turn to the right.', points: 1 },
        { id: generateStableId('f0000004', courseId), bank_id: bankId, question_text: 'The word of command has how many parts?', question_type: 'mcq', options: ['1', '2', '3', '4'], correct_answer: '2', difficulty: 'easy', topic_tag: 'Commands', explanation: 'Word of command has Cautionary (alert) and Executive (action) parts.', points: 1 }
      ];
    } else if (title === 'Map Reading') {
      questionsPool = [
        { id: generateStableId('f0000001', courseId), bank_id: bankId, question_text: 'On a topographic map, blue color represents?', question_type: 'mcq', options: ['Roads', 'Vegetation', 'Water features', 'Contour lines'], correct_answer: 'Water features', difficulty: 'easy', topic_tag: 'Conventional Signs', explanation: 'Blue is used for water features like rivers, lakes, and wells.', points: 1 },
        { id: generateStableId('f0000002', courseId), bank_id: bankId, question_text: 'Contour lines that are close together indicate?', question_type: 'mcq', options: ['Flat ground', 'Gentle slope', 'Steep slope', 'Valley'], correct_answer: 'Steep slope', difficulty: 'easy', topic_tag: 'Contours', explanation: 'Close contour lines indicate steep slopes.', points: 1 }
      ];
    }

    generatedQuestions.push(...questionsPool);

    // Practice test
    const testId = generateStableId('e1000000', courseId);
    generatedTests.push({
      id: testId,
      course_id: courseId,
      title: `${title} Assessment`,
      description: `Practice assessment covering ${title} for Certificate ${def.level} cadets.`,
      test_type: 'practice',
      duration_minutes: 15,
      question_count: questionsPool.length,
      passing_score: 50,
      randomize_questions: true,
      target_wing: def.wing,
      is_active: true
    });
  });
});

const SEEDS = {
  courses: generatedCourses,
  modules: generatedModules,
  chapters: generatedChapters,
  question_banks: generatedQuestionBanks,
  questions: generatedQuestions,
  tests: generatedTests,
  announcements: generatedAnnouncements,
  cadet_profiles: [],
  instructor_profiles: [
    { id: 'd0000000-0000-0000-0000-000000000002', full_name: 'Col. Rajveer Singh', rank: 'Colonel', unit: '1st Punjab Bn NCC' }
  ],
  admin_profiles: [
    { id: 'd0000000-0000-0000-0000-000000000001', full_name: 'Platform Administrator' }
  ],
  user_progress: [],
  test_attempts: [],
  test_answers: [],
  notifications: []
};

// Seed dynamic default accounts in mock auth storage if not present
const defaultAuthUsers = [
  { id: 'd0000000-0000-0000-0000-000000000001', email: 'admin@ncc.gov.in', password: 'Admin@123', full_name: 'Platform Administrator', role: 'admin' },
  { id: 'd0000000-0000-0000-0000-000000000002', email: 'instructor@ncc.gov.in', password: 'Instructor@123', full_name: 'Col. Rajveer Singh', role: 'instructor' },
  { id: 'c0000000-0000-0000-0000-000000000003', email: 'cadet@ncc.gov.in', password: 'Cadet@123', full_name: 'Cadet Rohan Sharma', role: 'cadet', wing: 'Army', certificate_level: 'B', ncc_number: 'DL/20/SD/A/100234', level: 2, exp: 1200 }
];

// Initialize localStorage databases if not set or outdated
const SYLLABUS_VERSION = 'ncc_mock_syllabus_v4';
if (USE_MOCK && localStorage.getItem(SYLLABUS_VERSION) !== 'true') {
  localStorage.setItem(SYLLABUS_VERSION, 'true');
  localStorage.setItem('ncc_mock_initialized', 'true');
  localStorage.setItem('ncc_mock_auth_users', JSON.stringify(defaultAuthUsers));
  localStorage.setItem('ncc_mock_cadet_profiles', JSON.stringify([
    { id: 'c0000000-0000-0000-0000-000000000003', full_name: 'Cadet Rohan Sharma', wing: 'Army', certificate_level: 'B', ncc_number: 'DL/20/SD/A/100234', level: 2, exp: 1200, created_at: new Date().toISOString() }
  ]));
  localStorage.setItem('ncc_mock_instructor_profiles', JSON.stringify(SEEDS.instructor_profiles));
  localStorage.setItem('ncc_mock_admin_profiles', JSON.stringify(SEEDS.admin_profiles));
  localStorage.setItem('ncc_mock_courses', JSON.stringify(SEEDS.courses));
  localStorage.setItem('ncc_mock_modules', JSON.stringify(SEEDS.modules));
  localStorage.setItem('ncc_mock_chapters', JSON.stringify(SEEDS.chapters));
  localStorage.setItem('ncc_mock_questions', JSON.stringify(SEEDS.questions));
  localStorage.setItem('ncc_mock_question_banks', JSON.stringify(SEEDS.question_banks));
  localStorage.setItem('ncc_mock_tests', JSON.stringify(SEEDS.tests));
  localStorage.setItem('ncc_mock_announcements', JSON.stringify(SEEDS.announcements));
  localStorage.setItem('ncc_mock_user_progress', JSON.stringify([]));
  localStorage.setItem('ncc_mock_test_attempts', JSON.stringify([]));
  localStorage.setItem('ncc_mock_notifications', JSON.stringify([
    { id: 'notif-1', user_id: 'c0000000-0000-0000-0000-000000000003', type: 'system', title: 'Welcome!', content: 'Welcome to NCC Digital Training portal.', link: '/dashboard', is_read: false, created_at: new Date().toISOString() }
  ]));
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
      if (builder.table === 'tests') {
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
      } else if (builder.table === 'questions') {
        const questionBanks = this._getTableData('question_banks');
        list = list.map(q => {
          const bank = questionBanks.find(b => b.id === q.bank_id);
          return {
            ...q,
            question_banks: bank ? {
              title: bank.title
            } : null
          };
        });
      } else if (builder.table === 'modules') {
        const chapters = this._getTableData('chapters');
        list = list.map(m => {
          const modChapters = chapters.filter(c => c.module_id === m.id);
          return {
            ...m,
            chapters: modChapters
          };
        });
      } else if (builder.table === 'test_attempts') {
        const tests = this._getTableData('tests');
        list = list.map(ta => {
          const test = tests.find(t => t.id === ta.test_id);
          return {
            ...ta,
            tests: test ? {
              id: test.id,
              title: test.title,
              course_id: test.course_id,
              passing_score: test.passing_score
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
      const modules = this._getTableData('modules').filter(m => m.course_id === courseId);
      const moduleIds = modules.map(m => m.id);
      const chapters = this._getTableData('chapters').filter(c => moduleIds.includes(c.module_id));
      return { data: chapters.map(c => c.id), error: null };
    }

    // 2. fn_start_exam
    if (fn === 'fn_start_exam') {
      const testId = params.p_test_id;
      const tests = this._getTableData('tests');
      const test = tests.find(t => t.id === testId);
      if (!test) return { data: null, error: { message: 'Test not found' } };

      const allQuestions = this._getTableData('questions');
      const banks = this._getTableData('question_banks').filter(b => b.course_id === test.course_id);
      const bankIds = banks.map(b => b.id);
      let candidates = allQuestions.filter(q => bankIds.includes(q.bank_id));

      // Shuffle
      candidates = candidates.sort(() => 0.5 - Math.random());
      const selected = candidates.slice(0, test.question_count || 10);

      const currentUser = JSON.parse(localStorage.getItem('ncc_mock_session_user') || '{}');
      const attemptId = uuidv4();
      const attempt = {
        id: attemptId,
        test_id: testId,
        user_id: currentUser.id,
        status: 'in_progress',
        question_ids: selected.map(q => q.id),
        started_at: new Date().toISOString(),
        total_questions: selected.length,
        time_spent_seconds: 0,
        tab_switch_count: 0
      };

      const attempts = this._getTableData('test_attempts');
      attempts.push(attempt);
      this._saveTableData('test_attempts', attempts);

      return {
        data: {
          attempt_id: attemptId,
          duration_minutes: test.duration_minutes || 20,
          test_title: test.title,
          questions: selected.map(q => ({
            id: q.id,
            question_text: q.question_text,
            question_type: q.question_type,
            options: q.options,
            topic_tag: q.topic_tag,
            points: q.points || 1,
            difficulty: q.difficulty || 'medium'
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

      const attempts = this._getTableData('test_attempts');
      const attemptIndex = attempts.findIndex(a => a.id === attemptId);
      if (attemptIndex === -1) return { data: null, error: { message: 'Attempt not found' } };
      const attempt = attempts[attemptIndex];

      const test = this._getTableData('tests').find(t => t.id === attempt.test_id);
      const allQuestions = this._getTableData('questions');

      let correct = 0;
      let total = attempt.question_ids.length;
      const gradingData = [];

      for (const qId of attempt.question_ids) {
        const question = allQuestions.find(q => q.id === qId);
        if (question) {
          const uAns = answers[qId] || '';
          const isCorrect = String(uAns).trim() === String(question.correct_answer).trim();
          if (isCorrect) correct++;

          gradingData.push({
            question_id: qId,
            question_text: question.question_text,
            topic_tag: question.topic_tag || 'General',
            user_answer: uAns,
            correct_answer: question.correct_answer,
            is_correct: isCorrect
          });
        }
      }

      const pct = total > 0 ? Math.round((correct / total) * 100) : 0;
      const expGain = pct * (test.test_type === 'practice' ? 5 : test.test_type === 'mock' ? 10 : 20);

      // Update attempt
      attempt.submitted_at = new Date().toISOString();
      attempt.score = correct; // Raw correct count
      attempt.total_questions = total;
      attempt.tab_switch_count = tabSwitches;
      attempt.time_spent_seconds = timeSpent;
      attempt.status = tabSwitches >= 5 ? 'flagged' : 'submitted';
      attempt.answers = answers;
      attempt.grading_data = gradingData;

      attempts[attemptIndex] = attempt;
      this._saveTableData('test_attempts', attempts);

      // Update user profile EXP
      const currentUser = JSON.parse(localStorage.getItem('ncc_mock_session_user') || '{}');
      const profiles = this._getTableData('cadet_profiles');
      const pIndex = profiles.findIndex(p => p.id === currentUser.id);
      let newLevel = 1;
      let newExp = 0;

      if (pIndex !== -1) {
        const profile = profiles[pIndex];
        profile.exp = (profile.exp || 0) + expGain;
        newLevel = Math.floor(profile.exp / 1000) + 1;
        if (newLevel > (profile.level || 1)) {
          profile.level = newLevel;
          // Send Level up Notification
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
        newExp = profile.exp;
      }

      // Add exam results notification
      const notifs = this._getTableData('notifications');
      const notif = {
        id: uuidv4(),
        user_id: currentUser.id,
        type: 'exam',
        title: `Exam Results: ${test.title}`,
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
          passed: pct >= test.passing_score
        },
        error: null
      };
    }

    // 4. fn_get_exam_results
    if (fn === 'fn_get_exam_results') {
      const attemptId = params.p_attempt_id;
      const attempt = this._getTableData('test_attempts').find(a => a.id === attemptId);
      if (!attempt) return { data: null, error: { message: 'Results not found' } };

      const test = this._getTableData('tests').find(t => t.id === attempt.test_id);

      return {
        data: {
          attempt_id: attempt.id,
          test_title: test ? test.title : 'NCC Exam',
          score: attempt.score,
          total_questions: attempt.total_questions || 0,
          passed: (attempt.score / (attempt.total_questions || 1) * 100) >= (test ? test.passing_score : 60),
          time_spent: attempt.time_spent_seconds,
          tab_switches: attempt.tab_switch_count,
          status: attempt.status,
          grading_data: attempt.grading_data || []
        },
        error: null
      };
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
      ncc_number: metadata.ncc_number || '',
      role: 'cadet'
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
    
    if (!user) {
      const res = await this.client.from('instructor_profiles').select('*').eq('email', email).eq('password', password).maybeSingle();
      user = res.data;
    }
    
    if (!user) {
      const res = await this.client.from('admin_profiles').select('*').eq('email', email).eq('password', password).maybeSingle();
      user = res.data;
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
          role: user_metadata.role || 'cadet',
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
