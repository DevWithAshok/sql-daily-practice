# Day 15 - Multiple GROUP BY in SQL

## Topic

Using multiple columns in GROUP BY

## SQL Query

```sql
SELECT
  NAME,
  YEAR,
  COUNT(MATCH) AS no_of_matches,
  SUM(SCORE) AS runs_scored
FROM
  PLAYER_MATCH_DETAILS
GROUP BY
  NAME,
  YEAR
ORDER BY
  NAME ASC,
  YEAR ASC;
```

## Explanation

This query retrieves:

* Player name
* Year
* Number of matches played in that year
* Total runs scored in that year

## Query Breakdown

### GROUP BY NAME, YEAR

Groups records based on both player name and year.

### COUNT(MATCH)

Counts number of matches played by each player per year.

### SUM(SCORE)

Calculates total runs scored by each player per year.

### ORDER BY

Sorts results by:

* Player name (Ascending)
* Year (Ascending)

## Example Output

| NAME  | YEAR | no_of_matches | runs_scored |
| ----- | ---- | ------------- | ----------- |
| Rohit | 2022 | 12            | 540         |
| Rohit | 2023 | 14            | 620         |
| Virat | 2022 | 10            | 480         |

## Learning Outcome

* Learned multiple column GROUP BY
* Learned grouping by year
* Learned multiple ORDER BY columns
* Practiced aggregation on grouped data
