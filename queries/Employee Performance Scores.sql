/* Each query filters records from the EMP_RECORD table based on one of the following EMP_RATING conditions:
o	Fetch employees whose EMP_RATING is less than 2
o	Fetch employees whose EMP_RATING is greater than 4
o	Fetch employees whose EMP_RATING is between 2 and 4 */
SELECT 
	*
FROM 
	emp_record;

SELECT 
	emp_id AS ID, 
	CONCAT(first_name, ' ', last_name) AS Name,
	gender AS Gender, 
    dept AS Department, 
	emp_rating AS PerformanceRating
FROM 
	emp_record
WHERE 
	emp_rating < 2;

SELECT 
	emp_id AS ID, 
	CONCAT(first_name, ' ', last_name) AS Name, 
	gender AS Gender, 
	dept AS Department, 
	emp_rating AS PerformanceRating
FROM 
	emp_record
WHERE 
	emp_rating > 4;

SELECT 
	emp_id AS ID, 
	CONCAT(first_name, ' ', last_name) AS Name, 
	gender AS Gender, 
	dept AS Department, 
	emp_rating AS PerformanceRating
FROM 
	emp_record
WHERE 	
	emp_rating >= 2 
	AND 
    emp_rating <= 4;

