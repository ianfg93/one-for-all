SELECT 
    COUNT(a.id_musica) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico AS a
        INNER JOIN
    SpotifyClone.usuario AS b ON b.id_usuario = a.id_usuario
WHERE
    nome_usuario LIKE 'Barbara Liskov';