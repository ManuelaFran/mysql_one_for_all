SELECT u.username AS usuario, 
IF(MAX(ph.reproduction_date) > '2021-01-01 00:00:00', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.playback_history AS ph
INNER JOIN SpotifyClone.users AS u
ON u.id = ph.users_id
GROUP BY usuario
ORDER BY usuario;