SELECT DAYOFWEEK(FROM_UNIXTIME(timestamp)) AS day_of_week,
COUNT(*) AS pv_count
FROM userbehavior
WHERE behavior_type='pv'
GROUP BY DAYOFMONTH(FROM_UNIXTIME(`timestamp`))
ORDER BY day_of_week;