SELECT 
	  s.song_name AS nome,
    COUNT(ph.users_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.playback_history AS ph
ON s.id = ph.songs_id
INNER JOIN SpotifyClone.users AS u
ON u.id = ph.users_id
WHERE u.signature_plan_id = 1 OR u.signature_plan_id = 4
GROUP BY song_name
ORDER BY song_name;