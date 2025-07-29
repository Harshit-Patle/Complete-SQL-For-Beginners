# STORED PROCEDURE Notes:
-- ✅ Stores reusable SQL logic on the server
-- ✅ Accepts parameters (IN, OUT, INOUT)
-- ✅ Can perform INSERT, UPDATE, DELETE, SELECT
-- ✅ Supports control flow (IF, LOOP, WHILE, etc.)
-- ✅ Useful for encapsulating business logic or automation
-- 👉 Use when you need dynamic operations or data manipulation

# creating stored procedure
DELIMITER $$
CREATE PROCEDURE addUser(
IN p_name varchar(100),
IN p_email varchar(100),
IN p_gender enum('Male','Female','Other'),
IN p_date_of_birth date,
IN p_salary decimal(10,2)
)
BEGIN
	INSERT INTO users (name, email, gender, date_of_birth, salary)
    VALUE (p_name,p_email,p_gender,p_date_of_birth,p_salary);
    SELECT * FROM users;
END$$
DELIMITER ;

# calling stored procedure
CALL addUser('John','john@example.com','Male','1990-07-21','74000');

# showing all the stored procedure
SHOW PROCEDURE STATUS WHERE Db='startersql';

# delete stored procedure
DROP PROCEDURE IF EXISTS addUser;