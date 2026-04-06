/* A query using stored functions in the project table to check whether the job profile assigned to each employee 
in the data science team matches the organization’s set standard. The standard being:
For an employee with experience less than or equal to 2 years, assign ‘JUNIOR DATA SCIENTIST’.
For an employee with experience of more than 2 years and up to 5 years, assign ‘ASSOCIATE DATA SCIENTIST’.
For an employee with experience of more than 5 years and up to 10 years, assign ‘SENIOR DATA SCIENTIST’.
For an employee with experience of more than 10 years and up to 12 years, assign ‘LEAD DATA SCIENTIST’.
For an employee with experience of more than 12 years and up to 16 years, assign ‘MANAGER’.
*/
DELIMITER && 
CREATE FUNCTION get_standard_role(exp INT) RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
    DECLARE standard_role VARCHAR(50);
    IF exp <= 2 THEN
        SET standard_role = 'JUNIOR DATA SCIENTIST';
    ELSEIF exp > 2 AND EXP <= 5 THEN
        SET standard_role = 'ASSOCIATE DATA SCIENTIST';
    ELSEIF exp > 5 AND EXP <= 10 THEN
        SET standard_role = 'SENIOR DATA SCIENTIST';
    ELSEIF exp > 10 AND EXP <= 12 THEN
        SET standard_role = 'LEAD DATA SCIENTIST';
    ELSEIF exp > 12 AND EXP <= 16 THEN
        SET standard_role = 'MANAGER';
    END IF;
    RETURN (standard_role);
END &&
DELIMITER ;

SELECT
    emp.emp_id,
    CONCAT(emp.first_name, ' ', emp.last_name) AS Name,
    emp.exp AS Experience,
    ds.ROLE AS Role,
    get_standard_role(EMP.EXP) AS ExpectedRole,
    CASE
        WHEN ds.role = get_standard_role(emp.exp) THEN 'Matches Standard'
        ELSE 'Does Not Match Standard'
    END AS Status_Check
FROM
    emp_record EMP
JOIN
    data_science_team ds ON emp.emp_id = ds.emp_id
ORDER BY
	emp.exp desc;
