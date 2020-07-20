-- Limiting the number of records returned

/*
SELECT columnname1, columnname2 FROM tablename
LIMIT N;
*/

SELECT * FROM movie_revenues;

-- select lowest 3 domestic takings
SELECT * FROM movie_revenues
ORDER BY domestic_takings
LIMIT 3;

-- Offsets (skip)
-- select first 5 after skipping 3
SELECT * FROM movie_revenues
ORDER BY revenue_id
LIMIT 5 OFFSET 3;
