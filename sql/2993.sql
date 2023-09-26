SELECT amount AS most_frequent_value
FROM (
    SELECT amount, COUNT(amount) AS qtd
    FROM value_table
    GROUP BY amount
    ORDER BY qtd DESC
    LIMIT 1
) AS subquery;