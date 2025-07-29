# can make any column unique
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE(email);

# add condition to the column 
ALTER TABLE users ADD CONSTRAINT check_dob CHECK(date_of_birth>'1950-01-01');