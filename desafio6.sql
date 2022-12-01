SELECT 
    ROUND(MIN(valor_plano), 2) AS faturamento_minimo,
    ROUND(MAX(valor_plano), 2) AS faturamento_maximo,
    ROUND(AVG(valor_plano), 2) AS faturamento_medio,
    ROUND(SUM(valor_plano), 2) AS faturamento_total
FROM
    SpotifyClone.plano AS a
        INNER JOIN
    SpotifyClone.usuario AS b ON a.id_plano = b.id_plano