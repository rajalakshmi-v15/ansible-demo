CREATE DATABASE IF NOT EXISTS employee_db;
GRANT ALL ON *.* to db_user@localhost IDENTIFIED BY 'password';
USE employee_db;
CREATE TABLE employees (name VARCHAR(20));
INSERT INTO employees VALUES ('JOHN');
