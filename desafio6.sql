SELECT 
	MIN(sp.plan_value) AS faturamento_minimo, 
    MAX(sp.plan_value) AS faturamento_maximo,
    ROUND(AVG(sp.plan_value), 2) AS faturamento_medio,
    SUM(sp.plan_value) AS faturamento_total
FROM SpotifyClone.signature_plan AS sp
INNER JOIN SpotifyClone.users AS u
ON sp.id = u.signature_plan_id;