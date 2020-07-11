/*
UPDATE DATA IN A TABLE:

UPDATE tablename
SET columnname = 'newvalue'
WHERE columnname = 'value';

*/

UPDATE examples
SET email = 'davidmitchell@gmail.com'
WHERE example_id = 1;

-- update multiple rows based on WHERE clause
UPDATE examples
SET nationality = 'CAN'
WHERE nationality = 'USA';

-- update multiple columns in single row
UPDATE examples
SET age = 55, first_name = 'James'
WHERE example_id = 5;

SELECT * FROM examples;