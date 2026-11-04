SELECT 
    user_id,
    COUNT(*) AS buy_frequency,
    MAX(FROM_UNIXTIME(timestamp)) AS last_buy_time
FROM userbehavior
WHERE behavior_type = 'buy'
GROUP BY user_id
ORDER BY buy_frequency DESC
LIMIT 10;
