-- Uncorrelated Subqueries: "inner query does **NOT** depend on outer query"

SELECT movie_name, movie_length FROM movies
WHERE movie_length >
(SELECT AVG(movie_length) FROM movies); -- inner query


-- directors who are younger than James Cameron:
SELECT first_name, last_name FROM directors
WHERE date_of_birth >
(SELECT date_of_birth FROM directors
WHERE first_name = 'James'
AND last_name = 'Cameron');

-- All directors younger than Tom Cruise (an actor):
SELECT first_name, last_name FROM directors
WHERE date_of_birth >
(SELECT date_of_birth FROM actors
WHERE first_name = 'Tom'
AND last_name = 'Cruise');
