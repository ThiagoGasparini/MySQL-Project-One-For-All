SELECT DISTINCT(u.nome) AS usuario,
	IF (MAX(YEAR(d.data_reproducao)) > 2020, 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historicoUsuario AS d
ON u.usuario_id = d.id_usuario
GROUP BY usuario
ORDER BY usuario;