-- selecting data where a column is between 2 values
-- Best for numbers and date values

/*
SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 BETWEEEN value1 AND value2;
*/

SELECT * FROM movies;

SELECT movie_name, release_date FROM movies
WHERE release_date BETWEEN '1995-01-01' AND '1999-12-31';

SELECT movie_name, movie_length FROM movies
WHERE movie_length BETWEEN 90 AND 120;

-- Using on strings isn't so useful
SELECT movie_name, movie_lang FROM movies
WHERE movie_lang BETWEEN 'Eo' AND 'Portuguese';
