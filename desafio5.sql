SELECT m.nome AS cancao, COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.musica AS m
INNER JOIN SpotifyClone.historico AS h
ON m.musica_id = h.musica_id
GROUP BY m.musica_id
ORDER BY COUNT(h.musica_id) DESC, m.nome
LIMIT 2;