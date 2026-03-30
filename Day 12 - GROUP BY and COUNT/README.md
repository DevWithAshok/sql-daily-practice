# Day 12 - GROUP BY and COUNT in SQL

## Topic

Using GROUP BY with COUNT function

## SQL Query

```sql
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
```

## Explanation

This query retrieves:

* Player names
* Number of half centuries (Score > 50)

## Query Breakdown

### WHERE

* Filters scores greater than 50

### GROUP BY

* Groups records based on player name

### COUNT

* Counts number of half centuries per player

### ORDER BY

* Sorts players by highest half centuries

## Example Output

| NAME  | half_centuries |
| ----- | -------------- |
| Virat | 10             |
| Rohit | 8              |
| Dhoni | 6              |

## Learning Outcome

* Learned GROUP BY
* Learned COUNT function
* Learned aggregation
* Learned sorting aggregated results

---

Daily SQL Learning Challenge 
