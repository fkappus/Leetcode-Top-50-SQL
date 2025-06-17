# Write your MySQL query statement below
WITH CTE AS (
    SELECT 
    salary,
    Dense_RANK() OVER (ORDER BY salary DESC) as rank_by_salary
FROM Employee
)

SELECT
    MAX(CASE WHEN rank_by_salary = 2 THEN salary ELSE NULL END) as SecondHighestSalary
FROM CTE