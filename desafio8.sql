SELECT 
	ar.artist_name AS artista, 
	al.album_name AS album
FROM SpotifyClone.artist AS ar
INNER JOIN SpotifyClone.album AS al
ON al.artist_id = ar.id
WHERE artist_name = 'Elis Regina'
GROUP BY artista, album
ORDER BY album;