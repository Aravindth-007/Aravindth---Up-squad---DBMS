USE store;
SHOW tables;
SELECT *
FROM	 customers;
SELECT *
FROM customers
ORDER BY first_name DESC;

-- How to comment a line?
-- how to see the data in the table -desc how to run a single line
-- how to run the entire script 
-- how to use SELECT query

-- Comparision opraters
-- != or <>
-- =

SELECT 1.2;

SELECT 1+2;

SELECT 100 - 55 / 2 AS value;

SELECT 100 - 50 / 2 AS 'answer value';

SELECT 171*214+625;

SELECT first_name, last_name, points , points + 10 AS 'points'
FROM customers;

USE exercise_hr;
SELECT first_name, last_name
FROM employees;

SELECT first_name, last_name, salary, salary * 15 / 100 AS 'PF'
FROM employees;

SELECT distinct department_id
FROM employees;
USE store;
SELECT *
FROM customers
WHERE state = 'FL';

USE store;
SELECT*
FROM customers
WHERE points > 3000;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01';

SELECT *
FROM customers
WHERE state !='FL';

SELECT *
FROM customers
WHERE points > 3000 OR birth_date > '1990-01-01';


-- born after 1889 or points > 1000 AND live in virginia (VA)

SELECT *
FROM customers
	WHERE birth_date > '1889-01-01' OR points > 1000 AND state = 'VA';
    
    
SELECT *
FROM customers
WHERE birth_date > '1989-01-01' AND points > 1000 OR state = 'VA';
USE store;
SELECT *
FROM customers
WHERE state ='FL' OR state = 'VA' OR state ='IN';

SELECT *
FROM products
WHERE quantity_in_stock IN(49,38,72);
SELECT *
FROM products
WHERE quantity_in_stock != 72;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' AND birth_date < '2000-01-01';

USE exercise_hr;
SELECT *
FROM employees
WHERE  NOT (salary BETWEEN 10000 AND 15000);

USE store;
SELECT *
FROM customers
WHERE  salary BETWEEN 10000 AND 15000;

SELECT *
FROM customers
WHERE  birth_date BETWEEN '1990-01-01' AND '2000-01-01';

SELECT *
FROM customers
WHERE  last_name LIKE 'MAC%';

SELECT *
FROM customers
WHERE address LIKE '%TRAIL%' OR '%AVENUE%';

SELECT *
FROM customers
WHERE phone LIKE '%9';

SELECT *
FROM customers
WHERE phone != '%9';

-- Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
USE exercise_hr;

SELECT *
FROM employees
WHERE first_name LIKE'%b%' AND first_name LIKE '%c%';

SELECT *
FROM employees
WHERE first_name LIKE '%b%c%';

-- Write a query to display the last name of employees whose names have exactly 6 characters.

SELECT *
FROM employees
WHERE last_name LIKE '______';


USE store;
-- last_names ending with y and having 5 letters
-- last_names starting with b, ending with y and have 6 letters


SELECT *
FROM customers
WHERE last_name LIKE '____y';

SELECT *
FROM customers
WHERE last_name LIKE 'b____y';

-- write a query to find all customers having last_names that contain 'age'

SELECT *
FROM customers 
WHERE last_name LIKE '%age%';

SELECT *
FROM customers 
WHERE last_name REGEXP 'age';

-- last_name starts with mac
-- last_name end with fileds

SELECT *
FROM customers 
WHERE last_name REGEXP 'mac';

SELECT *
FROM customers 
WHERE last_name REGEXP 'field$';

-- last name starts with MAc or ends with field

SELECT *
FROM customers 
WHERE last_name REGEXP '^MAc|field$';

-- last name has ae,be,ce,ee,de,fe,ge or he

SELECT *
FROM customers 
WHERE last_name REGEXP '[a-h]e';

USE store;
-- we want to have customers who have 'ge','ie' or 'me' in their
-- last names - immediate followers

