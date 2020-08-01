-- INNER JOINS: PART 1

/*
SELECT table1.column1, table1.column2, table2.column1 FROM table1
INNER JOIN table2 ON table1.column3 = table2.column3;
*/

-- Insert new row of data into directors table:
-- This director has no movie in movies table:
INSERT INTO directors(first_name, last_name, date_of_birth, nationality)
VALUES ('Christopher', 'Nolan', '1970-07-30', 'British');

-- Join between directors table and movies table
SELECT directors.director_id, directors.first_name, directors.last_name, movies.movie_name
FROM directors
INNER JOIN movies ON directors.director_id = movies.director_id;


-- With WHERE clauses:
SELECT directors.director_id, directors.first_name, directors.last_name, movies.movie_name
FROM directors
INNER JOIN movies ON directors.director_id = movies.director_id
WHERE movies.movie_lang = 'Japanese';


-- With ORDER BY
SELECT directors.director_id, directors.first_name, directors.last_name, movies.movie_name
FROM directors
INNER JOIN movies ON directors.director_id = movies.director_id
WHERE movies.movie_lang = 'Japanese'
ORDER BY movies.movie_length;
