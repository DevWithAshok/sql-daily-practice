# Day 25 - LEFT JOIN with Multiple Tables

## Topic

Using LEFT JOIN across multiple tables

## SQL Query

```sql id="n5q2wb"
SELECT
  student.id AS student_id,
  student.full_name AS student_name,
  course.id AS course_id,
  course.name AS course_name,
  score,
  enrollment_date
FROM
  (
    student
    LEFT JOIN student_course ON student.id = student_course.student_id
  ) AS T
  LEFT JOIN course ON course.id = T.course_id;
```

## Explanation

This query retrieves:

* Student details
* Course details
* Score and enrollment date

Including students who may not be enrolled in any course.

## Query Breakdown

### First LEFT JOIN

Joins student with student_course:

* Includes all students
* Even if they have no course

### Second LEFT JOIN

Joins result with course table:

* Adds course details if available

### Result

* Students without courses will still appear
* Course-related fields will be NULL

## Learning Outcome

* Learned LEFT JOIN
* Learned joining multiple tables
* Understood NULL handling in joins
* Practiced complex join queries
