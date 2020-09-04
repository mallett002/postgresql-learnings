-- Challenges
--1. Select the directors first and last names and movie names in upper case.
select upper(first_name) as first_name, upper(last_name) as last_name from directors;



--2. Select the first and last names, in initial capitalization format,
--	 ...of all the actors who have starred in a Chinese or Korean movie.
select
	initcap(a.first_name) as first_name,
	initcap(a.last_name) last_name,
	mo.movie_lang
from actors a
join movies_actors ma on ma.actor_id = a.actor_id
join movies mo on mo.movie_id = ma.movie_id
where mo.movie_lang = 'Chinese'
or mo.movie_lang = 'Korean';



--3. Retrieve the reversed first and last names of each directors
-- 	 ...and the first three characters of their nationality.
select reverse(first_name) as first,
reverse(last_name) as last,
left(nationality, 3) as first_three
from directors;



--4. Retrieve the initials of each director and display it in one column
-- 	...named "initials".
select concat_ws(
	' ',
	left(first_name, 1),
	left(last_name, 1)
) as initials from directors;
