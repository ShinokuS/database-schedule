SELECT
    name,
    CASE
        name
        WHEN 'первый' THEN '1'
        WHEN 'второй' THEN '2'
        WHEN 'третий' THEN '3'
        WHEN 'четвертый' THEN '4'
        WHEN 'пятый' THEN '5'
        WHEN 'шестой' THEN '6'
        WHEN 'магистратура' THEN 'маг'
        WHEN 'аспирантура' THEN 'асп'
        ELSE 'не указано'
    END AS course_short
FROM
    course;

SELECT
    name,
    CASE
        name
        WHEN 'очная лекция' THEN 'Л'
        WHEN 'онлайн лекция' THEN 'ОнЛ'
        WHEN 'очная практика' THEN 'П'
        WHEN 'онлайн практика' THEN 'ОнП'
        WHEN 'СДО' THEN 'С'
        ELSE 'не указано'
    END AS format_short
FROM
    format;