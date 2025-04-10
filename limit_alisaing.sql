# limit

SELECT * 
FROM parks_and_recreation.employee_demographics
order by age DESC
LIMIT 3, 1    # start at position 3 and take 1 after
;

# aliasing

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics.parks_and_recreation
GROUP BY gender
HAVING avg_age > 40;

