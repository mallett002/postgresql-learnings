--------------------- CHALLENGES ---------------------------------------------------------

--1. Select the first and last names of all the actors older than Marlon Brando.
select first_name, last_name from actors
where date_of_birth < (
	select date_of_birth from actors
	where first_name = 'Marlon'
	and last_name = 'Brando'
);



--2. Select the movie names of all movies that have domestic takings above 300 million.
-- mine:
select mo.movie_name, mr.domestic_takings from movies mo
join movie_revenues mr on mo.movie_id = mr.movie_id
where mr.domestic_takings > 300;

--answer
select movie_name from movies
where movie_id in
(select movie_id from movie_revenues
where domestic_takings > 300.0);




--3. Return the shortest and longest movie length for movies
--	 with an above average domestic takings.
-- Mine:
select min(mo.movie_length), max(mo.movie_length) from movies mo
join movie_revenues mr on mo.movie_id = mr.movie_id
where mr.domestic_takings > (
	select avg(domestic_takings) from movie_revenues
);

-- answer:
select min(movie_length), max(movie_length) from movies -- min & max length
where movie_id in -- with those movie_ids
(select movie_id from movie_revenues -- get movie_ids
where domestic_takings >
(select avg(domestic_takings) from movie_revenues)); -- avg
