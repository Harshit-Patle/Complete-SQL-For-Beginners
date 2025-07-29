# update salary of id 1 to 45000
UPDATE users SET salary = 45000 WHERE id=1;
# update salary to +10k where salary less than 60k
UPDATE users SET salary = salary+10000 WHERE salary<60000; 

# don't use update query without "where" clause coz it makes changes in whole table