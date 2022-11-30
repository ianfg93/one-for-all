SELECT 
    (SELECT 
            COUNT(id_musica)
        FROM
            musica) AS cancoes,
    (SELECT 
            COUNT(id_artista)
        FROM
            artista) AS artistas,
    (SELECT 
            COUNT(id_album)
        FROM
            album) AS albuns;
            