SELECT 
    a.nome_musica AS cancao, COUNT(b.id_musica) AS reproducoes
FROM
    SpotifyClone.historico AS b
        INNER JOIN
    SpotifyClone.musica AS a ON b.id_musica = a.id_musica
GROUP BY cancao
ORDER BY reproducoes DESC , cancao
LIMIT 2
