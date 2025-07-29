# Inner Join:- return only common rows
SELECT users.name,users.gender,addresses.id AS address_id,addresses.city,addresses.state
FROM users INNER JOIN addresses ON users.id=addresses.user_id;

# Left Join:- return all the row of left table with matching values of right table if value doesn't exist then show null
SELECT users.name,users.gender,addresses.id AS address_id,addresses.city,addresses.state
FROM users LEFT JOIN addresses ON users.id=addresses.user_id;

# Right Join:- return all the row of right table with matching values of left table if value doesn't exist then show null
SELECT users.name,users.gender,addresses.id AS address_id,addresses.city,addresses.state
FROM users RIGHT JOIN addresses ON users.id=addresses.user_id;

# Union:-  return a single table with unique values from both the tables(always unique)
SELECT name, email FROM users
UNION
SELECT name, email FROM admin_users;

SELECT name, 'User' as role FROM users
UNION
SELECT name, 'Admin' as role FROM admin_users;

SELECT name, 'User' as role FROM users
UNION
SELECT name, 'Admin' as role FROM admin_users ORDER BY name;

# Union All:-  return a single table with all values from both the tables(may be duplicate) and all operations are same as union
SELECT name, email FROM users
UNION ALL
SELECT name, email FROM admin_users;

# Self Join:- return join of table to itself. It is like making object of two class
SELECT a.id, a.name AS user_name, b.name AS referred_by_name FROM users a INNER JOIN users b ON a.referred_by_id=b.id;