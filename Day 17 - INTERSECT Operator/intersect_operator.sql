SELECT
  name
FROM
  player
WHERE
  played_for_team = "CSK"
INTERSECT
SELECT
  name
FROM
  player
WHERE
  played_for_team = "RCB";
