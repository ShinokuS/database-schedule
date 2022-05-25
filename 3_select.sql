SELECT
    course.name,
    subject.name
FROM
    course_subjects
    LEFT JOIN course ON course_subjects.course_id = course.id
    LEFT JOIN subject ON course_subjects.subject_id = subject.id;

SELECT
    DISTINCT teacher.full_name,
    format.name
FROM
    schedule
    LEFT JOIN teacher ON schedule.teacher_id = teacher.id
    LEFT JOIN format ON schedule.format_id = format.id;

SELECT
    teacher.full_name,
    course.name,
    subject.name,
    format.name
FROM
    schedule
    LEFT JOIN teacher ON schedule.teacher_id = teacher.id
    LEFT JOIN course_subjects ON schedule.course_sub_id = course_subjects.id
    LEFT JOIN course ON course_subjects.course_id = course.id
    LEFT JOIN subject ON course_subjects.subject_id = subject.id
    LEFT JOIN format ON schedule.format_id = format.id;