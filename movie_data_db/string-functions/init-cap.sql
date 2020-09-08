-- INITCAP STRING FUNCITON

/*
SELECT INITCAP('example string');

SELECT INITCAP(column_name) FROM table_name;
*/

SELECT INITCAP('example string'); -- Example String

select movie_name from movies;
select initcap(movie_name) as movie_name from movies;
