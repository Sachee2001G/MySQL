-- Stored Procudeures --

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();


CREATE PROCEDURE large_salaries2()
SELECT *
FROM employee_salary
WHERE salary >= 50000;
SELECT * 
FROM employee_salary
WHERE salary >= 10000;

DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT * 
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;
CALL large_salaries3();

-- Passing objects --
DELIMITER $$
CREATE PROCEDURE large_salaries4(employee_ID INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = employee_ID
    ;
END $$
DELIMITER ;

CALL large_salaries4(1)
 



