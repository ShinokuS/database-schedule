/* --------------------------------------------------------------------------- */
/* первая транзакция: добавление записи, сохранение, 
 удаление, откат к сохранению */
BEGIN;

INSERT INTO
    department (name)
VALUES
    ('Кафедра физкультуры');

SAVEPOINT insert_savepoint;

DELETE FROM
    department
WHERE
    name = 'Кафедра физкультуры';

ROLLBACK TO insert_savepoint;

END;

/* --------------------------------------------------------------------------- */
/* вторая транзакция: первое сохранение, добавление, 
 второе сохранение, откат к первому сохранению*/
BEGIN;

SAVEPOINT insert_savepoint_1;

INSERT INTO
    department (name)
VALUES
    ('Кафедра игропрактики');

SAVEPOINT insert_savepoint_2;

ROLLBACK TO insert_savepoint_1;

END;

/* --------------------------------------------------------------------------- */
/* вторая транзакция: первое сохранение, задание значение по умолчанию, 
 второе сохранение, откат к первому сохранению*/
BEGIN;

SAVEPOINT default_savepoint_1;

ALTER TABLE
    department
ALTER COLUMN
    name SET DEFAULT 'не указано';

ALTER TABLE
    course
ALTER COLUMN
    name SET DEFAULT 'не указано';

SAVEPOINT default_savepoint_2;

ROLLBACK TO default_savepoint_1;

END;