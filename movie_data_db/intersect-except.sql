---------------------------------------------------------------------------------------------
-- *** INTERSECT ***
---------------------------------------------------------------------------------------------
-- "Like UNION but only returns data that are in both select statements"

/*
SELECT column1 FROM table1
INTERSECT
SELECT column1 FROM table2;
*/

-- Will return first names that are equal in directors and actors
select first_name from directors
intersect
select first_name from actors;

-- Tony (is in both)
-- Francis (is in both)... etc.

-- With clauses
select first_name from directors
intersect
select first_name from actors
order by first_name;


---------------------------------------------------------------------------------------------
-- *** EXCEPT ***
---------------------------------------------------------------------------------------------
-- Combine results of 2 queries
-- Only returns data from table one that's NOT in table two

/*
SELECT column1 FROM table1
EXCEPT
SELECT column2 FROM table2;
*/

-- Select first name from directors EXCEPT if that value is in...
-- ... the first name from actors
select first_name from directors
except
select first_name from actors;

-- With clauses:
select first_name from directors
where nationality = 'American'
except
select first_name from actors
order by first_name;
