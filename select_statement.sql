SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
last_name,
birth_date,
age,
age+10
FROM parks_and_recreation.employee_demographics;

# Use of Distinct

SELECT DISTINCT age,gender
FROM parks_and_recreation.employee_demographics;