SELECT *
 FROM  customers
 WHERE last_name REGEXP '[gin]e';
 
 SELECT *
 FROM  customers
 WHERE last_name REGEXP 'ge|ie|me';
 
 -- last_names ends with EY or ON
 SELECT *
 FROM  customers
 WHERE last_name REGEXP 'EY$|ON$';
 
 -- last names start with MY or contains SE
 SELECT *
 FROM  customers
 WHERE last_name REGEXP 'MY|SE';
 
 -- last names contains B followed by R or U 
 SELECT *
 FROM  customers
 WHERE last_name REGEXP 'B[R|U]';
 -- last names contains br or bu
 SELECT *
 FROM  customers
 WHERE last_name REGEXP 'br|bu';
 
  SELECT *
 FROM  customers
 WHERE last_name REGEXP 'b[ru]';
 -- last names contains B followed by R or U 
   SELECT *
 FROM  customers
 WHERE last_name REGEXP 'b[a-z]*[ru]';
 
 
 -- NULL operater
 -- select customers where phone is Null
 SELECT *
 FROM  customers
 WHERE phone IS NULL;
 
 -- IS use for Null
 
 -- Select customers where phone is not NULL
 
  SELECT *
 FROM  customers
 WHERE phone IS NOT NULL;
 
 -- Select customers where shipped and shipers ID
 
 USE store;
SELECT *
 FROM  customers
 WHERE order_id IS NULL;
 
-- limit type
USE store;
SELECT *
FROM customers 
LIMIT 3;

-- Exrecise: grt top 3 loyal customers 
-- the LIMIT clause should always come at the end
-- The order of the matter: SELECT -> FROM -> optionaly WHERE -> optionaly ORDER BY -> LIMIT
-- Not following the order gives error.

SELECT *
FROM customers 
ORDER BY points DESC
LIMIT 3;

USE exercise_hr;
SELECT *
FROM employees;

EXPLAIN 
SELECT *
FROM employees;
 
 SELECT *
 FROM employees
 WHERE first_name = "Lex";
 
  SELECT *
 FROM employees
 WHERE employee_id = 102;
 
 EXPLAIN SELECT *
 FROM employees
 WHERE last_name = 'de Haan';
 
 SELECT *
 FROM employees
 WHERE last_name = 'de Haan';
 
 SELECT *
 FROM employees
 WHERE last_name = 'taylor';
 
 
 -- If the argument is greater than the number of customers, then we get all the customers.
-- Pagination
-- page 1: 1-3
-- page 2: 4-6
-- page 3: 7-9
-- Get customers on Page 3


 

 
 -- Write a query to get the total salaries payable to employees.
USE exercise_hr;
 SELECT *
 FROM employees
 WHERE salary;
 
 -- Write a query to get the maximum and minimum salary from employees table.
 
 
-- create new table and delete table and rename table topic.


-- Add a new column 'whatsapp_no' with datatype int
-- Update the 'whatsapp_no' column datatype from int to varchar(20)
-- Delete the 'whatsapp_no' column
-- rename the 'dob' column to 'date_of_birth'
 
 
 
  -- important topic 
 USE exercise_hr;
 -- INNER JOIN
 SELECT*
 FROM employees INNER JOIN departments
 ON employees.department_id = departments.department_id;
 
  SELECT employee_id, first_name, last_name, d.department_id, department_name
 FROM employees AS e INNER JOIN departments AS d
 ON e.department_id = d.department_id;


-- find all the employees working in the 'IT' department
 
  SELECT employee_id, first_name, last_name, e.department_id, department_name
 FROM employees AS e INNER JOIN departments AS d
 ON e.department_id = d.department_id
  WHERE department_name = 'IT';
  
  
 -- Write a query to find the name (first_name, last name), department ID and name of all the employees.
 SELECT employee_id ,first_name, last_name, e.department_id
 FROM employees AS e INNER JOIN departments AS d
 ON e.department_id = d.department_id
  WHERE department_name = 'IT';
  
  
  USE exercise_hr;
  SELECT * 
  FROM  employees INNER JOIN departments
  ON employees.department_id = departments.department_id;
  
  -- find the count of employees in every department
  SELECT department_id, COUNT(*) as employee_count
  FROM employees
  GROUP BY department_id;
  
  
  
  
  -- Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.
 
  SELECT employee_id ,first_name, last_name,location_id, e.department_id
 FROM employees AS e INNER JOIN departments AS d
 ON e.department_id = d.department_id
  WHERE department_name = 'IT';
  
  -- class date
  -- 14/03/2023
    
  
  
  
  
  
  
  
  




























