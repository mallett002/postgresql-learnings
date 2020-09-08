-- SPLIT_PART Function

/*
select SPLIT_PART('string', 'delimiter', 'field_number');

select SPLIT_PART(column_name, 'delimiter', 'field_number') from table_name;
*/


select SPLIT_PART('george.forman@gmail.com', '@', 1); --> 'george.forman'

-- Get first word from the movie names
select movie_name, split_part(movie_name, ' ', 1) from movies;
