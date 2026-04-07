/* Lists all the employees from the healthcare and finance departments using union using data from the employee record table. */
SELECT 
	emp_id AS ID, 
    CONCAT(first_name, ' ', last_name) AS Name, 
    dept AS Department
FROM 
	emp_record
WHERE 
	dept = 'healthcare' 
UNION 
SELECT 
    emp_id AS ID, 
    CONCAT(first_name, ' ', last_name) AS Name, 
    dept AS Department
FROM 
    emp_record
WHERE 
	dept = 'finance';