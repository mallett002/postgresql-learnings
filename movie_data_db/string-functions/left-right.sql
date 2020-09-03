-- LEFT AND RIGHT STRING FUNCTIONS

/*
SELECT LEFT('string', int);

SELECT LEFT(column_name, int) FROM table_name;

"Same for RIGHT"
*/

select left('hi how are ya', 6); --> hi how
select right('hi how are ya', 6); --> are ya

select left('burpsquirts', 1); --> b
select left('burpsquirts', -1); --> burpsquirt
-- counts backwards (same as right())

select left(movie_name, 5) as first_five_chars from movies;
select right(movie_name, 5) as last_five_chars from movies;
