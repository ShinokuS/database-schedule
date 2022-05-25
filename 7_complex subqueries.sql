SELECT
    full_name
FROM
    teacher
WHERE
    department_id = (
        SELECT
            id
        FROM
            department
        WHERE
            name = 'Кафедра литературы'
    );

SELECT
    course.name
FROM
    course_subjects
    LEFT JOIN course ON course_subjects.course_id = course.id
WHERE
    course_subjects.subject_id = (
        SELECT
            id
        FROM
            subject
        WHERE
            name = 'Органическая химия'
    );

SELECT
    teacher.full_name
FROM
    schedule
    LEFT JOIN teacher ON schedule.teacher_id = teacher.id
WHERE
    schedule.format_id = (
        SELECT
            id
        FROM
            format
        WHERE
            name = 'СДО'
    );