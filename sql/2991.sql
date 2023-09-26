SELECT
  de.nome AS "Nome Departamento",
  count(matr) AS "Numero de Empregados",
  ROUND(AVG(salario), 2) AS "Media Salarial",
  ROUND(MAX(salario), 2) AS "Maior Salario",
  CASE WHEN MIN(salario) = 0 THEN '0' ELSE ROUND(MIN(salario), 2) END AS "Menor Salario"
FROM
  departamento de
INNER JOIN
  (
    SELECT 
      tv.matr,
      tv.nome,
      tv.lotacao,
      tv.lotacao_div,
      ROUND(SUM(tv.tot_vencimento) - COALESCE(SUM(td.tot_desconto), 0), 2) AS salario
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
    GROUP BY tv.matr, tv.nome, tv.lotacao, tv.lotacao_div
  ) AS sa
ON 
  sa.lotacao = de.cod_dep
INNER JOIN
  divisao di
ON
  sa.lotacao_div = di.cod_divisao
GROUP BY
  "Nome Departamento"
ORDER BY "Media Salarial" DESC;