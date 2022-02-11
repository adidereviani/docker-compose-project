#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE TABLE USERS (first_name varchar(30), last_name varchar(30), id varchar(10));
    INSERT INTO USERS (first_name, last_name, id) VALUES ('asaf', '' ,''), ('adi', 'dereviani', '');
EOSQL