# Day 26 - RIGHT JOIN with GROUP BY

## Topic

Using RIGHT JOIN with aggregation

## SQL Query

```sql id="f8q1bn"
SELECT
  user_id,
  user.name AS user_name,
  count(post_id) AS posts_count
FROM
  post
  RIGHT JOIN user ON post.posted_by = user.user_id
GROUP BY
  user.user_id
ORDER BY
  posts_count DESC,
  user_id ASC;
```

## Explanation

This query retrieves:

* User ID
* User name
* Number of posts made by each user

Including users who have not made any posts.

## Query Breakdown

### RIGHT JOIN

Joins post with user:

* Includes all users
* Even if they have no posts

### COUNT(post_id)

Counts number of posts for each user.

### GROUP BY

Groups records based on user ID.

### ORDER BY

Sorts results by:

* posts_count in descending order
* user_id in ascending order

## Learning Outcome

* Learned RIGHT JOIN
* Learned aggregation with joins
* Understood handling missing data
* Practiced sorting multiple columns
