/* Query to calculate the average salary distribution based on the continent and country. */
SELECT
    continent,
    country,
    AVG(salary) AS AvgSalaryDist
FROM
    emp_record
GROUP BY
    continent,
    country
ORDER BY
    continent,
    country;
