-- Create Database
CREATE DATABASE company_records;

-- Create User
CREATE USER db_user WITH PASSWORD 'yourpassword';
GRANT ALL PRIVILEGES ON DATABASE company_records TO db_user;