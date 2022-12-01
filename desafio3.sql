SELECT 
    a.nome_usuario AS usuario,
    COUNT(b.id_usuario) AS qt_de_musicas_ouvidas,
    ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM
    SpotifyClone.usuario AS a
        INNER JOIN
    SpotifyClone.historico AS b ON a.id_usuario = b.id_usuario
        INNER JOIN
    SpotifyClone.musica AS c ON c.id_musica = b.id_musica
GROUP BY a.id_usuario
ORDER BY a.nome_usuario;