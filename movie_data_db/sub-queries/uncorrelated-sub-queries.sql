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


-- Can pass values from inner query to outer
-- Select movies that had more international takings than domestic:

select movie_name, movie_lang from movies
where movie_id in
(select movie_id from movie_revenues
where international_takings > domestic_takings);

-- Inner query runs first, passes movie_id to outer query

-- Can use joins:
select mo.movie_id, mo.movie_name, d.first_name, d.last_name from movies mo
join directors d on mo.director_id = d.director_id
where mo.movie_id in (
	select movie_id from movie_revenues
	where international_takings > domestic_takings
);
-- Gets the movies and directors where the movie had more international takings than domestic
