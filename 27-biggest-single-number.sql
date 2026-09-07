SELECT MAX(num) AS num  FROM MyNumbers
WHERE num IN (
    SELECT num AS single_num FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) < 2
)