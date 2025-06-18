# Write your MySQL query statement below
/* SELECT *
FROM Users
where mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$' 
*/
SELECT *
FROM Users
WHERE REGEXP_LIKE(mail COLLATE utf8mb3_bin, '^[A-Za-z][A-Za-z0-9_.\\-]*@leetcode(com)?\\.com$');
