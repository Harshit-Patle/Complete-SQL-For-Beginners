# deleting the user whose salary is less than 65k
DELETE FROM users WHERE salary<65000;
# deleting the user whose id is 2
DELETE FROM users WHERE id=2;

# run a SELECT query before running DELETE to check what will be going to affect
# don't use delete query without "where" clause coz it makes changes in whole table