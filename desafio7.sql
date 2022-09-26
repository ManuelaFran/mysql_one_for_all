SELECT 
	ar.artist_name AS artista, 
  al.album_name AS album,
	COUNT(fa.users_id) AS seguidores
FROM SpotifyClone.artist AS ar
INNER JOIN SpotifyClone.album AS al
ON al.artist_id = ar.id
INNER JOIN SpotifyClone.following_artists AS fa
ON fa.artist_id = ar.id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;