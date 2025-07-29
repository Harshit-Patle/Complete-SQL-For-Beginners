# display the count of users, females in the table also asign name using AS
SELECT COUNT(*) AS users FROM users;
SELECT COUNT(*) AS females FROM users WHERE gender='Female';

# display the min and max salary from the table also asign name using AS
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

# display sum of the salary from the table
SELECT SUM(salary) AS sum_salary FROM users;

# display avg of the salary from the table
SELECT AVG(salary) AS avg_salary FROM users;

# display avg salary of male and female group from the table
SELECT gender,AVG(salary) AS avg_salary FROM users GROUP BY gender;

# display length of the name using length() function
SELECT name, length(name) AS name_len FROM users;

# display name in lower case using lower() function
SELECT id, lower(name) AS name_lower FROM users;

# use of concat() function
SELECT name, concat(lower(name),id) AS username FROM users;

# for getting current time we use now() function
SELECT now() AS real_time;