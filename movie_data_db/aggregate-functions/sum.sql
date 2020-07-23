-- Aggregate Functions : SUM
-- Sum all the values in a column
/*
SELECT SUM(columnname) FROM tablename;
*/

SELECT SUM(domestic_takings) FROM movie_revenues;

-- only sum those greater than 100:
SELECT SUM(domestic_takings) FROM movie_revenues
WHERE domestic_takings > 100.0;

-- length of all chinese movies:
SELECT SUM(movie_length) FROM movies
WHERE movie_lang = 'Chinese';

-- Only makes sense to use on integers numbers etc.
SELECT SUM(movie_name) FROM movies; -- Error
SELECT SUM(*) FROM movies; -- Error
