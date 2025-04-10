#GROUP-BY

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation,salary
FROM employee_salary
GROUP BY occupation,salary;

# ORDER-BY  -> ASC / DESC

SELECT *
FROM employee_demographics
ORDER BY first_name asc;

SELECT *
FROM employee_demographics
ORDER BY first_name desc;

SELECT *
FROM employee_demographics
ORDER BY gender, age desc;

# We can give by column position

SELECT *
FROM employee_demographics
ORDER BY 5, 4;    
# 5-> Gender 4->Age




