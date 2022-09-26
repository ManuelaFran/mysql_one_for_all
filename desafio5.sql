SELECT s.song_name AS cancao, COUNT(ph.users_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.playback_history AS ph
ON s.id = ph.songs_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;