SELECT 
	  u.nome AS 'usuario', 
    COUNT(h.id_usuario) AS 'qt_de_musicas_ouvidas', 
    ROUND((SUM(m.duracao_segundos)/60), 2) AS 'total_minutos'
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historicoUsuario AS h
ON u.usuario_id = h.id_usuario
INNER JOIN  SpotifyClone.musicas AS m
ON m.musica_id = h.id_musica
GROUP BY usuario
ORDER BY usuario;