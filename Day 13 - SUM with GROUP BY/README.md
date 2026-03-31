# Day 13 - SUM with GROUP BY in SQL

## Topic

Using SUM function with GROUP BY

## SQL Query

```sql
SELECT
  NAME,
  SUM(FOURS) AS no_of_fours
FROM
  PLAYER_MATCH_DETAILS
GROUP BY
  NAME
ORDER BY
  no_of_fours DESC;
```

## Explanation

This query retrieves:

* Player name
* Total number of fours hit by each player

## Query Breakdown

### SUM

* `SUM(FOURS)` calculates total fours

### GROUP BY

* Groups records based on player name

### ORDER BY

* Sorts players based on total fours (highest first)

## Example Output

| NAME  | no_of_fours |
| ----- | ----------- |
| Virat | 120         |
| Rohit | 110         |
| Dhoni | 85          |

## Learning Outcome

* Learned SUM function
* Learned aggregation
* Practiced GROUP BY
* Sorting aggregated data

---

Daily SQL Learning Challenge
