# Day 23 - INNER JOIN with WHERE Clause

## Topic

Using INNER JOIN with filtering condition

## SQL Query

```sql
SELECT
  course.name AS course_name,
  review.student_id,
  review.content
FROM
  review
  INNER JOIN course ON course.id = review.course_id
WHERE
  course_name = "Cyber Security";
```

## Explanation

This query retrieves:

* Course name
* Student ID
* Review content

Only for the course "Cyber Security".

## Query Breakdown

### INNER JOIN

Joins review table with course table using course ID.

### WHERE Clause

Filters records where course name is "Cyber Security".

### Column Alias

course.name is renamed as course_name for readability.

## Learning Outcome

* Learned INNER JOIN with filtering
* Learned column alias
* Practiced multi-table queries
