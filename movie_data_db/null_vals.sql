-- Dealing with NULL values
/*
SELECT * FROM tablename
WHERE columname IS NULL;

SELECT * FROM tablename
WHERE columnname IS NOT NULL;
*/

SELECT * FROM actors
WHERE date_of_birth IS NULL;

SELECT * FROM actors
WHERE date_of_birth IS NOT NULL;

-- Get highest takings (remove null vals) ordered from highest to lowest:
SELECT * FROM movie_revenues
WHERE domestic_takings IS NOT NULL
ORDER BY domestic_takings DESC;

SELECT * FROM movie_revenues
WHERE international_takings IS NULL;
