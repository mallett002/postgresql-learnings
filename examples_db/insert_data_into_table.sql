-- INSERT DATA INTO A TABLE
/*

INSERT INTO tablename (columnname1, columnname2, columnname3)
VALUES ('value1','value2','value3');

*/

-- don't have to insert into example_id (it's auto generated)
INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES ('David','Mitchell','dmitch@gmail.com','GBR',43);


-- insert multiple rows
INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES
('Emily','Watson','ewatson@gmail.com','USA',29),
('Theo','Scott','tscott@gmail.com','AUS',33),
('Emily','Smith','esmith@gmail.com','GBR',29),
('Jim','Burr','jburr@gmail.com','USA',54);


SELECT * FROM examples;