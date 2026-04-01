# Day 14 - AVG, SUM and HAVING in SQL

## Topic

Using AVG, SUM, GROUP BY and HAVING clause

## SQL Query

```sql
SELECT
  NAME,
  AVG(SCORE) AS avg_score,
  SUM(SIXES) AS total_sixes
FROM
  PLAYER_MATCH_DETAILS
GROUP BY
  NAME
HAVING
  AVG_SCORE > 50
ORDER BY
  NAME ASC;
```

## Explanation

This query retrieves:

* Player name
* Average score of each player
* Total number of sixes hit by each player

## Query Breakdown

### AVG

Calculates the average score for each player.

### SUM

Calculates total sixes for each player.

### GROUP BY

Groups records based on player name.

### HAVING

Filters grouped results where average score is greater than 50.

### ORDER BY

Sorts player names in ascending order.

## Example Output

| NAME  | avg_score | total_sixes |
| ----- | --------- | ----------- |
| Rohit | 55.4      | 32          |
| Virat | 60.2      | 28          |

## Learning Outcome

* Learned AVG function
* Learned SUM function
* Learned HAVING clause
* Filtering aggregated results
