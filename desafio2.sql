SELECT 
	COUNT(ca.musica_id) AS cancoes, 
  COUNT(DISTINCT ar.artist_id) AS artistas, 
  COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.musicas AS ca
INNER JOIN SpotifyClone.albuns AS al
ON ca.id_album = al.album_id
INNER JOIN  SpotifyClone.artistas AS ar
ON ar.artist_id = al.id_artista;