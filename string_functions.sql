
-- string functions --

# Length

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
order by 2;  # 2-> length

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

-- for space --
SELECT TRIM('    SKY      ');

-- slecting characters --

SELECT first_name,
LEFT(first_name,4)
FROM employee_demographics;

-- Substrings --

SELECT first_name,
LEFT(first_name,4),
RIGHT(first_name, 4),
substring(first_name,3,2),
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

-- Replace --

SELECT first_name, REPLACE(first_name,'a','z')
FROM employee_demographics;

-- Locate--

SELECT LOCATE('x','Alexender');

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics;

-- concat --

SELECT first_name, last_name,
CONCAT(first_name,' ',last_name) as Full_name
FROM employee_demographics









 

