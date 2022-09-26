SELECT
	u.username AS usuario,
    COUNT(ph.users_id) AS qt_de_musicas_ouvidas,
    ROUND ((SUM(s.song_length_in_seconds)/60), 2) AS total_minutos
    FROM SpotifyClone.users AS u
    INNER JOIN SpotifyClone.playback_history AS ph
    ON u.id = ph.users_id
    INNER JOIN SpotifyClone.songs AS s
    ON s.id = ph.songs_id
    GROUP BY usuario
    ORDER BY usuario;