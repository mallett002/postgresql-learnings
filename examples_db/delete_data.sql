-- Deleting data from a table

/*
DELETE FROM tablename
WHERE columnname = 'value';
*/

DELETE FROM examples
WHERE example_id = 2;

SELECT * FROM examples;

-- Delete multiple rows based on WHERE clause
DELETE FROM examples
WHERE nationality = 'GBR';


-- Delete all rows in a table (just no WHERE clause)
DELETE FROM examples;
