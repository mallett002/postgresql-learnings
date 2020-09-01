-- Correlated subqueries (inner query relies upon outer query to work)

-- Get list of oldest directors from each nationality
select d.first_name, d.last_name, d.date_of_birth
from directors d
where d.date_of_birth = (
	select min(date_of_birth) from directors inner_d
	where inner_d.nationality = d.nationality
);

-- Select the maximum movie length for each different movie language:

-- The inner query:
select max(movie_length) from movies mo2
where mo2.movie_lang = mo1.movie_lang;

-- Together:
select mo1.movie_name, mo1.movie_lang, mo1.movie_length from movies mo1
where mo1.movie_length =(
	select max(movie_length) from movies mo2
	where mo2.movie_lang = mo1.movie_lang
);


-- Challenges:
--1. Select the first name, last name and date of birth for the oldest actors of each gender.
select a1.first_name, a1.last_name, a1.date_of_birth from actors a1
where a1.date_of_birth = (
	select min(date_of_birth) from actors a2
	where a2.gender = a1.gender
);

--2. Select movie_name, movie_length, and age_certificate for movies...
-- 	 ...with an above average length for their age certificate.
select m1.movie_name, m1.movie_length, m1.age_certificate from movies m1
where m1.movie_length > (
	select avg(m2.movie_length) from movies m2
	where m2.age_certificate = m1.age_certificate
)
order by m1.age_certificate;

-- For each row in the outer query, will run the inner query
