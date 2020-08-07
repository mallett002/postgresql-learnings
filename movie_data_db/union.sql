-- UNION
-- Return multiple select queries in single results set
/*
SELECT column1, column2 FROM table1
UNION
SELECT column1, column2 FROM table2;
*/

-- Rules:
-- 1. Select same number of columns in each SELECT statement
-- 2. Corresponding columns in each table must have compatible data types

SELECT first_name, last_name FROM directors
UNION
SELECT first_name, last_name FROM actors;

-- With WHERE clauses
SELECT first_name, last_name FROM directors
WHERE nationality = 'American'
UNION
SELECT first_name, last_name FROM actors
WHERE gender = 'F';

-- With ORDER BY 
-- Has to go after final select query
SELECT first_name, last_name FROM directors
WHERE nationality = 'American'
UNION
SELECT first_name, last_name FROM actors
WHERE gender = 'F'
ORDER BY first_name;


-- With 3rd column (date_of_birth)
SELECT first_name, last_name, date_of_birth FROM directors
WHERE nationality = 'American'
UNION
SELECT first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY first_name;
