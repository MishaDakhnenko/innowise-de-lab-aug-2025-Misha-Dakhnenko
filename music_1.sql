SELECT t.track_name, COUNT(*) AS completed_plays
FROM fact_playback f
JOIN dim_track t ON f.track_sk = t.track_sk
WHERE f.completed_flag = TRUE
GROUP BY t.track_name;