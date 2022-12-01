SELECT 
    a.nome_usuario AS usuario,
    CASE
        WHEN YEAR(MAX(b.data_reproducao)) >= 2021 THEN 'Usuário Ativo'
        ELSE 'Usuário Inativo'
    END AS status_usuario
FROM
    SpotifyClone.usuario AS a
        INNER JOIN
    SpotifyClone.historico AS b ON b.id_usuario = a.id_usuario
GROUP BY usuario
ORDER BY usuario