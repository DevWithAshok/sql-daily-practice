# Day 18 - EXCEPT Operator with UPPER Function

## Topic

Using EXCEPT operator and UPPER function

## SQL Query

```sql
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
```

## Explanation

This query retrieves player names who have played only for SRH.

## Query Breakdown

### UPPER Function

Converts text to uppercase for case-insensitive comparison.

### First SELECT

Retrieves player names who played for SRH.

### Second SELECT

Retrieves player names who played for teams other than SRH.

### EXCEPT

Returns players who are in the first result but not in the second result.

## Example Output

| name     |
| -------- |
| PLAYER A |
| PLAYER B |

These players played only for SRH.

## Learning Outcome

* Learned EXCEPT operator
* Learned UPPER function
* Learned case-insensitive filtering
* Practiced set operations in SQL
