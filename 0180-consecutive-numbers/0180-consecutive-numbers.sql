# Write your MySQL query statement below
SELECT DISTINCT
    num as ConsecutiveNums
FROM (
    SELECT num,
    CASE 
        WHEN num = LAG(num,1) OVER (ORDER BY id)
        AND num = LAG(num,2) OVER (ORDER BY id)
        THEN 1 ELSE 0
    END AS streak
    FROM Logs 
) AS t
WHERE streak = 1