-- Case statements--

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 58 THEN 'Experienced'
    WHEN age >= 58 THEN 'Retirement'
END as Age_analysis
FROM employee_demographics;

-- Pay Increase and Bonus--
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance department = 10% bonus

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END as New_salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END as Bonus
FROM employee_salary;

-- select * FROM parks_departments;
-- select * FROM employee_salary;





