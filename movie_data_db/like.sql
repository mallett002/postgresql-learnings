-- Using LIKE with % and _
-- "_" is one char
-- "%" is any number of chars
/*
SELECT columnname FROM table
WHERE columnname LIKE '%pattern%';

SELECT columnname FROM table
WHERE columnname LIKE '_pattern_';
*/

-- P then any other characters
SELECT * FROM actors
WHERE first_name LIKE 'P%';

-- Pe then any ONE character
SELECT * FROM actors
WHERE first_name LIKE 'Pe_';

-- first names that end in "r"
SELECT * FROM actors
WHERE first_name LIKE '%r';

-- any first names that contain an "r"
SELECT * FROM actors
WHERE first_name LIKE '%r%';

-- any first name that contain 2 chars then "rl" then one more char
SELECT * FROM actors
WHERE first_name LIKE '__rl_';