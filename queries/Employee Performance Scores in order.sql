/* Displays each employee’s details with the maximum EMP_RATING in their respective department. */
SELECT 
	* 
FROM 
	emp_record
ORDER BY 
	emp_rating desc;

SELECT 
	emp_id AS ID, 
    CONCAT(first_name, ' ', last_name) AS Name, 
    role AS Role, 
    dept AS Department, 
    emp_rating AS Rating, 
	MAX(emp_rating) OVER (PARTITION BY dept) AS MaxRating
FROM 
	emp_record
ORDER BY 
	dept, 
    emp_rating desc;