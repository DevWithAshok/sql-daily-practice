SELECT
  DISTINCT name,
  MAX(SCORE) AS highest_score,
  MIN(SCORE) AS lowest_score
FROM
  player
WHERE
  (CAST(score AS FLOAT) / no_of_balls) * 100 > 50.0
GROUP BY
  name;
