/* Lists only employees who have someone reporting to them. 
Also, shows the number of reporters (including the President). */
SELECT 
	*
FROM 
	emp_record
WHERE 
	role = 'manager' 
    OR 
    role = 'president';

SELECT 
	m.emp_id AS ID, 
    CONCAT(m.first_name, ' ', m.last_name) AS Manager_Name,
    COUNT(e.emp_id) AS NumberofEmployees
FROM 
	emp_record AS e
JOIN 
	emp_record AS m 
    ON 
    e.manager_id = m.emp_id
GROUP BY 
	m.emp_id, m.first_name 
ORDER BY 
	m.manager_id;