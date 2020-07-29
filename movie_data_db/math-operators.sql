-- Using Math operators

/*
There are many more to use, but here are the main ones:
"+", "-", "/", "*", "%"
*/

-- add 5 + 6 and return in column named "addition":
SELECT 5 + 6 AS addition;

SELECT 8 - 3 AS subtraction;

SELECT 30 / 3 AS division;

select 20 / 4 as my_answer; -- whole number (5)

SELECT 4 * 6 AS multiplication;

SELECT 15 % 4 AS modulus; -- 3

-- Can use math operators on our columns:
-- get total takings and put in column named "total_takings" 
SELECT movie_id, (domestic_takings + international_takings)
AS total_takings
FROM movie_revenues;
-- If one is null, it will return null...
