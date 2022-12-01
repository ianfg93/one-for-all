SELECT 
    FORMAT(MIN(valor_plano), 2) AS faturamento_minimo,
    FORMAT(MAX(valor_plano), 2) AS faturamento_maximo,
    FORMAT(AVG(valor_plano), 2) AS faturamento_medio,
    FORMAT(SUM(valor_plano), 2) AS faturamento_total
FROM
    SpotifyClone.plano AS a
        INNER JOIN
    SpotifyClone.usuario AS b ON a.id_plano = b.id_plano