-- Cast to string to use string functions

/*
select column_name::DATATYPE FROM table_name;
*/

select date_of_birth::TEXT from directors;

-- Get just the year from the date of birth:
SELECT SPLIT_PART(date_of_birth::TEXT, '-', 1) from directors;

-- using varchar with length of 3
SELECT SPLIT_PART(date_of_birth::varchar(3), '-', 1) from directors;
