SELECT category_id,
COUNT(DISTINCT CASE WHEN behavior_type='pv' THEN user_id END) AS pv_users,
COUNT(DISTINCT CASE WHEN behavior_type='buy' THEN user_id END) AS buy_users
FROM userbehavior
GROUP BY category_id
HAVING pv_users > 50
ORDER BY pv_users DESC
LIMIT 10;