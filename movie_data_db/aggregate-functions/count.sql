-- Aggregate Functions : COUNT
-- Counts the number of entries (rows)
/*
SELECT COUNT(columnname) FROM tablename;
*/

SELECT * FROM movie_revenues;
SELECT COUNT(*) FROM movie_revenues; -- 53

-- Doesn't count the NULL values
SELECT COUNT(international_takings) FROM movie_revenues; -- 37

-- Add where clauses
SELECT COUNT(*) FROM movies
WHERE movie_lang = 'English';
