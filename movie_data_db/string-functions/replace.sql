-- Replace Function

/*
select replace('source_string', 'old_string', 'new_string');

select replace(column_name, 'old_string', 'new_string') from table_name;

update table_name
set column_name = replace(column_name, 'old_string', 'new_string')
where column_name = 'value';
*/

-- replace all "cat" with "dog"
select replace('a cat plays with another cat', 'cat', 'dog');

-- replace all "M" gender with "Male" in a select
select first_name, last_name, replace(gender, 'M', 'Male') from actors;


-- To actually update the data in the DB:
update directors
set nationality = replace(nationality, 'American', 'USA')
where nationality = 'American';

select * from directors;


-- Change British to English:
update directors
set nationality = replace(nationality, 'Brit', 'Engl')
where nationality = 'British';
