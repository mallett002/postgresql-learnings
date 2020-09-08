-- Challenges
--1. Select the directors first and last names and movie names in upper case.
select
upper(d.first_name) as first_name,
upper(d.last_name) as last_name,
upper(m.movie_name) as movie_name
from directors d
join movies m on d.director_id = m.director_id;


--2. Select the first and last names, in initial capitalization format,
--	 ...of all the actors who have starred in a Chinese or Korean movie.
select distinct
	initcap(a.first_name) as first_name,
	initcap(a.last_name) last_name,
	mo.movie_lang
from actors a
join movies_actors ma on ma.actor_id = a.actor_id
join movies mo on mo.movie_id = ma.movie_id
where mo.movie_lang in ('Chinese', 'Korean');
-- Distint to remove duplicates



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



--5. Use the substring function to retrieve the first 6 chars of each movie name...
--	 ...and the year they were released.
select substring(movie_name, 1, 6) as movie_name,
substring(release_date::text, 1, 4) as year from movies;




--6. Retrieve the first name initial and last name of every actor born in May.
select concat_ws('.' ,left(first_name, 1), last_name) from actors
where split_part(date_of_birth::text, '-', 2) = '05';

--answer:
select substring(first_name, 1, 1) as first_initial, last_name, date_of_birth from actors
where split_part(date_of_birth::text, '-', 2) = '05';



--7. Replace the movie language for all English language movies, with age certificate...
-- ...rating 18, to 'Eng'.
update movies
set movie_lang = replace(movie_lang, 'English', 'Eng')
where age_certificate = '18';
