-- Setting a column name alias

/*
SELECT columnname AS new_columnname FROM tablename;
*/


SELECT last_name AS surname FROM directors;
SELECT * FROM directors;

-- Can't use alias on where clause (alias not set yet)
SELECT last_name AS surname FROM directors
WHERE last_name = 'Anderson';

-- Can use on order by clause
SELECT last_name AS surname FROM directors
WHERE last_name LIKE 'A%'
ORDER BY surname;
