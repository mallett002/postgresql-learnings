-- Substring Function

/*
SELECT SUBSTRING('string', startIndex, howMany);

select substring('column_name', startIndex, howMany) from table_name;
*/

select substring('howdy', 2, 4); --> 'owdy'
select substring('texastoastisthebesttoast', 16, 4); --> 'best'

-- Starts at 3rd char and gets 4 chars
select first_name, substring(first_name, 3, 4) from actors; 
