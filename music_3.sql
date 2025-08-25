SELECT u.country, COUNT(*) AS total_plays
FROM fact_playback f
JOIN dim_user u ON f.user_sk = u.user_sk
GROUP BY u.country;