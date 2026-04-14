# Day 24 - JOIN with GROUP BY and HAVING

## Topic

Using JOIN with GROUP BY and HAVING clause

## SQL Query

```sql
SELECT
  student.full_name,
  count(student_course.course_id) AS no_of_courses
FROM
  student
  INNER JOIN student_course ON student.id = student_course.student_id
GROUP BY
  student.id
HAVING
  no_of_courses >= 2;
```

## Explanation

This query retrieves:

* Student full name
* Number of courses enrolled by each student

Only students enrolled in two or more courses are displayed.

## Query Breakdown

### INNER JOIN

Joins student table with student_course table using student ID.

### COUNT

Counts number of courses for each student.

### GROUP BY

Groups records based on student ID.

### HAVING

Filters students who enrolled in at least two courses.

## Example Output

| full_name | no_of_courses |
| --------- | ------------- |
| John      | 2             |
| Smith     | 3             |

## Learning Outcome

* Learned JOIN with aggregation
* Learned GROUP BY with JOIN
* Learned HAVING clause
* Practiced multi-table aggregation
