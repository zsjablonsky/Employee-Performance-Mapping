/* Query to calculate the bonus for all the employees, based on their ratings and salaries 
(Use the formula: 5% of salary * employee rating). */
SELECT 
	emp_id AS ID,
    CONCAT(first_name, ' ', last_name) AS Name,
    emp_rating AS Rating,
    salary AS Salary,
    ((0.05*salary) * emp_rating) AS Bonus
FROM 
	emp_record
ORDER BY
	emp_id;