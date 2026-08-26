SELECT 
a.machine_id,
ROUND(AVG(ac.timestamp - a.timestamp), 3) AS processing_time
FROM Activity a
JOIN Activity ac
WHERE ac.machine_id = a.machine_id 
AND ac.process_id = a.process_id 
AND ac.activity_type = 'end' AND a.activity_type = 'start'
GROUP BY a.machine_id;