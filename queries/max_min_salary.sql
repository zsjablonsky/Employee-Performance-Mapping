/* Calculates the minimum and the maximum salary of the employees in each role. */
SELECT 
	role AS Role, 
    MAX(salary) AS HighestSalary, 
    MIN(salary) AS LowestSalary
FROM 
	emp_record
GROUP BY 
	role;
