-- 00015_complete_syllabus_seeds.sql
-- This migration seeds all 93 syllabus courses, modules, chapters, tests, question banks, and questions.
-- Ensures database parity with the frontend mock generator.

BEGIN;

-- Cascade truncate all tables related to courses to prevent duplicate keys
TRUNCATE public.courses CASCADE;

-- ============================================
-- COURSES
-- ============================================
INSERT INTO public.courses (id, title, description, target_wing, certificate_level, duration_hours) VALUES
('a1000000-0000-0000-0000-000000000001', 'NCC At a Glance', 'NCC At a Glance official training course for Certificate A cadets in the Common wing.', 'Common', 'A', 4),
('a1000000-0000-0000-0000-000000000002', 'Drill & Commands', 'Drill & Commands official training course for Certificate A cadets in the Common wing.', 'Common', 'A', 5),
('a1000000-0000-0000-0000-00002d6df6d2', 'Weapon Training & Infantry Weapons', 'Weapon Training & Infantry Weapons official training course for Certificate A cadets in the Common wing.', 'Common', 'A', 6),
('a1000000-0000-0000-0000-000000000003', 'National Integration', 'National Integration official training course for Certificate A cadets in the Common wing.', 'Common', 'A', 7),
('a1000000-0000-0000-0000-0000174a3d1e', 'Leadership & Personality Development', 'Leadership & Personality Development official training course for Certificate A cadets in the Common wing.', 'Common', 'A', 8),
('a1000000-0000-0000-0000-000071e9b09d', 'Civil Defence & Disaster Management', 'Civil Defence & Disaster Management official training course for Certificate A cadets in the Common wing.', 'Common', 'A', 9),
('a1000000-0000-0000-0000-000057c82e75', 'Social Service & Awareness', 'Social Service & Awareness official training course for Certificate A cadets in the Common wing.', 'Common', 'A', 10),
('a1000000-0000-0000-0000-000000000004', 'Health, Hygiene & Sanitation', 'Health, Hygiene & Sanitation official training course for Certificate A cadets in the Common wing.', 'Common', 'A', 4),
('a1000000-0000-0000-0000-00005409f313', 'Yoga & Asanas', 'Yoga & Asanas official training course for Certificate A cadets in the Common wing.', 'Common', 'A', 5),
('a1000000-0000-0000-0000-00001aefb067', 'Home Nursing', 'Home Nursing official training course for Certificate A cadets in the Common wing.', 'Common', 'A', 6),
('a1000000-0000-0000-0000-000000490880', 'Posture Training', 'Posture Training official training course for Certificate A cadets in the Common wing.', 'Common', 'A', 7),
('a1000000-0000-0000-0000-0000240e6113', 'Obstacles Training & Adventure Activities', 'Obstacles Training & Adventure Activities official training course for Certificate A cadets in the Common wing.', 'Common', 'A', 8),
('a1000000-0000-0000-0000-000008b4468c', 'Career in Defence Services', 'Career in Defence Services official training course for Certificate B cadets in the Common wing.', 'Common', 'B', 4),
('a1000000-0000-0000-0000-000038908d40', 'Services Tests & Interviews', 'Services Tests & Interviews official training course for Certificate B cadets in the Common wing.', 'Common', 'B', 5),
('a1000000-0000-0000-0000-000039ef9e7c', 'Self-Defence', 'Self-Defence official training course for Certificate B cadets in the Common wing.', 'Common', 'B', 6),
('a1000000-0000-0000-0000-00003c4316e3', 'Environment and Ecology', 'Environment and Ecology official training course for Certificate B cadets in the Common wing.', 'Common', 'B', 7),
('a1000000-0000-0000-0000-0000199562e4', 'Famous Leaders of India', 'Famous Leaders of India official training course for Certificate B cadets in the Common wing.', 'Common', 'B', 8),
('a1000000-0000-0000-0000-000071fe9b19', 'History of India', 'History of India official training course for Certificate B cadets in the Common wing.', 'Common', 'B', 9),
('a1000000-0000-0000-0000-00000ba7d77f', 'Armed Forces & Military History', 'Armed Forces & Military History official training course for Certificate B cadets in the Common wing.', 'Common', 'B', 10),
('a1000000-0000-0000-0000-000000000005', 'Map Reading', 'Map Reading official training course for Certificate B cadets in the Common wing.', 'Common', 'B', 4),
('a1000000-0000-0000-0000-0000382075a9', 'Communication', 'Communication official training course for Certificate B cadets in the Common wing.', 'Common', 'B', 5),
('a1000000-0000-0000-0000-0000266d0d05', 'Field Craft & Battle Craft', 'Field Craft & Battle Craft official training course for Certificate B cadets in the Common wing.', 'Common', 'B', 6),
('a1000000-0000-0000-0000-000016a26b66', 'Personality Development & Officer Like Qualities (OLQs)', 'Personality Development & Officer Like Qualities (OLQs) official training course for Certificate B cadets in the Common wing.', 'Common', 'B', 7),
('a1000000-0000-0000-0000-00004a803f19', 'Disaster Management & Social Awareness', 'Disaster Management & Social Awareness official training course for Certificate B cadets in the Common wing.', 'Common', 'B', 8),
('a1000000-0000-0000-0000-00002ba41949', 'Advanced Leadership', 'Advanced Leadership official training course for Certificate C cadets in the Common wing.', 'Common', 'C', 4),
('a1000000-0000-0000-0000-00000b8cf529', 'Advanced Drill', 'Advanced Drill official training course for Certificate C cadets in the Common wing.', 'Common', 'C', 5),
('a1000000-0000-0000-0000-000019d3bbde', 'National Security', 'National Security official training course for Certificate C cadets in the Common wing.', 'Common', 'C', 6),
('a1000000-0000-0000-0000-000017470581', 'Armed Forces Organisation', 'Armed Forces Organisation official training course for Certificate C cadets in the Common wing.', 'Common', 'C', 7),
('a1000000-0000-0000-0000-0000636a9bea', 'Disaster Management', 'Disaster Management official training course for Certificate C cadets in the Common wing.', 'Common', 'C', 8),
('a1000000-0000-0000-0000-000015e087f8', 'Social Service & Community Development', 'Social Service & Community Development official training course for Certificate C cadets in the Common wing.', 'Common', 'C', 9),
('a1000000-0000-0000-0000-00000f5e0237', 'Personality Development & Communication Skills', 'Personality Development & Communication Skills official training course for Certificate C cadets in the Common wing.', 'Common', 'C', 10),
('a1000000-0000-0000-0000-00007f311b52', 'Map Reading & Navigation', 'Map Reading & Navigation official training course for Certificate C cadets in the Common wing.', 'Common', 'C', 4),
('a1000000-0000-0000-0000-0000173e1464', 'Field Craft & Battle Craft', 'Field Craft & Battle Craft official training course for Certificate C cadets in the Common wing.', 'Common', 'C', 5),
('a1000000-0000-0000-0000-00002d69b84d', 'Military History & War Heroes', 'Military History & War Heroes official training course for Certificate C cadets in the Common wing.', 'Common', 'C', 6),
('a1000000-0000-0000-0000-0000282e60fa', 'General Awareness & Current Affairs', 'General Awareness & Current Affairs official training course for Certificate C cadets in the Common wing.', 'Common', 'C', 7),
('a1000000-0000-0000-0000-0000400027dd', 'Officer Like Qualities (OLQs) & Interview Skills', 'Officer Like Qualities (OLQs) & Interview Skills official training course for Certificate C cadets in the Common wing.', 'Common', 'C', 8),
('a1000000-0000-0000-0000-000004518ce7', 'Field Craft Basics', 'Field Craft Basics official training course for Certificate A cadets in the Army wing.', 'Army', 'A', 4),
('a1000000-0000-0000-0000-00005b295d90', 'Drill with Arms', 'Drill with Arms official training course for Certificate A cadets in the Army wing.', 'Army', 'A', 5),
('a1000000-0000-0000-0000-000000000006', 'Weapon Training', 'Weapon Training official training course for Certificate A cadets in the Army wing.', 'Army', 'A', 6),
('a1000000-0000-0000-0000-00007250c9a6', 'Section Formation', 'Section Formation official training course for Certificate A cadets in the Army wing.', 'Army', 'A', 7),
('a1000000-0000-0000-0000-00001cddd660', 'Guard Mounting', 'Guard Mounting official training course for Certificate A cadets in the Army wing.', 'Army', 'A', 8),
('a1000000-0000-0000-0000-000076b802f1', 'Battle Craft Basics', 'Battle Craft Basics official training course for Certificate A cadets in the Army wing.', 'Army', 'A', 9),
('a1000000-0000-0000-0000-00005bda6445', 'Advanced Weapon Training', 'Advanced Weapon Training official training course for Certificate B cadets in the Army wing.', 'Army', 'B', 4),
('a1000000-0000-0000-0000-00004ef72cf6', 'Field Signals', 'Field Signals official training course for Certificate B cadets in the Army wing.', 'Army', 'B', 5),
('a1000000-0000-0000-0000-00000fa26f23', 'Patrolling', 'Patrolling official training course for Certificate B cadets in the Army wing.', 'Army', 'B', 6),
('a1000000-0000-0000-0000-0000091f2132', 'Camouflage & Concealment', 'Camouflage & Concealment official training course for Certificate B cadets in the Army wing.', 'Army', 'B', 7),
('a1000000-0000-0000-0000-000010986329', 'Section Battle Drill', 'Section Battle Drill official training course for Certificate B cadets in the Army wing.', 'Army', 'B', 8),
('a1000000-0000-0000-0000-00002d119e7b', 'Ambush & Defence', 'Ambush & Defence official training course for Certificate B cadets in the Army wing.', 'Army', 'B', 9),
('a1000000-0000-0000-0000-000069281cf8', 'Tactical Exercises', 'Tactical Exercises official training course for Certificate C cadets in the Army wing.', 'Army', 'C', 4),
('a1000000-0000-0000-0000-0000455ec376', 'Platoon Formation', 'Platoon Formation official training course for Certificate C cadets in the Army wing.', 'Army', 'C', 5);

INSERT INTO public.courses (id, title, description, target_wing, certificate_level, duration_hours) VALUES
('a1000000-0000-0000-0000-000027c89a44', 'Advanced Battle Craft', 'Advanced Battle Craft official training course for Certificate C cadets in the Army wing.', 'Army', 'C', 6),
('a1000000-0000-0000-0000-00006a0b9015', 'Internal Security Duties', 'Internal Security Duties official training course for Certificate C cadets in the Army wing.', 'Army', 'C', 7),
('a1000000-0000-0000-0000-00006aaa9a6d', 'Field Engineering', 'Field Engineering official training course for Certificate C cadets in the Army wing.', 'Army', 'C', 8),
('a1000000-0000-0000-0000-00005baa8724', 'Communication Procedures', 'Communication Procedures official training course for Certificate C cadets in the Army wing.', 'Army', 'C', 9),
('a1000000-0000-0000-0000-00002c4f7734', 'Map Reading Advanced', 'Map Reading Advanced official training course for Certificate C cadets in the Army wing.', 'Army', 'C', 10),
('a1000000-0000-0000-0000-000007da05fb', 'Naval Orientation', 'Naval Orientation official training course for Certificate A cadets in the Navy wing.', 'Navy', 'A', 4),
('a1000000-0000-0000-0000-000010cd3522', 'Parts of Ship', 'Parts of Ship official training course for Certificate A cadets in the Navy wing.', 'Navy', 'A', 5),
('a1000000-0000-0000-0000-000078b8bad6', 'Seamanship', 'Seamanship official training course for Certificate A cadets in the Navy wing.', 'Navy', 'A', 6),
('a1000000-0000-0000-0000-000060f74a80', 'Boat Pulling', 'Boat Pulling official training course for Certificate A cadets in the Navy wing.', 'Navy', 'A', 7),
('a1000000-0000-0000-0000-00005f26bbb8', 'Rigging', 'Rigging official training course for Certificate A cadets in the Navy wing.', 'Navy', 'A', 8),
('a1000000-0000-0000-0000-00005f71361c', 'Naval Communication Basics', 'Naval Communication Basics official training course for Certificate A cadets in the Navy wing.', 'Navy', 'A', 9),
('a1000000-0000-0000-0000-000033de1536', 'Navigation', 'Navigation official training course for Certificate B cadets in the Navy wing.', 'Navy', 'B', 4),
('a1000000-0000-0000-0000-00003e351a55', 'Anchoring', 'Anchoring official training course for Certificate B cadets in the Navy wing.', 'Navy', 'B', 5),
('a1000000-0000-0000-0000-000066541bbd', 'Ship Modelling', 'Ship Modelling official training course for Certificate B cadets in the Navy wing.', 'Navy', 'B', 6),
('a1000000-0000-0000-0000-00000e385149', 'Naval Signals', 'Naval Signals official training course for Certificate B cadets in the Navy wing.', 'Navy', 'B', 7),
('a1000000-0000-0000-0000-000002b2020d', 'Boat Sailing', 'Boat Sailing official training course for Certificate B cadets in the Navy wing.', 'Navy', 'B', 8),
('a1000000-0000-0000-0000-0000173c9633', 'Tides & Compass', 'Tides & Compass official training course for Certificate B cadets in the Navy wing.', 'Navy', 'B', 9),
('a1000000-0000-0000-0000-00003bf3e26f', 'Advanced Navigation', 'Advanced Navigation official training course for Certificate C cadets in the Navy wing.', 'Navy', 'C', 4),
('a1000000-0000-0000-0000-0000446f03a2', 'Naval Warfare Basics', 'Naval Warfare Basics official training course for Certificate C cadets in the Navy wing.', 'Navy', 'C', 5),
('a1000000-0000-0000-0000-00007ebeb8bd', 'Ship Organisation', 'Ship Organisation official training course for Certificate C cadets in the Navy wing.', 'Navy', 'C', 6),
('a1000000-0000-0000-0000-00004d1d4699', 'Communication Systems', 'Communication Systems official training course for Certificate C cadets in the Navy wing.', 'Navy', 'C', 7),
('a1000000-0000-0000-0000-000056db673e', 'Sailing Expeditions', 'Sailing Expeditions official training course for Certificate C cadets in the Navy wing.', 'Navy', 'C', 8),
('a1000000-0000-0000-0000-000005e105c1', 'Naval Weapons Basics', 'Naval Weapons Basics official training course for Certificate C cadets in the Navy wing.', 'Navy', 'C', 9),
('a1000000-0000-0000-0000-00005e58b4dc', 'Leadership at Sea', 'Leadership at Sea official training course for Certificate C cadets in the Navy wing.', 'Navy', 'C', 10),
('a1000000-0000-0000-0000-00001e49cb34', 'Principles of Flight', 'Principles of Flight official training course for Certificate A cadets in the Air Force wing.', 'Air Force', 'A', 4),
('a1000000-0000-0000-0000-00003f04d489', 'Airframe & Aircraft Parts', 'Airframe & Aircraft Parts official training course for Certificate A cadets in the Air Force wing.', 'Air Force', 'A', 5),
('a1000000-0000-0000-0000-000021b5014e', 'Flying Basics', 'Flying Basics official training course for Certificate A cadets in the Air Force wing.', 'Air Force', 'A', 6),
('a1000000-0000-0000-0000-000009934b67', 'Aviation History', 'Aviation History official training course for Certificate A cadets in the Air Force wing.', 'Air Force', 'A', 7),
('a1000000-0000-0000-0000-00001e256fdc', 'Aero Modelling', 'Aero Modelling official training course for Certificate A cadets in the Air Force wing.', 'Air Force', 'A', 8),
('a1000000-0000-0000-0000-0000197a9a17', 'Air Navigation Basics', 'Air Navigation Basics official training course for Certificate A cadets in the Air Force wing.', 'Air Force', 'A', 9),
('a1000000-0000-0000-0000-00007d5b2b7b', 'Aircraft Instruments', 'Aircraft Instruments official training course for Certificate B cadets in the Air Force wing.', 'Air Force', 'B', 4),
('a1000000-0000-0000-0000-00003f85a3d5', 'Meteorology', 'Meteorology official training course for Certificate B cadets in the Air Force wing.', 'Air Force', 'B', 5),
('a1000000-0000-0000-0000-00001e091e5c', 'Air Traffic Control Basics', 'Air Traffic Control Basics official training course for Certificate B cadets in the Air Force wing.', 'Air Force', 'B', 6),
('a1000000-0000-0000-0000-00007b3ed32b', 'Navigation Advanced', 'Navigation Advanced official training course for Certificate B cadets in the Air Force wing.', 'Air Force', 'B', 7),
('a1000000-0000-0000-0000-000025fea92b', 'Aero Engines', 'Aero Engines official training course for Certificate B cadets in the Air Force wing.', 'Air Force', 'B', 8),
('a1000000-0000-0000-0000-00001042448d', 'Map Reading for Aviation', 'Map Reading for Aviation official training course for Certificate B cadets in the Air Force wing.', 'Air Force', 'B', 9),
('a1000000-0000-0000-0000-0000191cb74a', 'Advanced Aviation Subjects', 'Advanced Aviation Subjects official training course for Certificate C cadets in the Air Force wing.', 'Air Force', 'C', 4),
('a1000000-0000-0000-0000-0000665f0342', 'Flight Navigation', 'Flight Navigation official training course for Certificate C cadets in the Air Force wing.', 'Air Force', 'C', 5),
('a1000000-0000-0000-0000-000010eaf56f', 'Aircraft Recognition', 'Aircraft Recognition official training course for Certificate C cadets in the Air Force wing.', 'Air Force', 'C', 6),
('a1000000-0000-0000-0000-00002cf3b089', 'Air Power & Warfare', 'Air Power & Warfare official training course for Certificate C cadets in the Air Force wing.', 'Air Force', 'C', 7),
('a1000000-0000-0000-0000-00007f71eb3d', 'Aero Engine Systems', 'Aero Engine Systems official training course for Certificate C cadets in the Air Force wing.', 'Air Force', 'C', 8),
('a1000000-0000-0000-0000-000060be762f', 'Aviation Safety', 'Aviation Safety official training course for Certificate C cadets in the Air Force wing.', 'Air Force', 'C', 9),
('a1000000-0000-0000-0000-00004684706e', 'Air Force Leadership & Communication', 'Air Force Leadership & Communication official training course for Certificate C cadets in the Air Force wing.', 'Air Force', 'C', 10);

