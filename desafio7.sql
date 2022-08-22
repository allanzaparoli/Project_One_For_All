SELECT a.nome AS artista, alb.album AS album, COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS alb
ON a.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS seg
ON a.artista_id = seg.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;