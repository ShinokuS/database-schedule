CREATE EXTENSION pgcrypto;

INSERT INTO
    subject (name)
VALUES
    (
        pgp_sym_encrypt('Литература 18 века', 'myKey123')
    );

SELECT
    pgp_sym_decrypt(name :: bytea, 'myKey123')
FROM
    subject
WHERE
    id = 12;