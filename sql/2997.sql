SELECT
  de.nome AS "Departamento",
  tv.nome AS "Empregado",
  tv.tot_vencimento AS "Salario Bruto",
  td.tot_desconto AS "Total Desconto",
  CASE WHEN ROUND(SUM(tv.tot_vencimento) - COALESCE(SUM(td.tot_desconto), 0), 2) = 0 THEN '0' ELSE ROUND(SUM(tv.tot_vencimento) - COALESCE(SUM(td.tot_desconto), 0), 2) END AS "Salario Liquido"
FROM
  (
    SELECT 
      e.matr, 
      e.nome, 
      e.lotacao, 
      e.lotacao_div, 
      COALESCE(SUM(v.valor), 0) as tot_vencimento 
    FROM 
      empregado e 
    LEFT JOIN 
      emp_venc ev 
      ON e.matr = ev.matr 
    LEFT JOIN vencimento v 
      ON v.cod_venc = ev.cod_venc 
    GROUP BY 
      e.matr, e.nome, e.lotacao, e.lotacao_div
  ) AS tv
    LEFT JOIN
  (
    SELECT 
      e.matr, 
      e.nome, 
      e.lotacao, 
      e.lotacao_div, 
      COALESCE(SUM(d.valor), 0) as tot_desconto
    FROM 
      empregado e 
    LEFT JOIN 
      emp_desc ed
      ON e.matr = ed.matr 
    LEFT JOIN desconto d
      ON ed.cod_desc = d.cod_desc 
    GROUP BY 
      e.matr, e.nome, e.lotacao, e.lotacao_div
  ) AS td
    ON tv.matr = td.matr
  INNER JOIN
    departamento de
  ON
    de.cod_dep = tv.lotacao
GROUP BY  
  de.nome, tv.nome, tv.tot_vencimento, td.tot_desconto
ORDER BY "Salario Liquido" DESC;