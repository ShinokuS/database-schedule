INSERT INTO department (name)
VALUES 
('Кафедра литературы'),
('Кафедра психологии'),
('Кафедра географии'),
('Кафедра химии'),
('Кафедра управления и права'),
('Кафедра философии и теологии'),
('Кафедра инженерных технологий'),
('Кафедра медицинских наук'),
('Кафедра математики'),
('Кафедра строительства');

INSERT INTO teacher (full_name, department_id)
VALUES
('Смирнов Даниил Даниилович', 1),
('Андреев Максим Кириллович', 2),
('Гуляева Диана Михайловна', 3),
('Лебедев Никита Михайлович', 4),
('Нефедова Полина Артёмовна', 5),
('Горелов Артём Демидович', 6),
('Шапошников Фёдор Павлович', 7),
('Казаков Лев Максимович', 8),
('Седова Есения Руслановна', 9),
('Лукьянов Александр Романович', 9),
('Исаев Григорий Артёмович', 10),
('Русанов Владислав Савельевич', 10),
('Зубов Вадим Артёмович', 7);

INSERT INTO course (name)
VALUES
('первый'),
('второй'),
('третий'),
('четвертый'),
('пятый'),
('шестой'),
('магистратура'),
('аспирантура');

INSERT INTO subject (name)
VALUES
('Литература 20 века'),
('Психологические основы педагогической деятельности'),
('География Псковской области'),
('Органическая химия'),
('Конституционное право'),
('Античная философия'),
('Управление данными'),
('Анатомия'),
('Высшая математика'),
('Архитектура'),
('Линейная алгебра');

INSERT INTO course_subjects (course_id, subject_id)
VALUES
(4, 1),
(3, 2),
(2, 3),
(1, 4),
(2, 5),
(1, 6),
(7, 7),
(2, 8),
(1, 9),
(1, 10),
(2, 11);

INSERT INTO format (name)
VALUES
('очная лекция'),
('онлайн лекция'),
('очная практика'),
('онлайн практика'),
('СДО');

INSERT INTO schedule (teacher_id, course_sub_id, format_id)
VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 2),
(4, 4, 5),
(5, 5, 4),
(6, 6, 2),
(7, 7, 1),
(8, 8, 5),
(9, 9, 1),
(9, 11, 1),
(10, 9, 3),
(11, 10, 1),
(12, 10, 3);
