# Day 20 - MAX and MIN with GROUP BY

## Topic

Using MAX and MIN aggregation functions

## SQL Query

```sql
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
```

## Explanation

This query retrieves:

* Player name
* Highest score of each player
* Lowest score of each player

Only for innings where strike rate is greater than 50.

## Query Breakdown

### MAX(SCORE)

Returns the highest score for each player.

### MIN(SCORE)

Returns the lowest score for each player.

### WHERE Clause

Filters records where strike rate is greater than 50.

Strike rate calculation:

* score divided by number of balls
* multiplied by 100

### GROUP BY

Groups records based on player name.

## Example Output

| name     | highest_score | lowest_score |
| -------- | ------------- | ------------ |
| Player A | 120           | 35           |
| Player B | 98            | 40           |

## Learning Outcome

* Learned MAX function
* Learned MIN function
* Learned strike rate calculation
* Practiced aggregation with conditions
