-- Day 19
-- Topic: UNION Operator

SELECT
  DISTINCT name AS name
FROM
  player
WHERE
  UPPER(played_for_team) = "SRH"
UNION
SELECT
  DISTINCT name AS name
FROM
  player
WHERE
  UPPER(played_for_team) = "CSK"
UNION
SELECT
  DISTINCT name AS name
FROM
  player
WHERE
  UPPER(played_for_team) = "MI";
