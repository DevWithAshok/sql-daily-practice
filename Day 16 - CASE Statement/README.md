# Day 16 - CASE Statement with Aggregation

## Topic

Using CASE statement with SUM and GROUP BY

## SQL Query

```sql
SELECT
  name,
  SUM(score) AS total_score,
  CASE
    WHEN SUM(score) >= 150 THEN 'GOOD'
    WHEN SUM(score) >= 100 THEN 'AVERAGE'
    ELSE 'BELOW AVERAGE'
  END AS badge
FROM
  player
WHERE
  CAST(STRFTIME('%Y', match_date) AS INTEGER) = 2006
GROUP BY
  name
ORDER BY
  total_score DESC;
```

## Explanation

This query retrieves:

* Player name
* Total score of each player in 2006
* Performance badge based on total score

## Query Breakdown

### SUM(score)

Calculates total score of each player.

### CASE Statement

Assigns badge based on total score:

* GOOD → Score greater than or equal to 150
* AVERAGE → Score greater than or equal to 100
* BELOW AVERAGE → Score less than 100

### WHERE Clause

Filters matches played in the year 2006.

### GROUP BY

Groups records based on player name.

### ORDER BY

Sorts players by total score in descending order.

## Learning Outcome

* Learned CASE statement
* Learned conditional aggregation
* Learned date filtering
* Practiced advanced SQL query
