# View:- virtual table based on a query that simplifies data access and can be used like real table.It updates automatically.(prefered for complex queries)

# this is the way to create view
CREATE VIEW rich_users AS
SELECT * FROM users WHERE salary>70000;

# same as how we display table
SELECT * FROM rich_users;

# deleting view
DROP VIEW rich_users;

-- VIEW Notes:
-- ✅ A virtual table based on a SELECT query
-- ✅ Simplifies complex joins or queries
-- ❌ Cannot accept input parameters
-- ❌ Generally read-only (cannot insert/update/delete)
-- ✅ Good for restricting data access (column-level)
-- 👉 Use when you need reusable, read-only data representation