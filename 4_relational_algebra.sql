/* --------------------------------------------------------------------------- */
/* операция объединения */
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
    )
UNION
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
            name = 'Кафедра психологии'
    );

/* --------------------------------------------------------------------------- */
/* операция пересечения */
SELECT
    teacher.full_name
FROM
    schedule
    LEFT JOIN teacher ON schedule.teacher_id = teacher.id
    LEFT JOIN course_subjects ON schedule.course_sub_id = course_subjects.id
    LEFT JOIN course ON course_subjects.course_id = course.id
WHERE
    course.name = 'первый'
INTERSECT
SELECT
    teacher.full_name
FROM
    schedule
    LEFT JOIN teacher ON schedule.teacher_id = teacher.id
    LEFT JOIN course_subjects ON schedule.course_sub_id = course_subjects.id
    LEFT JOIN course ON course_subjects.course_id = course.id
WHERE
    course.name = 'второй';

/* --------------------------------------------------------------------------- */
/* операция разности */
SELECT
    teacher.full_name
FROM
    schedule
    LEFT JOIN teacher ON schedule.teacher_id = teacher.id
    LEFT JOIN course_subjects ON schedule.course_sub_id = course_subjects.id
    LEFT JOIN course ON course_subjects.course_id = course.id
WHERE
    course.name = 'первый'
EXCEPT
SELECT
    teacher.full_name
FROM
    schedule
    LEFT JOIN teacher ON schedule.teacher_id = teacher.id
    LEFT JOIN course_subjects ON schedule.course_sub_id = course_subjects.id
    LEFT JOIN course ON course_subjects.course_id = course.id
WHERE
    course.name = 'второй';

/* --------------------------------------------------------------------------- */
/* операция декартова произведения */
SELECT
    course.name,
    format.name
FROM
    course,
    format;

/* --------------------------------------------------------------------------- */
/* операция деления */
SELECT
    DISTINCT full_name
FROM
    teacher
WHERE
    department_id = (
        SELECT
            id
        FROM
            department
        WHERE
            name = 'Кафедра математики'
    );

/* --------------------------------------------------------------------------- */
/* операция проекции */
SELECT
    DISTINCT full_name
FROM
    teacher;