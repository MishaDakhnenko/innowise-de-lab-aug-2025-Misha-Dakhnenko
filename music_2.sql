SELECT t.track_name, COUNT(*) AS skips
FROM fact_playback f
JOIN dim_track t ON f.track_sk = t.track_sk
WHERE f.skip_flag = TRUE
GROUP BY t.track_name
ORDER BY skips DESC;