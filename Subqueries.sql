# Subqueries:- breaking down queries into smaller queries

SELECT * FROM users WHERE salary>(SELECT AVG(salary) FROM users);

SELECT id, name, referred_by_id FROM users where referred_by_id IN 
(SELECT id FROM users where salary>
(SELECT AVG(salary) FROM users))