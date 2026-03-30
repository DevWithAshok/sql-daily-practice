SELECT
  NAME,
  COUNT(SCORE) AS half_centuries
FROM
  Player_Match_Details
WHERE
  SCORE > 50
GROUP BY
  NAME
ORDER BY
  half_centuries DESC;
