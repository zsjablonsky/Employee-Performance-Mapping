/* Assigns ranks to each employee based on their experience. 
Take data from the employee record table. */
SELECT 
	emp_id AS ID, 
    CONCAT(first_name, ' ', last_name) AS Name, 
    exp AS Experience, 
    RANK() OVER (ORDER BY exp desc) AS ExprienceRank
FROM 
	emp_record;