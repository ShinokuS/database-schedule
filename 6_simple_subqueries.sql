/* --------------------------------------------------------------------------- */
/* область SELECT */
SELECT
    (
        SELECT
            name
        FROM
            course
        WHERE
            course_subjects.course_id = course.id
    ) AS course,
    (
        SELECT
            name
        FROM
            subject
        WHERE
            course_subjects.subject_id = subject.id
    ) AS subject
FROM
    course_subjects;

/* --------------------------------------------------------------------------- */
/* область FROM */
SELECT
    teacher_name,
    subject_name
FROM
    (
        SELECT
            teacher.full_name AS teacher_name,
            course.name AS course_name,
            subject.name AS subject_name,
            format.name AS format_name
        FROM
            schedule
            LEFT JOIN teacher ON schedule.teacher_id = teacher.id
            LEFT JOIN course_subjects ON schedule.course_sub_id = course_subjects.id
            LEFT JOIN course ON course_subjects.course_id = course.id
            LEFT JOIN subject ON course_subjects.subject_id = subject.id
            LEFT JOIN format ON schedule.format_id = format.id
    ) AS schedule_full;

/* --------------------------------------------------------------------------- */
/* область WHERE */
SELECT
    full_name
FROM
    teacher
WHERE
    department_id IN (
        SELECT
            id
        FROM
            department
        WHERE
            name = 'Кафедра литературы'
    );

/* --------------------------------------------------------------------------- */
/* область HAVING */
SELECT
    teacher.full_name
FROM
    schedule
    LEFT JOIN teacher ON schedule.teacher_id = teacher.id
GROUP BY teacher.full_name
HAVING COUNT(teacher.full_name) >= 2;