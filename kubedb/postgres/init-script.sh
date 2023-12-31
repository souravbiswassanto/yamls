
CREATE DATABASE db1;
CREATE USER db1_user WITH PASSWORD 'password1';
GRANT ALL PRIVILEGES ON DATABASE db1 TO db1_user;
\c db1;
DO $$
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'db1_schema') THEN
            CREATE SCHEMA db1_schema;
        END IF;
    END $$;
GRANT USAGE, CREATE ON SCHEMA db1_schema TO db1_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA db1_schema GRANT ALL ON TABLES TO db1_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA db1_schema GRANT ALL ON SEQUENCES TO db1_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA db1_schema GRANT EXECUTE ON FUNCTIONS TO db1_user;



CREATE DATABASE db2;
CREATE USER db2_user WITH PASSWORD 'password2';
GRANT ALL PRIVILEGES ON DATABASE db2 TO db2_user;
\c db2;
DO $$
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'db2_schema') THEN
            CREATE SCHEMA db2_schema;
        END IF;
    END $$;
GRANT USAGE, CREATE ON SCHEMA db2_schema TO db2_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA db2_schema GRANT ALL ON TABLES TO db2_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA db2_schema GRANT ALL ON SEQUENCES TO db2_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA db2_schema GRANT EXECUTE ON FUNCTIONS TO db2_user;



CREATE DATABASE db3;
CREATE USER db3_user WITH PASSWORD 'password3';
GRANT ALL PRIVILEGES ON DATABASE db3 TO db3_user;

\c db3;
DO $$
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'db3_schema') THEN
            CREATE SCHEMA db3_schema;
        END IF;
    END $$;
GRANT USAGE, CREATE ON SCHEMA db3_schema TO db3_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA db3_schema GRANT ALL ON TABLES TO db3_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA db3_schema GRANT ALL ON SEQUENCES TO db3_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA db3_schema GRANT EXECUTE ON FUNCTIONS TO db3_user;