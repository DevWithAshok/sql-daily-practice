SELECT
  user_id,
  user.name AS user_name,
  count(post.posted_by) AS posts_count
FROM
  user
  INNER JOIN post ON user.user_id = post.posted_by
WHERE
  strftime("%Y", posted_at) = "2021"
  AND strftime("%m", posted_at) = "01"
GROUP BY
  user_id
HAVING
  posts_count >= 2
ORDER BY
  posts_count DESC,
  user_id ASC;
