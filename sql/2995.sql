SELECT temperature, COUNT(*) AS number_of_records
FROM (
    SELECT temperature, mark,
           ROW_NUMBER() OVER (PARTITION BY mark ORDER BY id) AS seq
    FROM records
) AS subquery
GROUP BY mark, temperature
ORDER BY mark;