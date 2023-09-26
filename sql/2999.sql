SELECT 
  emp.nome,
  emp.salario
FROM
(
  SELECT 
    tv.nome,
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
  GROUP BY tv.nome, tv.lotacao_div
) AS emp
INNER JOIN
(
  SELECT
    sa.lotacao_div,
    ROUND(AVG(salario), 2) AS "media"
  FROM
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
  GROUP BY
    sa.lotacao_div
) AS div
ON div.lotacao_div = emp.lotacao_div
WHERE
  emp.salario > div.media
AND
  emp.salario >= 8000
ORDER BY
  emp.lotacao_div;