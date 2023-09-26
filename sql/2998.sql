SELECT 
  co.name, 
  co.investment,
  MIN(co.month) AS month_of_payback,
  MIN(co.cum_profit - co.investment) AS return
FROM
  (
  SELECT 
    c.name,
    c.investment,
    month, 
    sum(profit) OVER (PARTITION BY client_id ORDER BY month) AS cum_profit 
  FROM 
    operations o
  INNER JOIN 
    clients c
  ON
    c.id = o.client_id
  ) AS co
WHERE
  cum_profit >= investment
GROUP BY
  co.name, co.investment
ORDER BY
  return DESC;