CREATE TABLE department (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE teacher (
    id SERIAL PRIMARY KEY,
    department_id INTEGER NOT NULL,
    full_name TEXT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department (id) ON UPDATE CASCADE
);

CREATE TABLE course (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE subject (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE course_subjects (
    id SERIAL PRIMARY KEY,
    course_id INTEGER NOT NULL,
    subject_id INTEGER NOT NULL,
    FOREIGN KEY (course_id) REFERENCES course (id) ON UPDATE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subject (id) ON UPDATE CASCADE
);

CREATE TABLE format (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE schedule (
    id SERIAL PRIMARY KEY,
    teacher_id INTEGER NOT NULL,
    course_sub_id INTEGER NOT NULL,
    format_id INTEGER NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teacher (id) ON UPDATE CASCADE,
    FOREIGN KEY (course_sub_id) REFERENCES course_subjects (id) ON UPDATE CASCADE,
    FOREIGN KEY (format_id) REFERENCES format (id) ON UPDATE CASCADE
);