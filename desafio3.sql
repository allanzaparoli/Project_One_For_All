SELECT u.usuario AS usuario, COUNT(h.musica_id) AS qt_de_musicas_ouvidas, ROUND(SUM(m.duracao/60),2) AS total_minutos
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musica AS m
ON h.musica_id = m.musica_id
GROUP BY u.usuario
ORDER BY u.usuario;