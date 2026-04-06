/* 11. Write a query to create a view that displays employees in various countries whose salary is more than six thousand. 
Take data from the employee record table. */
CREATE VIEW 
	EmpSalarybyCountry AS
		SELECT 
			emp_id ID, 
			CONCAT(first_name, ' ', last_name) Name,
			country Country,
			dept Department, 
			role Role,
			salary Salary
		FROM 
			emp_record
		WHERE 
			salary > 6000
		ORDER BY 
			country;

SELECT *
FROM EmpSalarybyCountry;