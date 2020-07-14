-- ORDERING THE RESULTS RETURNED

/*
SELECT columnname1, columnname2 FROM tablename
ORDER BY columnname3;
*/

SELECT * FROM actors;

SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name;

-- DESC (low to high) / ASC (high to low: default)
SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name DESC;

SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name ASC;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors
ORDER BY actor_id desc;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors
ORDER BY date_of_birth DESC;

-- Add WHERE clauses before ORDER BY
SELECT actor_id, first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC;