-- modifying tables and add a column
CREATE TABLE examples (
	example_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30)
);
	
SELECT * FROM examples;

ALTER TABLE examples
ADD COLUMN email VARCHAR(50) UNIQUE;

ALTER TABLE examples
ADD COLUMN nationality VARCHAR(30),
ADD COLUMN age INT NOT NULL;

-- modify a columns data type
ALTER TABLE examples
ALTER COLUMN nationality TYPE CHAR(3);


ALTER TABLE examples
ALTER COLUMN last_name TYPE VARCHAR(50),
ALTER COLUMN email TYPE VARCHAR(80);

SELECT * FROM examples;