SELECT 
s.user_id,
-- ROUND(
--     IFNULL(IFNULL(SUM(c.action = 'confirmed'), 0) / COUNT(c.action), 0), 2
-- ) AS confirmation_rate,
ROUND(AVG(COALESCE(c.action = 'confirmed', 0)), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;