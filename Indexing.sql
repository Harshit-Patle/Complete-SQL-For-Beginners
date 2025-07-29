# indexing improves performance of the query

# display all the indexes on the table
SHOW INDEXES FROM users;

# for creating index on a column of a table
CREATE INDEX idx_gen ON users(gender);

# for creating index on multiple columns of a table
CREATE INDEX idx_dob_sal ON users(date_of_birth,salary);

# for deleting index
DROP INDEX idx_dob_sal ON users;