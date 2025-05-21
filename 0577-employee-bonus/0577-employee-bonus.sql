# Write your MySQL query statement below
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b ON e.empID = b.empID
WHERE BONUS < 1000 OR BONUS IS NULL;