SELECT COUNT(songs_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.playback_history
WHERE users_id = 1;