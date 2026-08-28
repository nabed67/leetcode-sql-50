SELECT * FROM Cinema
WHERE description != 'boring' AND MOD(id, 2)
ORDER BY rating DESC;