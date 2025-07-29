SELECT * FROM users;

# where clause:- filter records based on certain condition
# jab gender ki value female ho
SELECT * FROM users WHERE gender="Female";
# jab salary 64000 se jayada ho
SELECT * FROM users WHERE salary>64000;
# jab gender female na ho
SELECT * FROM users WHERE gender!="Female";
SELECT * FROM users WHERE gender<>"Female";
# jab salary 50k se 70k ke beech me ho
SELECT * FROM users WHERE  salary BETWEEN 50000 AND 70000;
# jab name ki value ('Harshit','Aditya','Karan') me se kuchh bhi ho
SELECT * FROM users WHERE  name IN ('Harshit','Aditya','Karan');
# jab gender female aur salary 70k se jayada ho
SELECT * FROM users WHERE gender='Female' AND salary>70000;
# jab gender male ho ya salary 70k se jayada ho
SELECT * FROM users WHERE gender='Male' OR salary>70000;
# jab gender male ho ya salary 70k se jayada ho. Arrange them in ascending order
SELECT * FROM users WHERE gender='Male' OR salary>70000 ORDER BY date_of_birth ASC;
# jab gender male ho ya salary 70k se jayada ho. Arrange them in descending order
SELECT * FROM users WHERE gender='Male' OR salary>70000 ORDER BY date_of_birth DESC;
# jab gender male ho ya salary 70k se jayada ho. Arrange them in descending order and give top 5 rows
SELECT * FROM users WHERE gender='Male' OR salary>70000 ORDER BY date_of_birth DESC LIMIT 5;
# We can use limit without order by
SELECT * FROM users WHERE gender='Male' OR salary>70000 LIMIT 5;