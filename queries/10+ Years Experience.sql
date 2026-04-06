/* Nested query to find employees with experience of more than ten years. */
SELECT 
	*
FROM
    (SELECT 
		emp_id AS ID, 
        CONCAT(first_name, ' ', last_name) AS Name,
        exp AS Experience
	FROM 
		emp_record
	WHERE 
		exp > 10
	ORDER BY
		exp desc) 
	AS MoreThan10YrsExp;
