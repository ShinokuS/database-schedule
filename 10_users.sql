/* --------------------------------------------------------------------------- */
/* создание обычного пользователя */
CREATE ROLE simple_user LOGIN;
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA PUBLIC FROM simple_user;
GRANT INSERT, SELECT ON ALL TABLES IN SCHEMA PUBLIC TO simple_user;

/* --------------------------------------------------------------------------- */
/* создание гостя */
CREATE ROLE guest LOGIN;
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA PUBLIC FROM guest;
GRANT SELECT ON schedule TO guest;
