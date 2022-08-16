SELECT m.nome AS cancao, COUNT(h.id_usuario) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historicoUsuario AS h
ON m.musica_id = h.id_musica
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;