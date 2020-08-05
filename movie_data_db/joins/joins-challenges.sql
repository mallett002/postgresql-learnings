--1: Select the directors first and last names, the movie names and release dates for all Chinese,...
-- ...Korean and Japanese movies.

SELECT d.first_name, d.last_name, mo.movie_name, mo.release_date, mo.movie_lang FROM directors d
JOIN movies mo ON d.director_id = mo.director_id
WHERE mo.movie_lang IN ('Chinese', 'Korean', 'Japanese');

--2: Select the movie names, release dates and international takings of all English language movies.
SELECT mo.movie_name, mo.release_date, mr.international_takings FROM movies mo
JOIN movie_revenues mr ON mo.movie_id = mr.movie_id
WHERE mo.movie_lang = 'English';

--3: Select the movie names, domestic takings and international takings for all movies with either...
-- ...missing domestic takings or missing international takings and order the results by movie name.
SELECT mo.movie_name, mr.domestic_takings, mr.international_takings FROM movies mo
JOIN movie_revenues mr ON mo.movie_id = mr.movie_id
WHERE mr.domestic_takings IS NULL
OR mr.international_takings IS NULL
ORDER BY mo.movie_name;


-- LEFT, RIGHT, FULL JOINS CHALLENGES
--1: Use a left join to select the first and last names of all British...
--   ...directors and the names and age certificates of the movies they directed.
SELECT d.first_name, d.last_name, mo.movie_name, mo.age_certificate FROM directors d
LEFT JOIN movies mo ON d.director_id = mo.director_id
WHERE d.nationality = 'British';


--2: Count the number of movies that each director has directed.
-- Mine:
SELECT CONCAT_WS(' ', d.first_name, d.last_name) as full_name, COUNT(mo.movie_id) AS total_movies
FROM directors d
LEFT JOIN movies mo ON mo.director_id = d.director_id
GROUP BY full_name
ORDER BY full_name;

-- Answer:
SELECT d.first_name, d.last_name, COUNT(mo.movie_id) FROM directors d
LEFT JOIN movies mo ON d.director_id = mo.director_id
GROUP BY d.first_name, d.last_name;



-- MULTIPLE TABLE JOINS CHALLENGES
--1: Select the first and last names of all the actors who have starred in movies directed by Wes Anderson.
SELECT 
CONCAT_WS(' ', ac.first_name, ac.last_name) as actor,
CONCAT_WS(' ', d.first_name, d.last_name) as director
FROM actors ac
JOIN movies_actors ma ON ac.actor_id = ma.actor_id
JOIN movies mo ON ma.movie_id = mo.movie_id
JOIN directors d ON mo.director_id = d.director_id
WHERE d.first_name = 'Wes' AND d.last_name = 'Anderson'; -- 20 retults

--2: Which director has the highest total domestic takings?
-- select concat_ws(' ', d.first_name, d.last_name), mr.domestic_takings
-- from directors d
-- join;
