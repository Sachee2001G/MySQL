-- Subqueries --

SELECT * 
FROM employee_demographics
WHERE employee_id IN
			( SELECT employee_id
              FROM employee_salary
              WHERE dept_id = 1)
;

SELECT gender, 
avg_age,
avg_max_age,
avg_min_age,
avg_count
FROM 
(SELECT gender, 
AVG(age) AS avg_age, 
MAX(age) AS avg_max_age,
MIN(age) AS avg_min_age,
COUNT(age) AS avg_count 
FROM employee_demographics
group by gender) AS Agg_table
group by gender;