SELECT a.nome AS artista, al.nome AS album, COUNT(u.id_usuario) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON al.id_artista = a.artist_id
INNER JOIN SpotifyClone.usuario_artista as u
ON u.id_artista = a.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;