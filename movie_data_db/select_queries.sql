SELECT * FROM directors;

-- select only one column of data
SELECT first_name FROM directors;

-- select multiple columns
SELECT first_name, last_name FROM directors;
SELECT first_name, last_name, nationality FROM directors;


-- Retrieving data with a where clause

/*
SELECT columnname FROM tablename
WHERE columnname = 'value';
*/

SELECT * FROM movies
WHERE age_certificate = '15';

SELECT * FROM movies
WHERE age_certificate = '15'
AND movie_lang = 'Chinese';

SELECT * FROM movies
WHERE age_certificate = '15'
OR movie_lang = 'Chinese';

SELECT * FROM movies
WHERE movie_lang = 'English'
AND age_certificate = '15'
AND director_id = 27;

SELECT * FROM directors WHERE director_id = 27;

-- Logical operators (>, >=, <, <=)

SELECT movie_name, movie_length FROM movies
WHERE movie_length > 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length >= 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length < 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length <= 120;

-- select films released in 21st century
SELECT * FROM movies
WHERE release_date > '1999-12-31';

-- before 1999
SELECT * FROM movies
WHERE release_date < '1999-12-31';

-- possible to use operators on strings, but doesn't make too much sense:
SELECT * FROM movies
WHERE movie_lang > 'English';


-- CHALLENGES
-- 1: Select the movie_name and release_date of every movie
SELECT movie_name, release_date FROM movies;

-- 2: Select the first and last names of all american directors
SELECT * from directors;
SELECT first_name, last_name FROM directors
WHERE nationality = 'American';

--3: Select all male actors born after the 1st of Jan 1970
SELECT * FROM actors;
SELECT * FROM actors
WHERE gender = 'M'
AND date_of_birth > '1970-01-01';

--4: Select the names of all movies which are over 90 min long & movie lang is English
SELECT * FROM movies;
SELECT movie_name FROM movies
WHERE movie_length > 90
AND movie_lang = 'English';

/*====================================================================
    IN, NOT IN, LIKE, BETWEEN
====================================================================*/
--1: Select the movie names and movie language of all movies with a movie lang of English, Spanish or Korean
SELECT movie_name, movie_lang FROM movies
WHERE movie_lang IN ('English', 'Spanish', 'Korean');

--2: Select the first and last names of the actors whose last name begins with M and were born between 01/01/1940...
-- ...and 31/12/1969
SELECT first_name, last_name FROM actors

WHERE last_name LIKE 'M%'
AND date_of_birth BETWEEN '1940-01-01' AND '1969-12-31';

--3: Select the first and last names of the directors with nationality of British, French or German born between...
-- ...01/01/1950 and 31/12/1980
SELECT first_name, last_name From directors
WHERE nationality IN ('British', 'French', 'German')
AND date_of_birth BETWEEN '1950-01-01' AND '1980-12-31';


/*====================================================================
   ORDER BY, LIMIT, FETCH, DISTINCT CHALLENGES
====================================================================*/

--1: Select the American directors ordered from the oldest to youngest
SELECT * FROM directors
WHERE nationality = 'American'
ORDER BY date_of_birth ASC;

-- Don't need ASC since it's the default
SELECT * FROM directors
WHERE nationality = 'American'
ORDER BY date_of_birth;

--2: Select the distinct nationalities from the directors table
SELECT DISTINCT nationality FROM directors;

--3: Select the first names, last names and date of births of...
-- ...the 10 youngest female actresses
-- With LIMIT:
SELECT first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC
LIMIT 10;

-- With FETCH:
SELECT first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC
FETCH FIRST 10 ROW ONLY;
