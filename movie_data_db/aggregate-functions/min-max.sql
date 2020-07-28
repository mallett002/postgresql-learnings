-- Aggregate Functions : MIN and MAX
-- Get largest / smallest value in a column
/*
SELECT MAX(columname) FROM tablename;
SELECT MIN(columname) FROM tablename;
*/

-- longest movie length:
SELECT MAX(movie_length) FROM movies;

-- shortest movie length:
SELECT MIN(movie_length) FROM movies;

-- add WHERE clause:
SELECT MIN(movie_length) FROM movies
WHERE movie_lang = 'Japanese';

-- works on dates
SELECT MAX(release_date) FROM movies;
SELECT MIN(release_date) FROM movies;

-- works on strings (last value alphabetically)
SELECT MAX(movie_name) FROM movies;
