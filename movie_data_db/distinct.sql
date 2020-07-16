-- Distinct values (Get only the distinct values)

/*
SELECT DISTINCT columname FROM tablename;
*/

SELECT movie_lang FROM movies
ORDER BY movie_lang;

-- Find out how many different movie languages we have:
SELECT DISTINCT movie_lang FROM movies
ORDER BY movie_lang;

-- Get distinct combinations in multiple columns
SELECT DISTINCT movie_lang, age_certificate FROM movies
ORDER BY movie_lang;

SELECT DISTINCT * FROM movies
ORDER BY movie_lang;
