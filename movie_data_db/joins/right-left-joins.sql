-- Left Joins
/*
SELECT t1.column1, t1.column2, t2.column1 FROM table1 t1
LEFT JOIN table2 t2 ON t1.column3 = t2.column3;
*/

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
LEFT JOIN movies mo ON d.director_id = mo.director_id;

-- With WHERE clause
SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
LEFT JOIN movies mo ON d.director_id = mo.director_id
WHERE d.nationality = 'British';


-- Right Joins
/*
SELECT t1.column1, t1.column2, t2.column1 FROM table1 t1
RIGHT JOIN table2 t2 ON t1.column3 = t2.column3;
*/

-- All the data from table2, and only matching data from table1
SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
RIGHT JOIN movies mo ON d.director_id = mo.director_id;


SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
RIGHT JOIN movies mo ON d.director_id = mo.director_id
WHERE mo.age_certificate = '18';
