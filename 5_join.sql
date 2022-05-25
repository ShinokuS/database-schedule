/* --------------------------------------------------------------------------- */
/* left join */
SELECT
    teacher.full_name,
    department.name
FROM
    teacher
    LEFT JOIN department ON teacher.department_id = department.id;

/* --------------------------------------------------------------------------- */
/* right join */
SELECT
    course.name,
    course_subjects.subject_id
FROM
    course
    RIGHT JOIN course_subjects ON course.id = course_subjects.course_id;

/* --------------------------------------------------------------------------- */
/* full outer join */
SELECT
    teacher.full_name,
    subject.name
FROM
    schedule
    LEFT JOIN course_subjects ON schedule.course_sub_id = course_subjects.id
    FULL OUTER JOIN subject ON course_subjects.subject_id = subject.id
    FULL OUTER JOIN teacher ON schedule.teacher_id = teacher.id;