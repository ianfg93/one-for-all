SELECT 
    a.nome_artista AS artista, b.nome_album AS album
FROM
    SpotifyClone.artista AS a
        INNER JOIN
    SpotifyClone.album AS b ON b.id_artista = a.id_artista
WHERE
    nome_artista LIKE 'Elis Regina';