/* Fetches EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and  DEPARTMENT from the employee record table, 
and makes a list of employees and details of their department. */
SELECT 
	emp_id AS ID, 
	CONCAT(first_name, ' ', last_name) AS Name, 
	gender AS Gender, 
    dept AS Department, 
	role AS Role
FROM 
	emp_record
ORDER BY 
	dept;

