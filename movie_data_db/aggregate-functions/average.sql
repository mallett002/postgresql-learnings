-- Aggregate Functions : AVG
-- Gets the average of the values in a column
/*
SELECT AVG(columnname) FROM tablename;
*/

SELECT AVG(movie_length) FROM movies; -- returns a numeric data type (decimal)

-- with WHERE clause
SELECT AVG(movie_length) FROM movies
WHERE age_certificate = '18';
