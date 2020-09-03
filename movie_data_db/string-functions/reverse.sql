-- REVERSE STRING FUNCTIONS

/*
SELECT REVERSE('string'); --> 'gnirts'

SELECT REVERSE(column_name) FROM table_name;

*/

select reverse('thedoorlocks');

select movie_name, reverse(movie_name) as reversed_name from movies;
