-- Using Fetch (Return only certain num of rows)
-- similar to LIMIT
/*
SELECT column1 FROM table1
FETCH FIRST 1 ROW ONLY;
*/

-- Get only the first row
SELECT movie_id, movie_name FROM movies
FETCH FIRST ROW ONLY;
-- same here:
SELECT movie_id, movie_name FROM movies
FETCH FIRST 1 ROW ONLY;

-- Get only the first 10 rows
SELECT movie_id, movie_name FROM movies
FETCH FIRST 10 ROW ONLY;


-- OFFSETS

-- skip 8 rows then get the next 10 rows:
SELECT movie_id, movie_name FROM movies
OFFSET 8 ROWS
FETCH FIRST 10 ROW ONLY;
