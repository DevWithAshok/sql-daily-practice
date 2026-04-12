# Day 22 - NATURAL JOIN in SQL

## Topic

Using NATURAL JOIN to combine tables

## SQL Query

```sql
SELECT
  *
FROM
  course NATURAL
  JOIN instructor;
```

## Explanation

This query retrieves data by joining the course and instructor tables using NATURAL JOIN.

## NATURAL JOIN

* Automatically joins tables based on common column names
* No need to specify join condition
* Common columns must exist in both tables

## Example

If both tables contain:

* instructor_id
* department_id

NATURAL JOIN automatically joins using these columns.

## Example Output

| course_id | course_name | instructor_name | department |
| --------- | ----------- | --------------- | ---------- |

## Learning Outcome

* Learned NATURAL JOIN
* Learned automatic join conditions
* Practiced table relationships
