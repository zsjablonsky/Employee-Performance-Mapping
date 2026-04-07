/* Creates an index to improve the cost and performance of the query to find the employee whose FIRST_NAME is ‘Eric’ 
in the employee table after checking the execution plan. */
CREATE INDEX 
	first_name_index 
ON
	emp_record(first_name);

SHOW INDEXES FROM 
	emp_record;

SELECT 
	* 
FROM 
	emp_record 
WHERE 
	first_name = 'Eric';

EXPLAIN ANALYZE SELECT * FROM emp_record WHERE FIRST_NAME = 'Eric';
