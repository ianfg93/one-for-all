SELECT 
    a.nome_artista AS artista,
    b.nome_album AS album,
    COUNT(c.id_artista) AS seguidores
FROM
    SpotifyClone.album AS b
        INNER JOIN
    SpotifyClone.artista AS a ON b.id_artista = a.id_artista
        INNER JOIN
    SpotifyClone.seguindo_artistas AS c ON b.id_artista = c.id_artista
GROUP BY b.id_album
ORDER BY seguidores DESC , artista , album;