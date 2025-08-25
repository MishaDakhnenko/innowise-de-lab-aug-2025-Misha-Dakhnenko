SELECT u.source_user_id, AVG(f.played_seconds) AS avg_played_seconds
FROM fact_playback f
JOIN dim_user u ON f.user_sk = u.user_sk
GROUP BY u.source_user_id;