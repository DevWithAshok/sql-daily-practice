SELECT
  UPPER(name) AS name
FROM
  player
WHERE
  UPPER(played_for_team) = "SRH"
EXCEPT
SELECT
  UPPER(name) AS name
FROM
  player
WHERE
  UPPER(played_for_team) <> "SRH";
