SELECT * FROM parks_and_recreation.employee_demographics;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1980-10-15';

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender = 'Female';

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender = 'Female' 
AND age<45 ;


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name='leslie' AND age=44) OR age>55
;

# LIKE statement [% or _]

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%er%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%';


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%';


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1989-03-%';
