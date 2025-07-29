DELIMITER $$
CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN

INSERT INTO user_log(user_id, name)

VALUES (NEW. id, NEW.name);
END $$

DELIMITER ;
INSERT INTO users (name, email, gender, date_of_birth, salary) values
('Rohan', 'rohan2@rohan.con', 'Male', '2007-04-04', 56000);

SELECT * FROM user_log;

DROP TRIGGER IF EXISTS after_user_insert