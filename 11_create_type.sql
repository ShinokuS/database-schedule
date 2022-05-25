CREATE TYPE lesson_status AS ENUM ('in progress', 'await', 'pass', 'cancelled');

CREATE TYPE format_type AS (name TEXT, status lesson_status);