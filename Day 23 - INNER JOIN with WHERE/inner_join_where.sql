SELECT
  course.name AS course_name,
  review.student_id,
  review.content
FROM
  review
  INNER JOIN course ON course.id = review.course_id
WHERE
  course_name = "Cyber Security";
