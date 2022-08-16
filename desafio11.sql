SELECT
    nome AS nome_musica,
    CASE
        WHEN nome LIKE '%Amar%' THEN REPLACE('O Medo de Amar é o Medo de Ser Livre', 'Amar', 'Code Review')
        WHEN nome LIKE '%SUPERSTAR' THEN REPLACE('ALIEN SUPERSTAR', 'SUPERSTAR', 'SUPERDEV')
        WHEN nome LIKE '%Bard%' THEN REPLACE('The Bard’s Song', 'Bard', 'QA')
        WHEN nome LIKE '%SOUL' THEN REPLACE("BREAK MY SOUL", 'SOUL', 'CODE')
        WHEN nome LIKE '%Pais' THEN REPLACE('Como Nossos Pais', 'Pais', 'Pull Requests')
    END AS 'novo_nome'
FROM SpotifyClone.musicas
WHERE musica_id IN(10, 3, 7, 1, 9)
ORDER BY nome DESC;