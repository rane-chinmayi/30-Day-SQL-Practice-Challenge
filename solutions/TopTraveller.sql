# Write your MySQL query statement below

SELECT u.name, 
       IFNULL(SUM(distance),0) AS travelled_distance
FROM users AS u
LEFT JOIN rides as r 
ON u.id = r.user_id
GROUP BY u.id
ORDER BY 2 DESC, 1 ASC;