-- UPPER AND LOWER FUNCTIONS

/*
SELECT UPPER('string');

SELECT LOWER('string');

SELECT UPPER(column_name) FROM table_name;

SELECT LOWER(column_name) FROM table_name;
*/

SELECT first_name, UPPER(last_name) as last_name FROM actors;

select lower(movie_name) as movie_name from movies;
