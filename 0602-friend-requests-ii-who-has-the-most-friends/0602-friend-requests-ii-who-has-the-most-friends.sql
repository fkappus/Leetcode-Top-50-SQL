# Write your MySQL query statement below

/*WITH num_requester AS (
    SELECT
    requester_id as id,
    COUNT(requester_id) as rnum
FROM RequestAccepted
GROUP BY id
),
num_accepter AS (
    SELECT
    accepter_id as id,
    COUNT(accepter_id) as anum
FROM RequestAccepted
GROUP BY id
)

SELECT
    num_accepter.id,
    anum + rnum AS num
FROM num_accepter
JOIN num_requester USING(id) */

WITH base AS(
    SELECT 
        requester_id AS id 
    FROM RequestAccepted
    UNION ALL
    SELECT 
        accepter_id AS id 
    FROM RequestAccepted)

SELECT
    id,
    count(*) AS num  
    FROM base 
    GROUP BY id 
    ORDER BY num desc
    LIMIT 1