# Write your MySQL query statement below
SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM
    Employee e
    JOIN Department d ON e.departmentId = d.id
WHERE
    (
        SELECT COUNT(DISTINCT salary)
        FROM Employee e2
        WHERE e2.departmentId = e.departmentId AND e2.salary >= e.salary
    ) <= 3
ORDER BY
    Department, Salary DESC;
    
/*
WITH IT AS (
    SELECT 
    d.name as Department,
    e.name as Employee,
    e.salary as Salary, 
    DENSE_RANK() OVER (ORDER BY e.salary DESC) as Rank_Salary
FROM Employee e
JOIN Department d ON e.departmentId = d.id
WHERE d.name = 'IT'
),

Sales as (
    SELECT 
    d.name as Department,
    e.name as Employee,
    e.salary as Salary, 
    DENSE_RANK() OVER (ORDER BY e.salary DESC) as Rank_Salary
FROM Employee e
JOIN Department d ON e.departmentId = d.id
WHERE d.name = 'Sales'
)

SELECT
    Department,
    Employee,
    Salary
FROM IT
WHERE Rank_Salary <= 3

UNION ALL

SELECT
    Department,
    Employee,
    Salary
FROM Sales
WHERE Rank_Salary <= 3
*/