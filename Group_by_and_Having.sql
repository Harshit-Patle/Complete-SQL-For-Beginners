# Group By:- used to get the data of a particular group
SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;

# we have to use 'Having' after 'Group By' in place of 'where' but we can use 'where' before 'group by'
SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender HAVING AVG(salary)>63916;

SELECT referred_by_id, count(*) AS count FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id HAVING count(1)>1