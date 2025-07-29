# used to create database
Create database starter;

# select database
USE starter;

# create table with the fields
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

# select all columns from the table
SELECT * FROM users;

# delete database
DROP DATABASE users;

# select mentioned columns from the table
SELECT email, gender FROM users;

# rename table
RENAME TABLE users to programmers;

# add column in the table
ALTER TABLE users ADD COLUMN is_Active BOOLEAN DEFAULT TRUE;

# delete column from the table
ALTER TABLE users DROP COLUMN is_Active;

# modify column type
ALTER TABLE users MODIFY COLUMN name VARCHAR(150);

# changing the order and position of the column
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) AFTER id;
ALTER TABLE users MODIFY COLUMN date_of_birth DATETIME FIRST;

# insert data into table
INSERT INTO users VALUES ('2004-09-10',1,'abc@gmail.com','abc','Male',DEFAULT);
INSERT INTO users (name, email, gender, date_of_birth) VALUES ('Alice','alice@gmail.com','Female','2015-07-11');
INSERT INTO users (name, email, gender, date_of_birth) VALUES ('Bob','bob@gmail.com','Male','2004-07-11'),('Chef','chef@gmail.com','Male','2010-08-12'),('John','john@gmail.com','Male','2006-11-15');