-- ============================================
-- MODULES
-- ============================================
INSERT INTO public.modules (id, course_id, title, order_index) VALUES
('b1000000-0000-0000-0000-0000784393e0', 'a1000000-0000-0000-0000-000000000001', 'History & Evolution of NCC', 1),
('b1000000-0000-0000-0000-0000784393df', 'a1000000-0000-0000-0000-000000000001', 'NCC Activities & Camps', 2),
('b1000000-0000-0000-0000-0000784393c1', 'a1000000-0000-0000-0000-000000000002', 'Basic Foot Drill', 1),
('b1000000-0000-0000-0000-0000784393c0', 'a1000000-0000-0000-0000-000000000002', 'Parade Formations', 2),
('b1000000-0000-0000-0000-000063203e03', 'a1000000-0000-0000-0000-00002d6df6d2', 'Core Concepts of Weapon Training & Infantry Weapons', 1),
('b1000000-0000-0000-0000-000063203e04', 'a1000000-0000-0000-0000-00002d6df6d2', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000784393a2', 'a1000000-0000-0000-0000-000000000003', 'Core Concepts of National Integration', 1),
('b1000000-0000-0000-0000-0000784393a1', 'a1000000-0000-0000-0000-000000000003', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00001aa16c89', 'a1000000-0000-0000-0000-0000174a3d1e', 'Core Concepts of Leadership & Personality Development', 1),
('b1000000-0000-0000-0000-00001aa16c8a', 'a1000000-0000-0000-0000-0000174a3d1e', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00000343433a', 'a1000000-0000-0000-0000-000071e9b09d', 'Core Concepts of Civil Defence & Disaster Management', 1),
('b1000000-0000-0000-0000-00000343433b', 'a1000000-0000-0000-0000-000071e9b09d', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000240c3a67', 'a1000000-0000-0000-0000-000057c82e75', 'Core Concepts of Social Service & Awareness', 1),
('b1000000-0000-0000-0000-0000240c3a66', 'a1000000-0000-0000-0000-000057c82e75', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000078439383', 'a1000000-0000-0000-0000-000000000004', 'First Aid Fundamentals', 1),
('b1000000-0000-0000-0000-000078439382', 'a1000000-0000-0000-0000-000000000004', 'Personal Hygiene', 2),
('b1000000-0000-0000-0000-00001eed3e8a', 'a1000000-0000-0000-0000-00005409f313', 'Core Concepts of Yoga & Asanas', 1),
('b1000000-0000-0000-0000-00001eed3e8b', 'a1000000-0000-0000-0000-00005409f313', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000050ab1641', 'a1000000-0000-0000-0000-00001aefb067', 'Core Concepts of Home Nursing', 1),
('b1000000-0000-0000-0000-000050ab1642', 'a1000000-0000-0000-0000-00001aefb067', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00006ab4b79c', 'a1000000-0000-0000-0000-000000490880', 'Core Concepts of Posture Training', 1),
('b1000000-0000-0000-0000-00006ab4b79d', 'a1000000-0000-0000-0000-000000490880', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000055702413', 'a1000000-0000-0000-0000-0000240e6113', 'Core Concepts of Obstacles Training & Adventure Activities', 1),
('b1000000-0000-0000-0000-000055702412', 'a1000000-0000-0000-0000-0000240e6113', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000022cc049a', 'a1000000-0000-0000-0000-000008b4468c', 'Core Concepts of Career in Defence Services', 1),
('b1000000-0000-0000-0000-000022cc049b', 'a1000000-0000-0000-0000-000008b4468c', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00006033a39d', 'a1000000-0000-0000-0000-000038908d40', 'Core Concepts of Services Tests & Interviews', 1),
('b1000000-0000-0000-0000-00006033a39e', 'a1000000-0000-0000-0000-000038908d40', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00003bdb4e82', 'a1000000-0000-0000-0000-000039ef9e7c', 'Core Concepts of Self-Defence', 1),
('b1000000-0000-0000-0000-00003bdb4e83', 'a1000000-0000-0000-0000-000039ef9e7c', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000030d146a1', 'a1000000-0000-0000-0000-00003c4316e3', 'Core Concepts of Environment and Ecology', 1),
('b1000000-0000-0000-0000-000030d146a0', 'a1000000-0000-0000-0000-00003c4316e3', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000581e038e', 'a1000000-0000-0000-0000-0000199562e4', 'Core Concepts of Famous Leaders of India', 1),
('b1000000-0000-0000-0000-0000581e038d', 'a1000000-0000-0000-0000-0000199562e4', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00007eec7289', 'a1000000-0000-0000-0000-000071fe9b19', 'Core Concepts of History of India', 1),
('b1000000-0000-0000-0000-00007eec7288', 'a1000000-0000-0000-0000-000071fe9b19', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000009a88f7', 'a1000000-0000-0000-0000-00000ba7d77f', 'Core Concepts of Armed Forces & Military History', 1),
('b1000000-0000-0000-0000-0000009a88f8', 'a1000000-0000-0000-0000-00000ba7d77f', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000078439364', 'a1000000-0000-0000-0000-000000000005', 'Introduction to Maps', 1),
('b1000000-0000-0000-0000-000078439363', 'a1000000-0000-0000-0000-000000000005', 'Compass & Navigation', 2),
('b1000000-0000-0000-0000-0000123ac618', 'a1000000-0000-0000-0000-0000382075a9', 'Core Concepts of Communication', 1),
('b1000000-0000-0000-0000-0000123ac617', 'a1000000-0000-0000-0000-0000382075a9', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00004a3aa10a', 'a1000000-0000-0000-0000-0000266d0d05', 'Core Concepts of Field Craft & Battle Craft', 1),
('b1000000-0000-0000-0000-00004a3aa109', 'a1000000-0000-0000-0000-0000266d0d05', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000050d1b041', 'a1000000-0000-0000-0000-000016a26b66', 'Core Concepts of Personality Development & Officer Like Qualities (OLQs)', 1),
('b1000000-0000-0000-0000-000050d1b040', 'a1000000-0000-0000-0000-000016a26b66', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000625c7021', 'a1000000-0000-0000-0000-00004a803f19', 'Core Concepts of Disaster Management & Social Awareness', 1),
('b1000000-0000-0000-0000-0000625c7022', 'a1000000-0000-0000-0000-00004a803f19', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000021370671', 'a1000000-0000-0000-0000-00002ba41949', 'Core Concepts of Advanced Leadership', 1),
('b1000000-0000-0000-0000-000021370672', 'a1000000-0000-0000-0000-00002ba41949', 'Practical Training & Operations', 2);

INSERT INTO public.modules (id, course_id, title, order_index) VALUES
('b1000000-0000-0000-0000-00002d148b12', 'a1000000-0000-0000-0000-00000b8cf529', 'Core Concepts of Advanced Drill', 1),
('b1000000-0000-0000-0000-00002d148b11', 'a1000000-0000-0000-0000-00000b8cf529', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00007659e2b7', 'a1000000-0000-0000-0000-000019d3bbde', 'Core Concepts of National Security', 1),
('b1000000-0000-0000-0000-00007659e2b6', 'a1000000-0000-0000-0000-000019d3bbde', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00002d49ad86', 'a1000000-0000-0000-0000-000017470581', 'Core Concepts of Armed Forces Organisation', 1),
('b1000000-0000-0000-0000-00002d49ad85', 'a1000000-0000-0000-0000-000017470581', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000356c3e6c', 'a1000000-0000-0000-0000-0000636a9bea', 'Core Concepts of Disaster Management', 1),
('b1000000-0000-0000-0000-0000356c3e6b', 'a1000000-0000-0000-0000-0000636a9bea', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00001785b621', 'a1000000-0000-0000-0000-000015e087f8', 'Core Concepts of Social Service & Community Development', 1),
('b1000000-0000-0000-0000-00001785b622', 'a1000000-0000-0000-0000-000015e087f8', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00002bd326eb', 'a1000000-0000-0000-0000-00000f5e0237', 'Core Concepts of Personality Development & Communication Skills', 1),
('b1000000-0000-0000-0000-00002bd326ea', 'a1000000-0000-0000-0000-00000f5e0237', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00001fa75b86', 'a1000000-0000-0000-0000-00007f311b52', 'Core Concepts of Map Reading & Navigation', 1),
('b1000000-0000-0000-0000-00001fa75b87', 'a1000000-0000-0000-0000-00007f311b52', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000013a36038', 'a1000000-0000-0000-0000-0000173e1464', 'Core Concepts of Field Craft & Battle Craft', 1),
('b1000000-0000-0000-0000-000013a36037', 'a1000000-0000-0000-0000-0000173e1464', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00001987b7e6', 'a1000000-0000-0000-0000-00002d69b84d', 'Core Concepts of Military History & War Heroes', 1),
('b1000000-0000-0000-0000-00001987b7e7', 'a1000000-0000-0000-0000-00002d69b84d', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00004c1ea1ed', 'a1000000-0000-0000-0000-0000282e60fa', 'Core Concepts of General Awareness & Current Affairs', 1),
('b1000000-0000-0000-0000-00004c1ea1ec', 'a1000000-0000-0000-0000-0000282e60fa', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00002711b0e0', 'a1000000-0000-0000-0000-0000400027dd', 'Core Concepts of Officer Like Qualities (OLQs) & Interview Skills', 1),
('b1000000-0000-0000-0000-00002711b0df', 'a1000000-0000-0000-0000-0000400027dd', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000031fdd324', 'a1000000-0000-0000-0000-000004518ce7', 'Core Concepts of Field Craft Basics', 1),
('b1000000-0000-0000-0000-000031fdd325', 'a1000000-0000-0000-0000-000004518ce7', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00003093a947', 'a1000000-0000-0000-0000-00005b295d90', 'Core Concepts of Drill with Arms', 1),
('b1000000-0000-0000-0000-00003093a948', 'a1000000-0000-0000-0000-00005b295d90', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000078439345', 'a1000000-0000-0000-0000-000000000006', 'Core Concepts of Weapon Training', 1),
('b1000000-0000-0000-0000-000078439344', 'a1000000-0000-0000-0000-000000000006', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000070b075c0', 'a1000000-0000-0000-0000-00007250c9a6', 'Core Concepts of Section Formation', 1),
('b1000000-0000-0000-0000-000070b075c1', 'a1000000-0000-0000-0000-00007250c9a6', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000017c3941d', 'a1000000-0000-0000-0000-00001cddd660', 'Core Concepts of Guard Mounting', 1),
('b1000000-0000-0000-0000-000017c3941c', 'a1000000-0000-0000-0000-00001cddd660', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000067828d7f', 'a1000000-0000-0000-0000-000076b802f1', 'Core Concepts of Battle Craft Basics', 1),
('b1000000-0000-0000-0000-000067828d80', 'a1000000-0000-0000-0000-000076b802f1', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000363ab7a8', 'a1000000-0000-0000-0000-00005bda6445', 'Core Concepts of Advanced Weapon Training', 1),
('b1000000-0000-0000-0000-0000363ab7a7', 'a1000000-0000-0000-0000-00005bda6445', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000070dcf862', 'a1000000-0000-0000-0000-00004ef72cf6', 'Core Concepts of Field Signals', 1),
('b1000000-0000-0000-0000-000070dcf861', 'a1000000-0000-0000-0000-00004ef72cf6', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00006adbf357', 'a1000000-0000-0000-0000-00000fa26f23', 'Core Concepts of Patrolling', 1),
('b1000000-0000-0000-0000-00006adbf356', 'a1000000-0000-0000-0000-00000fa26f23', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00004030647b', 'a1000000-0000-0000-0000-0000091f2132', 'Core Concepts of Camouflage & Concealment', 1),
('b1000000-0000-0000-0000-00004030647a', 'a1000000-0000-0000-0000-0000091f2132', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00000615a7ff', 'a1000000-0000-0000-0000-000010986329', 'Core Concepts of Section Battle Drill', 1),
('b1000000-0000-0000-0000-00000615a800', 'a1000000-0000-0000-0000-000010986329', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000013486b8', 'a1000000-0000-0000-0000-00002d119e7b', 'Core Concepts of Ambush & Defence', 1),
('b1000000-0000-0000-0000-0000013486b9', 'a1000000-0000-0000-0000-00002d119e7b', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00001fdae774', 'a1000000-0000-0000-0000-000069281cf8', 'Core Concepts of Tactical Exercises', 1),
('b1000000-0000-0000-0000-00001fdae775', 'a1000000-0000-0000-0000-000069281cf8', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000045f43061', 'a1000000-0000-0000-0000-0000455ec376', 'Core Concepts of Platoon Formation', 1),
('b1000000-0000-0000-0000-000045f43062', 'a1000000-0000-0000-0000-0000455ec376', 'Practical Training & Operations', 2);

INSERT INTO public.modules (id, course_id, title, order_index) VALUES
('b1000000-0000-0000-0000-00001f87403f', 'a1000000-0000-0000-0000-000027c89a44', 'Core Concepts of Advanced Battle Craft', 1),
('b1000000-0000-0000-0000-00001f874040', 'a1000000-0000-0000-0000-000027c89a44', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00003941c3a9', 'a1000000-0000-0000-0000-00006a0b9015', 'Core Concepts of Internal Security Duties', 1),
('b1000000-0000-0000-0000-00003941c3aa', 'a1000000-0000-0000-0000-00006a0b9015', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000057b4a120', 'a1000000-0000-0000-0000-00006aaa9a6d', 'Core Concepts of Field Engineering', 1),
('b1000000-0000-0000-0000-000057b4a121', 'a1000000-0000-0000-0000-00006aaa9a6d', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00002b301b13', 'a1000000-0000-0000-0000-00005baa8724', 'Core Concepts of Communication Procedures', 1),
('b1000000-0000-0000-0000-00002b301b14', 'a1000000-0000-0000-0000-00005baa8724', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00006dba4823', 'a1000000-0000-0000-0000-00002c4f7734', 'Core Concepts of Map Reading Advanced', 1),
('b1000000-0000-0000-0000-00006dba4822', 'a1000000-0000-0000-0000-00002c4f7734', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000071493c5c', 'a1000000-0000-0000-0000-000007da05fb', 'Core Concepts of Naval Orientation', 1),
('b1000000-0000-0000-0000-000071493c5d', 'a1000000-0000-0000-0000-000007da05fb', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00000138c2a1', 'a1000000-0000-0000-0000-000010cd3522', 'Core Concepts of Parts of Ship', 1),
('b1000000-0000-0000-0000-00000138c2a0', 'a1000000-0000-0000-0000-000010cd3522', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00003a1ad4f9', 'a1000000-0000-0000-0000-000078b8bad6', 'Core Concepts of Seamanship', 1),
('b1000000-0000-0000-0000-00003a1ad4fa', 'a1000000-0000-0000-0000-000078b8bad6', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000036283451', 'a1000000-0000-0000-0000-000060f74a80', 'Core Concepts of Boat Pulling', 1),
('b1000000-0000-0000-0000-000036283452', 'a1000000-0000-0000-0000-000060f74a80', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000328c594a', 'a1000000-0000-0000-0000-00005f26bbb8', 'Core Concepts of Rigging', 1),
('b1000000-0000-0000-0000-0000328c5949', 'a1000000-0000-0000-0000-00005f26bbb8', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000035406fdf', 'a1000000-0000-0000-0000-00005f71361c', 'Core Concepts of Naval Communication Basics', 1),
('b1000000-0000-0000-0000-000035406fde', 'a1000000-0000-0000-0000-00005f71361c', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00006a8d74e7', 'a1000000-0000-0000-0000-000033de1536', 'Core Concepts of Navigation', 1),
('b1000000-0000-0000-0000-00006a8d74e6', 'a1000000-0000-0000-0000-000033de1536', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00006d87611d', 'a1000000-0000-0000-0000-00003e351a55', 'Core Concepts of Anchoring', 1),
('b1000000-0000-0000-0000-00006d87611e', 'a1000000-0000-0000-0000-00003e351a55', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00007fe9cdf1', 'a1000000-0000-0000-0000-000066541bbd', 'Core Concepts of Ship Modelling', 1),
('b1000000-0000-0000-0000-00007fe9cdf0', 'a1000000-0000-0000-0000-000066541bbd', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00004a04d91a', 'a1000000-0000-0000-0000-00000e385149', 'Core Concepts of Naval Signals', 1),
('b1000000-0000-0000-0000-00004a04d919', 'a1000000-0000-0000-0000-00000e385149', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000501f0747', 'a1000000-0000-0000-0000-000002b2020d', 'Core Concepts of Boat Sailing', 1),
('b1000000-0000-0000-0000-0000501f0746', 'a1000000-0000-0000-0000-000002b2020d', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000169b7812', 'a1000000-0000-0000-0000-0000173c9633', 'Core Concepts of Tides & Compass', 1),
('b1000000-0000-0000-0000-0000169b7811', 'a1000000-0000-0000-0000-0000173c9633', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000040e09658', 'a1000000-0000-0000-0000-00003bf3e26f', 'Core Concepts of Advanced Navigation', 1),
('b1000000-0000-0000-0000-000040e09657', 'a1000000-0000-0000-0000-00003bf3e26f', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000011e005dd', 'a1000000-0000-0000-0000-0000446f03a2', 'Core Concepts of Naval Warfare Basics', 1),
('b1000000-0000-0000-0000-000011e005de', 'a1000000-0000-0000-0000-0000446f03a2', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00003698d908', 'a1000000-0000-0000-0000-00007ebeb8bd', 'Core Concepts of Ship Organisation', 1),
('b1000000-0000-0000-0000-00003698d907', 'a1000000-0000-0000-0000-00007ebeb8bd', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00007f974404', 'a1000000-0000-0000-0000-00004d1d4699', 'Core Concepts of Communication Systems', 1),
('b1000000-0000-0000-0000-00007f974403', 'a1000000-0000-0000-0000-00004d1d4699', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00000f383631', 'a1000000-0000-0000-0000-000056db673e', 'Core Concepts of Sailing Expeditions', 1),
('b1000000-0000-0000-0000-00000f383630', 'a1000000-0000-0000-0000-000056db673e', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00007b7b9123', 'a1000000-0000-0000-0000-000005e105c1', 'Core Concepts of Naval Weapons Basics', 1),
('b1000000-0000-0000-0000-00007b7b9122', 'a1000000-0000-0000-0000-000005e105c1', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000079a007d', 'a1000000-0000-0000-0000-00005e58b4dc', 'Core Concepts of Leadership at Sea', 1),
('b1000000-0000-0000-0000-0000079a007e', 'a1000000-0000-0000-0000-00005e58b4dc', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00007c86db38', 'a1000000-0000-0000-0000-00001e49cb34', 'Core Concepts of Principles of Flight', 1),
('b1000000-0000-0000-0000-00007c86db37', 'a1000000-0000-0000-0000-00001e49cb34', 'Practical Training & Operations', 2);

INSERT INTO public.modules (id, course_id, title, order_index) VALUES
('b1000000-0000-0000-0000-000037bb4959', 'a1000000-0000-0000-0000-00003f04d489', 'Core Concepts of Airframe & Aircraft Parts', 1),
('b1000000-0000-0000-0000-000037bb495a', 'a1000000-0000-0000-0000-00003f04d489', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000075a6ce7d', 'a1000000-0000-0000-0000-000021b5014e', 'Core Concepts of Flying Basics', 1),
('b1000000-0000-0000-0000-000075a6ce7e', 'a1000000-0000-0000-0000-000021b5014e', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000102cceef', 'a1000000-0000-0000-0000-000009934b67', 'Core Concepts of Aviation History', 1),
('b1000000-0000-0000-0000-0000102ccef0', 'a1000000-0000-0000-0000-000009934b67', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00001061b93b', 'a1000000-0000-0000-0000-00001e256fdc', 'Core Concepts of Aero Modelling', 1),
('b1000000-0000-0000-0000-00001061b93c', 'a1000000-0000-0000-0000-00001e256fdc', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000076965d9f', 'a1000000-0000-0000-0000-0000197a9a17', 'Core Concepts of Air Navigation Basics', 1),
('b1000000-0000-0000-0000-000076965d9e', 'a1000000-0000-0000-0000-0000197a9a17', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00000d5d138c', 'a1000000-0000-0000-0000-00007d5b2b7b', 'Core Concepts of Aircraft Instruments', 1),
('b1000000-0000-0000-0000-00000d5d138d', 'a1000000-0000-0000-0000-00007d5b2b7b', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00001f881a32', 'a1000000-0000-0000-0000-00003f85a3d5', 'Core Concepts of Meteorology', 1),
('b1000000-0000-0000-0000-00001f881a31', 'a1000000-0000-0000-0000-00003f85a3d5', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000052def51e', 'a1000000-0000-0000-0000-00001e091e5c', 'Core Concepts of Air Traffic Control Basics', 1),
('b1000000-0000-0000-0000-000052def51d', 'a1000000-0000-0000-0000-00001e091e5c', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000024680bdb', 'a1000000-0000-0000-0000-00007b3ed32b', 'Core Concepts of Navigation Advanced', 1),
('b1000000-0000-0000-0000-000024680bda', 'a1000000-0000-0000-0000-00007b3ed32b', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00003d632797', 'a1000000-0000-0000-0000-000025fea92b', 'Core Concepts of Aero Engines', 1),
('b1000000-0000-0000-0000-00003d632798', 'a1000000-0000-0000-0000-000025fea92b', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00000cc232e8', 'a1000000-0000-0000-0000-00001042448d', 'Core Concepts of Map Reading for Aviation', 1),
('b1000000-0000-0000-0000-00000cc232e7', 'a1000000-0000-0000-0000-00001042448d', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-0000519cac85', 'a1000000-0000-0000-0000-0000191cb74a', 'Core Concepts of Advanced Aviation Subjects', 1),
('b1000000-0000-0000-0000-0000519cac86', 'a1000000-0000-0000-0000-0000191cb74a', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00002abba691', 'a1000000-0000-0000-0000-0000665f0342', 'Core Concepts of Flight Navigation', 1),
('b1000000-0000-0000-0000-00002abba690', 'a1000000-0000-0000-0000-0000665f0342', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00006643ee07', 'a1000000-0000-0000-0000-000010eaf56f', 'Core Concepts of Aircraft Recognition', 1),
('b1000000-0000-0000-0000-00006643ee08', 'a1000000-0000-0000-0000-000010eaf56f', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00006d6f05ac', 'a1000000-0000-0000-0000-00002cf3b089', 'Core Concepts of Air Power & Warfare', 1),
('b1000000-0000-0000-0000-00006d6f05ab', 'a1000000-0000-0000-0000-00002cf3b089', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-000009e2f2b6', 'a1000000-0000-0000-0000-00007f71eb3d', 'Core Concepts of Aero Engine Systems', 1),
('b1000000-0000-0000-0000-000009e2f2b5', 'a1000000-0000-0000-0000-00007f71eb3d', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00004edb218f', 'a1000000-0000-0000-0000-000060be762f', 'Core Concepts of Aviation Safety', 1),
('b1000000-0000-0000-0000-00004edb218e', 'a1000000-0000-0000-0000-000060be762f', 'Practical Training & Operations', 2),
('b1000000-0000-0000-0000-00000982ccc5', 'a1000000-0000-0000-0000-00004684706e', 'Core Concepts of Air Force Leadership & Communication', 1),
('b1000000-0000-0000-0000-00000982ccc4', 'a1000000-0000-0000-0000-00004684706e', 'Practical Training & Operations', 2);

-- ============================================
-- CHAPTERS
-- ============================================
INSERT INTO public.chapters (id, module_id, title, content_type, content_data, order_index, content) VALUES
('c1000000-0000-0000-0000-000000000001', 'b1000000-0000-0000-0000-0000784393e0', 'Origin and Establishment of NCC', 'markdown', '{"markdown":"# Origin and Establishment of NCC\n\n## Background\nThe National Cadet Corps (NCC) came into existence on **15 July 1948** under the NCC Act XXXI of 1948. It was raised on the recommendation of **Pandit H.N. Kunzru Committee** in 1946.\n\n## Historical Roots\n- **1666**: First Volunteer Corps raised in India\n- **1917**: University Corps established during World War I\n- **1942**: University Officers Training Corps (UOTC) formed\n- **1948**: NCC established, replacing the UOTC\n\n## Key Facts\n| Detail | Information |\n|--------|------------|\n| Established | 15 July 1948 |\n| First DG | Lt Gen Grubb |\n| Parent Ministry | Ministry of Defence |\n| Headquarters | New Delhi |\n| Current Strength | ~14 Lakh cadets |\n\n## NCC Motto\n**\"Unity and Discipline\"** (एकता और अनुशासन)\n\n## NCC Pledge\n> We the cadets of the National Cadet Corps do solemnly pledge that we shall always uphold the unity of India. We shall never resort to violence and shall strive to be worthy citizens of our country.\n\n## NCC Song\nThe NCC Song **\"Hum Sab Bharatiya Hain\"** was written by **Sudarshan Faakir** and composed by the great poet himself."}'::jsonb, 1, '# Origin and Establishment of NCC

## Background
The National Cadet Corps (NCC) came into existence on **15 July 1948** under the NCC Act XXXI of 1948. It was raised on the recommendation of **Pandit H.N. Kunzru Committee** in 1946.

## Historical Roots
- **1666**: First Volunteer Corps raised in India
- **1917**: University Corps established during World War I
- **1942**: University Officers Training Corps (UOTC) formed
- **1948**: NCC established, replacing the UOTC

## Key Facts
| Detail | Information |
|--------|------------|
| Established | 15 July 1948 |
| First DG | Lt Gen Grubb |
| Parent Ministry | Ministry of Defence |
| Headquarters | New Delhi |
| Current Strength | ~14 Lakh cadets |

## NCC Motto
**"Unity and Discipline"** (एकता और अनुशासन)

## NCC Pledge
> We the cadets of the National Cadet Corps do solemnly pledge that we shall always uphold the unity of India. We shall never resort to violence and shall strive to be worthy citizens of our country.

## NCC Song
The NCC Song **"Hum Sab Bharatiya Hain"** was written by **Sudarshan Faakir** and composed by the great poet himself.'),
('c1000000-0000-0000-0000-000000000002', 'b1000000-0000-0000-0000-0000784393e0', 'NCC Aims and Objectives', 'markdown', '{"markdown":"# NCC Aims and Objectives\n\n## Primary Aims\n1. **Character Building** — Develop qualities of character, courage, comradeship, discipline, leadership, secular outlook, spirit of adventure, and ideals of selfless service\n2. **Unity** — Create a human resource of organized, trained, and motivated youth to provide leadership in all walks of life\n3. **Service** — Provide a suitable environment to motivate the youth to take up a career in the Armed Forces\n\n## Core Objectives\n- To develop character, comradeship, discipline, and a secular outlook\n- To create a pool of organized, trained, and motivated youth with leadership qualities\n- To provide a suitable environment to motivate the youth to take up career in Armed Forces\n- To develop qualities of selfless service among the youth\n\n## Three Cardinal Principles\n1. **Sense of Duty and Discipline**\n2. **Secular Outlook and Respect for Diversity**\n3. **Spirit of Selfless Service**\n\n## NCC Flag\nThe NCC flag has three colors representing the three wings:\n- **Red** — Army Wing\n- **Dark Blue** — Navy Wing\n- **Light Blue** — Air Force Wing\n\nThe NCC crest is in the center with the motto \"Unity and Discipline\" inscribed below."}'::jsonb, 2, '# NCC Aims and Objectives

## Primary Aims
1. **Character Building** — Develop qualities of character, courage, comradeship, discipline, leadership, secular outlook, spirit of adventure, and ideals of selfless service
2. **Unity** — Create a human resource of organized, trained, and motivated youth to provide leadership in all walks of life
3. **Service** — Provide a suitable environment to motivate the youth to take up a career in the Armed Forces

## Core Objectives
- To develop character, comradeship, discipline, and a secular outlook
- To create a pool of organized, trained, and motivated youth with leadership qualities
- To provide a suitable environment to motivate the youth to take up career in Armed Forces
- To develop qualities of selfless service among the youth

## Three Cardinal Principles
1. **Sense of Duty and Discipline**
2. **Secular Outlook and Respect for Diversity**
3. **Spirit of Selfless Service**

## NCC Flag
The NCC flag has three colors representing the three wings:
- **Red** — Army Wing
- **Dark Blue** — Navy Wing
- **Light Blue** — Air Force Wing

The NCC crest is in the center with the motto "Unity and Discipline" inscribed below.'),
('c1000000-0000-0000-0000-000000000003', 'b1000000-0000-0000-0000-0000784393df', 'NCC Certificates - A, B & C', 'markdown', '{"markdown":"# NCC Certificates — A, B & C\n\n## Certificate Levels\n\n### A Certificate\n- **Eligibility**: Class VIII to X (2 years in JD/JW)\n- **Exam Pattern**: Written (100 marks) + Practical (100 marks)\n- **Key Benefits**: 5-10 bonus marks in various state board exams\n\n### B Certificate\n- **Eligibility**: Class XI to XII / 1st & 2nd year college (2 years in SD/SW)\n- **Exam Pattern**: Written (150 marks) + Practical (150 marks)\n- **Key Benefits**: Preference in government jobs, bonus marks in competitive exams\n\n### C Certificate\n- **Eligibility**: 2nd & 3rd year college (minimum 3 years total NCC)\n- **Exam Pattern**: Written (200 marks) + Practical (200 marks)\n- **Key Benefits**: Direct entry in Armed Forces (Short Service Commission), exemption from CDS written exam\n\n## Exam Pattern (Latest)\n| Component | A Cert | B Cert | C Cert |\n|-----------|--------|--------|--------|\n| Written | 100 | 150 | 200 |\n| Practical/Drill | 60 | 80 | 120 |\n| Camp Attendance | 40 | 70 | 80 |\n| **Total** | **200** | **300** | **400** |\n| Passing % | 45% | 50% | 50% |\n\n## Important Notes\n- C Certificate holders get **direct entry** to Indian Military Academy (IMA) and Officers Training Academy (OTA)\n- NCC C Certificate holders are **exempted from written exam of CDS**"}'::jsonb, 1, '# NCC Certificates — A, B & C

## Certificate Levels

### A Certificate
- **Eligibility**: Class VIII to X (2 years in JD/JW)
- **Exam Pattern**: Written (100 marks) + Practical (100 marks)
- **Key Benefits**: 5-10 bonus marks in various state board exams

### B Certificate
- **Eligibility**: Class XI to XII / 1st & 2nd year college (2 years in SD/SW)
- **Exam Pattern**: Written (150 marks) + Practical (150 marks)
- **Key Benefits**: Preference in government jobs, bonus marks in competitive exams

### C Certificate
- **Eligibility**: 2nd & 3rd year college (minimum 3 years total NCC)
- **Exam Pattern**: Written (200 marks) + Practical (200 marks)
- **Key Benefits**: Direct entry in Armed Forces (Short Service Commission), exemption from CDS written exam

## Exam Pattern (Latest)
| Component | A Cert | B Cert | C Cert |
|-----------|--------|--------|--------|
| Written | 100 | 150 | 200 |
| Practical/Drill | 60 | 80 | 120 |
| Camp Attendance | 40 | 70 | 80 |
| **Total** | **200** | **300** | **400** |
| Passing % | 45% | 50% | 50% |

## Important Notes
- C Certificate holders get **direct entry** to Indian Military Academy (IMA) and Officers Training Academy (OTA)
- NCC C Certificate holders are **exempted from written exam of CDS**'),
('c1000000-0000-0000-0000-000075ae127a', 'b1000000-0000-0000-0000-0000784393df', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **NCC At a Glance**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **NCC At a Glance**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000000000004', 'b1000000-0000-0000-0000-0000784393c1', 'Attention and Stand at Ease', 'markdown', '{"markdown":"# Attention and Stand at Ease\n\n## Position of Attention (Savdhan)\nThe Position of Attention is the basic military position from which all drill movements begin.\n\n### Correct Position\n1. **Heels** together, touching and in line\n2. **Feet** turned out equally, forming an angle of 30 degrees\n3. **Knees** straight but not locked\n4. **Body** erect, weight balanced on both feet\n5. **Shoulders** level, square to the front\n6. **Arms** hanging naturally, thumbs behind the second joint of the forefinger\n7. **Head** erect, neck touching the collar, eyes looking straight ahead\n8. **Chest** lifted naturally\n\n### Word of Command\n**\"Squad — ATTENTION!\"** (Daste — SAVDHAN!)\n- Cautionary: \"Squad\" — to alert\n- Executive: \"ATTENTION\" — to execute\n\n## Stand at Ease (Vishram)\n### Correct Position\n1. Left foot moves **15 inches** (38 cm) to the left\n2. Arms placed behind the back, right hand holding left hand\n3. Body weight distributed equally on both feet\n4. Remain silent and still\n\n### Word of Command\n**\"Stand at — EASE!\"** (Vishram!)"}'::jsonb, 1, '# Attention and Stand at Ease

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
**"Stand at — EASE!"** (Vishram!)'),
('c1000000-0000-0000-0000-000000000005', 'b1000000-0000-0000-0000-0000784393c1', 'Turning and Saluting', 'markdown', '{"markdown":"# Turning and Saluting\n\n## Turnings at the Halt\nAll turnings are done in two movements:\n\n### Right Turn (Dahine Mud)\n1. **Movement 1**: Turn 90° to the right on right heel and left toe\n2. **Movement 2**: Bring left foot smartly alongside right foot\n\n### Left Turn (Bayein Mud)\n1. **Movement 1**: Turn 90° to the left on left heel and right toe\n2. **Movement 2**: Bring right foot smartly alongside left foot\n\n### About Turn (Peeche Mud)\n1. **Movement 1**: Turn 180° to the right on right heel and left toe\n2. **Movement 2**: Bring left foot smartly alongside right foot\n\n## Saluting\n\n### Hand Salute (Salami Shastra)\nThe salute is the military greeting. It is a mark of mutual respect and courtesy.\n\n**How to perform:**\n1. Raise right hand smartly by the shortest route\n2. Fingers extended and close together, palm facing left\n3. Tip of middle finger touches the right eyebrow (or cap brim)\n4. Upper arm horizontal, forearm at 45 degrees\n5. Hold for the required duration\n6. Cut away smartly to the position of attention\n\n### When to Salute\n- National Flag and National Anthem\n- All commissioned officers\n- During funeral processions\n- War memorials"}'::jsonb, 2, '# Turning and Saluting

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
- War memorials'),
('c1000000-0000-0000-0000-000075ad9e1c', 'b1000000-0000-0000-0000-0000784393c0', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Drill & Commands**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Drill & Commands**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000075ad9e1b', 'b1000000-0000-0000-0000-0000784393c0', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Drill & Commands**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Drill & Commands**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00001c08cee7', 'b1000000-0000-0000-0000-000063203e03', 'Introduction to Weapon Training & Infantry Weapons', 'markdown', '{"markdown":"# Introduction to Weapon Training & Infantry Weapons\n\n## Overview\nThis chapter covers the basic fundamentals of **Weapon Training & Infantry Weapons**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Weapon Training & Infantry Weapons**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Weapon Training & Infantry Weapons** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Weapon Training & Infantry Weapons

## Overview
This chapter covers the basic fundamentals of **Weapon Training & Infantry Weapons**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Weapon Training & Infantry Weapons**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Weapon Training & Infantry Weapons** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00001c08cee8', 'b1000000-0000-0000-0000-000063203e03', 'Theoretical Principles of Weapon Training & Infantry Weapons', 'markdown', '{"markdown":"# Theoretical Principles of Weapon Training & Infantry Weapons\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Weapon Training & Infantry Weapons**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Weapon Training & Infantry Weapons

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Weapon Training & Infantry Weapons**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00001c08d2a8', 'b1000000-0000-0000-0000-000063203e04', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Weapon Training & Infantry Weapons**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Weapon Training & Infantry Weapons**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00001c08d2a9', 'b1000000-0000-0000-0000-000063203e04', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Weapon Training & Infantry Weapons**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Weapon Training & Infantry Weapons**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000075ad2d7e', 'b1000000-0000-0000-0000-0000784393a2', 'Introduction to National Integration', 'markdown', '{"markdown":"# Introduction to National Integration\n\n## Overview\nThis chapter covers the basic fundamentals of **National Integration**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **National Integration**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **National Integration** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to National Integration

## Overview
This chapter covers the basic fundamentals of **National Integration**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **National Integration**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **National Integration** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000075ad2d7d', 'b1000000-0000-0000-0000-0000784393a2', 'Theoretical Principles of National Integration', 'markdown', '{"markdown":"# Theoretical Principles of National Integration\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **National Integration**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of National Integration

## Study Material
Here we explore the detailed guidelines and regulations surrounding **National Integration**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000075ad29bd', 'b1000000-0000-0000-0000-0000784393a1', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **National Integration**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **National Integration**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000075ad29bc', 'b1000000-0000-0000-0000-0000784393a1', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **National Integration**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **National Integration**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000008078c13', 'b1000000-0000-0000-0000-00001aa16c89', 'Introduction to Leadership & Personality Development', 'markdown', '{"markdown":"# Introduction to Leadership & Personality Development\n\n## Overview\nThis chapter covers the basic fundamentals of **Leadership & Personality Development**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Leadership & Personality Development**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Leadership & Personality Development** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Leadership & Personality Development

## Overview
This chapter covers the basic fundamentals of **Leadership & Personality Development**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Leadership & Personality Development**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Leadership & Personality Development** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000008078c12', 'b1000000-0000-0000-0000-00001aa16c89', 'Theoretical Principles of Leadership & Personality Development', 'markdown', '{"markdown":"# Theoretical Principles of Leadership & Personality Development\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Leadership & Personality Development**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Leadership & Personality Development

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Leadership & Personality Development**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000008078852', 'b1000000-0000-0000-0000-00001aa16c8a', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Leadership & Personality Development**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Leadership & Personality Development**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000008078851', 'b1000000-0000-0000-0000-00001aa16c8a', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Leadership & Personality Development**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Leadership & Personality Development**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00003f7f625e', 'b1000000-0000-0000-0000-00000343433a', 'Introduction to Civil Defence & Disaster Management', 'markdown', '{"markdown":"# Introduction to Civil Defence & Disaster Management\n\n## Overview\nThis chapter covers the basic fundamentals of **Civil Defence & Disaster Management**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Civil Defence & Disaster Management**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Civil Defence & Disaster Management** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Civil Defence & Disaster Management

## Overview
This chapter covers the basic fundamentals of **Civil Defence & Disaster Management**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Civil Defence & Disaster Management**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Civil Defence & Disaster Management** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00003f7f625f', 'b1000000-0000-0000-0000-00000343433a', 'Theoretical Principles of Civil Defence & Disaster Management', 'markdown', '{"markdown":"# Theoretical Principles of Civil Defence & Disaster Management\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Civil Defence & Disaster Management**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Civil Defence & Disaster Management

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Civil Defence & Disaster Management**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00003f7f661f', 'b1000000-0000-0000-0000-00000343433b', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Civil Defence & Disaster Management**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Civil Defence & Disaster Management**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00003f7f6620', 'b1000000-0000-0000-0000-00000343433b', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Civil Defence & Disaster Management**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Civil Defence & Disaster Management**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000051e73703', 'b1000000-0000-0000-0000-0000240c3a67', 'Introduction to Social Service & Awareness', 'markdown', '{"markdown":"# Introduction to Social Service & Awareness\n\n## Overview\nThis chapter covers the basic fundamentals of **Social Service & Awareness**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Social Service & Awareness**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Social Service & Awareness** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Social Service & Awareness

## Overview
This chapter covers the basic fundamentals of **Social Service & Awareness**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Social Service & Awareness**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Social Service & Awareness** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000051e73702', 'b1000000-0000-0000-0000-0000240c3a67', 'Theoretical Principles of Social Service & Awareness', 'markdown', '{"markdown":"# Theoretical Principles of Social Service & Awareness\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Social Service & Awareness**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Social Service & Awareness

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Social Service & Awareness**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000051e73342', 'b1000000-0000-0000-0000-0000240c3a66', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Social Service & Awareness**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Social Service & Awareness**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000051e73341', 'b1000000-0000-0000-0000-0000240c3a66', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Social Service & Awareness**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Social Service & Awareness**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000000000006', 'b1000000-0000-0000-0000-000078439383', 'Fractures and Bandaging', 'markdown', '{"markdown":"# Fractures and Bandaging\n\n## Types of Fractures\n1. **Simple (Closed)**: Bone breaks but skin is intact\n2. **Compound (Open)**: Bone breaks and pierces skin\n3. **Greenstick**: Incomplete fracture (common in children)\n4. **Comminuted**: Bone shatters into multiple pieces\n\n## Signs of Fracture\n- Severe pain at the site\n- Swelling and tenderness\n- Deformity or unnatural position\n- Loss of function of the limb\n- Crepitus (grating sound)\n\n## First Aid for Fractures\n1. **Do NOT move** the casualty unnecessarily\n2. **Immobilize** the fracture using splints\n3. Apply splint **above and below** the fracture point\n4. Pad the splint with soft material\n5. Check circulation below the splint regularly\n6. Treat for shock — keep warm, elevate legs\n\n## Common Bandaging Techniques\n| Type | Use |\n|------|-----|\n| Triangular | Arm sling, head wounds |\n| Roller | Securing dressings |\n| Figure-of-eight | Ankle, wrist joints |\n| Spiral | Limbs |\n\n> **Remember**: RICE — Rest, Ice, Compression, Elevation"}'::jsonb, 1, '# Fractures and Bandaging

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

> **Remember**: RICE — Rest, Ice, Compression, Elevation'),
('c1000000-0000-0000-0000-000075acb91e', 'b1000000-0000-0000-0000-000078439383', 'Theoretical Principles of Health, Hygiene & Sanitation', 'markdown', '{"markdown":"# Theoretical Principles of Health, Hygiene & Sanitation\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Health, Hygiene & Sanitation**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Health, Hygiene & Sanitation

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Health, Hygiene & Sanitation**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000075acb55e', 'b1000000-0000-0000-0000-000078439382', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Health, Hygiene & Sanitation**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Health, Hygiene & Sanitation**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000075acb55d', 'b1000000-0000-0000-0000-000078439382', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Health, Hygiene & Sanitation**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Health, Hygiene & Sanitation**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00001897c9ae', 'b1000000-0000-0000-0000-00001eed3e8a', 'Introduction to Yoga & Asanas', 'markdown', '{"markdown":"# Introduction to Yoga & Asanas\n\n## Overview\nThis chapter covers the basic fundamentals of **Yoga & Asanas**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Yoga & Asanas**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Yoga & Asanas** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Yoga & Asanas

## Overview
This chapter covers the basic fundamentals of **Yoga & Asanas**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Yoga & Asanas**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Yoga & Asanas** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00001897c9af', 'b1000000-0000-0000-0000-00001eed3e8a', 'Theoretical Principles of Yoga & Asanas', 'markdown', '{"markdown":"# Theoretical Principles of Yoga & Asanas\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Yoga & Asanas**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Yoga & Asanas

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Yoga & Asanas**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00001897cd6f', 'b1000000-0000-0000-0000-00001eed3e8b', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Yoga & Asanas**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Yoga & Asanas**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00001897cd70', 'b1000000-0000-0000-0000-00001eed3e8b', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Yoga & Asanas**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Yoga & Asanas**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00002dc1705b', 'b1000000-0000-0000-0000-000050ab1641', 'Introduction to Home Nursing', 'markdown', '{"markdown":"# Introduction to Home Nursing\n\n## Overview\nThis chapter covers the basic fundamentals of **Home Nursing**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Home Nursing**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Home Nursing** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Home Nursing

## Overview
This chapter covers the basic fundamentals of **Home Nursing**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Home Nursing**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Home Nursing** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00002dc1705a', 'b1000000-0000-0000-0000-000050ab1641', 'Theoretical Principles of Home Nursing', 'markdown', '{"markdown":"# Theoretical Principles of Home Nursing\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Home Nursing**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Home Nursing

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Home Nursing**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00002dc16c9a', 'b1000000-0000-0000-0000-000050ab1642', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Home Nursing**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Home Nursing**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00002dc16c99', 'b1000000-0000-0000-0000-000050ab1642', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Home Nursing**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Home Nursing**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00006f9ab9c0', 'b1000000-0000-0000-0000-00006ab4b79c', 'Introduction to Posture Training', 'markdown', '{"markdown":"# Introduction to Posture Training\n\n## Overview\nThis chapter covers the basic fundamentals of **Posture Training**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Posture Training**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Posture Training** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Posture Training

## Overview
This chapter covers the basic fundamentals of **Posture Training**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Posture Training**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Posture Training** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00006f9ab9bf', 'b1000000-0000-0000-0000-00006ab4b79c', 'Theoretical Principles of Posture Training', 'markdown', '{"markdown":"# Theoretical Principles of Posture Training\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Posture Training**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Posture Training

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Posture Training**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00006f9ab5ff', 'b1000000-0000-0000-0000-00006ab4b79d', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Posture Training**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Posture Training**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00006f9ab5fe', 'b1000000-0000-0000-0000-00006ab4b79d', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Posture Training**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Posture Training**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000046089a51', 'b1000000-0000-0000-0000-000055702413', 'Introduction to Obstacles Training & Adventure Activities', 'markdown', '{"markdown":"# Introduction to Obstacles Training & Adventure Activities\n\n## Overview\nThis chapter covers the basic fundamentals of **Obstacles Training & Adventure Activities**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Obstacles Training & Adventure Activities**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Obstacles Training & Adventure Activities** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Obstacles Training & Adventure Activities

## Overview
This chapter covers the basic fundamentals of **Obstacles Training & Adventure Activities**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Obstacles Training & Adventure Activities**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Obstacles Training & Adventure Activities** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000046089a52', 'b1000000-0000-0000-0000-000055702413', 'Theoretical Principles of Obstacles Training & Adventure Activities', 'markdown', '{"markdown":"# Theoretical Principles of Obstacles Training & Adventure Activities\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Obstacles Training & Adventure Activities**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Obstacles Training & Adventure Activities

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Obstacles Training & Adventure Activities**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000046089e12', 'b1000000-0000-0000-0000-000055702412', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Obstacles Training & Adventure Activities**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Obstacles Training & Adventure Activities**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000046089e13', 'b1000000-0000-0000-0000-000055702412', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Obstacles Training & Adventure Activities**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Obstacles Training & Adventure Activities**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00006022b442', 'b1000000-0000-0000-0000-000022cc049a', 'Introduction to Career in Defence Services', 'markdown', '{"markdown":"# Introduction to Career in Defence Services\n\n## Overview\nThis chapter covers the basic fundamentals of **Career in Defence Services**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Career in Defence Services**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Career in Defence Services** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Career in Defence Services

## Overview
This chapter covers the basic fundamentals of **Career in Defence Services**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Career in Defence Services**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Career in Defence Services** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00006022b441', 'b1000000-0000-0000-0000-000022cc049a', 'Theoretical Principles of Career in Defence Services', 'markdown', '{"markdown":"# Theoretical Principles of Career in Defence Services\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Career in Defence Services**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Career in Defence Services

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Career in Defence Services**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.');

INSERT INTO public.chapters (id, module_id, title, content_type, content_data, order_index, content) VALUES
('c1000000-0000-0000-0000-00006022b081', 'b1000000-0000-0000-0000-000022cc049b', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Career in Defence Services**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Career in Defence Services**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00006022b080', 'b1000000-0000-0000-0000-000022cc049b', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Career in Defence Services**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Career in Defence Services**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000021d93601', 'b1000000-0000-0000-0000-00006033a39d', 'Introduction to Services Tests & Interviews', 'markdown', '{"markdown":"# Introduction to Services Tests & Interviews\n\n## Overview\nThis chapter covers the basic fundamentals of **Services Tests & Interviews**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Services Tests & Interviews**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Services Tests & Interviews** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Services Tests & Interviews

## Overview
This chapter covers the basic fundamentals of **Services Tests & Interviews**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Services Tests & Interviews**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Services Tests & Interviews** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000021d93602', 'b1000000-0000-0000-0000-00006033a39d', 'Theoretical Principles of Services Tests & Interviews', 'markdown', '{"markdown":"# Theoretical Principles of Services Tests & Interviews\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Services Tests & Interviews**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Services Tests & Interviews

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Services Tests & Interviews**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000021d939c2', 'b1000000-0000-0000-0000-00006033a39e', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Services Tests & Interviews**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Services Tests & Interviews**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000021d939c3', 'b1000000-0000-0000-0000-00006033a39e', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Services Tests & Interviews**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Services Tests & Interviews**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00004dbe445a', 'b1000000-0000-0000-0000-00003bdb4e82', 'Introduction to Self-Defence', 'markdown', '{"markdown":"# Introduction to Self-Defence\n\n## Overview\nThis chapter covers the basic fundamentals of **Self-Defence**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Self-Defence**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Self-Defence** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Self-Defence

## Overview
This chapter covers the basic fundamentals of **Self-Defence**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Self-Defence**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Self-Defence** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00004dbe4459', 'b1000000-0000-0000-0000-00003bdb4e82', 'Theoretical Principles of Self-Defence', 'markdown', '{"markdown":"# Theoretical Principles of Self-Defence\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Self-Defence**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Self-Defence

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Self-Defence**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00004dbe4099', 'b1000000-0000-0000-0000-00003bdb4e83', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Self-Defence**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Self-Defence**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00004dbe4098', 'b1000000-0000-0000-0000-00003bdb4e83', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Self-Defence**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Self-Defence**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-0000419a1cbd', 'b1000000-0000-0000-0000-000030d146a1', 'Introduction to Environment and Ecology', 'markdown', '{"markdown":"# Introduction to Environment and Ecology\n\n## Overview\nThis chapter covers the basic fundamentals of **Environment and Ecology**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Environment and Ecology**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Environment and Ecology** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Environment and Ecology

## Overview
This chapter covers the basic fundamentals of **Environment and Ecology**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Environment and Ecology**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Environment and Ecology** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-0000419a1cbc', 'b1000000-0000-0000-0000-000030d146a1', 'Theoretical Principles of Environment and Ecology', 'markdown', '{"markdown":"# Theoretical Principles of Environment and Ecology\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Environment and Ecology**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Environment and Ecology

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Environment and Ecology**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-0000419a18fc', 'b1000000-0000-0000-0000-000030d146a0', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Environment and Ecology**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Environment and Ecology**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-0000419a18fb', 'b1000000-0000-0000-0000-000030d146a0', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Environment and Ecology**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Environment and Ecology**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00003754ad96', 'b1000000-0000-0000-0000-0000581e038e', 'Introduction to Famous Leaders of India', 'markdown', '{"markdown":"# Introduction to Famous Leaders of India\n\n## Overview\nThis chapter covers the basic fundamentals of **Famous Leaders of India**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Famous Leaders of India**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Famous Leaders of India** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Famous Leaders of India

## Overview
This chapter covers the basic fundamentals of **Famous Leaders of India**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Famous Leaders of India**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Famous Leaders of India** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00003754ad97', 'b1000000-0000-0000-0000-0000581e038e', 'Theoretical Principles of Famous Leaders of India', 'markdown', '{"markdown":"# Theoretical Principles of Famous Leaders of India\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Famous Leaders of India**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Famous Leaders of India

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Famous Leaders of India**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00003754b157', 'b1000000-0000-0000-0000-0000581e038d', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Famous Leaders of India**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Famous Leaders of India**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00003754b158', 'b1000000-0000-0000-0000-0000581e038d', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Famous Leaders of India**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Famous Leaders of India**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00007599eea5', 'b1000000-0000-0000-0000-00007eec7289', 'Introduction to History of India', 'markdown', '{"markdown":"# Introduction to History of India\n\n## Overview\nThis chapter covers the basic fundamentals of **History of India**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **History of India**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **History of India** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to History of India

## Overview
This chapter covers the basic fundamentals of **History of India**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **History of India**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **History of India** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00007599eea4', 'b1000000-0000-0000-0000-00007eec7289', 'Theoretical Principles of History of India', 'markdown', '{"markdown":"# Theoretical Principles of History of India\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **History of India**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of History of India

## Study Material
Here we explore the detailed guidelines and regulations surrounding **History of India**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00007599eae4', 'b1000000-0000-0000-0000-00007eec7288', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **History of India**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **History of India**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00007599eae3', 'b1000000-0000-0000-0000-00007eec7288', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **History of India**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **History of India**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-0000441c2cdb', 'b1000000-0000-0000-0000-0000009a88f7', 'Introduction to Armed Forces & Military History', 'markdown', '{"markdown":"# Introduction to Armed Forces & Military History\n\n## Overview\nThis chapter covers the basic fundamentals of **Armed Forces & Military History**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Armed Forces & Military History**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Armed Forces & Military History** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Armed Forces & Military History

## Overview
This chapter covers the basic fundamentals of **Armed Forces & Military History**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Armed Forces & Military History**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Armed Forces & Military History** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-0000441c2cdc', 'b1000000-0000-0000-0000-0000009a88f7', 'Theoretical Principles of Armed Forces & Military History', 'markdown', '{"markdown":"# Theoretical Principles of Armed Forces & Military History\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Armed Forces & Military History**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Armed Forces & Military History

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Armed Forces & Military History**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-0000441c309c', 'b1000000-0000-0000-0000-0000009a88f8', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Armed Forces & Military History**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Armed Forces & Military History**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-0000441c309d', 'b1000000-0000-0000-0000-0000009a88f8', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Armed Forces & Military History**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Armed Forces & Military History**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000000000007', 'b1000000-0000-0000-0000-000078439364', 'Topographic Maps and Conventional Signs', 'markdown', '{"markdown":"# Topographic Maps and Conventional Signs\n\n## What is a Topographic Map?\nA topographic map represents the physical features of the earth''s surface including hills, valleys, rivers, roads, and buildings using **contour lines** and **conventional signs**.\n\n## Scale of Maps\n| Scale | Type | Use |\n|-------|------|-----|\n| 1:25,000 | Large | Tactical operations |\n| 1:50,000 | Medium | General military use |\n| 1:250,000 | Small | Strategic planning |\n\n## Conventional Signs\nConventional signs are **standardized symbols** used on maps:\n\n### Colors Used\n- **Black**: Man-made features (roads, buildings, text)\n- **Brown**: Contour lines, earth features\n- **Blue**: Water features (rivers, lakes, wells)\n- **Green**: Vegetation (forests, orchards)\n- **Red**: Main roads, important boundaries\n\n## Contour Lines\n- Lines joining points of **equal elevation**\n- Close together = **steep slope**\n- Far apart = **gentle slope**\n- V-shaped pointing uphill = **valley/stream**\n- V-shaped pointing downhill = **ridge/spur**\n\n## Grid References\n- **4-figure**: Identifies a grid square (e.g., 2345)\n- **6-figure**: Pinpoints exact location (e.g., 234456)\n- Always read **Eastings first**, then Northings\n- Remember: **\"Go along the corridor, then up the stairs\"**"}'::jsonb, 1, '# Topographic Maps and Conventional Signs

## What is a Topographic Map?
A topographic map represents the physical features of the earth''s surface including hills, valleys, rivers, roads, and buildings using **contour lines** and **conventional signs**.

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
- Remember: **"Go along the corridor, then up the stairs"**'),
('c1000000-0000-0000-0000-000075ac44bf', 'b1000000-0000-0000-0000-000078439364', 'Theoretical Principles of Map Reading', 'markdown', '{"markdown":"# Theoretical Principles of Map Reading\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Map Reading**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Map Reading

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Map Reading**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000075ac40ff', 'b1000000-0000-0000-0000-000078439363', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Map Reading**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Map Reading**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000075ac40fe', 'b1000000-0000-0000-0000-000078439363', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Map Reading**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Map Reading**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00006ea19a74', 'b1000000-0000-0000-0000-0000123ac618', 'Introduction to Communication', 'markdown', '{"markdown":"# Introduction to Communication\n\n## Overview\nThis chapter covers the basic fundamentals of **Communication**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Communication**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Communication** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Communication

## Overview
This chapter covers the basic fundamentals of **Communication**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Communication**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Communication** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00006ea19a73', 'b1000000-0000-0000-0000-0000123ac618', 'Theoretical Principles of Communication', 'markdown', '{"markdown":"# Theoretical Principles of Communication\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Communication**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Communication

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Communication**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00006ea196b3', 'b1000000-0000-0000-0000-0000123ac617', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Communication**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Communication**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00006ea196b2', 'b1000000-0000-0000-0000-0000123ac617', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Communication**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Communication**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000059e97f1a', 'b1000000-0000-0000-0000-00004a3aa10a', 'Introduction to Field Craft & Battle Craft', 'markdown', '{"markdown":"# Introduction to Field Craft & Battle Craft\n\n## Overview\nThis chapter covers the basic fundamentals of **Field Craft & Battle Craft**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Field Craft & Battle Craft**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Field Craft & Battle Craft** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Field Craft & Battle Craft

## Overview
This chapter covers the basic fundamentals of **Field Craft & Battle Craft**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Field Craft & Battle Craft**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Field Craft & Battle Craft** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000059e97f1b', 'b1000000-0000-0000-0000-00004a3aa10a', 'Theoretical Principles of Field Craft & Battle Craft', 'markdown', '{"markdown":"# Theoretical Principles of Field Craft & Battle Craft\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Field Craft & Battle Craft**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Field Craft & Battle Craft

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Field Craft & Battle Craft**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000059e982db', 'b1000000-0000-0000-0000-00004a3aa109', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Field Craft & Battle Craft**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Field Craft & Battle Craft**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000059e982dc', 'b1000000-0000-0000-0000-00004a3aa109', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Field Craft & Battle Craft**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Field Craft & Battle Craft**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000063269e5d', 'b1000000-0000-0000-0000-000050d1b041', 'Introduction to Personality Development & Officer Like Qualities (OLQs)', 'markdown', '{"markdown":"# Introduction to Personality Development & Officer Like Qualities (OLQs)\n\n## Overview\nThis chapter covers the basic fundamentals of **Personality Development & Officer Like Qualities (OLQs)**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Personality Development & Officer Like Qualities (OLQs)**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Personality Development & Officer Like Qualities (OLQs)** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Personality Development & Officer Like Qualities (OLQs)

## Overview
This chapter covers the basic fundamentals of **Personality Development & Officer Like Qualities (OLQs)**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Personality Development & Officer Like Qualities (OLQs)**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Personality Development & Officer Like Qualities (OLQs)** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000063269e5c', 'b1000000-0000-0000-0000-000050d1b041', 'Theoretical Principles of Personality Development & Officer Like Qualities (OLQs)', 'markdown', '{"markdown":"# Theoretical Principles of Personality Development & Officer Like Qualities (OLQs)\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Personality Development & Officer Like Qualities (OLQs)**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Personality Development & Officer Like Qualities (OLQs)

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Personality Development & Officer Like Qualities (OLQs)**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000063269a9c', 'b1000000-0000-0000-0000-000050d1b040', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Personality Development & Officer Like Qualities (OLQs)**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Personality Development & Officer Like Qualities (OLQs)**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000063269a9b', 'b1000000-0000-0000-0000-000050d1b040', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Personality Development & Officer Like Qualities (OLQs)**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Personality Development & Officer Like Qualities (OLQs)**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00003d00f185', 'b1000000-0000-0000-0000-0000625c7021', 'Introduction to Disaster Management & Social Awareness', 'markdown', '{"markdown":"# Introduction to Disaster Management & Social Awareness\n\n## Overview\nThis chapter covers the basic fundamentals of **Disaster Management & Social Awareness**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Disaster Management & Social Awareness**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Disaster Management & Social Awareness** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Disaster Management & Social Awareness

## Overview
This chapter covers the basic fundamentals of **Disaster Management & Social Awareness**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Disaster Management & Social Awareness**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Disaster Management & Social Awareness** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00003d00f186', 'b1000000-0000-0000-0000-0000625c7021', 'Theoretical Principles of Disaster Management & Social Awareness', 'markdown', '{"markdown":"# Theoretical Principles of Disaster Management & Social Awareness\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Disaster Management & Social Awareness**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Disaster Management & Social Awareness

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Disaster Management & Social Awareness**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00003d00f546', 'b1000000-0000-0000-0000-0000625c7022', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Disaster Management & Social Awareness**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Disaster Management & Social Awareness**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00003d00f547', 'b1000000-0000-0000-0000-0000625c7022', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Disaster Management & Social Awareness**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Disaster Management & Social Awareness**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00005070cc2b', 'b1000000-0000-0000-0000-000021370671', 'Introduction to Advanced Leadership', 'markdown', '{"markdown":"# Introduction to Advanced Leadership\n\n## Overview\nThis chapter covers the basic fundamentals of **Advanced Leadership**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Advanced Leadership**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Advanced Leadership** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Advanced Leadership

## Overview
This chapter covers the basic fundamentals of **Advanced Leadership**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Advanced Leadership**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Advanced Leadership** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00005070cc2a', 'b1000000-0000-0000-0000-000021370671', 'Theoretical Principles of Advanced Leadership', 'markdown', '{"markdown":"# Theoretical Principles of Advanced Leadership\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Advanced Leadership**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Advanced Leadership

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Advanced Leadership**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00005070c86a', 'b1000000-0000-0000-0000-000021370672', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Advanced Leadership**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Advanced Leadership**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00005070c869', 'b1000000-0000-0000-0000-000021370672', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Advanced Leadership**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Advanced Leadership**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.');

INSERT INTO public.chapters (id, module_id, title, content_type, content_data, order_index, content) VALUES
('c1000000-0000-0000-0000-00003a1e08ee', 'b1000000-0000-0000-0000-00002d148b12', 'Introduction to Advanced Drill', 'markdown', '{"markdown":"# Introduction to Advanced Drill\n\n## Overview\nThis chapter covers the basic fundamentals of **Advanced Drill**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Advanced Drill**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Advanced Drill** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Advanced Drill

## Overview
This chapter covers the basic fundamentals of **Advanced Drill**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Advanced Drill**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Advanced Drill** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00003a1e08ed', 'b1000000-0000-0000-0000-00002d148b12', 'Theoretical Principles of Advanced Drill', 'markdown', '{"markdown":"# Theoretical Principles of Advanced Drill\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Advanced Drill**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Advanced Drill

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Advanced Drill**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00003a1e052d', 'b1000000-0000-0000-0000-00002d148b11', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Advanced Drill**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Advanced Drill**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00003a1e052c', 'b1000000-0000-0000-0000-00002d148b11', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Advanced Drill**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Advanced Drill**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-0000476c0b53', 'b1000000-0000-0000-0000-00007659e2b7', 'Introduction to National Security', 'markdown', '{"markdown":"# Introduction to National Security\n\n## Overview\nThis chapter covers the basic fundamentals of **National Security**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **National Security**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **National Security** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to National Security

## Overview
This chapter covers the basic fundamentals of **National Security**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **National Security**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **National Security** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-0000476c0b52', 'b1000000-0000-0000-0000-00007659e2b7', 'Theoretical Principles of National Security', 'markdown', '{"markdown":"# Theoretical Principles of National Security\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **National Security**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of National Security

## Study Material
Here we explore the detailed guidelines and regulations surrounding **National Security**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-0000476c0792', 'b1000000-0000-0000-0000-00007659e2b6', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **National Security**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **National Security**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-0000476c0791', 'b1000000-0000-0000-0000-00007659e2b6', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **National Security**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **National Security**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000001945e62', 'b1000000-0000-0000-0000-00002d49ad86', 'Introduction to Armed Forces Organisation', 'markdown', '{"markdown":"# Introduction to Armed Forces Organisation\n\n## Overview\nThis chapter covers the basic fundamentals of **Armed Forces Organisation**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Armed Forces Organisation**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Armed Forces Organisation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Armed Forces Organisation

## Overview
This chapter covers the basic fundamentals of **Armed Forces Organisation**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Armed Forces Organisation**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Armed Forces Organisation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000001945e61', 'b1000000-0000-0000-0000-00002d49ad86', 'Theoretical Principles of Armed Forces Organisation', 'markdown', '{"markdown":"# Theoretical Principles of Armed Forces Organisation\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Armed Forces Organisation**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Armed Forces Organisation

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Armed Forces Organisation**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000001945aa1', 'b1000000-0000-0000-0000-00002d49ad85', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Armed Forces Organisation**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Armed Forces Organisation**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000001945aa0', 'b1000000-0000-0000-0000-00002d49ad85', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Armed Forces Organisation**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Armed Forces Organisation**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000074a9b238', 'b1000000-0000-0000-0000-0000356c3e6c', 'Introduction to Disaster Management', 'markdown', '{"markdown":"# Introduction to Disaster Management\n\n## Overview\nThis chapter covers the basic fundamentals of **Disaster Management**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Disaster Management**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Disaster Management** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Disaster Management

## Overview
This chapter covers the basic fundamentals of **Disaster Management**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Disaster Management**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Disaster Management** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000074a9b239', 'b1000000-0000-0000-0000-0000356c3e6c', 'Theoretical Principles of Disaster Management', 'markdown', '{"markdown":"# Theoretical Principles of Disaster Management\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Disaster Management**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Disaster Management

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Disaster Management**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000074a9b5f9', 'b1000000-0000-0000-0000-0000356c3e6b', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Disaster Management**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Disaster Management**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000074a9b5fa', 'b1000000-0000-0000-0000-0000356c3e6b', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Disaster Management**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Disaster Management**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00004cf0b785', 'b1000000-0000-0000-0000-00001785b621', 'Introduction to Social Service & Community Development', 'markdown', '{"markdown":"# Introduction to Social Service & Community Development\n\n## Overview\nThis chapter covers the basic fundamentals of **Social Service & Community Development**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Social Service & Community Development**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Social Service & Community Development** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Social Service & Community Development

## Overview
This chapter covers the basic fundamentals of **Social Service & Community Development**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Social Service & Community Development**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Social Service & Community Development** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00004cf0b786', 'b1000000-0000-0000-0000-00001785b621', 'Theoretical Principles of Social Service & Community Development', 'markdown', '{"markdown":"# Theoretical Principles of Social Service & Community Development\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Social Service & Community Development**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Social Service & Community Development

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Social Service & Community Development**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00004cf0bb46', 'b1000000-0000-0000-0000-00001785b622', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Social Service & Community Development**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Social Service & Community Development**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00004cf0bb47', 'b1000000-0000-0000-0000-00001785b622', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Social Service & Community Development**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Social Service & Community Development**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00007c5aed79', 'b1000000-0000-0000-0000-00002bd326eb', 'Introduction to Personality Development & Communication Skills', 'markdown', '{"markdown":"# Introduction to Personality Development & Communication Skills\n\n## Overview\nThis chapter covers the basic fundamentals of **Personality Development & Communication Skills**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Personality Development & Communication Skills**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Personality Development & Communication Skills** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Personality Development & Communication Skills

## Overview
This chapter covers the basic fundamentals of **Personality Development & Communication Skills**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Personality Development & Communication Skills**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Personality Development & Communication Skills** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00007c5aed7a', 'b1000000-0000-0000-0000-00002bd326eb', 'Theoretical Principles of Personality Development & Communication Skills', 'markdown', '{"markdown":"# Theoretical Principles of Personality Development & Communication Skills\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Personality Development & Communication Skills**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Personality Development & Communication Skills

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Personality Development & Communication Skills**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00007c5af13a', 'b1000000-0000-0000-0000-00002bd326ea', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Personality Development & Communication Skills**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Personality Development & Communication Skills**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00007c5af13b', 'b1000000-0000-0000-0000-00002bd326ea', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Personality Development & Communication Skills**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Personality Development & Communication Skills**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00002cc16856', 'b1000000-0000-0000-0000-00001fa75b86', 'Introduction to Map Reading & Navigation', 'markdown', '{"markdown":"# Introduction to Map Reading & Navigation\n\n## Overview\nThis chapter covers the basic fundamentals of **Map Reading & Navigation**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Map Reading & Navigation**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Map Reading & Navigation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Map Reading & Navigation

## Overview
This chapter covers the basic fundamentals of **Map Reading & Navigation**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Map Reading & Navigation**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Map Reading & Navigation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00002cc16855', 'b1000000-0000-0000-0000-00001fa75b86', 'Theoretical Principles of Map Reading & Navigation', 'markdown', '{"markdown":"# Theoretical Principles of Map Reading & Navigation\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Map Reading & Navigation**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Map Reading & Navigation

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Map Reading & Navigation**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00002cc16495', 'b1000000-0000-0000-0000-00001fa75b87', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Map Reading & Navigation**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Map Reading & Navigation**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00002cc16494', 'b1000000-0000-0000-0000-00001fa75b87', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Map Reading & Navigation**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Map Reading & Navigation**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000047b3d36c', 'b1000000-0000-0000-0000-000013a36038', 'Introduction to Field Craft & Battle Craft', 'markdown', '{"markdown":"# Introduction to Field Craft & Battle Craft\n\n## Overview\nThis chapter covers the basic fundamentals of **Field Craft & Battle Craft**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Field Craft & Battle Craft**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Field Craft & Battle Craft** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Field Craft & Battle Craft

## Overview
This chapter covers the basic fundamentals of **Field Craft & Battle Craft**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Field Craft & Battle Craft**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Field Craft & Battle Craft** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000047b3d36d', 'b1000000-0000-0000-0000-000013a36038', 'Theoretical Principles of Field Craft & Battle Craft', 'markdown', '{"markdown":"# Theoretical Principles of Field Craft & Battle Craft\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Field Craft & Battle Craft**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Field Craft & Battle Craft

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Field Craft & Battle Craft**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000047b3d72d', 'b1000000-0000-0000-0000-000013a36037', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Field Craft & Battle Craft**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Field Craft & Battle Craft**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000047b3d72e', 'b1000000-0000-0000-0000-000013a36037', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Field Craft & Battle Craft**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Field Craft & Battle Craft**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00002986a3f6', 'b1000000-0000-0000-0000-00001987b7e6', 'Introduction to Military History & War Heroes', 'markdown', '{"markdown":"# Introduction to Military History & War Heroes\n\n## Overview\nThis chapter covers the basic fundamentals of **Military History & War Heroes**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Military History & War Heroes**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Military History & War Heroes** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Military History & War Heroes

## Overview
This chapter covers the basic fundamentals of **Military History & War Heroes**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Military History & War Heroes**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Military History & War Heroes** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00002986a3f5', 'b1000000-0000-0000-0000-00001987b7e6', 'Theoretical Principles of Military History & War Heroes', 'markdown', '{"markdown":"# Theoretical Principles of Military History & War Heroes\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Military History & War Heroes**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Military History & War Heroes

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Military History & War Heroes**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00002986a035', 'b1000000-0000-0000-0000-00001987b7e7', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Military History & War Heroes**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Military History & War Heroes**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00002986a034', 'b1000000-0000-0000-0000-00001987b7e7', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Military History & War Heroes**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Military History & War Heroes**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000041022af7', 'b1000000-0000-0000-0000-00004c1ea1ed', 'Introduction to General Awareness & Current Affairs', 'markdown', '{"markdown":"# Introduction to General Awareness & Current Affairs\n\n## Overview\nThis chapter covers the basic fundamentals of **General Awareness & Current Affairs**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **General Awareness & Current Affairs**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **General Awareness & Current Affairs** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to General Awareness & Current Affairs

## Overview
This chapter covers the basic fundamentals of **General Awareness & Current Affairs**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **General Awareness & Current Affairs**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **General Awareness & Current Affairs** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000041022af8', 'b1000000-0000-0000-0000-00004c1ea1ed', 'Theoretical Principles of General Awareness & Current Affairs', 'markdown', '{"markdown":"# Theoretical Principles of General Awareness & Current Affairs\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **General Awareness & Current Affairs**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of General Awareness & Current Affairs

## Study Material
Here we explore the detailed guidelines and regulations surrounding **General Awareness & Current Affairs**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000041022eb8', 'b1000000-0000-0000-0000-00004c1ea1ec', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **General Awareness & Current Affairs**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **General Awareness & Current Affairs**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000041022eb9', 'b1000000-0000-0000-0000-00004c1ea1ec', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **General Awareness & Current Affairs**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **General Awareness & Current Affairs**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000056970cc4', 'b1000000-0000-0000-0000-00002711b0e0', 'Introduction to Officer Like Qualities (OLQs) & Interview Skills', 'markdown', '{"markdown":"# Introduction to Officer Like Qualities (OLQs) & Interview Skills\n\n## Overview\nThis chapter covers the basic fundamentals of **Officer Like Qualities (OLQs) & Interview Skills**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Officer Like Qualities (OLQs) & Interview Skills**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Officer Like Qualities (OLQs) & Interview Skills** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Officer Like Qualities (OLQs) & Interview Skills

## Overview
This chapter covers the basic fundamentals of **Officer Like Qualities (OLQs) & Interview Skills**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Common** wing.

## Key Learning Areas
- Basic definitions and principles of **Officer Like Qualities (OLQs) & Interview Skills**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Officer Like Qualities (OLQs) & Interview Skills** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000056970cc5', 'b1000000-0000-0000-0000-00002711b0e0', 'Theoretical Principles of Officer Like Qualities (OLQs) & Interview Skills', 'markdown', '{"markdown":"# Theoretical Principles of Officer Like Qualities (OLQs) & Interview Skills\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Officer Like Qualities (OLQs) & Interview Skills**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Officer Like Qualities (OLQs) & Interview Skills

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Officer Like Qualities (OLQs) & Interview Skills**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000056971085', 'b1000000-0000-0000-0000-00002711b0df', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Officer Like Qualities (OLQs) & Interview Skills**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Officer Like Qualities (OLQs) & Interview Skills**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000056971086', 'b1000000-0000-0000-0000-00002711b0df', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Officer Like Qualities (OLQs) & Interview Skills**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Officer Like Qualities (OLQs) & Interview Skills**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-0000562a6038', 'b1000000-0000-0000-0000-000031fdd324', 'Introduction to Field Craft Basics', 'markdown', '{"markdown":"# Introduction to Field Craft Basics\n\n## Overview\nThis chapter covers the basic fundamentals of **Field Craft Basics**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Field Craft Basics**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Field Craft Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Field Craft Basics

## Overview
This chapter covers the basic fundamentals of **Field Craft Basics**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Field Craft Basics**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Field Craft Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-0000562a6037', 'b1000000-0000-0000-0000-000031fdd324', 'Theoretical Principles of Field Craft Basics', 'markdown', '{"markdown":"# Theoretical Principles of Field Craft Basics\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Field Craft Basics**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Field Craft Basics

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Field Craft Basics**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-0000562a5c77', 'b1000000-0000-0000-0000-000031fdd325', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Field Craft Basics**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Field Craft Basics**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-0000562a5c76', 'b1000000-0000-0000-0000-000031fdd325', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Field Craft Basics**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Field Craft Basics**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00005a4e792b', 'b1000000-0000-0000-0000-00003093a947', 'Introduction to Drill with Arms', 'markdown', '{"markdown":"# Introduction to Drill with Arms\n\n## Overview\nThis chapter covers the basic fundamentals of **Drill with Arms**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Drill with Arms**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Drill with Arms** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Drill with Arms

## Overview
This chapter covers the basic fundamentals of **Drill with Arms**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Drill with Arms**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Drill with Arms** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00005a4e792c', 'b1000000-0000-0000-0000-00003093a947', 'Theoretical Principles of Drill with Arms', 'markdown', '{"markdown":"# Theoretical Principles of Drill with Arms\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Drill with Arms**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Drill with Arms

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Drill with Arms**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.');

INSERT INTO public.chapters (id, module_id, title, content_type, content_data, order_index, content) VALUES
('c1000000-0000-0000-0000-00005a4e7cec', 'b1000000-0000-0000-0000-00003093a948', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Drill with Arms**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Drill with Arms**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00005a4e7ced', 'b1000000-0000-0000-0000-00003093a948', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Drill with Arms**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Drill with Arms**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000075abd061', 'b1000000-0000-0000-0000-000078439345', 'Introduction to Weapon Training', 'markdown', '{"markdown":"# Introduction to Weapon Training\n\n## Overview\nThis chapter covers the basic fundamentals of **Weapon Training**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Weapon Training**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Weapon Training** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Weapon Training

## Overview
This chapter covers the basic fundamentals of **Weapon Training**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Weapon Training**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Weapon Training** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000075abd060', 'b1000000-0000-0000-0000-000078439345', 'Theoretical Principles of Weapon Training', 'markdown', '{"markdown":"# Theoretical Principles of Weapon Training\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Weapon Training**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Weapon Training

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Weapon Training**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000075abcca0', 'b1000000-0000-0000-0000-000078439344', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Weapon Training**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Weapon Training**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000075abcc9f', 'b1000000-0000-0000-0000-000078439344', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Weapon Training**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Weapon Training**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-0000066a0b64', 'b1000000-0000-0000-0000-000070b075c0', 'Introduction to Section Formation', 'markdown', '{"markdown":"# Introduction to Section Formation\n\n## Overview\nThis chapter covers the basic fundamentals of **Section Formation**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Section Formation**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Section Formation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Section Formation

## Overview
This chapter covers the basic fundamentals of **Section Formation**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Section Formation**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Section Formation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-0000066a0b65', 'b1000000-0000-0000-0000-000070b075c0', 'Theoretical Principles of Section Formation', 'markdown', '{"markdown":"# Theoretical Principles of Section Formation\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Section Formation**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Section Formation

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Section Formation**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-0000066a0f25', 'b1000000-0000-0000-0000-000070b075c1', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Section Formation**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Section Formation**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-0000066a0f26', 'b1000000-0000-0000-0000-000070b075c1', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Section Formation**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Section Formation**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-0000352efb39', 'b1000000-0000-0000-0000-000017c3941d', 'Introduction to Guard Mounting', 'markdown', '{"markdown":"# Introduction to Guard Mounting\n\n## Overview\nThis chapter covers the basic fundamentals of **Guard Mounting**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Guard Mounting**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Guard Mounting** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Guard Mounting

## Overview
This chapter covers the basic fundamentals of **Guard Mounting**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Guard Mounting**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Guard Mounting** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-0000352efb38', 'b1000000-0000-0000-0000-000017c3941d', 'Theoretical Principles of Guard Mounting', 'markdown', '{"markdown":"# Theoretical Principles of Guard Mounting\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Guard Mounting**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Guard Mounting

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Guard Mounting**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-0000352ef778', 'b1000000-0000-0000-0000-000017c3941c', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Guard Mounting**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Guard Mounting**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-0000352ef777', 'b1000000-0000-0000-0000-000017c3941c', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Guard Mounting**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Guard Mounting**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00006eead09d', 'b1000000-0000-0000-0000-000067828d7f', 'Introduction to Battle Craft Basics', 'markdown', '{"markdown":"# Introduction to Battle Craft Basics\n\n## Overview\nThis chapter covers the basic fundamentals of **Battle Craft Basics**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Battle Craft Basics**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Battle Craft Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Battle Craft Basics

## Overview
This chapter covers the basic fundamentals of **Battle Craft Basics**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Battle Craft Basics**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Battle Craft Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00006eead09c', 'b1000000-0000-0000-0000-000067828d7f', 'Theoretical Principles of Battle Craft Basics', 'markdown', '{"markdown":"# Theoretical Principles of Battle Craft Basics\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Battle Craft Basics**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Battle Craft Basics

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Battle Craft Basics**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00006eeaccdc', 'b1000000-0000-0000-0000-000067828d80', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Battle Craft Basics**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Battle Craft Basics**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00006eeaccdb', 'b1000000-0000-0000-0000-000067828d80', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Battle Craft Basics**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Battle Craft Basics**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00006d9497fc', 'b1000000-0000-0000-0000-0000363ab7a8', 'Introduction to Advanced Weapon Training', 'markdown', '{"markdown":"# Introduction to Advanced Weapon Training\n\n## Overview\nThis chapter covers the basic fundamentals of **Advanced Weapon Training**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Advanced Weapon Training**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Advanced Weapon Training** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Advanced Weapon Training

## Overview
This chapter covers the basic fundamentals of **Advanced Weapon Training**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Advanced Weapon Training**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Advanced Weapon Training** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00006d9497fd', 'b1000000-0000-0000-0000-0000363ab7a8', 'Theoretical Principles of Advanced Weapon Training', 'markdown', '{"markdown":"# Theoretical Principles of Advanced Weapon Training\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Advanced Weapon Training**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Advanced Weapon Training

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Advanced Weapon Training**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00006d949bbd', 'b1000000-0000-0000-0000-0000363ab7a7', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Advanced Weapon Training**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Advanced Weapon Training**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00006d949bbe', 'b1000000-0000-0000-0000-0000363ab7a7', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Advanced Weapon Training**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Advanced Weapon Training**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-0000527f9dc2', 'b1000000-0000-0000-0000-000070dcf862', 'Introduction to Field Signals', 'markdown', '{"markdown":"# Introduction to Field Signals\n\n## Overview\nThis chapter covers the basic fundamentals of **Field Signals**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Field Signals**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Field Signals** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Field Signals

## Overview
This chapter covers the basic fundamentals of **Field Signals**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Field Signals**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Field Signals** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-0000527f9dc3', 'b1000000-0000-0000-0000-000070dcf862', 'Theoretical Principles of Field Signals', 'markdown', '{"markdown":"# Theoretical Principles of Field Signals\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Field Signals**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Field Signals

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Field Signals**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-0000527fa183', 'b1000000-0000-0000-0000-000070dcf861', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Field Signals**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Field Signals**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-0000527fa184', 'b1000000-0000-0000-0000-000070dcf861', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Field Signals**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Field Signals**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000023ac73f3', 'b1000000-0000-0000-0000-00006adbf357', 'Introduction to Patrolling', 'markdown', '{"markdown":"# Introduction to Patrolling\n\n## Overview\nThis chapter covers the basic fundamentals of **Patrolling**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Patrolling**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Patrolling** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Patrolling

## Overview
This chapter covers the basic fundamentals of **Patrolling**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Patrolling**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Patrolling** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000023ac73f2', 'b1000000-0000-0000-0000-00006adbf357', 'Theoretical Principles of Patrolling', 'markdown', '{"markdown":"# Theoretical Principles of Patrolling\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Patrolling**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Patrolling

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Patrolling**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000023ac7032', 'b1000000-0000-0000-0000-00006adbf356', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Patrolling**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Patrolling**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000023ac7031', 'b1000000-0000-0000-0000-00006adbf356', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Patrolling**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Patrolling**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00000a56d3e9', 'b1000000-0000-0000-0000-00004030647b', 'Introduction to Camouflage & Concealment', 'markdown', '{"markdown":"# Introduction to Camouflage & Concealment\n\n## Overview\nThis chapter covers the basic fundamentals of **Camouflage & Concealment**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Camouflage & Concealment**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Camouflage & Concealment** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Camouflage & Concealment

## Overview
This chapter covers the basic fundamentals of **Camouflage & Concealment**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Camouflage & Concealment**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Camouflage & Concealment** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00000a56d3ea', 'b1000000-0000-0000-0000-00004030647b', 'Theoretical Principles of Camouflage & Concealment', 'markdown', '{"markdown":"# Theoretical Principles of Camouflage & Concealment\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Camouflage & Concealment**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Camouflage & Concealment

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Camouflage & Concealment**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00000a56d7aa', 'b1000000-0000-0000-0000-00004030647a', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Camouflage & Concealment**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Camouflage & Concealment**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00000a56d7ab', 'b1000000-0000-0000-0000-00004030647a', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Camouflage & Concealment**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Camouflage & Concealment**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000028b4561d', 'b1000000-0000-0000-0000-00000615a7ff', 'Introduction to Section Battle Drill', 'markdown', '{"markdown":"# Introduction to Section Battle Drill\n\n## Overview\nThis chapter covers the basic fundamentals of **Section Battle Drill**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Section Battle Drill**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Section Battle Drill** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Section Battle Drill

## Overview
This chapter covers the basic fundamentals of **Section Battle Drill**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Section Battle Drill**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Section Battle Drill** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000028b4561c', 'b1000000-0000-0000-0000-00000615a7ff', 'Theoretical Principles of Section Battle Drill', 'markdown', '{"markdown":"# Theoretical Principles of Section Battle Drill\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Section Battle Drill**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Section Battle Drill

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Section Battle Drill**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000028b4525c', 'b1000000-0000-0000-0000-00000615a800', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Section Battle Drill**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Section Battle Drill**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000028b4525b', 'b1000000-0000-0000-0000-00000615a800', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Section Battle Drill**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Section Battle Drill**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000079d241a4', 'b1000000-0000-0000-0000-0000013486b8', 'Introduction to Ambush & Defence', 'markdown', '{"markdown":"# Introduction to Ambush & Defence\n\n## Overview\nThis chapter covers the basic fundamentals of **Ambush & Defence**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Ambush & Defence**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Ambush & Defence** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Ambush & Defence

## Overview
This chapter covers the basic fundamentals of **Ambush & Defence**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Ambush & Defence**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Ambush & Defence** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000079d241a3', 'b1000000-0000-0000-0000-0000013486b8', 'Theoretical Principles of Ambush & Defence', 'markdown', '{"markdown":"# Theoretical Principles of Ambush & Defence\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Ambush & Defence**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Ambush & Defence

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Ambush & Defence**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000079d23de3', 'b1000000-0000-0000-0000-0000013486b9', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Ambush & Defence**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Ambush & Defence**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000079d23de2', 'b1000000-0000-0000-0000-0000013486b9', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Ambush & Defence**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Ambush & Defence**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00006b411fe8', 'b1000000-0000-0000-0000-00001fdae774', 'Introduction to Tactical Exercises', 'markdown', '{"markdown":"# Introduction to Tactical Exercises\n\n## Overview\nThis chapter covers the basic fundamentals of **Tactical Exercises**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Tactical Exercises**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Tactical Exercises** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Tactical Exercises

## Overview
This chapter covers the basic fundamentals of **Tactical Exercises**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Tactical Exercises**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Tactical Exercises** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00006b411fe7', 'b1000000-0000-0000-0000-00001fdae774', 'Theoretical Principles of Tactical Exercises', 'markdown', '{"markdown":"# Theoretical Principles of Tactical Exercises\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Tactical Exercises**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Tactical Exercises

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Tactical Exercises**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00006b411c27', 'b1000000-0000-0000-0000-00001fdae775', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Tactical Exercises**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Tactical Exercises**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00006b411c26', 'b1000000-0000-0000-0000-00001fdae775', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Tactical Exercises**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Tactical Exercises**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000066565e3b', 'b1000000-0000-0000-0000-000045f43061', 'Introduction to Platoon Formation', 'markdown', '{"markdown":"# Introduction to Platoon Formation\n\n## Overview\nThis chapter covers the basic fundamentals of **Platoon Formation**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Platoon Formation**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Platoon Formation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Platoon Formation

## Overview
This chapter covers the basic fundamentals of **Platoon Formation**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Platoon Formation**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Platoon Formation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000066565e3a', 'b1000000-0000-0000-0000-000045f43061', 'Theoretical Principles of Platoon Formation', 'markdown', '{"markdown":"# Theoretical Principles of Platoon Formation\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Platoon Formation**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Platoon Formation

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Platoon Formation**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000066565a7a', 'b1000000-0000-0000-0000-000045f43062', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Platoon Formation**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Platoon Formation**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000066565a79', 'b1000000-0000-0000-0000-000045f43062', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Platoon Formation**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Platoon Formation**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.');

INSERT INTO public.chapters (id, module_id, title, content_type, content_data, order_index, content) VALUES
('c1000000-0000-0000-0000-00005ab83223', 'b1000000-0000-0000-0000-00001f87403f', 'Introduction to Advanced Battle Craft', 'markdown', '{"markdown":"# Introduction to Advanced Battle Craft\n\n## Overview\nThis chapter covers the basic fundamentals of **Advanced Battle Craft**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Advanced Battle Craft**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Advanced Battle Craft** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Advanced Battle Craft

## Overview
This chapter covers the basic fundamentals of **Advanced Battle Craft**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Advanced Battle Craft**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Advanced Battle Craft** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00005ab83224', 'b1000000-0000-0000-0000-00001f87403f', 'Theoretical Principles of Advanced Battle Craft', 'markdown', '{"markdown":"# Theoretical Principles of Advanced Battle Craft\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Advanced Battle Craft**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Advanced Battle Craft

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Advanced Battle Craft**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00005ab835e4', 'b1000000-0000-0000-0000-00001f874040', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Advanced Battle Craft**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Advanced Battle Craft**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00005ab835e5', 'b1000000-0000-0000-0000-00001f874040', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Advanced Battle Craft**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Advanced Battle Craft**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000010207cf3', 'b1000000-0000-0000-0000-00003941c3a9', 'Introduction to Internal Security Duties', 'markdown', '{"markdown":"# Introduction to Internal Security Duties\n\n## Overview\nThis chapter covers the basic fundamentals of **Internal Security Duties**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Internal Security Duties**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Internal Security Duties** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Internal Security Duties

## Overview
This chapter covers the basic fundamentals of **Internal Security Duties**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Internal Security Duties**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Internal Security Duties** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000010207cf2', 'b1000000-0000-0000-0000-00003941c3a9', 'Theoretical Principles of Internal Security Duties', 'markdown', '{"markdown":"# Theoretical Principles of Internal Security Duties\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Internal Security Duties**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Internal Security Duties

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Internal Security Duties**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000010207932', 'b1000000-0000-0000-0000-00003941c3aa', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Internal Security Duties**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Internal Security Duties**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000010207931', 'b1000000-0000-0000-0000-00003941c3aa', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Internal Security Duties**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Internal Security Duties**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00003d10dec4', 'b1000000-0000-0000-0000-000057b4a120', 'Introduction to Field Engineering', 'markdown', '{"markdown":"# Introduction to Field Engineering\n\n## Overview\nThis chapter covers the basic fundamentals of **Field Engineering**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Field Engineering**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Field Engineering** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Field Engineering

## Overview
This chapter covers the basic fundamentals of **Field Engineering**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Field Engineering**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Field Engineering** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00003d10dec5', 'b1000000-0000-0000-0000-000057b4a120', 'Theoretical Principles of Field Engineering', 'markdown', '{"markdown":"# Theoretical Principles of Field Engineering\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Field Engineering**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Field Engineering

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Field Engineering**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00003d10e285', 'b1000000-0000-0000-0000-000057b4a121', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Field Engineering**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Field Engineering**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00003d10e286', 'b1000000-0000-0000-0000-000057b4a121', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Field Engineering**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Field Engineering**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00001f95a7f7', 'b1000000-0000-0000-0000-00002b301b13', 'Introduction to Communication Procedures', 'markdown', '{"markdown":"# Introduction to Communication Procedures\n\n## Overview\nThis chapter covers the basic fundamentals of **Communication Procedures**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Communication Procedures**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Communication Procedures** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Communication Procedures

## Overview
This chapter covers the basic fundamentals of **Communication Procedures**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Communication Procedures**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Communication Procedures** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00001f95a7f8', 'b1000000-0000-0000-0000-00002b301b13', 'Theoretical Principles of Communication Procedures', 'markdown', '{"markdown":"# Theoretical Principles of Communication Procedures\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Communication Procedures**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Communication Procedures

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Communication Procedures**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00001f95abb8', 'b1000000-0000-0000-0000-00002b301b14', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Communication Procedures**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Communication Procedures**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00001f95abb9', 'b1000000-0000-0000-0000-00002b301b14', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Communication Procedures**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Communication Procedures**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000017b73a41', 'b1000000-0000-0000-0000-00006dba4823', 'Introduction to Map Reading Advanced', 'markdown', '{"markdown":"# Introduction to Map Reading Advanced\n\n## Overview\nThis chapter covers the basic fundamentals of **Map Reading Advanced**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Map Reading Advanced**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Map Reading Advanced** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Map Reading Advanced

## Overview
This chapter covers the basic fundamentals of **Map Reading Advanced**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Army** wing.

## Key Learning Areas
- Basic definitions and principles of **Map Reading Advanced**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Map Reading Advanced** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000017b73a42', 'b1000000-0000-0000-0000-00006dba4823', 'Theoretical Principles of Map Reading Advanced', 'markdown', '{"markdown":"# Theoretical Principles of Map Reading Advanced\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Map Reading Advanced**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Map Reading Advanced

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Map Reading Advanced**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000017b73e02', 'b1000000-0000-0000-0000-00006dba4822', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Map Reading Advanced**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Map Reading Advanced**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000017b73e03', 'b1000000-0000-0000-0000-00006dba4822', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Map Reading Advanced**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Map Reading Advanced**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000043eb9b00', 'b1000000-0000-0000-0000-000071493c5c', 'Introduction to Naval Orientation', 'markdown', '{"markdown":"# Introduction to Naval Orientation\n\n## Overview\nThis chapter covers the basic fundamentals of **Naval Orientation**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Naval Orientation**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Naval Orientation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Naval Orientation

## Overview
This chapter covers the basic fundamentals of **Naval Orientation**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Naval Orientation**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Naval Orientation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000043eb9b01', 'b1000000-0000-0000-0000-000071493c5c', 'Theoretical Principles of Naval Orientation', 'markdown', '{"markdown":"# Theoretical Principles of Naval Orientation\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Naval Orientation**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Naval Orientation

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Naval Orientation**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000043eb9ec1', 'b1000000-0000-0000-0000-000071493c5d', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Naval Orientation**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Naval Orientation**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000043eb9ec2', 'b1000000-0000-0000-0000-000071493c5d', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Naval Orientation**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Naval Orientation**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000069ed6743', 'b1000000-0000-0000-0000-00000138c2a1', 'Introduction to Parts of Ship', 'markdown', '{"markdown":"# Introduction to Parts of Ship\n\n## Overview\nThis chapter covers the basic fundamentals of **Parts of Ship**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Parts of Ship**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Parts of Ship** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Parts of Ship

## Overview
This chapter covers the basic fundamentals of **Parts of Ship**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Parts of Ship**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Parts of Ship** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000069ed6744', 'b1000000-0000-0000-0000-00000138c2a1', 'Theoretical Principles of Parts of Ship', 'markdown', '{"markdown":"# Theoretical Principles of Parts of Ship\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Parts of Ship**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Parts of Ship

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Parts of Ship**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000069ed6b04', 'b1000000-0000-0000-0000-00000138c2a0', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Parts of Ship**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Parts of Ship**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000069ed6b05', 'b1000000-0000-0000-0000-00000138c2a0', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Parts of Ship**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Parts of Ship**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00001eb9805d', 'b1000000-0000-0000-0000-00003a1ad4f9', 'Introduction to Seamanship', 'markdown', '{"markdown":"# Introduction to Seamanship\n\n## Overview\nThis chapter covers the basic fundamentals of **Seamanship**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Seamanship**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Seamanship** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Seamanship

## Overview
This chapter covers the basic fundamentals of **Seamanship**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Seamanship**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Seamanship** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00001eb9805e', 'b1000000-0000-0000-0000-00003a1ad4f9', 'Theoretical Principles of Seamanship', 'markdown', '{"markdown":"# Theoretical Principles of Seamanship\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Seamanship**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Seamanship

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Seamanship**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00001eb9841e', 'b1000000-0000-0000-0000-00003a1ad4fa', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Seamanship**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Seamanship**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00001eb9841f', 'b1000000-0000-0000-0000-00003a1ad4fa', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Seamanship**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Seamanship**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00004cec69b5', 'b1000000-0000-0000-0000-000036283451', 'Introduction to Boat Pulling', 'markdown', '{"markdown":"# Introduction to Boat Pulling\n\n## Overview\nThis chapter covers the basic fundamentals of **Boat Pulling**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Boat Pulling**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Boat Pulling** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Boat Pulling

## Overview
This chapter covers the basic fundamentals of **Boat Pulling**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Boat Pulling**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Boat Pulling** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00004cec69b6', 'b1000000-0000-0000-0000-000036283451', 'Theoretical Principles of Boat Pulling', 'markdown', '{"markdown":"# Theoretical Principles of Boat Pulling\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Boat Pulling**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Boat Pulling

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Boat Pulling**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00004cec6d76', 'b1000000-0000-0000-0000-000036283452', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Boat Pulling**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Boat Pulling**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00004cec6d77', 'b1000000-0000-0000-0000-000036283452', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Boat Pulling**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Boat Pulling**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00003f24d6da', 'b1000000-0000-0000-0000-0000328c594a', 'Introduction to Rigging', 'markdown', '{"markdown":"# Introduction to Rigging\n\n## Overview\nThis chapter covers the basic fundamentals of **Rigging**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Rigging**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Rigging** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Rigging

## Overview
This chapter covers the basic fundamentals of **Rigging**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Rigging**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Rigging** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00003f24d6db', 'b1000000-0000-0000-0000-0000328c594a', 'Theoretical Principles of Rigging', 'markdown', '{"markdown":"# Theoretical Principles of Rigging\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Rigging**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Rigging

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Rigging**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00003f24da9b', 'b1000000-0000-0000-0000-0000328c5949', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Rigging**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Rigging**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00003f24da9c', 'b1000000-0000-0000-0000-0000328c5949', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Rigging**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Rigging**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-0000191c1185', 'b1000000-0000-0000-0000-000035406fdf', 'Introduction to Naval Communication Basics', 'markdown', '{"markdown":"# Introduction to Naval Communication Basics\n\n## Overview\nThis chapter covers the basic fundamentals of **Naval Communication Basics**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Naval Communication Basics**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Naval Communication Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Naval Communication Basics

## Overview
This chapter covers the basic fundamentals of **Naval Communication Basics**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Naval Communication Basics**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Naval Communication Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-0000191c1186', 'b1000000-0000-0000-0000-000035406fdf', 'Theoretical Principles of Naval Communication Basics', 'markdown', '{"markdown":"# Theoretical Principles of Naval Communication Basics\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Naval Communication Basics**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Naval Communication Basics

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Naval Communication Basics**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-0000191c1546', 'b1000000-0000-0000-0000-000035406fde', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Naval Communication Basics**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Naval Communication Basics**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-0000191c1547', 'b1000000-0000-0000-0000-000035406fde', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Naval Communication Basics**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Naval Communication Basics**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000002fc2e7d', 'b1000000-0000-0000-0000-00006a8d74e7', 'Introduction to Navigation', 'markdown', '{"markdown":"# Introduction to Navigation\n\n## Overview\nThis chapter covers the basic fundamentals of **Navigation**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Navigation**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Navigation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Navigation

## Overview
This chapter covers the basic fundamentals of **Navigation**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Navigation**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Navigation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000002fc2e7e', 'b1000000-0000-0000-0000-00006a8d74e7', 'Theoretical Principles of Navigation', 'markdown', '{"markdown":"# Theoretical Principles of Navigation\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Navigation**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Navigation

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Navigation**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000002fc323e', 'b1000000-0000-0000-0000-00006a8d74e6', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Navigation**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Navigation**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000002fc323f', 'b1000000-0000-0000-0000-00006a8d74e6', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Navigation**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Navigation**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000029339381', 'b1000000-0000-0000-0000-00006d87611d', 'Introduction to Anchoring', 'markdown', '{"markdown":"# Introduction to Anchoring\n\n## Overview\nThis chapter covers the basic fundamentals of **Anchoring**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Anchoring**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Anchoring** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Anchoring

## Overview
This chapter covers the basic fundamentals of **Anchoring**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Anchoring**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Anchoring** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000029339382', 'b1000000-0000-0000-0000-00006d87611d', 'Theoretical Principles of Anchoring', 'markdown', '{"markdown":"# Theoretical Principles of Anchoring\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Anchoring**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Anchoring

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Anchoring**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.');

INSERT INTO public.chapters (id, module_id, title, content_type, content_data, order_index, content) VALUES
('c1000000-0000-0000-0000-000029339742', 'b1000000-0000-0000-0000-00006d87611e', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Anchoring**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Anchoring**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000029339743', 'b1000000-0000-0000-0000-00006d87611e', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Anchoring**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Anchoring**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00002cae100d', 'b1000000-0000-0000-0000-00007fe9cdf1', 'Introduction to Ship Modelling', 'markdown', '{"markdown":"# Introduction to Ship Modelling\n\n## Overview\nThis chapter covers the basic fundamentals of **Ship Modelling**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Ship Modelling**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Ship Modelling** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Ship Modelling

## Overview
This chapter covers the basic fundamentals of **Ship Modelling**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Ship Modelling**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Ship Modelling** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00002cae100c', 'b1000000-0000-0000-0000-00007fe9cdf1', 'Theoretical Principles of Ship Modelling', 'markdown', '{"markdown":"# Theoretical Principles of Ship Modelling\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Ship Modelling**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Ship Modelling

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Ship Modelling**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00002cae0c4c', 'b1000000-0000-0000-0000-00007fe9cdf0', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Ship Modelling**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Ship Modelling**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00002cae0c4b', 'b1000000-0000-0000-0000-00007fe9cdf0', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Ship Modelling**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Ship Modelling**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000023cd0b0a', 'b1000000-0000-0000-0000-00004a04d91a', 'Introduction to Naval Signals', 'markdown', '{"markdown":"# Introduction to Naval Signals\n\n## Overview\nThis chapter covers the basic fundamentals of **Naval Signals**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Naval Signals**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Naval Signals** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Naval Signals

## Overview
This chapter covers the basic fundamentals of **Naval Signals**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Naval Signals**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Naval Signals** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000023cd0b0b', 'b1000000-0000-0000-0000-00004a04d91a', 'Theoretical Principles of Naval Signals', 'markdown', '{"markdown":"# Theoretical Principles of Naval Signals\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Naval Signals**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Naval Signals

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Naval Signals**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000023cd0ecb', 'b1000000-0000-0000-0000-00004a04d919', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Naval Signals**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Naval Signals**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000023cd0ecc', 'b1000000-0000-0000-0000-00004a04d919', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Naval Signals**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Naval Signals**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00003b85b41d', 'b1000000-0000-0000-0000-0000501f0747', 'Introduction to Boat Sailing', 'markdown', '{"markdown":"# Introduction to Boat Sailing\n\n## Overview\nThis chapter covers the basic fundamentals of **Boat Sailing**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Boat Sailing**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Boat Sailing** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Boat Sailing

## Overview
This chapter covers the basic fundamentals of **Boat Sailing**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Boat Sailing**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Boat Sailing** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00003b85b41e', 'b1000000-0000-0000-0000-0000501f0747', 'Theoretical Principles of Boat Sailing', 'markdown', '{"markdown":"# Theoretical Principles of Boat Sailing\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Boat Sailing**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Boat Sailing

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Boat Sailing**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00003b85b7de', 'b1000000-0000-0000-0000-0000501f0746', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Boat Sailing**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Boat Sailing**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00003b85b7df', 'b1000000-0000-0000-0000-0000501f0746', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Boat Sailing**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Boat Sailing**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000022624a12', 'b1000000-0000-0000-0000-0000169b7812', 'Introduction to Tides & Compass', 'markdown', '{"markdown":"# Introduction to Tides & Compass\n\n## Overview\nThis chapter covers the basic fundamentals of **Tides & Compass**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Tides & Compass**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Tides & Compass** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Tides & Compass

## Overview
This chapter covers the basic fundamentals of **Tides & Compass**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Tides & Compass**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Tides & Compass** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000022624a13', 'b1000000-0000-0000-0000-0000169b7812', 'Theoretical Principles of Tides & Compass', 'markdown', '{"markdown":"# Theoretical Principles of Tides & Compass\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Tides & Compass**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Tides & Compass

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Tides & Compass**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000022624dd3', 'b1000000-0000-0000-0000-0000169b7811', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Tides & Compass**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Tides & Compass**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000022624dd4', 'b1000000-0000-0000-0000-0000169b7811', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Tides & Compass**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Tides & Compass**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000074eba54c', 'b1000000-0000-0000-0000-000040e09658', 'Introduction to Advanced Navigation', 'markdown', '{"markdown":"# Introduction to Advanced Navigation\n\n## Overview\nThis chapter covers the basic fundamentals of **Advanced Navigation**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Advanced Navigation**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Advanced Navigation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Advanced Navigation

## Overview
This chapter covers the basic fundamentals of **Advanced Navigation**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Advanced Navigation**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Advanced Navigation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000074eba54d', 'b1000000-0000-0000-0000-000040e09658', 'Theoretical Principles of Advanced Navigation', 'markdown', '{"markdown":"# Theoretical Principles of Advanced Navigation\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Advanced Navigation**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Advanced Navigation

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Advanced Navigation**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000074eba90d', 'b1000000-0000-0000-0000-000040e09657', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Advanced Navigation**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Advanced Navigation**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000074eba90e', 'b1000000-0000-0000-0000-000040e09657', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Advanced Navigation**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Advanced Navigation**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000019f60841', 'b1000000-0000-0000-0000-000011e005dd', 'Introduction to Naval Warfare Basics', 'markdown', '{"markdown":"# Introduction to Naval Warfare Basics\n\n## Overview\nThis chapter covers the basic fundamentals of **Naval Warfare Basics**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Naval Warfare Basics**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Naval Warfare Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Naval Warfare Basics

## Overview
This chapter covers the basic fundamentals of **Naval Warfare Basics**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Naval Warfare Basics**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Naval Warfare Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000019f60842', 'b1000000-0000-0000-0000-000011e005dd', 'Theoretical Principles of Naval Warfare Basics', 'markdown', '{"markdown":"# Theoretical Principles of Naval Warfare Basics\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Naval Warfare Basics**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Naval Warfare Basics

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Naval Warfare Basics**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000019f60c02', 'b1000000-0000-0000-0000-000011e005de', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Naval Warfare Basics**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Naval Warfare Basics**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000019f60c03', 'b1000000-0000-0000-0000-000011e005de', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Naval Warfare Basics**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Naval Warfare Basics**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00000c394e9c', 'b1000000-0000-0000-0000-00003698d908', 'Introduction to Ship Organisation', 'markdown', '{"markdown":"# Introduction to Ship Organisation\n\n## Overview\nThis chapter covers the basic fundamentals of **Ship Organisation**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Ship Organisation**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Ship Organisation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Ship Organisation

## Overview
This chapter covers the basic fundamentals of **Ship Organisation**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Ship Organisation**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Ship Organisation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00000c394e9d', 'b1000000-0000-0000-0000-00003698d908', 'Theoretical Principles of Ship Organisation', 'markdown', '{"markdown":"# Theoretical Principles of Ship Organisation\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Ship Organisation**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Ship Organisation

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Ship Organisation**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00000c39525d', 'b1000000-0000-0000-0000-00003698d907', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Ship Organisation**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Ship Organisation**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00000c39525e', 'b1000000-0000-0000-0000-00003698d907', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Ship Organisation**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Ship Organisation**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00000929b2a0', 'b1000000-0000-0000-0000-00007f974404', 'Introduction to Communication Systems', 'markdown', '{"markdown":"# Introduction to Communication Systems\n\n## Overview\nThis chapter covers the basic fundamentals of **Communication Systems**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Communication Systems**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Communication Systems** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Communication Systems

## Overview
This chapter covers the basic fundamentals of **Communication Systems**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Communication Systems**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Communication Systems** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00000929b2a1', 'b1000000-0000-0000-0000-00007f974404', 'Theoretical Principles of Communication Systems', 'markdown', '{"markdown":"# Theoretical Principles of Communication Systems\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Communication Systems**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Communication Systems

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Communication Systems**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00000929b661', 'b1000000-0000-0000-0000-00007f974403', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Communication Systems**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Communication Systems**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00000929b662', 'b1000000-0000-0000-0000-00007f974403', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Communication Systems**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Communication Systems**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00002203684d', 'b1000000-0000-0000-0000-00000f383631', 'Introduction to Sailing Expeditions', 'markdown', '{"markdown":"# Introduction to Sailing Expeditions\n\n## Overview\nThis chapter covers the basic fundamentals of **Sailing Expeditions**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Sailing Expeditions**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Sailing Expeditions** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Sailing Expeditions

## Overview
This chapter covers the basic fundamentals of **Sailing Expeditions**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Sailing Expeditions**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Sailing Expeditions** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00002203684c', 'b1000000-0000-0000-0000-00000f383631', 'Theoretical Principles of Sailing Expeditions', 'markdown', '{"markdown":"# Theoretical Principles of Sailing Expeditions\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Sailing Expeditions**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Sailing Expeditions

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Sailing Expeditions**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00002203648c', 'b1000000-0000-0000-0000-00000f383630', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Sailing Expeditions**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Sailing Expeditions**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00002203648b', 'b1000000-0000-0000-0000-00000f383630', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Sailing Expeditions**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Sailing Expeditions**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000075243141', 'b1000000-0000-0000-0000-00007b7b9123', 'Introduction to Naval Weapons Basics', 'markdown', '{"markdown":"# Introduction to Naval Weapons Basics\n\n## Overview\nThis chapter covers the basic fundamentals of **Naval Weapons Basics**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Naval Weapons Basics**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Naval Weapons Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Naval Weapons Basics

## Overview
This chapter covers the basic fundamentals of **Naval Weapons Basics**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Naval Weapons Basics**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Naval Weapons Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000075243142', 'b1000000-0000-0000-0000-00007b7b9123', 'Theoretical Principles of Naval Weapons Basics', 'markdown', '{"markdown":"# Theoretical Principles of Naval Weapons Basics\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Naval Weapons Basics**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Naval Weapons Basics

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Naval Weapons Basics**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000075243502', 'b1000000-0000-0000-0000-00007b7b9122', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Naval Weapons Basics**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Naval Weapons Basics**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000075243503', 'b1000000-0000-0000-0000-00007b7b9122', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Naval Weapons Basics**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Naval Weapons Basics**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000076e4251f', 'b1000000-0000-0000-0000-0000079a007d', 'Introduction to Leadership at Sea', 'markdown', '{"markdown":"# Introduction to Leadership at Sea\n\n## Overview\nThis chapter covers the basic fundamentals of **Leadership at Sea**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Leadership at Sea**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Leadership at Sea** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Leadership at Sea

## Overview
This chapter covers the basic fundamentals of **Leadership at Sea**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Navy** wing.

## Key Learning Areas
- Basic definitions and principles of **Leadership at Sea**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Leadership at Sea** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000076e4251e', 'b1000000-0000-0000-0000-0000079a007d', 'Theoretical Principles of Leadership at Sea', 'markdown', '{"markdown":"# Theoretical Principles of Leadership at Sea\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Leadership at Sea**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Leadership at Sea

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Leadership at Sea**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000076e4215e', 'b1000000-0000-0000-0000-0000079a007e', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Leadership at Sea**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Leadership at Sea**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000076e4215d', 'b1000000-0000-0000-0000-0000079a007e', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Leadership at Sea**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Leadership at Sea**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-0000763ce794', 'b1000000-0000-0000-0000-00007c86db38', 'Introduction to Principles of Flight', 'markdown', '{"markdown":"# Introduction to Principles of Flight\n\n## Overview\nThis chapter covers the basic fundamentals of **Principles of Flight**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Principles of Flight**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Principles of Flight** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Principles of Flight

## Overview
This chapter covers the basic fundamentals of **Principles of Flight**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Principles of Flight**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Principles of Flight** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-0000763ce793', 'b1000000-0000-0000-0000-00007c86db38', 'Theoretical Principles of Principles of Flight', 'markdown', '{"markdown":"# Theoretical Principles of Principles of Flight\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Principles of Flight**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Principles of Flight

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Principles of Flight**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-0000763ce3d3', 'b1000000-0000-0000-0000-00007c86db37', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Principles of Flight**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Principles of Flight**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-0000763ce3d2', 'b1000000-0000-0000-0000-00007c86db37', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Principles of Flight**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Principles of Flight**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.');

INSERT INTO public.chapters (id, module_id, title, content_type, content_data, order_index, content) VALUES
('c1000000-0000-0000-0000-0000360e5cbd', 'b1000000-0000-0000-0000-000037bb4959', 'Introduction to Airframe & Aircraft Parts', 'markdown', '{"markdown":"# Introduction to Airframe & Aircraft Parts\n\n## Overview\nThis chapter covers the basic fundamentals of **Airframe & Aircraft Parts**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Airframe & Aircraft Parts**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Airframe & Aircraft Parts** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Airframe & Aircraft Parts

## Overview
This chapter covers the basic fundamentals of **Airframe & Aircraft Parts**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Airframe & Aircraft Parts**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Airframe & Aircraft Parts** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-0000360e5cbe', 'b1000000-0000-0000-0000-000037bb4959', 'Theoretical Principles of Airframe & Aircraft Parts', 'markdown', '{"markdown":"# Theoretical Principles of Airframe & Aircraft Parts\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Airframe & Aircraft Parts**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Airframe & Aircraft Parts

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Airframe & Aircraft Parts**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-0000360e607e', 'b1000000-0000-0000-0000-000037bb495a', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Airframe & Aircraft Parts**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Airframe & Aircraft Parts**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-0000360e607f', 'b1000000-0000-0000-0000-000037bb495a', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Airframe & Aircraft Parts**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Airframe & Aircraft Parts**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000058d2d71f', 'b1000000-0000-0000-0000-000075a6ce7d', 'Introduction to Flying Basics', 'markdown', '{"markdown":"# Introduction to Flying Basics\n\n## Overview\nThis chapter covers the basic fundamentals of **Flying Basics**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Flying Basics**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Flying Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Flying Basics

## Overview
This chapter covers the basic fundamentals of **Flying Basics**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Flying Basics**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Flying Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000058d2d71e', 'b1000000-0000-0000-0000-000075a6ce7d', 'Theoretical Principles of Flying Basics', 'markdown', '{"markdown":"# Theoretical Principles of Flying Basics\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Flying Basics**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Flying Basics

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Flying Basics**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000058d2d35e', 'b1000000-0000-0000-0000-000075a6ce7e', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Flying Basics**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Flying Basics**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000058d2d35d', 'b1000000-0000-0000-0000-000075a6ce7e', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Flying Basics**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Flying Basics**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000047cb2b2d', 'b1000000-0000-0000-0000-0000102cceef', 'Introduction to Aviation History', 'markdown', '{"markdown":"# Introduction to Aviation History\n\n## Overview\nThis chapter covers the basic fundamentals of **Aviation History**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Aviation History**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Aviation History** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Aviation History

## Overview
This chapter covers the basic fundamentals of **Aviation History**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Aviation History**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Aviation History** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000047cb2b2c', 'b1000000-0000-0000-0000-0000102cceef', 'Theoretical Principles of Aviation History', 'markdown', '{"markdown":"# Theoretical Principles of Aviation History\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Aviation History**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Aviation History

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Aviation History**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000047cb276c', 'b1000000-0000-0000-0000-0000102ccef0', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Aviation History**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Aviation History**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000047cb276b', 'b1000000-0000-0000-0000-0000102ccef0', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Aviation History**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Aviation History**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00007ed85c1f', 'b1000000-0000-0000-0000-00001061b93b', 'Introduction to Aero Modelling', 'markdown', '{"markdown":"# Introduction to Aero Modelling\n\n## Overview\nThis chapter covers the basic fundamentals of **Aero Modelling**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Aero Modelling**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Aero Modelling** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Aero Modelling

## Overview
This chapter covers the basic fundamentals of **Aero Modelling**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Aero Modelling**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Aero Modelling** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00007ed85c20', 'b1000000-0000-0000-0000-00001061b93b', 'Theoretical Principles of Aero Modelling', 'markdown', '{"markdown":"# Theoretical Principles of Aero Modelling\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Aero Modelling**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Aero Modelling

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Aero Modelling**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00007ed85fe0', 'b1000000-0000-0000-0000-00001061b93c', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Aero Modelling**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Aero Modelling**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00007ed85fe1', 'b1000000-0000-0000-0000-00001061b93c', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Aero Modelling**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Aero Modelling**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00002a756c3b', 'b1000000-0000-0000-0000-000076965d9f', 'Introduction to Air Navigation Basics', 'markdown', '{"markdown":"# Introduction to Air Navigation Basics\n\n## Overview\nThis chapter covers the basic fundamentals of **Air Navigation Basics**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Air Navigation Basics**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Air Navigation Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Air Navigation Basics

## Overview
This chapter covers the basic fundamentals of **Air Navigation Basics**, required for National Cadet Corps (NCC) Certificate **A** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Air Navigation Basics**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Air Navigation Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00002a756c3a', 'b1000000-0000-0000-0000-000076965d9f', 'Theoretical Principles of Air Navigation Basics', 'markdown', '{"markdown":"# Theoretical Principles of Air Navigation Basics\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Air Navigation Basics**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Air Navigation Basics

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Air Navigation Basics**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00002a75687a', 'b1000000-0000-0000-0000-000076965d9e', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Air Navigation Basics**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Air Navigation Basics**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00002a756879', 'b1000000-0000-0000-0000-000076965d9e', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Air Navigation Basics**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Air Navigation Basics**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00002a666630', 'b1000000-0000-0000-0000-00000d5d138c', 'Introduction to Aircraft Instruments', 'markdown', '{"markdown":"# Introduction to Aircraft Instruments\n\n## Overview\nThis chapter covers the basic fundamentals of **Aircraft Instruments**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Aircraft Instruments**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Aircraft Instruments** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Aircraft Instruments

## Overview
This chapter covers the basic fundamentals of **Aircraft Instruments**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Aircraft Instruments**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Aircraft Instruments** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00002a666631', 'b1000000-0000-0000-0000-00000d5d138c', 'Theoretical Principles of Aircraft Instruments', 'markdown', '{"markdown":"# Theoretical Principles of Aircraft Instruments\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Aircraft Instruments**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Aircraft Instruments

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Aircraft Instruments**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00002a6669f1', 'b1000000-0000-0000-0000-00000d5d138d', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Aircraft Instruments**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Aircraft Instruments**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00002a6669f2', 'b1000000-0000-0000-0000-00000d5d138d', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Aircraft Instruments**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Aircraft Instruments**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00005dea500e', 'b1000000-0000-0000-0000-00001f881a32', 'Introduction to Meteorology', 'markdown', '{"markdown":"# Introduction to Meteorology\n\n## Overview\nThis chapter covers the basic fundamentals of **Meteorology**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Meteorology**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Meteorology** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Meteorology

## Overview
This chapter covers the basic fundamentals of **Meteorology**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Meteorology**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Meteorology** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00005dea500d', 'b1000000-0000-0000-0000-00001f881a32', 'Theoretical Principles of Meteorology', 'markdown', '{"markdown":"# Theoretical Principles of Meteorology\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Meteorology**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Meteorology

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Meteorology**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00005dea4c4d', 'b1000000-0000-0000-0000-00001f881a31', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Meteorology**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Meteorology**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00005dea4c4c', 'b1000000-0000-0000-0000-00001f881a31', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Meteorology**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Meteorology**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-000016f61ffa', 'b1000000-0000-0000-0000-000052def51e', 'Introduction to Air Traffic Control Basics', 'markdown', '{"markdown":"# Introduction to Air Traffic Control Basics\n\n## Overview\nThis chapter covers the basic fundamentals of **Air Traffic Control Basics**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Air Traffic Control Basics**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Air Traffic Control Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Air Traffic Control Basics

## Overview
This chapter covers the basic fundamentals of **Air Traffic Control Basics**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Air Traffic Control Basics**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Air Traffic Control Basics** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-000016f61ff9', 'b1000000-0000-0000-0000-000052def51e', 'Theoretical Principles of Air Traffic Control Basics', 'markdown', '{"markdown":"# Theoretical Principles of Air Traffic Control Basics\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Air Traffic Control Basics**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Air Traffic Control Basics

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Air Traffic Control Basics**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-000016f61c39', 'b1000000-0000-0000-0000-000052def51d', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Air Traffic Control Basics**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Air Traffic Control Basics**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-000016f61c38', 'b1000000-0000-0000-0000-000052def51d', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Air Traffic Control Basics**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Air Traffic Control Basics**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-0000556b8489', 'b1000000-0000-0000-0000-000024680bdb', 'Introduction to Navigation Advanced', 'markdown', '{"markdown":"# Introduction to Navigation Advanced\n\n## Overview\nThis chapter covers the basic fundamentals of **Navigation Advanced**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Navigation Advanced**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Navigation Advanced** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Navigation Advanced

## Overview
This chapter covers the basic fundamentals of **Navigation Advanced**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Navigation Advanced**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Navigation Advanced** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-0000556b848a', 'b1000000-0000-0000-0000-000024680bdb', 'Theoretical Principles of Navigation Advanced', 'markdown', '{"markdown":"# Theoretical Principles of Navigation Advanced\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Navigation Advanced**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Navigation Advanced

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Navigation Advanced**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-0000556b884a', 'b1000000-0000-0000-0000-000024680bda', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Navigation Advanced**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Navigation Advanced**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-0000556b884b', 'b1000000-0000-0000-0000-000024680bda', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Navigation Advanced**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Navigation Advanced**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00007137a37b', 'b1000000-0000-0000-0000-00003d632797', 'Introduction to Aero Engines', 'markdown', '{"markdown":"# Introduction to Aero Engines\n\n## Overview\nThis chapter covers the basic fundamentals of **Aero Engines**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Aero Engines**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Aero Engines** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Aero Engines

## Overview
This chapter covers the basic fundamentals of **Aero Engines**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Aero Engines**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Aero Engines** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00007137a37c', 'b1000000-0000-0000-0000-00003d632797', 'Theoretical Principles of Aero Engines', 'markdown', '{"markdown":"# Theoretical Principles of Aero Engines\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Aero Engines**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Aero Engines

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Aero Engines**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00007137a73c', 'b1000000-0000-0000-0000-00003d632798', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Aero Engines**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Aero Engines**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00007137a73d', 'b1000000-0000-0000-0000-00003d632798', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Aero Engines**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Aero Engines**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00001afeecbc', 'b1000000-0000-0000-0000-00000cc232e8', 'Introduction to Map Reading for Aviation', 'markdown', '{"markdown":"# Introduction to Map Reading for Aviation\n\n## Overview\nThis chapter covers the basic fundamentals of **Map Reading for Aviation**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Map Reading for Aviation**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Map Reading for Aviation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Map Reading for Aviation

## Overview
This chapter covers the basic fundamentals of **Map Reading for Aviation**, required for National Cadet Corps (NCC) Certificate **B** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Map Reading for Aviation**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Map Reading for Aviation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00001afeecbd', 'b1000000-0000-0000-0000-00000cc232e8', 'Theoretical Principles of Map Reading for Aviation', 'markdown', '{"markdown":"# Theoretical Principles of Map Reading for Aviation\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Map Reading for Aviation**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Map Reading for Aviation

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Map Reading for Aviation**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00001afef07d', 'b1000000-0000-0000-0000-00000cc232e7', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Map Reading for Aviation**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Map Reading for Aviation**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00001afef07e', 'b1000000-0000-0000-0000-00000cc232e7', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Map Reading for Aviation**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Map Reading for Aviation**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00005d23a4e9', 'b1000000-0000-0000-0000-0000519cac85', 'Introduction to Advanced Aviation Subjects', 'markdown', '{"markdown":"# Introduction to Advanced Aviation Subjects\n\n## Overview\nThis chapter covers the basic fundamentals of **Advanced Aviation Subjects**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Advanced Aviation Subjects**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Advanced Aviation Subjects** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Advanced Aviation Subjects

## Overview
This chapter covers the basic fundamentals of **Advanced Aviation Subjects**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Advanced Aviation Subjects**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Advanced Aviation Subjects** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00005d23a4ea', 'b1000000-0000-0000-0000-0000519cac85', 'Theoretical Principles of Advanced Aviation Subjects', 'markdown', '{"markdown":"# Theoretical Principles of Advanced Aviation Subjects\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Advanced Aviation Subjects**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Advanced Aviation Subjects

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Advanced Aviation Subjects**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00005d23a8aa', 'b1000000-0000-0000-0000-0000519cac86', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Advanced Aviation Subjects**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Advanced Aviation Subjects**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00005d23a8ab', 'b1000000-0000-0000-0000-0000519cac86', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Advanced Aviation Subjects**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Advanced Aviation Subjects**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00006a6c40ad', 'b1000000-0000-0000-0000-00002abba691', 'Introduction to Flight Navigation', 'markdown', '{"markdown":"# Introduction to Flight Navigation\n\n## Overview\nThis chapter covers the basic fundamentals of **Flight Navigation**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Flight Navigation**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Flight Navigation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Flight Navigation

## Overview
This chapter covers the basic fundamentals of **Flight Navigation**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Flight Navigation**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Flight Navigation** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00006a6c40ac', 'b1000000-0000-0000-0000-00002abba691', 'Theoretical Principles of Flight Navigation', 'markdown', '{"markdown":"# Theoretical Principles of Flight Navigation\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Flight Navigation**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Flight Navigation

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Flight Navigation**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.');

INSERT INTO public.chapters (id, module_id, title, content_type, content_data, order_index, content) VALUES
('c1000000-0000-0000-0000-00006a6c3cec', 'b1000000-0000-0000-0000-00002abba690', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Flight Navigation**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Flight Navigation**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00006a6c3ceb', 'b1000000-0000-0000-0000-00002abba690', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Flight Navigation**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Flight Navigation**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00001aff7215', 'b1000000-0000-0000-0000-00006643ee07', 'Introduction to Aircraft Recognition', 'markdown', '{"markdown":"# Introduction to Aircraft Recognition\n\n## Overview\nThis chapter covers the basic fundamentals of **Aircraft Recognition**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Aircraft Recognition**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Aircraft Recognition** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Aircraft Recognition

## Overview
This chapter covers the basic fundamentals of **Aircraft Recognition**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Aircraft Recognition**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Aircraft Recognition** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00001aff7214', 'b1000000-0000-0000-0000-00006643ee07', 'Theoretical Principles of Aircraft Recognition', 'markdown', '{"markdown":"# Theoretical Principles of Aircraft Recognition\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Aircraft Recognition**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Aircraft Recognition

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Aircraft Recognition**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00001aff6e54', 'b1000000-0000-0000-0000-00006643ee08', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Aircraft Recognition**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Aircraft Recognition**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00001aff6e53', 'b1000000-0000-0000-0000-00006643ee08', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Aircraft Recognition**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Aircraft Recognition**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-0000323bbaf8', 'b1000000-0000-0000-0000-00006d6f05ac', 'Introduction to Air Power & Warfare', 'markdown', '{"markdown":"# Introduction to Air Power & Warfare\n\n## Overview\nThis chapter covers the basic fundamentals of **Air Power & Warfare**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Air Power & Warfare**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Air Power & Warfare** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Air Power & Warfare

## Overview
This chapter covers the basic fundamentals of **Air Power & Warfare**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Air Power & Warfare**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Air Power & Warfare** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-0000323bbaf9', 'b1000000-0000-0000-0000-00006d6f05ac', 'Theoretical Principles of Air Power & Warfare', 'markdown', '{"markdown":"# Theoretical Principles of Air Power & Warfare\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Air Power & Warfare**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Air Power & Warfare

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Air Power & Warfare**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-0000323bbeb9', 'b1000000-0000-0000-0000-00006d6f05ab', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Air Power & Warfare**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Air Power & Warfare**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-0000323bbeba', 'b1000000-0000-0000-0000-00006d6f05ab', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Air Power & Warfare**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Air Power & Warfare**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00001cf11792', 'b1000000-0000-0000-0000-000009e2f2b6', 'Introduction to Aero Engine Systems', 'markdown', '{"markdown":"# Introduction to Aero Engine Systems\n\n## Overview\nThis chapter covers the basic fundamentals of **Aero Engine Systems**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Aero Engine Systems**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Aero Engine Systems** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Aero Engine Systems

## Overview
This chapter covers the basic fundamentals of **Aero Engine Systems**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Aero Engine Systems**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Aero Engine Systems** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00001cf11791', 'b1000000-0000-0000-0000-000009e2f2b6', 'Theoretical Principles of Aero Engine Systems', 'markdown', '{"markdown":"# Theoretical Principles of Aero Engine Systems\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Aero Engine Systems**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Aero Engine Systems

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Aero Engine Systems**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00001cf113d1', 'b1000000-0000-0000-0000-000009e2f2b5', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Aero Engine Systems**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Aero Engine Systems**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00001cf113d0', 'b1000000-0000-0000-0000-000009e2f2b5', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Aero Engine Systems**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Aero Engine Systems**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00000498f42b', 'b1000000-0000-0000-0000-00004edb218f', 'Introduction to Aviation Safety', 'markdown', '{"markdown":"# Introduction to Aviation Safety\n\n## Overview\nThis chapter covers the basic fundamentals of **Aviation Safety**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Aviation Safety**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Aviation Safety** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Aviation Safety

## Overview
This chapter covers the basic fundamentals of **Aviation Safety**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Aviation Safety**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Aviation Safety** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00000498f42a', 'b1000000-0000-0000-0000-00004edb218f', 'Theoretical Principles of Aviation Safety', 'markdown', '{"markdown":"# Theoretical Principles of Aviation Safety\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Aviation Safety**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Aviation Safety

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Aviation Safety**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00000498f06a', 'b1000000-0000-0000-0000-00004edb218e', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Aviation Safety**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Aviation Safety**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00000498f069', 'b1000000-0000-0000-0000-00004edb218e', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Aviation Safety**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Aviation Safety**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.'),
('c1000000-0000-0000-0000-00004bfd561f', 'b1000000-0000-0000-0000-00000982ccc5', 'Introduction to Air Force Leadership & Communication', 'markdown', '{"markdown":"# Introduction to Air Force Leadership & Communication\n\n## Overview\nThis chapter covers the basic fundamentals of **Air Force Leadership & Communication**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.\n\n## Key Learning Areas\n- Basic definitions and principles of **Air Force Leadership & Communication**.\n- Scope and importance in military discipline and training.\n- Practical checklist and key terminology.\n\n## Theory & Details\nAs part of the official NCC syllabus, learning the theory of **Air Force Leadership & Communication** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly."}'::jsonb, 1, '# Introduction to Air Force Leadership & Communication

## Overview
This chapter covers the basic fundamentals of **Air Force Leadership & Communication**, required for National Cadet Corps (NCC) Certificate **C** cadets of the **Air Force** wing.

## Key Learning Areas
- Basic definitions and principles of **Air Force Leadership & Communication**.
- Scope and importance in military discipline and training.
- Practical checklist and key terminology.

## Theory & Details
As part of the official NCC syllabus, learning the theory of **Air Force Leadership & Communication** builds a solid foundation for field training. Review standard Handbooks and practice standard protocols regularly.'),
('c1000000-0000-0000-0000-00004bfd5620', 'b1000000-0000-0000-0000-00000982ccc5', 'Theoretical Principles of Air Force Leadership & Communication', 'markdown', '{"markdown":"# Theoretical Principles of Air Force Leadership & Communication\n\n## Study Material\nHere we explore the detailed guidelines and regulations surrounding **Air Force Leadership & Communication**. \n\n### Guidelines\n1. Maintain discipline and posture.\n2. Focus on safety protocols and group coordination.\n3. Understand the command chain.\n\n> [!TIP]\n> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations."}'::jsonb, 2, '# Theoretical Principles of Air Force Leadership & Communication

## Study Material
Here we explore the detailed guidelines and regulations surrounding **Air Force Leadership & Communication**. 

### Guidelines
1. Maintain discipline and posture.
2. Focus on safety protocols and group coordination.
3. Understand the command chain.

> [!TIP]
> Group discussions and regular practice are excellent ways to retain this material for your certificate examinations.'),
('c1000000-0000-0000-0000-00004bfd59e0', 'b1000000-0000-0000-0000-00000982ccc4', 'Practical Training & Operations', 'markdown', '{"markdown":"# Practical Training & Operations\n\n## Field Training\nThis section outlines the practical activities and camp drills associated with **Air Force Leadership & Communication**.\n\n### Steps for Practice\n- Step 1: Align with your squad or division.\n- Step 2: Follow instructions from your ANO or senior cadet commanders.\n- Step 3: Conduct dry run exercises prior to examinations."}'::jsonb, 1, '# Practical Training & Operations

## Field Training
This section outlines the practical activities and camp drills associated with **Air Force Leadership & Communication**.

### Steps for Practice
- Step 1: Align with your squad or division.
- Step 2: Follow instructions from your ANO or senior cadet commanders.
- Step 3: Conduct dry run exercises prior to examinations.'),
('c1000000-0000-0000-0000-00004bfd59e1', 'b1000000-0000-0000-0000-00000982ccc4', 'Mock Evaluation & Exercises', 'markdown', '{"markdown":"# Mock Evaluation & Exercises\n\n## Self-Assessment\nTo prepare for your Certificate examination, answer the following questions:\n1. What are the core rules of **Air Force Leadership & Communication**?\n2. How do they apply to your wing?\n3. What safety precautions must be taken?\n\nEnsure you take the practice tests on this platform for this subject."}'::jsonb, 2, '# Mock Evaluation & Exercises

## Self-Assessment
To prepare for your Certificate examination, answer the following questions:
1. What are the core rules of **Air Force Leadership & Communication**?
2. How do they apply to your wing?
3. What safety precautions must be taken?

Ensure you take the practice tests on this platform for this subject.');

-- ============================================
-- QUESTION BANKS
-- ============================================
INSERT INTO public.question_banks (id, course_id, title, description) VALUES
('d1000000-0000-0000-0000-000003e125cf', 'a1000000-0000-0000-0000-000000000001', 'NCC At a Glance Bank', 'Questions on NCC At a Glance'),
('d1000000-0000-0000-0000-000003e125ce', 'a1000000-0000-0000-0000-000000000002', 'Drill & Commands Bank', 'Questions on Drill & Commands'),
('d1000000-0000-0000-0000-000068284012', 'a1000000-0000-0000-0000-00002d6df6d2', 'Weapon Training & Infantry Weapons Bank', 'Questions on Weapon Training & Infantry Weapons'),
('d1000000-0000-0000-0000-000003e125cd', 'a1000000-0000-0000-0000-000000000003', 'National Integration Bank', 'Questions on National Integration'),
('d1000000-0000-0000-0000-0000202c5758', 'a1000000-0000-0000-0000-0000174a3d1e', 'Leadership & Personality Development Bank', 'Questions on Leadership & Personality Development'),
('d1000000-0000-0000-0000-00006333b7d7', 'a1000000-0000-0000-0000-000071e9b09d', 'Civil Defence & Disaster Management Bank', 'Questions on Civil Defence & Disaster Management'),
('d1000000-0000-0000-0000-000032b61268', 'a1000000-0000-0000-0000-000057c82e75', 'Social Service & Awareness Bank', 'Questions on Social Service & Awareness'),
('d1000000-0000-0000-0000-000003e125cc', 'a1000000-0000-0000-0000-000000000004', 'Health, Hygiene & Sanitation Bank', 'Questions on Health, Hygiene & Sanitation'),
('d1000000-0000-0000-0000-0000284aed79', 'a1000000-0000-0000-0000-00005409f313', 'Yoga & Asanas Bank', 'Questions on Yoga & Asanas'),
('d1000000-0000-0000-0000-00001e6e1810', 'a1000000-0000-0000-0000-00001aefb067', 'Home Nursing Bank', 'Questions on Home Nursing'),
('d1000000-0000-0000-0000-000003712f35', 'a1000000-0000-0000-0000-000000490880', 'Posture Training Bank', 'Questions on Posture Training'),
('d1000000-0000-0000-0000-00005d98433c', 'a1000000-0000-0000-0000-0000240e6113', 'Obstacles Training & Adventure Activities Bank', 'Questions on Obstacles Training & Adventure Activities'),
('d1000000-0000-0000-0000-00000722b589', 'a1000000-0000-0000-0000-000008b4468c', 'Career in Defence Services Bank', 'Questions on Career in Defence Services'),
('d1000000-0000-0000-0000-000015abc0ec', 'a1000000-0000-0000-0000-000038908d40', 'Services Tests & Interviews Bank', 'Questions on Services Tests & Interviews'),
('d1000000-0000-0000-0000-00006d49238f', 'a1000000-0000-0000-0000-000039ef9e7c', 'Self-Defence Bank', 'Questions on Self-Defence'),
('d1000000-0000-0000-0000-00003b6196ee', 'a1000000-0000-0000-0000-00003c4316e3', 'Environment and Ecology Bank', 'Questions on Environment and Ecology'),
('d1000000-0000-0000-0000-00004fbcf79f', 'a1000000-0000-0000-0000-0000199562e4', 'Famous Leaders of India Bank', 'Questions on Famous Leaders of India'),
('d1000000-0000-0000-0000-00006742b1fa', 'a1000000-0000-0000-0000-000071fe9b19', 'History of India Bank', 'Questions on History of India'),
('d1000000-0000-0000-0000-00005ad1b986', 'a1000000-0000-0000-0000-00000ba7d77f', 'Armed Forces & Military History Bank', 'Questions on Armed Forces & Military History'),
('d1000000-0000-0000-0000-000003e125cb', 'a1000000-0000-0000-0000-000000000005', 'Map Reading Bank', 'Questions on Map Reading'),
('d1000000-0000-0000-0000-0000219ecc97', 'a1000000-0000-0000-0000-0000382075a9', 'Communication Bank', 'Questions on Communication'),
('d1000000-0000-0000-0000-00001661349b', 'a1000000-0000-0000-0000-0000266d0d05', 'Field Craft & Battle Craft Bank', 'Questions on Field Craft & Battle Craft'),
('d1000000-0000-0000-0000-00000add794e', 'a1000000-0000-0000-0000-000016a26b66', 'Personality Development & Officer Like Qualities (OLQs) Bank', 'Questions on Personality Development & Officer Like Qualities (OLQs)'),
('d1000000-0000-0000-0000-000036a22df0', 'a1000000-0000-0000-0000-00004a803f19', 'Disaster Management & Social Awareness Bank', 'Questions on Disaster Management & Social Awareness'),
('d1000000-0000-0000-0000-000074af31c0', 'a1000000-0000-0000-0000-00002ba41949', 'Advanced Leadership Bank', 'Questions on Advanced Leadership'),
('d1000000-0000-0000-0000-000061a47fa3', 'a1000000-0000-0000-0000-00000b8cf529', 'Advanced Drill Bank', 'Questions on Advanced Drill'),
('d1000000-0000-0000-0000-000066ea2018', 'a1000000-0000-0000-0000-000019d3bbde', 'National Security Bank', 'Questions on National Security'),
('d1000000-0000-0000-0000-0000227e3f69', 'a1000000-0000-0000-0000-000017470581', 'Armed Forces Organisation Bank', 'Questions on Armed Forces Organisation'),
('d1000000-0000-0000-0000-0000170d063d', 'a1000000-0000-0000-0000-0000636a9bea', 'Disaster Management Bank', 'Questions on Disaster Management'),
('d1000000-0000-0000-0000-0000390c33f0', 'a1000000-0000-0000-0000-000015e087f8', 'Social Service & Community Development Bank', 'Questions on Social Service & Community Development'),
('d1000000-0000-0000-0000-000030227a9c', 'a1000000-0000-0000-0000-00000f5e0237', 'Personality Development & Communication Skills Bank', 'Questions on Personality Development & Communication Skills'),
('d1000000-0000-0000-0000-00000105660b', 'a1000000-0000-0000-0000-00007f311b52', 'Map Reading & Navigation Bank', 'Questions on Map Reading & Navigation'),
('d1000000-0000-0000-0000-000021aa6e77', 'a1000000-0000-0000-0000-0000173e1464', 'Field Craft & Battle Craft Bank', 'Questions on Field Craft & Battle Craft'),
('d1000000-0000-0000-0000-00006a880255', 'a1000000-0000-0000-0000-00002d69b84d', 'Military History & War Heroes Bank', 'Questions on Military History & War Heroes'),
('d1000000-0000-0000-0000-0000796a5dde', 'a1000000-0000-0000-0000-0000282e60fa', 'General Awareness & Current Affairs Bank', 'Questions on General Awareness & Current Affairs'),
('d1000000-0000-0000-0000-0000645b68cf', 'a1000000-0000-0000-0000-0000400027dd', 'Officer Like Qualities (OLQs) & Interview Skills Bank', 'Questions on Officer Like Qualities (OLQs) & Interview Skills'),
('d1000000-0000-0000-0000-000027ad7d53', 'a1000000-0000-0000-0000-000004518ce7', 'Field Craft Basics Bank', 'Questions on Field Craft Basics'),
('d1000000-0000-0000-0000-00005c67dc2a', 'a1000000-0000-0000-0000-00005b295d90', 'Drill with Arms Bank', 'Questions on Drill with Arms'),
('d1000000-0000-0000-0000-000003e125ca', 'a1000000-0000-0000-0000-000000000006', 'Weapon Training Bank', 'Questions on Weapon Training'),
('d1000000-0000-0000-0000-000045b31c91', 'a1000000-0000-0000-0000-00007250c9a6', 'Section Formation Bank', 'Questions on Section Formation'),
('d1000000-0000-0000-0000-0000498e560e', 'a1000000-0000-0000-0000-00001cddd660', 'Guard Mounting Bank', 'Questions on Guard Mounting'),
('d1000000-0000-0000-0000-0000666f90f2', 'a1000000-0000-0000-0000-000076b802f1', 'Battle Craft Basics Bank', 'Questions on Battle Craft Basics'),
('d1000000-0000-0000-0000-00004c126907', 'a1000000-0000-0000-0000-00005bda6445', 'Advanced Weapon Training Bank', 'Questions on Advanced Weapon Training'),
('d1000000-0000-0000-0000-00001428290d', 'a1000000-0000-0000-0000-00004ef72cf6', 'Field Signals Bank', 'Questions on Field Signals'),
('d1000000-0000-0000-0000-0000786c8488', 'a1000000-0000-0000-0000-00000fa26f23', 'Patrolling Bank', 'Questions on Patrolling'),
('d1000000-0000-0000-0000-0000231a55d4', 'a1000000-0000-0000-0000-0000091f2132', 'Camouflage & Concealment Bank', 'Questions on Camouflage & Concealment'),
('d1000000-0000-0000-0000-000073cf2672', 'a1000000-0000-0000-0000-000010986329', 'Section Battle Drill Bank', 'Questions on Section Battle Drill'),
('d1000000-0000-0000-0000-00007392f367', 'a1000000-0000-0000-0000-00002d119e7b', 'Ambush & Defence Bank', 'Questions on Ambush & Defence'),
('d1000000-0000-0000-0000-00004b59a45d', 'a1000000-0000-0000-0000-000069281cf8', 'Tactical Exercises Bank', 'Questions on Tactical Exercises'),
('d1000000-0000-0000-0000-00005052f630', 'a1000000-0000-0000-0000-0000455ec376', 'Platoon Formation Bank', 'Questions on Platoon Formation');

INSERT INTO public.question_banks (id, course_id, title, description) VALUES
('d1000000-0000-0000-0000-00006a5679ce', 'a1000000-0000-0000-0000-000027c89a44', 'Advanced Battle Craft Bank', 'Questions on Advanced Battle Craft'),
('d1000000-0000-0000-0000-000071c41278', 'a1000000-0000-0000-0000-00006a0b9015', 'Internal Security Duties Bank', 'Questions on Internal Security Duties'),
('d1000000-0000-0000-0000-00001e33facf', 'a1000000-0000-0000-0000-00006aaa9a6d', 'Field Engineering Bank', 'Questions on Field Engineering'),
('d1000000-0000-0000-0000-0000512fff22', 'a1000000-0000-0000-0000-00005baa8724', 'Communication Procedures Bank', 'Questions on Communication Procedures'),
('d1000000-0000-0000-0000-00005f8ea2d4', 'a1000000-0000-0000-0000-00002c4f7734', 'Map Reading Advanced Bank', 'Questions on Map Reading Advanced'),
('d1000000-0000-0000-0000-00003626ed8b', 'a1000000-0000-0000-0000-000007da05fb', 'Naval Orientation Bank', 'Questions on Naval Orientation'),
('d1000000-0000-0000-0000-0000421a9aee', 'a1000000-0000-0000-0000-000010cd3522', 'Parts of Ship Bank', 'Questions on Parts of Ship'),
('d1000000-0000-0000-0000-00002fac8dc8', 'a1000000-0000-0000-0000-000078b8bad6', 'Seamanship Bank', 'Questions on Seamanship'),
('d1000000-0000-0000-0000-0000380f3820', 'a1000000-0000-0000-0000-000060f74a80', 'Boat Pulling Bank', 'Questions on Boat Pulling'),
('d1000000-0000-0000-0000-00002feaf4db', 'a1000000-0000-0000-0000-00005f26bbb8', 'Rigging Bank', 'Questions on Rigging'),
('d1000000-0000-0000-0000-00003816b210', 'a1000000-0000-0000-0000-00005f71361c', 'Naval Communication Basics Bank', 'Questions on Naval Communication Basics'),
('d1000000-0000-0000-0000-00002e1c7818', 'a1000000-0000-0000-0000-000033de1536', 'Navigation Bank', 'Questions on Navigation'),
('d1000000-0000-0000-0000-00002cd2d194', 'a1000000-0000-0000-0000-00003e351a55', 'Anchoring Bank', 'Questions on Anchoring'),
('d1000000-0000-0000-0000-00004e72e59e', 'a1000000-0000-0000-0000-000066541bbd', 'Ship Modelling Bank', 'Questions on Ship Modelling'),
('d1000000-0000-0000-0000-00000aa55155', 'a1000000-0000-0000-0000-00000e385149', 'Naval Signals Bank', 'Questions on Naval Signals'),
('d1000000-0000-0000-0000-000044a62988', 'a1000000-0000-0000-0000-000002b2020d', 'Boat Sailing Bank', 'Questions on Boat Sailing'),
('d1000000-0000-0000-0000-000021c2f35d', 'a1000000-0000-0000-0000-0000173c9633', 'Tides & Compass Bank', 'Questions on Tides & Compass'),
('d1000000-0000-0000-0000-00001addf457', 'a1000000-0000-0000-0000-00003bf3e26f', 'Advanced Navigation Bank', 'Questions on Advanced Navigation'),
('d1000000-0000-0000-0000-00007c7294d4', 'a1000000-0000-0000-0000-0000446f03a2', 'Naval Warfare Basics Bank', 'Questions on Naval Warfare Basics'),
('d1000000-0000-0000-0000-00001f456459', 'a1000000-0000-0000-0000-00007ebeb8bd', 'Ship Organisation Bank', 'Questions on Ship Organisation'),
('d1000000-0000-0000-0000-00005efb1ed5', 'a1000000-0000-0000-0000-00004d1d4699', 'Communication Systems Bank', 'Questions on Communication Systems'),
('d1000000-0000-0000-0000-00006396755e', 'a1000000-0000-0000-0000-000056db673e', 'Sailing Expeditions Bank', 'Questions on Sailing Expeditions'),
('d1000000-0000-0000-0000-00005f1d0bd4', 'a1000000-0000-0000-0000-000005e105c1', 'Naval Weapons Basics Bank', 'Questions on Naval Weapons Basics'),
('d1000000-0000-0000-0000-0000003ec634', 'a1000000-0000-0000-0000-00005e58b4dc', 'Leadership at Sea Bank', 'Questions on Leadership at Sea'),
('d1000000-0000-0000-0000-00005f146c89', 'a1000000-0000-0000-0000-00001e49cb34', 'Principles of Flight Bank', 'Questions on Principles of Flight'),
('d1000000-0000-0000-0000-00005ca2f1d8', 'a1000000-0000-0000-0000-00003f04d489', 'Airframe & Aircraft Parts Bank', 'Questions on Airframe & Aircraft Parts'),
('d1000000-0000-0000-0000-000056603834', 'a1000000-0000-0000-0000-000021b5014e', 'Flying Basics Bank', 'Questions on Flying Basics'),
('d1000000-0000-0000-0000-000018409e7e', 'a1000000-0000-0000-0000-000009934b67', 'Aviation History Bank', 'Questions on Aviation History'),
('d1000000-0000-0000-0000-00005b5dfdb6', 'a1000000-0000-0000-0000-00001e256fdc', 'Aero Modelling Bank', 'Questions on Aero Modelling'),
('d1000000-0000-0000-0000-00004ec157d0', 'a1000000-0000-0000-0000-0000197a9a17', 'Air Navigation Basics Bank', 'Questions on Air Navigation Basics'),
('d1000000-0000-0000-0000-000062aa6abb', 'a1000000-0000-0000-0000-00007d5b2b7b', 'Aircraft Instruments Bank', 'Questions on Aircraft Instruments'),
('d1000000-0000-0000-0000-00006a5672c3', 'a1000000-0000-0000-0000-00003f85a3d5', 'Meteorology Bank', 'Questions on Meteorology'),
('d1000000-0000-0000-0000-0000582a5b2f', 'a1000000-0000-0000-0000-00001e091e5c', 'Air Traffic Control Basics Bank', 'Questions on Air Traffic Control Basics'),
('d1000000-0000-0000-0000-0000305fbd8c', 'a1000000-0000-0000-0000-00007b3ed32b', 'Navigation Advanced Bank', 'Questions on Navigation Advanced'),
('d1000000-0000-0000-0000-0000338753da', 'a1000000-0000-0000-0000-000025fea92b', 'Aero Engines Bank', 'Questions on Aero Engines'),
('d1000000-0000-0000-0000-00006af17a39', 'a1000000-0000-0000-0000-00001042448d', 'Map Reading for Aviation Bank', 'Questions on Map Reading for Aviation'),
('d1000000-0000-0000-0000-000044b2792c', 'a1000000-0000-0000-0000-0000191cb74a', 'Advanced Aviation Subjects Bank', 'Questions on Advanced Aviation Subjects'),
('d1000000-0000-0000-0000-00004bb378fe', 'a1000000-0000-0000-0000-0000665f0342', 'Flight Navigation Bank', 'Questions on Flight Navigation'),
('d1000000-0000-0000-0000-00003ec40096', 'a1000000-0000-0000-0000-000010eaf56f', 'Aircraft Recognition Bank', 'Questions on Aircraft Recognition'),
('d1000000-0000-0000-0000-00004dda4a83', 'a1000000-0000-0000-0000-00002cf3b089', 'Air Power & Warfare Bank', 'Questions on Air Power & Warfare'),
('d1000000-0000-0000-0000-000007f06bc7', 'a1000000-0000-0000-0000-00007f71eb3d', 'Aero Engine Systems Bank', 'Questions on Aero Engine Systems'),
('d1000000-0000-0000-0000-00003c59a640', 'a1000000-0000-0000-0000-000060be762f', 'Aviation Safety Bank', 'Questions on Aviation Safety'),
('d1000000-0000-0000-0000-00001914bc4a', 'a1000000-0000-0000-0000-00004684706e', 'Air Force Leadership & Communication Bank', 'Questions on Air Force Leadership & Communication');

-- ============================================
-- QUESTIONS
-- ============================================
INSERT INTO public.questions (id, bank_id, question_text, question_type, options, correct_answer, difficulty, topic_tag, explanation, points) VALUES
('q0000001-0000-0000-0000-000003e125cf', 'd1000000-0000-0000-0000-000003e125cf', 'When was the NCC established in India?', 'mcq', '["1946","1947","1948","1950"]'::jsonb, '1948', 'easy', 'History', 'NCC was established on 15 July 1948 under the NCC Act XXXI of 1948.', 1),
('q0000002-0000-0000-0000-000003e125cf', 'd1000000-0000-0000-0000-000003e125cf', 'What is the motto of the NCC?', 'mcq', '["Service Before Self","Unity and Discipline","Duty Honor Country","Jai Hind"]'::jsonb, 'Unity and Discipline', 'easy', 'Basics', 'The NCC motto is "Unity and Discipline".', 1),
('q0000003-0000-0000-0000-000003e125cf', 'd1000000-0000-0000-0000-000003e125cf', 'Who was the first Director General of NCC?', 'mcq', '["Lt Gen Grubb","Gen Cariappa","Maj Gen Sinha","Gen Thimayya"]'::jsonb, 'Lt Gen Grubb', 'medium', 'History', 'Lt Gen Grubb was the first DG of NCC appointed in 1948.', 1),
('q0000004-0000-0000-0000-000003e125cf', 'd1000000-0000-0000-0000-000003e125cf', 'The NCC was raised on the recommendation of which committee?', 'mcq', '["Kunzru Committee","Nehru Committee","Patel Committee","Kothari Committee"]'::jsonb, 'Kunzru Committee', 'medium', 'History', 'Pandit H.N. Kunzru Committee (1946) recommended establishing NCC.', 1),
('q0000001-0000-0000-0000-000003e125ce', 'd1000000-0000-0000-0000-000003e125ce', 'At the position of attention, the angle between feet should be?', 'mcq', '["15 degrees","30 degrees","45 degrees","60 degrees"]'::jsonb, '30 degrees', 'easy', 'Foot Drill', 'At attention, feet are turned out equally forming a 30-degree angle.', 1),
('q0000002-0000-0000-0000-000003e125ce', 'd1000000-0000-0000-0000-000003e125ce', 'In "Stand at Ease," the left foot moves how many inches to the left?', 'mcq', '["10 inches","12 inches","15 inches","18 inches"]'::jsonb, '15 inches', 'medium', 'Foot Drill', 'The left foot moves 15 inches to the left.', 1),
('q0000003-0000-0000-0000-000003e125ce', 'd1000000-0000-0000-0000-000003e125ce', 'About Turn involves rotation of how many degrees?', 'mcq', '["90 degrees","120 degrees","180 degrees","360 degrees"]'::jsonb, '180 degrees', 'easy', 'Turnings', 'About Turn (Peeche Mud) involves a 180-degree turn to the right.', 1),
('q0000004-0000-0000-0000-000003e125ce', 'd1000000-0000-0000-0000-000003e125ce', 'The word of command has how many parts?', 'mcq', '["1","2","3","4"]'::jsonb, '2', 'easy', 'Commands', 'Word of command has Cautionary (alert) and Executive (action) parts.', 1),
('q0000001-0000-0000-0000-000068284012', 'd1000000-0000-0000-0000-000068284012', 'What is a key focus area in studying Weapon Training & Infantry Weapons?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000068284012', 'd1000000-0000-0000-0000-000068284012', 'Which value is most prioritized in Weapon Training & Infantry Weapons training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000068284012', 'd1000000-0000-0000-0000-000068284012', 'True or False: Cadet evaluations for Weapon Training & Infantry Weapons contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000068284012', 'd1000000-0000-0000-0000-000068284012', 'What is recommended to master the skills of Weapon Training & Infantry Weapons?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000003e125cd', 'd1000000-0000-0000-0000-000003e125cd', 'What is a key focus area in studying National Integration?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000003e125cd', 'd1000000-0000-0000-0000-000003e125cd', 'Which value is most prioritized in National Integration training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000003e125cd', 'd1000000-0000-0000-0000-000003e125cd', 'True or False: Cadet evaluations for National Integration contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000003e125cd', 'd1000000-0000-0000-0000-000003e125cd', 'What is recommended to master the skills of National Integration?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000202c5758', 'd1000000-0000-0000-0000-0000202c5758', 'What is a key focus area in studying Leadership & Personality Development?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000202c5758', 'd1000000-0000-0000-0000-0000202c5758', 'Which value is most prioritized in Leadership & Personality Development training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000202c5758', 'd1000000-0000-0000-0000-0000202c5758', 'True or False: Cadet evaluations for Leadership & Personality Development contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000202c5758', 'd1000000-0000-0000-0000-0000202c5758', 'What is recommended to master the skills of Leadership & Personality Development?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00006333b7d7', 'd1000000-0000-0000-0000-00006333b7d7', 'What is a key focus area in studying Civil Defence & Disaster Management?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00006333b7d7', 'd1000000-0000-0000-0000-00006333b7d7', 'Which value is most prioritized in Civil Defence & Disaster Management training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00006333b7d7', 'd1000000-0000-0000-0000-00006333b7d7', 'True or False: Cadet evaluations for Civil Defence & Disaster Management contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00006333b7d7', 'd1000000-0000-0000-0000-00006333b7d7', 'What is recommended to master the skills of Civil Defence & Disaster Management?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000032b61268', 'd1000000-0000-0000-0000-000032b61268', 'What is a key focus area in studying Social Service & Awareness?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000032b61268', 'd1000000-0000-0000-0000-000032b61268', 'Which value is most prioritized in Social Service & Awareness training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000032b61268', 'd1000000-0000-0000-0000-000032b61268', 'True or False: Cadet evaluations for Social Service & Awareness contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000032b61268', 'd1000000-0000-0000-0000-000032b61268', 'What is recommended to master the skills of Social Service & Awareness?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000003e125cc', 'd1000000-0000-0000-0000-000003e125cc', 'What is a key focus area in studying Health, Hygiene & Sanitation?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000003e125cc', 'd1000000-0000-0000-0000-000003e125cc', 'Which value is most prioritized in Health, Hygiene & Sanitation training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000003e125cc', 'd1000000-0000-0000-0000-000003e125cc', 'True or False: Cadet evaluations for Health, Hygiene & Sanitation contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000003e125cc', 'd1000000-0000-0000-0000-000003e125cc', 'What is recommended to master the skills of Health, Hygiene & Sanitation?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000284aed79', 'd1000000-0000-0000-0000-0000284aed79', 'What is a key focus area in studying Yoga & Asanas?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000284aed79', 'd1000000-0000-0000-0000-0000284aed79', 'Which value is most prioritized in Yoga & Asanas training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000284aed79', 'd1000000-0000-0000-0000-0000284aed79', 'True or False: Cadet evaluations for Yoga & Asanas contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000284aed79', 'd1000000-0000-0000-0000-0000284aed79', 'What is recommended to master the skills of Yoga & Asanas?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00001e6e1810', 'd1000000-0000-0000-0000-00001e6e1810', 'What is a key focus area in studying Home Nursing?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00001e6e1810', 'd1000000-0000-0000-0000-00001e6e1810', 'Which value is most prioritized in Home Nursing training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00001e6e1810', 'd1000000-0000-0000-0000-00001e6e1810', 'True or False: Cadet evaluations for Home Nursing contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00001e6e1810', 'd1000000-0000-0000-0000-00001e6e1810', 'What is recommended to master the skills of Home Nursing?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000003712f35', 'd1000000-0000-0000-0000-000003712f35', 'What is a key focus area in studying Posture Training?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000003712f35', 'd1000000-0000-0000-0000-000003712f35', 'Which value is most prioritized in Posture Training training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000003712f35', 'd1000000-0000-0000-0000-000003712f35', 'True or False: Cadet evaluations for Posture Training contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000003712f35', 'd1000000-0000-0000-0000-000003712f35', 'What is recommended to master the skills of Posture Training?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00005d98433c', 'd1000000-0000-0000-0000-00005d98433c', 'What is a key focus area in studying Obstacles Training & Adventure Activities?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00005d98433c', 'd1000000-0000-0000-0000-00005d98433c', 'Which value is most prioritized in Obstacles Training & Adventure Activities training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00005d98433c', 'd1000000-0000-0000-0000-00005d98433c', 'True or False: Cadet evaluations for Obstacles Training & Adventure Activities contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00005d98433c', 'd1000000-0000-0000-0000-00005d98433c', 'What is recommended to master the skills of Obstacles Training & Adventure Activities?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00000722b589', 'd1000000-0000-0000-0000-00000722b589', 'What is a key focus area in studying Career in Defence Services?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00000722b589', 'd1000000-0000-0000-0000-00000722b589', 'Which value is most prioritized in Career in Defence Services training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1);

INSERT INTO public.questions (id, bank_id, question_text, question_type, options, correct_answer, difficulty, topic_tag, explanation, points) VALUES
('q0000003-0000-0000-0000-00000722b589', 'd1000000-0000-0000-0000-00000722b589', 'True or False: Cadet evaluations for Career in Defence Services contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00000722b589', 'd1000000-0000-0000-0000-00000722b589', 'What is recommended to master the skills of Career in Defence Services?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000015abc0ec', 'd1000000-0000-0000-0000-000015abc0ec', 'What is a key focus area in studying Services Tests & Interviews?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000015abc0ec', 'd1000000-0000-0000-0000-000015abc0ec', 'Which value is most prioritized in Services Tests & Interviews training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000015abc0ec', 'd1000000-0000-0000-0000-000015abc0ec', 'True or False: Cadet evaluations for Services Tests & Interviews contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000015abc0ec', 'd1000000-0000-0000-0000-000015abc0ec', 'What is recommended to master the skills of Services Tests & Interviews?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00006d49238f', 'd1000000-0000-0000-0000-00006d49238f', 'What is a key focus area in studying Self-Defence?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00006d49238f', 'd1000000-0000-0000-0000-00006d49238f', 'Which value is most prioritized in Self-Defence training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00006d49238f', 'd1000000-0000-0000-0000-00006d49238f', 'True or False: Cadet evaluations for Self-Defence contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00006d49238f', 'd1000000-0000-0000-0000-00006d49238f', 'What is recommended to master the skills of Self-Defence?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00003b6196ee', 'd1000000-0000-0000-0000-00003b6196ee', 'What is a key focus area in studying Environment and Ecology?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00003b6196ee', 'd1000000-0000-0000-0000-00003b6196ee', 'Which value is most prioritized in Environment and Ecology training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00003b6196ee', 'd1000000-0000-0000-0000-00003b6196ee', 'True or False: Cadet evaluations for Environment and Ecology contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00003b6196ee', 'd1000000-0000-0000-0000-00003b6196ee', 'What is recommended to master the skills of Environment and Ecology?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00004fbcf79f', 'd1000000-0000-0000-0000-00004fbcf79f', 'What is a key focus area in studying Famous Leaders of India?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00004fbcf79f', 'd1000000-0000-0000-0000-00004fbcf79f', 'Which value is most prioritized in Famous Leaders of India training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00004fbcf79f', 'd1000000-0000-0000-0000-00004fbcf79f', 'True or False: Cadet evaluations for Famous Leaders of India contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00004fbcf79f', 'd1000000-0000-0000-0000-00004fbcf79f', 'What is recommended to master the skills of Famous Leaders of India?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00006742b1fa', 'd1000000-0000-0000-0000-00006742b1fa', 'What is a key focus area in studying History of India?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00006742b1fa', 'd1000000-0000-0000-0000-00006742b1fa', 'Which value is most prioritized in History of India training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00006742b1fa', 'd1000000-0000-0000-0000-00006742b1fa', 'True or False: Cadet evaluations for History of India contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00006742b1fa', 'd1000000-0000-0000-0000-00006742b1fa', 'What is recommended to master the skills of History of India?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00005ad1b986', 'd1000000-0000-0000-0000-00005ad1b986', 'What is a key focus area in studying Armed Forces & Military History?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00005ad1b986', 'd1000000-0000-0000-0000-00005ad1b986', 'Which value is most prioritized in Armed Forces & Military History training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00005ad1b986', 'd1000000-0000-0000-0000-00005ad1b986', 'True or False: Cadet evaluations for Armed Forces & Military History contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00005ad1b986', 'd1000000-0000-0000-0000-00005ad1b986', 'What is recommended to master the skills of Armed Forces & Military History?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000003e125cb', 'd1000000-0000-0000-0000-000003e125cb', 'On a topographic map, blue color represents?', 'mcq', '["Roads","Vegetation","Water features","Contour lines"]'::jsonb, 'Water features', 'easy', 'Conventional Signs', 'Blue is used for water features like rivers, lakes, and wells.', 1),
('q0000002-0000-0000-0000-000003e125cb', 'd1000000-0000-0000-0000-000003e125cb', 'Contour lines that are close together indicate?', 'mcq', '["Flat ground","Gentle slope","Steep slope","Valley"]'::jsonb, 'Steep slope', 'easy', 'Contours', 'Close contour lines indicate steep slopes.', 1),
('q0000001-0000-0000-0000-0000219ecc97', 'd1000000-0000-0000-0000-0000219ecc97', 'What is a key focus area in studying Communication?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000219ecc97', 'd1000000-0000-0000-0000-0000219ecc97', 'Which value is most prioritized in Communication training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000219ecc97', 'd1000000-0000-0000-0000-0000219ecc97', 'True or False: Cadet evaluations for Communication contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000219ecc97', 'd1000000-0000-0000-0000-0000219ecc97', 'What is recommended to master the skills of Communication?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00001661349b', 'd1000000-0000-0000-0000-00001661349b', 'What is a key focus area in studying Field Craft & Battle Craft?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00001661349b', 'd1000000-0000-0000-0000-00001661349b', 'Which value is most prioritized in Field Craft & Battle Craft training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00001661349b', 'd1000000-0000-0000-0000-00001661349b', 'True or False: Cadet evaluations for Field Craft & Battle Craft contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00001661349b', 'd1000000-0000-0000-0000-00001661349b', 'What is recommended to master the skills of Field Craft & Battle Craft?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00000add794e', 'd1000000-0000-0000-0000-00000add794e', 'What is a key focus area in studying Personality Development & Officer Like Qualities (OLQs)?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00000add794e', 'd1000000-0000-0000-0000-00000add794e', 'Which value is most prioritized in Personality Development & Officer Like Qualities (OLQs) training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00000add794e', 'd1000000-0000-0000-0000-00000add794e', 'True or False: Cadet evaluations for Personality Development & Officer Like Qualities (OLQs) contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00000add794e', 'd1000000-0000-0000-0000-00000add794e', 'What is recommended to master the skills of Personality Development & Officer Like Qualities (OLQs)?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000036a22df0', 'd1000000-0000-0000-0000-000036a22df0', 'What is a key focus area in studying Disaster Management & Social Awareness?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000036a22df0', 'd1000000-0000-0000-0000-000036a22df0', 'Which value is most prioritized in Disaster Management & Social Awareness training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000036a22df0', 'd1000000-0000-0000-0000-000036a22df0', 'True or False: Cadet evaluations for Disaster Management & Social Awareness contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000036a22df0', 'd1000000-0000-0000-0000-000036a22df0', 'What is recommended to master the skills of Disaster Management & Social Awareness?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000074af31c0', 'd1000000-0000-0000-0000-000074af31c0', 'What is a key focus area in studying Advanced Leadership?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000074af31c0', 'd1000000-0000-0000-0000-000074af31c0', 'Which value is most prioritized in Advanced Leadership training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000074af31c0', 'd1000000-0000-0000-0000-000074af31c0', 'True or False: Cadet evaluations for Advanced Leadership contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000074af31c0', 'd1000000-0000-0000-0000-000074af31c0', 'What is recommended to master the skills of Advanced Leadership?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000061a47fa3', 'd1000000-0000-0000-0000-000061a47fa3', 'What is a key focus area in studying Advanced Drill?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000061a47fa3', 'd1000000-0000-0000-0000-000061a47fa3', 'Which value is most prioritized in Advanced Drill training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1);

INSERT INTO public.questions (id, bank_id, question_text, question_type, options, correct_answer, difficulty, topic_tag, explanation, points) VALUES
('q0000003-0000-0000-0000-000061a47fa3', 'd1000000-0000-0000-0000-000061a47fa3', 'True or False: Cadet evaluations for Advanced Drill contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000061a47fa3', 'd1000000-0000-0000-0000-000061a47fa3', 'What is recommended to master the skills of Advanced Drill?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000066ea2018', 'd1000000-0000-0000-0000-000066ea2018', 'What is a key focus area in studying National Security?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000066ea2018', 'd1000000-0000-0000-0000-000066ea2018', 'Which value is most prioritized in National Security training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000066ea2018', 'd1000000-0000-0000-0000-000066ea2018', 'True or False: Cadet evaluations for National Security contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000066ea2018', 'd1000000-0000-0000-0000-000066ea2018', 'What is recommended to master the skills of National Security?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000227e3f69', 'd1000000-0000-0000-0000-0000227e3f69', 'What is a key focus area in studying Armed Forces Organisation?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000227e3f69', 'd1000000-0000-0000-0000-0000227e3f69', 'Which value is most prioritized in Armed Forces Organisation training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000227e3f69', 'd1000000-0000-0000-0000-0000227e3f69', 'True or False: Cadet evaluations for Armed Forces Organisation contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000227e3f69', 'd1000000-0000-0000-0000-0000227e3f69', 'What is recommended to master the skills of Armed Forces Organisation?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000170d063d', 'd1000000-0000-0000-0000-0000170d063d', 'What is a key focus area in studying Disaster Management?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000170d063d', 'd1000000-0000-0000-0000-0000170d063d', 'Which value is most prioritized in Disaster Management training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000170d063d', 'd1000000-0000-0000-0000-0000170d063d', 'True or False: Cadet evaluations for Disaster Management contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000170d063d', 'd1000000-0000-0000-0000-0000170d063d', 'What is recommended to master the skills of Disaster Management?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000390c33f0', 'd1000000-0000-0000-0000-0000390c33f0', 'What is a key focus area in studying Social Service & Community Development?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000390c33f0', 'd1000000-0000-0000-0000-0000390c33f0', 'Which value is most prioritized in Social Service & Community Development training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000390c33f0', 'd1000000-0000-0000-0000-0000390c33f0', 'True or False: Cadet evaluations for Social Service & Community Development contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000390c33f0', 'd1000000-0000-0000-0000-0000390c33f0', 'What is recommended to master the skills of Social Service & Community Development?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000030227a9c', 'd1000000-0000-0000-0000-000030227a9c', 'What is a key focus area in studying Personality Development & Communication Skills?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000030227a9c', 'd1000000-0000-0000-0000-000030227a9c', 'Which value is most prioritized in Personality Development & Communication Skills training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000030227a9c', 'd1000000-0000-0000-0000-000030227a9c', 'True or False: Cadet evaluations for Personality Development & Communication Skills contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000030227a9c', 'd1000000-0000-0000-0000-000030227a9c', 'What is recommended to master the skills of Personality Development & Communication Skills?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00000105660b', 'd1000000-0000-0000-0000-00000105660b', 'What is a key focus area in studying Map Reading & Navigation?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00000105660b', 'd1000000-0000-0000-0000-00000105660b', 'Which value is most prioritized in Map Reading & Navigation training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00000105660b', 'd1000000-0000-0000-0000-00000105660b', 'True or False: Cadet evaluations for Map Reading & Navigation contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00000105660b', 'd1000000-0000-0000-0000-00000105660b', 'What is recommended to master the skills of Map Reading & Navigation?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000021aa6e77', 'd1000000-0000-0000-0000-000021aa6e77', 'What is a key focus area in studying Field Craft & Battle Craft?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000021aa6e77', 'd1000000-0000-0000-0000-000021aa6e77', 'Which value is most prioritized in Field Craft & Battle Craft training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000021aa6e77', 'd1000000-0000-0000-0000-000021aa6e77', 'True or False: Cadet evaluations for Field Craft & Battle Craft contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000021aa6e77', 'd1000000-0000-0000-0000-000021aa6e77', 'What is recommended to master the skills of Field Craft & Battle Craft?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00006a880255', 'd1000000-0000-0000-0000-00006a880255', 'What is a key focus area in studying Military History & War Heroes?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00006a880255', 'd1000000-0000-0000-0000-00006a880255', 'Which value is most prioritized in Military History & War Heroes training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00006a880255', 'd1000000-0000-0000-0000-00006a880255', 'True or False: Cadet evaluations for Military History & War Heroes contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00006a880255', 'd1000000-0000-0000-0000-00006a880255', 'What is recommended to master the skills of Military History & War Heroes?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000796a5dde', 'd1000000-0000-0000-0000-0000796a5dde', 'What is a key focus area in studying General Awareness & Current Affairs?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000796a5dde', 'd1000000-0000-0000-0000-0000796a5dde', 'Which value is most prioritized in General Awareness & Current Affairs training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000796a5dde', 'd1000000-0000-0000-0000-0000796a5dde', 'True or False: Cadet evaluations for General Awareness & Current Affairs contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000796a5dde', 'd1000000-0000-0000-0000-0000796a5dde', 'What is recommended to master the skills of General Awareness & Current Affairs?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000645b68cf', 'd1000000-0000-0000-0000-0000645b68cf', 'What is a key focus area in studying Officer Like Qualities (OLQs) & Interview Skills?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000645b68cf', 'd1000000-0000-0000-0000-0000645b68cf', 'Which value is most prioritized in Officer Like Qualities (OLQs) & Interview Skills training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000645b68cf', 'd1000000-0000-0000-0000-0000645b68cf', 'True or False: Cadet evaluations for Officer Like Qualities (OLQs) & Interview Skills contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000645b68cf', 'd1000000-0000-0000-0000-0000645b68cf', 'What is recommended to master the skills of Officer Like Qualities (OLQs) & Interview Skills?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000027ad7d53', 'd1000000-0000-0000-0000-000027ad7d53', 'What is a key focus area in studying Field Craft Basics?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000027ad7d53', 'd1000000-0000-0000-0000-000027ad7d53', 'Which value is most prioritized in Field Craft Basics training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000027ad7d53', 'd1000000-0000-0000-0000-000027ad7d53', 'True or False: Cadet evaluations for Field Craft Basics contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000027ad7d53', 'd1000000-0000-0000-0000-000027ad7d53', 'What is recommended to master the skills of Field Craft Basics?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00005c67dc2a', 'd1000000-0000-0000-0000-00005c67dc2a', 'What is a key focus area in studying Drill with Arms?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00005c67dc2a', 'd1000000-0000-0000-0000-00005c67dc2a', 'Which value is most prioritized in Drill with Arms training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00005c67dc2a', 'd1000000-0000-0000-0000-00005c67dc2a', 'True or False: Cadet evaluations for Drill with Arms contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00005c67dc2a', 'd1000000-0000-0000-0000-00005c67dc2a', 'What is recommended to master the skills of Drill with Arms?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1);

INSERT INTO public.questions (id, bank_id, question_text, question_type, options, correct_answer, difficulty, topic_tag, explanation, points) VALUES
('q0000001-0000-0000-0000-000003e125ca', 'd1000000-0000-0000-0000-000003e125ca', 'What is a key focus area in studying Weapon Training?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000003e125ca', 'd1000000-0000-0000-0000-000003e125ca', 'Which value is most prioritized in Weapon Training training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000003e125ca', 'd1000000-0000-0000-0000-000003e125ca', 'True or False: Cadet evaluations for Weapon Training contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000003e125ca', 'd1000000-0000-0000-0000-000003e125ca', 'What is recommended to master the skills of Weapon Training?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000045b31c91', 'd1000000-0000-0000-0000-000045b31c91', 'What is a key focus area in studying Section Formation?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000045b31c91', 'd1000000-0000-0000-0000-000045b31c91', 'Which value is most prioritized in Section Formation training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000045b31c91', 'd1000000-0000-0000-0000-000045b31c91', 'True or False: Cadet evaluations for Section Formation contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000045b31c91', 'd1000000-0000-0000-0000-000045b31c91', 'What is recommended to master the skills of Section Formation?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000498e560e', 'd1000000-0000-0000-0000-0000498e560e', 'What is a key focus area in studying Guard Mounting?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000498e560e', 'd1000000-0000-0000-0000-0000498e560e', 'Which value is most prioritized in Guard Mounting training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000498e560e', 'd1000000-0000-0000-0000-0000498e560e', 'True or False: Cadet evaluations for Guard Mounting contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000498e560e', 'd1000000-0000-0000-0000-0000498e560e', 'What is recommended to master the skills of Guard Mounting?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000666f90f2', 'd1000000-0000-0000-0000-0000666f90f2', 'What is a key focus area in studying Battle Craft Basics?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000666f90f2', 'd1000000-0000-0000-0000-0000666f90f2', 'Which value is most prioritized in Battle Craft Basics training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000666f90f2', 'd1000000-0000-0000-0000-0000666f90f2', 'True or False: Cadet evaluations for Battle Craft Basics contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000666f90f2', 'd1000000-0000-0000-0000-0000666f90f2', 'What is recommended to master the skills of Battle Craft Basics?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00004c126907', 'd1000000-0000-0000-0000-00004c126907', 'What is a key focus area in studying Advanced Weapon Training?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00004c126907', 'd1000000-0000-0000-0000-00004c126907', 'Which value is most prioritized in Advanced Weapon Training training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00004c126907', 'd1000000-0000-0000-0000-00004c126907', 'True or False: Cadet evaluations for Advanced Weapon Training contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00004c126907', 'd1000000-0000-0000-0000-00004c126907', 'What is recommended to master the skills of Advanced Weapon Training?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00001428290d', 'd1000000-0000-0000-0000-00001428290d', 'What is a key focus area in studying Field Signals?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00001428290d', 'd1000000-0000-0000-0000-00001428290d', 'Which value is most prioritized in Field Signals training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00001428290d', 'd1000000-0000-0000-0000-00001428290d', 'True or False: Cadet evaluations for Field Signals contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00001428290d', 'd1000000-0000-0000-0000-00001428290d', 'What is recommended to master the skills of Field Signals?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000786c8488', 'd1000000-0000-0000-0000-0000786c8488', 'What is a key focus area in studying Patrolling?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000786c8488', 'd1000000-0000-0000-0000-0000786c8488', 'Which value is most prioritized in Patrolling training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000786c8488', 'd1000000-0000-0000-0000-0000786c8488', 'True or False: Cadet evaluations for Patrolling contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000786c8488', 'd1000000-0000-0000-0000-0000786c8488', 'What is recommended to master the skills of Patrolling?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000231a55d4', 'd1000000-0000-0000-0000-0000231a55d4', 'What is a key focus area in studying Camouflage & Concealment?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000231a55d4', 'd1000000-0000-0000-0000-0000231a55d4', 'Which value is most prioritized in Camouflage & Concealment training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000231a55d4', 'd1000000-0000-0000-0000-0000231a55d4', 'True or False: Cadet evaluations for Camouflage & Concealment contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000231a55d4', 'd1000000-0000-0000-0000-0000231a55d4', 'What is recommended to master the skills of Camouflage & Concealment?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000073cf2672', 'd1000000-0000-0000-0000-000073cf2672', 'What is a key focus area in studying Section Battle Drill?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000073cf2672', 'd1000000-0000-0000-0000-000073cf2672', 'Which value is most prioritized in Section Battle Drill training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000073cf2672', 'd1000000-0000-0000-0000-000073cf2672', 'True or False: Cadet evaluations for Section Battle Drill contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000073cf2672', 'd1000000-0000-0000-0000-000073cf2672', 'What is recommended to master the skills of Section Battle Drill?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00007392f367', 'd1000000-0000-0000-0000-00007392f367', 'What is a key focus area in studying Ambush & Defence?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00007392f367', 'd1000000-0000-0000-0000-00007392f367', 'Which value is most prioritized in Ambush & Defence training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00007392f367', 'd1000000-0000-0000-0000-00007392f367', 'True or False: Cadet evaluations for Ambush & Defence contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00007392f367', 'd1000000-0000-0000-0000-00007392f367', 'What is recommended to master the skills of Ambush & Defence?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00004b59a45d', 'd1000000-0000-0000-0000-00004b59a45d', 'What is a key focus area in studying Tactical Exercises?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00004b59a45d', 'd1000000-0000-0000-0000-00004b59a45d', 'Which value is most prioritized in Tactical Exercises training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00004b59a45d', 'd1000000-0000-0000-0000-00004b59a45d', 'True or False: Cadet evaluations for Tactical Exercises contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00004b59a45d', 'd1000000-0000-0000-0000-00004b59a45d', 'What is recommended to master the skills of Tactical Exercises?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00005052f630', 'd1000000-0000-0000-0000-00005052f630', 'What is a key focus area in studying Platoon Formation?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00005052f630', 'd1000000-0000-0000-0000-00005052f630', 'Which value is most prioritized in Platoon Formation training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00005052f630', 'd1000000-0000-0000-0000-00005052f630', 'True or False: Cadet evaluations for Platoon Formation contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00005052f630', 'd1000000-0000-0000-0000-00005052f630', 'What is recommended to master the skills of Platoon Formation?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00006a5679ce', 'd1000000-0000-0000-0000-00006a5679ce', 'What is a key focus area in studying Advanced Battle Craft?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00006a5679ce', 'd1000000-0000-0000-0000-00006a5679ce', 'Which value is most prioritized in Advanced Battle Craft training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1);

INSERT INTO public.questions (id, bank_id, question_text, question_type, options, correct_answer, difficulty, topic_tag, explanation, points) VALUES
('q0000003-0000-0000-0000-00006a5679ce', 'd1000000-0000-0000-0000-00006a5679ce', 'True or False: Cadet evaluations for Advanced Battle Craft contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00006a5679ce', 'd1000000-0000-0000-0000-00006a5679ce', 'What is recommended to master the skills of Advanced Battle Craft?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000071c41278', 'd1000000-0000-0000-0000-000071c41278', 'What is a key focus area in studying Internal Security Duties?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000071c41278', 'd1000000-0000-0000-0000-000071c41278', 'Which value is most prioritized in Internal Security Duties training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000071c41278', 'd1000000-0000-0000-0000-000071c41278', 'True or False: Cadet evaluations for Internal Security Duties contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000071c41278', 'd1000000-0000-0000-0000-000071c41278', 'What is recommended to master the skills of Internal Security Duties?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00001e33facf', 'd1000000-0000-0000-0000-00001e33facf', 'What is a key focus area in studying Field Engineering?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00001e33facf', 'd1000000-0000-0000-0000-00001e33facf', 'Which value is most prioritized in Field Engineering training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00001e33facf', 'd1000000-0000-0000-0000-00001e33facf', 'True or False: Cadet evaluations for Field Engineering contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00001e33facf', 'd1000000-0000-0000-0000-00001e33facf', 'What is recommended to master the skills of Field Engineering?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000512fff22', 'd1000000-0000-0000-0000-0000512fff22', 'What is a key focus area in studying Communication Procedures?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000512fff22', 'd1000000-0000-0000-0000-0000512fff22', 'Which value is most prioritized in Communication Procedures training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000512fff22', 'd1000000-0000-0000-0000-0000512fff22', 'True or False: Cadet evaluations for Communication Procedures contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000512fff22', 'd1000000-0000-0000-0000-0000512fff22', 'What is recommended to master the skills of Communication Procedures?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00005f8ea2d4', 'd1000000-0000-0000-0000-00005f8ea2d4', 'What is a key focus area in studying Map Reading Advanced?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00005f8ea2d4', 'd1000000-0000-0000-0000-00005f8ea2d4', 'Which value is most prioritized in Map Reading Advanced training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00005f8ea2d4', 'd1000000-0000-0000-0000-00005f8ea2d4', 'True or False: Cadet evaluations for Map Reading Advanced contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00005f8ea2d4', 'd1000000-0000-0000-0000-00005f8ea2d4', 'What is recommended to master the skills of Map Reading Advanced?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00003626ed8b', 'd1000000-0000-0000-0000-00003626ed8b', 'What is a key focus area in studying Naval Orientation?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00003626ed8b', 'd1000000-0000-0000-0000-00003626ed8b', 'Which value is most prioritized in Naval Orientation training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00003626ed8b', 'd1000000-0000-0000-0000-00003626ed8b', 'True or False: Cadet evaluations for Naval Orientation contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00003626ed8b', 'd1000000-0000-0000-0000-00003626ed8b', 'What is recommended to master the skills of Naval Orientation?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000421a9aee', 'd1000000-0000-0000-0000-0000421a9aee', 'What is a key focus area in studying Parts of Ship?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000421a9aee', 'd1000000-0000-0000-0000-0000421a9aee', 'Which value is most prioritized in Parts of Ship training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000421a9aee', 'd1000000-0000-0000-0000-0000421a9aee', 'True or False: Cadet evaluations for Parts of Ship contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000421a9aee', 'd1000000-0000-0000-0000-0000421a9aee', 'What is recommended to master the skills of Parts of Ship?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00002fac8dc8', 'd1000000-0000-0000-0000-00002fac8dc8', 'What is a key focus area in studying Seamanship?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00002fac8dc8', 'd1000000-0000-0000-0000-00002fac8dc8', 'Which value is most prioritized in Seamanship training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00002fac8dc8', 'd1000000-0000-0000-0000-00002fac8dc8', 'True or False: Cadet evaluations for Seamanship contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00002fac8dc8', 'd1000000-0000-0000-0000-00002fac8dc8', 'What is recommended to master the skills of Seamanship?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000380f3820', 'd1000000-0000-0000-0000-0000380f3820', 'What is a key focus area in studying Boat Pulling?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000380f3820', 'd1000000-0000-0000-0000-0000380f3820', 'Which value is most prioritized in Boat Pulling training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000380f3820', 'd1000000-0000-0000-0000-0000380f3820', 'True or False: Cadet evaluations for Boat Pulling contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000380f3820', 'd1000000-0000-0000-0000-0000380f3820', 'What is recommended to master the skills of Boat Pulling?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00002feaf4db', 'd1000000-0000-0000-0000-00002feaf4db', 'What is a key focus area in studying Rigging?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00002feaf4db', 'd1000000-0000-0000-0000-00002feaf4db', 'Which value is most prioritized in Rigging training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00002feaf4db', 'd1000000-0000-0000-0000-00002feaf4db', 'True or False: Cadet evaluations for Rigging contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00002feaf4db', 'd1000000-0000-0000-0000-00002feaf4db', 'What is recommended to master the skills of Rigging?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00003816b210', 'd1000000-0000-0000-0000-00003816b210', 'What is a key focus area in studying Naval Communication Basics?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00003816b210', 'd1000000-0000-0000-0000-00003816b210', 'Which value is most prioritized in Naval Communication Basics training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00003816b210', 'd1000000-0000-0000-0000-00003816b210', 'True or False: Cadet evaluations for Naval Communication Basics contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00003816b210', 'd1000000-0000-0000-0000-00003816b210', 'What is recommended to master the skills of Naval Communication Basics?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00002e1c7818', 'd1000000-0000-0000-0000-00002e1c7818', 'What is a key focus area in studying Navigation?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00002e1c7818', 'd1000000-0000-0000-0000-00002e1c7818', 'Which value is most prioritized in Navigation training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00002e1c7818', 'd1000000-0000-0000-0000-00002e1c7818', 'True or False: Cadet evaluations for Navigation contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00002e1c7818', 'd1000000-0000-0000-0000-00002e1c7818', 'What is recommended to master the skills of Navigation?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00002cd2d194', 'd1000000-0000-0000-0000-00002cd2d194', 'What is a key focus area in studying Anchoring?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00002cd2d194', 'd1000000-0000-0000-0000-00002cd2d194', 'Which value is most prioritized in Anchoring training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00002cd2d194', 'd1000000-0000-0000-0000-00002cd2d194', 'True or False: Cadet evaluations for Anchoring contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00002cd2d194', 'd1000000-0000-0000-0000-00002cd2d194', 'What is recommended to master the skills of Anchoring?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1);

INSERT INTO public.questions (id, bank_id, question_text, question_type, options, correct_answer, difficulty, topic_tag, explanation, points) VALUES
('q0000001-0000-0000-0000-00004e72e59e', 'd1000000-0000-0000-0000-00004e72e59e', 'What is a key focus area in studying Ship Modelling?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00004e72e59e', 'd1000000-0000-0000-0000-00004e72e59e', 'Which value is most prioritized in Ship Modelling training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00004e72e59e', 'd1000000-0000-0000-0000-00004e72e59e', 'True or False: Cadet evaluations for Ship Modelling contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00004e72e59e', 'd1000000-0000-0000-0000-00004e72e59e', 'What is recommended to master the skills of Ship Modelling?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00000aa55155', 'd1000000-0000-0000-0000-00000aa55155', 'What is a key focus area in studying Naval Signals?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00000aa55155', 'd1000000-0000-0000-0000-00000aa55155', 'Which value is most prioritized in Naval Signals training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00000aa55155', 'd1000000-0000-0000-0000-00000aa55155', 'True or False: Cadet evaluations for Naval Signals contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00000aa55155', 'd1000000-0000-0000-0000-00000aa55155', 'What is recommended to master the skills of Naval Signals?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000044a62988', 'd1000000-0000-0000-0000-000044a62988', 'What is a key focus area in studying Boat Sailing?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000044a62988', 'd1000000-0000-0000-0000-000044a62988', 'Which value is most prioritized in Boat Sailing training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000044a62988', 'd1000000-0000-0000-0000-000044a62988', 'True or False: Cadet evaluations for Boat Sailing contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000044a62988', 'd1000000-0000-0000-0000-000044a62988', 'What is recommended to master the skills of Boat Sailing?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000021c2f35d', 'd1000000-0000-0000-0000-000021c2f35d', 'What is a key focus area in studying Tides & Compass?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000021c2f35d', 'd1000000-0000-0000-0000-000021c2f35d', 'Which value is most prioritized in Tides & Compass training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000021c2f35d', 'd1000000-0000-0000-0000-000021c2f35d', 'True or False: Cadet evaluations for Tides & Compass contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000021c2f35d', 'd1000000-0000-0000-0000-000021c2f35d', 'What is recommended to master the skills of Tides & Compass?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00001addf457', 'd1000000-0000-0000-0000-00001addf457', 'What is a key focus area in studying Advanced Navigation?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00001addf457', 'd1000000-0000-0000-0000-00001addf457', 'Which value is most prioritized in Advanced Navigation training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00001addf457', 'd1000000-0000-0000-0000-00001addf457', 'True or False: Cadet evaluations for Advanced Navigation contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00001addf457', 'd1000000-0000-0000-0000-00001addf457', 'What is recommended to master the skills of Advanced Navigation?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00007c7294d4', 'd1000000-0000-0000-0000-00007c7294d4', 'What is a key focus area in studying Naval Warfare Basics?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00007c7294d4', 'd1000000-0000-0000-0000-00007c7294d4', 'Which value is most prioritized in Naval Warfare Basics training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00007c7294d4', 'd1000000-0000-0000-0000-00007c7294d4', 'True or False: Cadet evaluations for Naval Warfare Basics contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00007c7294d4', 'd1000000-0000-0000-0000-00007c7294d4', 'What is recommended to master the skills of Naval Warfare Basics?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00001f456459', 'd1000000-0000-0000-0000-00001f456459', 'What is a key focus area in studying Ship Organisation?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00001f456459', 'd1000000-0000-0000-0000-00001f456459', 'Which value is most prioritized in Ship Organisation training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00001f456459', 'd1000000-0000-0000-0000-00001f456459', 'True or False: Cadet evaluations for Ship Organisation contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00001f456459', 'd1000000-0000-0000-0000-00001f456459', 'What is recommended to master the skills of Ship Organisation?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00005efb1ed5', 'd1000000-0000-0000-0000-00005efb1ed5', 'What is a key focus area in studying Communication Systems?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00005efb1ed5', 'd1000000-0000-0000-0000-00005efb1ed5', 'Which value is most prioritized in Communication Systems training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00005efb1ed5', 'd1000000-0000-0000-0000-00005efb1ed5', 'True or False: Cadet evaluations for Communication Systems contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00005efb1ed5', 'd1000000-0000-0000-0000-00005efb1ed5', 'What is recommended to master the skills of Communication Systems?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00006396755e', 'd1000000-0000-0000-0000-00006396755e', 'What is a key focus area in studying Sailing Expeditions?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00006396755e', 'd1000000-0000-0000-0000-00006396755e', 'Which value is most prioritized in Sailing Expeditions training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00006396755e', 'd1000000-0000-0000-0000-00006396755e', 'True or False: Cadet evaluations for Sailing Expeditions contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00006396755e', 'd1000000-0000-0000-0000-00006396755e', 'What is recommended to master the skills of Sailing Expeditions?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00005f1d0bd4', 'd1000000-0000-0000-0000-00005f1d0bd4', 'What is a key focus area in studying Naval Weapons Basics?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00005f1d0bd4', 'd1000000-0000-0000-0000-00005f1d0bd4', 'Which value is most prioritized in Naval Weapons Basics training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00005f1d0bd4', 'd1000000-0000-0000-0000-00005f1d0bd4', 'True or False: Cadet evaluations for Naval Weapons Basics contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00005f1d0bd4', 'd1000000-0000-0000-0000-00005f1d0bd4', 'What is recommended to master the skills of Naval Weapons Basics?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000003ec634', 'd1000000-0000-0000-0000-0000003ec634', 'What is a key focus area in studying Leadership at Sea?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000003ec634', 'd1000000-0000-0000-0000-0000003ec634', 'Which value is most prioritized in Leadership at Sea training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000003ec634', 'd1000000-0000-0000-0000-0000003ec634', 'True or False: Cadet evaluations for Leadership at Sea contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000003ec634', 'd1000000-0000-0000-0000-0000003ec634', 'What is recommended to master the skills of Leadership at Sea?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00005f146c89', 'd1000000-0000-0000-0000-00005f146c89', 'What is a key focus area in studying Principles of Flight?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00005f146c89', 'd1000000-0000-0000-0000-00005f146c89', 'Which value is most prioritized in Principles of Flight training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00005f146c89', 'd1000000-0000-0000-0000-00005f146c89', 'True or False: Cadet evaluations for Principles of Flight contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00005f146c89', 'd1000000-0000-0000-0000-00005f146c89', 'What is recommended to master the skills of Principles of Flight?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00005ca2f1d8', 'd1000000-0000-0000-0000-00005ca2f1d8', 'What is a key focus area in studying Airframe & Aircraft Parts?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00005ca2f1d8', 'd1000000-0000-0000-0000-00005ca2f1d8', 'Which value is most prioritized in Airframe & Aircraft Parts training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1);

INSERT INTO public.questions (id, bank_id, question_text, question_type, options, correct_answer, difficulty, topic_tag, explanation, points) VALUES
('q0000003-0000-0000-0000-00005ca2f1d8', 'd1000000-0000-0000-0000-00005ca2f1d8', 'True or False: Cadet evaluations for Airframe & Aircraft Parts contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00005ca2f1d8', 'd1000000-0000-0000-0000-00005ca2f1d8', 'What is recommended to master the skills of Airframe & Aircraft Parts?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000056603834', 'd1000000-0000-0000-0000-000056603834', 'What is a key focus area in studying Flying Basics?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000056603834', 'd1000000-0000-0000-0000-000056603834', 'Which value is most prioritized in Flying Basics training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000056603834', 'd1000000-0000-0000-0000-000056603834', 'True or False: Cadet evaluations for Flying Basics contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000056603834', 'd1000000-0000-0000-0000-000056603834', 'What is recommended to master the skills of Flying Basics?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000018409e7e', 'd1000000-0000-0000-0000-000018409e7e', 'What is a key focus area in studying Aviation History?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000018409e7e', 'd1000000-0000-0000-0000-000018409e7e', 'Which value is most prioritized in Aviation History training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000018409e7e', 'd1000000-0000-0000-0000-000018409e7e', 'True or False: Cadet evaluations for Aviation History contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000018409e7e', 'd1000000-0000-0000-0000-000018409e7e', 'What is recommended to master the skills of Aviation History?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00005b5dfdb6', 'd1000000-0000-0000-0000-00005b5dfdb6', 'What is a key focus area in studying Aero Modelling?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00005b5dfdb6', 'd1000000-0000-0000-0000-00005b5dfdb6', 'Which value is most prioritized in Aero Modelling training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00005b5dfdb6', 'd1000000-0000-0000-0000-00005b5dfdb6', 'True or False: Cadet evaluations for Aero Modelling contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00005b5dfdb6', 'd1000000-0000-0000-0000-00005b5dfdb6', 'What is recommended to master the skills of Aero Modelling?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00004ec157d0', 'd1000000-0000-0000-0000-00004ec157d0', 'What is a key focus area in studying Air Navigation Basics?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00004ec157d0', 'd1000000-0000-0000-0000-00004ec157d0', 'Which value is most prioritized in Air Navigation Basics training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00004ec157d0', 'd1000000-0000-0000-0000-00004ec157d0', 'True or False: Cadet evaluations for Air Navigation Basics contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00004ec157d0', 'd1000000-0000-0000-0000-00004ec157d0', 'What is recommended to master the skills of Air Navigation Basics?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000062aa6abb', 'd1000000-0000-0000-0000-000062aa6abb', 'What is a key focus area in studying Aircraft Instruments?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000062aa6abb', 'd1000000-0000-0000-0000-000062aa6abb', 'Which value is most prioritized in Aircraft Instruments training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000062aa6abb', 'd1000000-0000-0000-0000-000062aa6abb', 'True or False: Cadet evaluations for Aircraft Instruments contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000062aa6abb', 'd1000000-0000-0000-0000-000062aa6abb', 'What is recommended to master the skills of Aircraft Instruments?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00006a5672c3', 'd1000000-0000-0000-0000-00006a5672c3', 'What is a key focus area in studying Meteorology?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00006a5672c3', 'd1000000-0000-0000-0000-00006a5672c3', 'Which value is most prioritized in Meteorology training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00006a5672c3', 'd1000000-0000-0000-0000-00006a5672c3', 'True or False: Cadet evaluations for Meteorology contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00006a5672c3', 'd1000000-0000-0000-0000-00006a5672c3', 'What is recommended to master the skills of Meteorology?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000582a5b2f', 'd1000000-0000-0000-0000-0000582a5b2f', 'What is a key focus area in studying Air Traffic Control Basics?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000582a5b2f', 'd1000000-0000-0000-0000-0000582a5b2f', 'Which value is most prioritized in Air Traffic Control Basics training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000582a5b2f', 'd1000000-0000-0000-0000-0000582a5b2f', 'True or False: Cadet evaluations for Air Traffic Control Basics contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000582a5b2f', 'd1000000-0000-0000-0000-0000582a5b2f', 'What is recommended to master the skills of Air Traffic Control Basics?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000305fbd8c', 'd1000000-0000-0000-0000-0000305fbd8c', 'What is a key focus area in studying Navigation Advanced?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000305fbd8c', 'd1000000-0000-0000-0000-0000305fbd8c', 'Which value is most prioritized in Navigation Advanced training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000305fbd8c', 'd1000000-0000-0000-0000-0000305fbd8c', 'True or False: Cadet evaluations for Navigation Advanced contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000305fbd8c', 'd1000000-0000-0000-0000-0000305fbd8c', 'What is recommended to master the skills of Navigation Advanced?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-0000338753da', 'd1000000-0000-0000-0000-0000338753da', 'What is a key focus area in studying Aero Engines?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-0000338753da', 'd1000000-0000-0000-0000-0000338753da', 'Which value is most prioritized in Aero Engines training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-0000338753da', 'd1000000-0000-0000-0000-0000338753da', 'True or False: Cadet evaluations for Aero Engines contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-0000338753da', 'd1000000-0000-0000-0000-0000338753da', 'What is recommended to master the skills of Aero Engines?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00006af17a39', 'd1000000-0000-0000-0000-00006af17a39', 'What is a key focus area in studying Map Reading for Aviation?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00006af17a39', 'd1000000-0000-0000-0000-00006af17a39', 'Which value is most prioritized in Map Reading for Aviation training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00006af17a39', 'd1000000-0000-0000-0000-00006af17a39', 'True or False: Cadet evaluations for Map Reading for Aviation contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00006af17a39', 'd1000000-0000-0000-0000-00006af17a39', 'What is recommended to master the skills of Map Reading for Aviation?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000044b2792c', 'd1000000-0000-0000-0000-000044b2792c', 'What is a key focus area in studying Advanced Aviation Subjects?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000044b2792c', 'd1000000-0000-0000-0000-000044b2792c', 'Which value is most prioritized in Advanced Aviation Subjects training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000044b2792c', 'd1000000-0000-0000-0000-000044b2792c', 'True or False: Cadet evaluations for Advanced Aviation Subjects contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000044b2792c', 'd1000000-0000-0000-0000-000044b2792c', 'What is recommended to master the skills of Advanced Aviation Subjects?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00004bb378fe', 'd1000000-0000-0000-0000-00004bb378fe', 'What is a key focus area in studying Flight Navigation?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00004bb378fe', 'd1000000-0000-0000-0000-00004bb378fe', 'Which value is most prioritized in Flight Navigation training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00004bb378fe', 'd1000000-0000-0000-0000-00004bb378fe', 'True or False: Cadet evaluations for Flight Navigation contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00004bb378fe', 'd1000000-0000-0000-0000-00004bb378fe', 'What is recommended to master the skills of Flight Navigation?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1);

INSERT INTO public.questions (id, bank_id, question_text, question_type, options, correct_answer, difficulty, topic_tag, explanation, points) VALUES
('q0000001-0000-0000-0000-00003ec40096', 'd1000000-0000-0000-0000-00003ec40096', 'What is a key focus area in studying Aircraft Recognition?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00003ec40096', 'd1000000-0000-0000-0000-00003ec40096', 'Which value is most prioritized in Aircraft Recognition training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00003ec40096', 'd1000000-0000-0000-0000-00003ec40096', 'True or False: Cadet evaluations for Aircraft Recognition contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00003ec40096', 'd1000000-0000-0000-0000-00003ec40096', 'What is recommended to master the skills of Aircraft Recognition?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00004dda4a83', 'd1000000-0000-0000-0000-00004dda4a83', 'What is a key focus area in studying Air Power & Warfare?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00004dda4a83', 'd1000000-0000-0000-0000-00004dda4a83', 'Which value is most prioritized in Air Power & Warfare training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00004dda4a83', 'd1000000-0000-0000-0000-00004dda4a83', 'True or False: Cadet evaluations for Air Power & Warfare contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00004dda4a83', 'd1000000-0000-0000-0000-00004dda4a83', 'What is recommended to master the skills of Air Power & Warfare?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-000007f06bc7', 'd1000000-0000-0000-0000-000007f06bc7', 'What is a key focus area in studying Aero Engine Systems?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-000007f06bc7', 'd1000000-0000-0000-0000-000007f06bc7', 'Which value is most prioritized in Aero Engine Systems training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-000007f06bc7', 'd1000000-0000-0000-0000-000007f06bc7', 'True or False: Cadet evaluations for Aero Engine Systems contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-000007f06bc7', 'd1000000-0000-0000-0000-000007f06bc7', 'What is recommended to master the skills of Aero Engine Systems?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00003c59a640', 'd1000000-0000-0000-0000-00003c59a640', 'What is a key focus area in studying Aviation Safety?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00003c59a640', 'd1000000-0000-0000-0000-00003c59a640', 'Which value is most prioritized in Aviation Safety training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00003c59a640', 'd1000000-0000-0000-0000-00003c59a640', 'True or False: Cadet evaluations for Aviation Safety contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00003c59a640', 'd1000000-0000-0000-0000-00003c59a640', 'What is recommended to master the skills of Aviation Safety?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1),
('q0000001-0000-0000-0000-00001914bc4a', 'd1000000-0000-0000-0000-00001914bc4a', 'What is a key focus area in studying Air Force Leadership & Communication?', 'mcq', '["Theory only","Practical application","Preparation for tests","All of the above"]'::jsonb, 'All of the above', 'easy', 'General', 'Syllabus courses combine theoretical and practical instructions.', 1),
('q0000002-0000-0000-0000-00001914bc4a', 'd1000000-0000-0000-0000-00001914bc4a', 'Which value is most prioritized in Air Force Leadership & Communication training?', 'mcq', '["Speed","Discipline & Unity","Competition","Individual effort"]'::jsonb, 'Discipline & Unity', 'easy', 'Values', 'Unity and Discipline is the motto of the NCC.', 1),
('q0000003-0000-0000-0000-00001914bc4a', 'd1000000-0000-0000-0000-00001914bc4a', 'True or False: Cadet evaluations for Air Force Leadership & Communication contain both written and practical parts.', 'mcq', '["True","False"]'::jsonb, 'True', 'medium', 'Evaluation', 'Written and practical components are standard for Certificate grades.', 1),
('q0000004-0000-0000-0000-00001914bc4a', 'd1000000-0000-0000-0000-00001914bc4a', 'What is recommended to master the skills of Air Force Leadership & Communication?', 'mcq', '["Self study and mock tests","Active camp and parade attendance","Discussing with senior commanders","All of the above"]'::jsonb, 'All of the above', 'medium', 'Training', 'A holistic training approach is highly effective.', 1);

-- ============================================
-- TESTS
-- ============================================
INSERT INTO public.tests (id, course_id, title, description, test_type, duration_minutes, question_count, passing_score, randomize_questions, target_wing, is_active) VALUES
('e1000000-0000-0000-0000-000003e125cf', 'a1000000-0000-0000-0000-000000000001', 'NCC At a Glance Assessment', 'Practice assessment covering NCC At a Glance for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000003e125ce', 'a1000000-0000-0000-0000-000000000002', 'Drill & Commands Assessment', 'Practice assessment covering Drill & Commands for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000068284012', 'a1000000-0000-0000-0000-00002d6df6d2', 'Weapon Training & Infantry Weapons Assessment', 'Practice assessment covering Weapon Training & Infantry Weapons for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000003e125cd', 'a1000000-0000-0000-0000-000000000003', 'National Integration Assessment', 'Practice assessment covering National Integration for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-0000202c5758', 'a1000000-0000-0000-0000-0000174a3d1e', 'Leadership & Personality Development Assessment', 'Practice assessment covering Leadership & Personality Development for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00006333b7d7', 'a1000000-0000-0000-0000-000071e9b09d', 'Civil Defence & Disaster Management Assessment', 'Practice assessment covering Civil Defence & Disaster Management for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000032b61268', 'a1000000-0000-0000-0000-000057c82e75', 'Social Service & Awareness Assessment', 'Practice assessment covering Social Service & Awareness for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000003e125cc', 'a1000000-0000-0000-0000-000000000004', 'Health, Hygiene & Sanitation Assessment', 'Practice assessment covering Health, Hygiene & Sanitation for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-0000284aed79', 'a1000000-0000-0000-0000-00005409f313', 'Yoga & Asanas Assessment', 'Practice assessment covering Yoga & Asanas for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00001e6e1810', 'a1000000-0000-0000-0000-00001aefb067', 'Home Nursing Assessment', 'Practice assessment covering Home Nursing for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000003712f35', 'a1000000-0000-0000-0000-000000490880', 'Posture Training Assessment', 'Practice assessment covering Posture Training for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00005d98433c', 'a1000000-0000-0000-0000-0000240e6113', 'Obstacles Training & Adventure Activities Assessment', 'Practice assessment covering Obstacles Training & Adventure Activities for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00000722b589', 'a1000000-0000-0000-0000-000008b4468c', 'Career in Defence Services Assessment', 'Practice assessment covering Career in Defence Services for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000015abc0ec', 'a1000000-0000-0000-0000-000038908d40', 'Services Tests & Interviews Assessment', 'Practice assessment covering Services Tests & Interviews for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00006d49238f', 'a1000000-0000-0000-0000-000039ef9e7c', 'Self-Defence Assessment', 'Practice assessment covering Self-Defence for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00003b6196ee', 'a1000000-0000-0000-0000-00003c4316e3', 'Environment and Ecology Assessment', 'Practice assessment covering Environment and Ecology for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00004fbcf79f', 'a1000000-0000-0000-0000-0000199562e4', 'Famous Leaders of India Assessment', 'Practice assessment covering Famous Leaders of India for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00006742b1fa', 'a1000000-0000-0000-0000-000071fe9b19', 'History of India Assessment', 'Practice assessment covering History of India for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00005ad1b986', 'a1000000-0000-0000-0000-00000ba7d77f', 'Armed Forces & Military History Assessment', 'Practice assessment covering Armed Forces & Military History for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000003e125cb', 'a1000000-0000-0000-0000-000000000005', 'Map Reading Assessment', 'Practice assessment covering Map Reading for Certificate B cadets.', 'practice', 15, 2, 50, true, 'Common', true),
('e1000000-0000-0000-0000-0000219ecc97', 'a1000000-0000-0000-0000-0000382075a9', 'Communication Assessment', 'Practice assessment covering Communication for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00001661349b', 'a1000000-0000-0000-0000-0000266d0d05', 'Field Craft & Battle Craft Assessment', 'Practice assessment covering Field Craft & Battle Craft for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00000add794e', 'a1000000-0000-0000-0000-000016a26b66', 'Personality Development & Officer Like Qualities (OLQs) Assessment', 'Practice assessment covering Personality Development & Officer Like Qualities (OLQs) for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000036a22df0', 'a1000000-0000-0000-0000-00004a803f19', 'Disaster Management & Social Awareness Assessment', 'Practice assessment covering Disaster Management & Social Awareness for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000074af31c0', 'a1000000-0000-0000-0000-00002ba41949', 'Advanced Leadership Assessment', 'Practice assessment covering Advanced Leadership for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000061a47fa3', 'a1000000-0000-0000-0000-00000b8cf529', 'Advanced Drill Assessment', 'Practice assessment covering Advanced Drill for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000066ea2018', 'a1000000-0000-0000-0000-000019d3bbde', 'National Security Assessment', 'Practice assessment covering National Security for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-0000227e3f69', 'a1000000-0000-0000-0000-000017470581', 'Armed Forces Organisation Assessment', 'Practice assessment covering Armed Forces Organisation for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-0000170d063d', 'a1000000-0000-0000-0000-0000636a9bea', 'Disaster Management Assessment', 'Practice assessment covering Disaster Management for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-0000390c33f0', 'a1000000-0000-0000-0000-000015e087f8', 'Social Service & Community Development Assessment', 'Practice assessment covering Social Service & Community Development for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000030227a9c', 'a1000000-0000-0000-0000-00000f5e0237', 'Personality Development & Communication Skills Assessment', 'Practice assessment covering Personality Development & Communication Skills for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00000105660b', 'a1000000-0000-0000-0000-00007f311b52', 'Map Reading & Navigation Assessment', 'Practice assessment covering Map Reading & Navigation for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000021aa6e77', 'a1000000-0000-0000-0000-0000173e1464', 'Field Craft & Battle Craft Assessment', 'Practice assessment covering Field Craft & Battle Craft for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-00006a880255', 'a1000000-0000-0000-0000-00002d69b84d', 'Military History & War Heroes Assessment', 'Practice assessment covering Military History & War Heroes for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-0000796a5dde', 'a1000000-0000-0000-0000-0000282e60fa', 'General Awareness & Current Affairs Assessment', 'Practice assessment covering General Awareness & Current Affairs for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-0000645b68cf', 'a1000000-0000-0000-0000-0000400027dd', 'Officer Like Qualities (OLQs) & Interview Skills Assessment', 'Practice assessment covering Officer Like Qualities (OLQs) & Interview Skills for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Common', true),
('e1000000-0000-0000-0000-000027ad7d53', 'a1000000-0000-0000-0000-000004518ce7', 'Field Craft Basics Assessment', 'Practice assessment covering Field Craft Basics for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-00005c67dc2a', 'a1000000-0000-0000-0000-00005b295d90', 'Drill with Arms Assessment', 'Practice assessment covering Drill with Arms for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-000003e125ca', 'a1000000-0000-0000-0000-000000000006', 'Weapon Training Assessment', 'Practice assessment covering Weapon Training for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-000045b31c91', 'a1000000-0000-0000-0000-00007250c9a6', 'Section Formation Assessment', 'Practice assessment covering Section Formation for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-0000498e560e', 'a1000000-0000-0000-0000-00001cddd660', 'Guard Mounting Assessment', 'Practice assessment covering Guard Mounting for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-0000666f90f2', 'a1000000-0000-0000-0000-000076b802f1', 'Battle Craft Basics Assessment', 'Practice assessment covering Battle Craft Basics for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-00004c126907', 'a1000000-0000-0000-0000-00005bda6445', 'Advanced Weapon Training Assessment', 'Practice assessment covering Advanced Weapon Training for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-00001428290d', 'a1000000-0000-0000-0000-00004ef72cf6', 'Field Signals Assessment', 'Practice assessment covering Field Signals for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-0000786c8488', 'a1000000-0000-0000-0000-00000fa26f23', 'Patrolling Assessment', 'Practice assessment covering Patrolling for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-0000231a55d4', 'a1000000-0000-0000-0000-0000091f2132', 'Camouflage & Concealment Assessment', 'Practice assessment covering Camouflage & Concealment for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-000073cf2672', 'a1000000-0000-0000-0000-000010986329', 'Section Battle Drill Assessment', 'Practice assessment covering Section Battle Drill for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-00007392f367', 'a1000000-0000-0000-0000-00002d119e7b', 'Ambush & Defence Assessment', 'Practice assessment covering Ambush & Defence for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-00004b59a45d', 'a1000000-0000-0000-0000-000069281cf8', 'Tactical Exercises Assessment', 'Practice assessment covering Tactical Exercises for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-00005052f630', 'a1000000-0000-0000-0000-0000455ec376', 'Platoon Formation Assessment', 'Practice assessment covering Platoon Formation for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Army', true);

INSERT INTO public.tests (id, course_id, title, description, test_type, duration_minutes, question_count, passing_score, randomize_questions, target_wing, is_active) VALUES
('e1000000-0000-0000-0000-00006a5679ce', 'a1000000-0000-0000-0000-000027c89a44', 'Advanced Battle Craft Assessment', 'Practice assessment covering Advanced Battle Craft for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-000071c41278', 'a1000000-0000-0000-0000-00006a0b9015', 'Internal Security Duties Assessment', 'Practice assessment covering Internal Security Duties for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-00001e33facf', 'a1000000-0000-0000-0000-00006aaa9a6d', 'Field Engineering Assessment', 'Practice assessment covering Field Engineering for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-0000512fff22', 'a1000000-0000-0000-0000-00005baa8724', 'Communication Procedures Assessment', 'Practice assessment covering Communication Procedures for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-00005f8ea2d4', 'a1000000-0000-0000-0000-00002c4f7734', 'Map Reading Advanced Assessment', 'Practice assessment covering Map Reading Advanced for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Army', true),
('e1000000-0000-0000-0000-00003626ed8b', 'a1000000-0000-0000-0000-000007da05fb', 'Naval Orientation Assessment', 'Practice assessment covering Naval Orientation for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-0000421a9aee', 'a1000000-0000-0000-0000-000010cd3522', 'Parts of Ship Assessment', 'Practice assessment covering Parts of Ship for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00002fac8dc8', 'a1000000-0000-0000-0000-000078b8bad6', 'Seamanship Assessment', 'Practice assessment covering Seamanship for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-0000380f3820', 'a1000000-0000-0000-0000-000060f74a80', 'Boat Pulling Assessment', 'Practice assessment covering Boat Pulling for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00002feaf4db', 'a1000000-0000-0000-0000-00005f26bbb8', 'Rigging Assessment', 'Practice assessment covering Rigging for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00003816b210', 'a1000000-0000-0000-0000-00005f71361c', 'Naval Communication Basics Assessment', 'Practice assessment covering Naval Communication Basics for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00002e1c7818', 'a1000000-0000-0000-0000-000033de1536', 'Navigation Assessment', 'Practice assessment covering Navigation for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00002cd2d194', 'a1000000-0000-0000-0000-00003e351a55', 'Anchoring Assessment', 'Practice assessment covering Anchoring for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00004e72e59e', 'a1000000-0000-0000-0000-000066541bbd', 'Ship Modelling Assessment', 'Practice assessment covering Ship Modelling for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00000aa55155', 'a1000000-0000-0000-0000-00000e385149', 'Naval Signals Assessment', 'Practice assessment covering Naval Signals for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-000044a62988', 'a1000000-0000-0000-0000-000002b2020d', 'Boat Sailing Assessment', 'Practice assessment covering Boat Sailing for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-000021c2f35d', 'a1000000-0000-0000-0000-0000173c9633', 'Tides & Compass Assessment', 'Practice assessment covering Tides & Compass for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00001addf457', 'a1000000-0000-0000-0000-00003bf3e26f', 'Advanced Navigation Assessment', 'Practice assessment covering Advanced Navigation for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00007c7294d4', 'a1000000-0000-0000-0000-0000446f03a2', 'Naval Warfare Basics Assessment', 'Practice assessment covering Naval Warfare Basics for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00001f456459', 'a1000000-0000-0000-0000-00007ebeb8bd', 'Ship Organisation Assessment', 'Practice assessment covering Ship Organisation for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00005efb1ed5', 'a1000000-0000-0000-0000-00004d1d4699', 'Communication Systems Assessment', 'Practice assessment covering Communication Systems for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00006396755e', 'a1000000-0000-0000-0000-000056db673e', 'Sailing Expeditions Assessment', 'Practice assessment covering Sailing Expeditions for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00005f1d0bd4', 'a1000000-0000-0000-0000-000005e105c1', 'Naval Weapons Basics Assessment', 'Practice assessment covering Naval Weapons Basics for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-0000003ec634', 'a1000000-0000-0000-0000-00005e58b4dc', 'Leadership at Sea Assessment', 'Practice assessment covering Leadership at Sea for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Navy', true),
('e1000000-0000-0000-0000-00005f146c89', 'a1000000-0000-0000-0000-00001e49cb34', 'Principles of Flight Assessment', 'Practice assessment covering Principles of Flight for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-00005ca2f1d8', 'a1000000-0000-0000-0000-00003f04d489', 'Airframe & Aircraft Parts Assessment', 'Practice assessment covering Airframe & Aircraft Parts for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-000056603834', 'a1000000-0000-0000-0000-000021b5014e', 'Flying Basics Assessment', 'Practice assessment covering Flying Basics for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-000018409e7e', 'a1000000-0000-0000-0000-000009934b67', 'Aviation History Assessment', 'Practice assessment covering Aviation History for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-00005b5dfdb6', 'a1000000-0000-0000-0000-00001e256fdc', 'Aero Modelling Assessment', 'Practice assessment covering Aero Modelling for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-00004ec157d0', 'a1000000-0000-0000-0000-0000197a9a17', 'Air Navigation Basics Assessment', 'Practice assessment covering Air Navigation Basics for Certificate A cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-000062aa6abb', 'a1000000-0000-0000-0000-00007d5b2b7b', 'Aircraft Instruments Assessment', 'Practice assessment covering Aircraft Instruments for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-00006a5672c3', 'a1000000-0000-0000-0000-00003f85a3d5', 'Meteorology Assessment', 'Practice assessment covering Meteorology for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-0000582a5b2f', 'a1000000-0000-0000-0000-00001e091e5c', 'Air Traffic Control Basics Assessment', 'Practice assessment covering Air Traffic Control Basics for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-0000305fbd8c', 'a1000000-0000-0000-0000-00007b3ed32b', 'Navigation Advanced Assessment', 'Practice assessment covering Navigation Advanced for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-0000338753da', 'a1000000-0000-0000-0000-000025fea92b', 'Aero Engines Assessment', 'Practice assessment covering Aero Engines for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-00006af17a39', 'a1000000-0000-0000-0000-00001042448d', 'Map Reading for Aviation Assessment', 'Practice assessment covering Map Reading for Aviation for Certificate B cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-000044b2792c', 'a1000000-0000-0000-0000-0000191cb74a', 'Advanced Aviation Subjects Assessment', 'Practice assessment covering Advanced Aviation Subjects for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-00004bb378fe', 'a1000000-0000-0000-0000-0000665f0342', 'Flight Navigation Assessment', 'Practice assessment covering Flight Navigation for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-00003ec40096', 'a1000000-0000-0000-0000-000010eaf56f', 'Aircraft Recognition Assessment', 'Practice assessment covering Aircraft Recognition for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-00004dda4a83', 'a1000000-0000-0000-0000-00002cf3b089', 'Air Power & Warfare Assessment', 'Practice assessment covering Air Power & Warfare for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-000007f06bc7', 'a1000000-0000-0000-0000-00007f71eb3d', 'Aero Engine Systems Assessment', 'Practice assessment covering Aero Engine Systems for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-00003c59a640', 'a1000000-0000-0000-0000-000060be762f', 'Aviation Safety Assessment', 'Practice assessment covering Aviation Safety for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Air Force', true),
('e1000000-0000-0000-0000-00001914bc4a', 'a1000000-0000-0000-0000-00004684706e', 'Air Force Leadership & Communication Assessment', 'Practice assessment covering Air Force Leadership & Communication for Certificate C cadets.', 'practice', 15, 4, 50, true, 'Air Force', true);

COMMIT;