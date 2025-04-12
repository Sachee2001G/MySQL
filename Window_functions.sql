-- Window functions --

SELECT dem.first_name, dem.last_name,AVG(salary) OVER (PARTITION BY gender) AS Avg_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    

SELECT dem.first_name, dem.last_name,gender,salary,SUM(salary) OVER (PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
-- ROW_NUMBER() / RANK() / DENSE_RANK() --

SELECT dem.employee_id, dem.first_name, dem.last_name,gender,salary,
row_number() OVER(partition by gender Order by salary desc) as row_num,
rank() OVER(partition by gender order by salary desc) rank_num,
dense_rank() OVER(partition by gender order by salary desc) dense_rank_num
From employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;
    

    
  