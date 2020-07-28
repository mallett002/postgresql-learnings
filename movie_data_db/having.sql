-- Having Clauses
-- Like WHERE clauses, but can use aggregate functions to filter the data
-- Comes after GROUP BY
/*
SELECT column1, AGGFUNC(column2) FROM tablename
GROUP BY column1
HAVING AGGFUNC(column3) = value;
*/

-- Get number of movies in each column (greater than 1)
SELECT movie_lang, COUNT(movie_lang) FROM movies
GROUP BY movie_lang
HAVING COUNT(movie_lang) > 1;


SELECT movie_lang, COUNT(movie_lang) FROM movies
WHERE movie_length > 120 -- rows where actual data is > 120
GROUP BY movie_lang -- put in groups based on movie lang
HAVING COUNT(movie_lang) > 1; -- get ones that have more than one entry (row)
