-- Using Concatenate (Link things together into a chain)

/*
SELECT 'string1' || 'string2' AS new_string;

SELECT CONCAT(column1, column2) AS new_column FROM tablename;

SELECT CONCAT_WS(' ', column1, column2) AS new_column FROM tablename;
*/

-- Concatenating strings together:
SELECT 'concat' || ' ' || 'together' AS new_string;

-- Concatenating columns together:
SELECT CONCAT(first_name, last_name) AS full_name FROM actors;

-- Put space between first and last name:
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM actors;

-- concat with separator (CONCAT_WS)
SELECT CONCAT_WS(' ', first_name, last_name) AS full_name FROM actors;

-- concat with a space between more than 2 columns
SELECT CONCAT_WS(' ', first_name, last_name, date_of_birth) AS full_name FROM actors;