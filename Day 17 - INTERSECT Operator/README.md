# Day 17 - INTERSECT Operator in SQL

## Topic

Using INTERSECT operator to find common records

## SQL Query

```sql
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
```

## Explanation

This query retrieves players who have played for both CSK and RCB teams.

## Query Breakdown

### First SELECT

Retrieves players who played for CSK.

### Second SELECT

Retrieves players who played for RCB.

### INTERSECT

Returns only common player names present in both results.

## Example Output

| name     |
| -------- |
| Player A |
| Player B |

These players have played for both CSK and RCB.

## Learning Outcome

* Learned INTERSECT operator
* Learned set operations in SQL
* Learned finding common records
* Practiced multiple SELECT queries
