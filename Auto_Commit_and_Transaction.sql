# it enables commit so that if we made any mistake we can rollback
SET autocommit=0;
DELETE from users WHERE id=6;
SELECT * FROM users;

# for rollback changes (if I mistakenly deleted id=6 in place of id=5)
ROLLBACK;

# if we are sure that we done everything correctly then save the changes
COMMIT