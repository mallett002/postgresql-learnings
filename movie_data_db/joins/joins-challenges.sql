--1: Select the directors first and last names, the movie names and release dates for all Chinese,...
-- ...Korean and Japanese movies.

SELECT d.first_name, d.last_name, mo.movie_name, mo.release_date, mo.movie_lang FROM directors d
JOIN movies mo ON d.director_id = mo.director_id
WHERE mo.movie_lang IN ('Chinese', 'Korean', 'Japanese');
