-- Using IN (=) and NOT IN (!=)
-- To select columns where we want the column to be equal to...
-- ...more than one value
/*
SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 IN ('value1', 'value2');

SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 NOT IN ('value1', 'value2');
*/
-- Like this:
SELECT first_name, last_name FROM actors
WHERE first_name = 'Bruce'
OR first_name = 'John';

SELECT first_name, last_name FROM actors
WHERE first_name = 'Bruce';

-- select columns where firstname is Bruce or John
SELECT first_name, last_name FROM actors
WHERE first_name IN ('Bruce', 'John');

SELECT first_name, last_name FROM actors
WHERE first_name IN ('Bruce', 'John', 'Peter');

-- select columns where first_name is Not Bruce nor John nor Peter
SELECT first_name, last_name FROM actors
WHERE first_name NOT IN ('Bruce', 'John', 'Peter');

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id IN (2, 3, 4, 5, 6, 8);

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id NOT IN (2, 3, 4, 5, 6, 8);