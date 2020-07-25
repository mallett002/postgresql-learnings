-- Grouping Data by column's value
/*
SELECT column1, AGGFUN(column2) FROM tablename
GROUP BY column1;
*/

SELECT COUNT(movie_lang) FROM movies;

-- Group data be movie_lang: Creates groups for each movie language
SELECT movie_lang, COUNT(movie_lang) FROM movies
GROUP BY movie_lang;

SELECT movie_lang, AVG(movie_length) FROM movies
GROUP BY movie_lang;

-- Group by multiple columns
--Create distinct groups for movie lang with certain age cert, and provide the group's average:
SELECT movie_lang, age_certificate, AVG(movie_length) FROM movies
GROUP BY movie_lang, age_certificate;
-- Need to GROUP BY each column that isn't being aggregated (movie_lang, age_certificate

-- Add WHERE CLAUSE (before GROUP BY)
SELECT movie_lang, age_certificate, AVG(movie_length) FROM movies
WHERE movie_length > 120
GROUP BY movie_lang, age_certificate;


SELECT movie_lang, MIN(movie_length), MAX(movie_length) FROM movies
WHERE age_certificate = '15'
GROUP BY movie_lang;
