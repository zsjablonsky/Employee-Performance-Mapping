/* Concatenates the FIRST_NAME and the LAST_NAME of employees in the Finance department from the employee table 
and then give the resultant column alias as NAME. */
SELECT 
	CONCAT(first_name, ' ', last_name) AS Name, 
	dept AS Department
FROM 
	emp_record
WHERE 
	dept = 'Finance';