SELECT COUNT(DISTINCT cart_user) AS cart_not_users
FROM (SELECT user_id as cart_user FROM userbehavior WHERE behavior_type='cart') t_cart
WHERE cart_user NOT IN(SELECT user_id FROM userbehavior WHERE behavior_type='buy');