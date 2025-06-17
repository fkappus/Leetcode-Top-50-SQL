# Write your MySQL query statement below
WITH CTE AS(
    SELECT
    p.product_name as product_name,
    o.unit as unit
FROM Orders o
JOIN Products p USING (product_id)  
WHERE EXTRACT(YEAR FROM o.order_date) = 2020
    AND EXTRACT( MONTH FROM o.order_date) = 2
)

SELECT
    product_name,
    SUM(unit) as unit
FROM CTE
GROUP BY product_name
HAVING unit >= 100