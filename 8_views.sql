CREATE VIEW teachers_from_new_departments AS
SELECT
    full_name
FROM
    teacher
WHERE
    department_id > 5;

CREATE VIEW multiple_subject_teachers AS
SELECT
    teacher.full_name
FROM
    schedule
    LEFT JOIN teacher ON schedule.teacher_id = teacher.id
GROUP BY teacher.full_name
HAVING COUNT(teacher.full_name) >= 2;