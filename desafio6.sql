SELECT 
	  MIN(p.preco) AS 'faturamento_minimo', 
    MAX(p.preco) AS 'faturamento_maximo',
	  ROUND(AVG(p.preco), 2) AS 'faturamento_medio',
    SUM(p.preco) AS 'faturamento_total'
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
ON p.plano_id = u.id_plano;