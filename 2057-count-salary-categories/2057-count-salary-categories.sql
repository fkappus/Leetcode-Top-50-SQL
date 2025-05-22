# Write your MySQL query statement below
SELECT 'Low Salary' AS category, count(*) as accounts_count
FROM Accounts
WHERE income < 20000
UNION ALL
    SELECT 'Average Salary' AS category, count(*) as accounts_count
    FROM Accounts
    WHERE income BETWEEN 20000 AND 50000
UNION ALL
    SELECT 'High Salary' AS category, count(*) as accounts_count
    FROM Accounts
    WHERE income > 50000

#FAILED ATTEMPT
#SELECT
#CASE 
#    WHEN income < 20000 THEN "Low Salary"
#    WHEN income > 50000 THEN "High Salary"
#    ELSE "Average Salary"
#    END
#    AS category,
#IFNULL(COUNT(account_id),0) as account_count
#FROM Accounts
#GROUP BY category