# Day 27 - INNER JOIN with Date Filtering and HAVING

## Topic

Using JOIN with date filtering and aggregation

## SQL Query

```sql id="d7k3lp"
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
```

## Explanation

This query retrieves:

* User ID
* User name
* Number of posts made by each user

Only for posts created in January 2021 and users who made at least 2 posts.

## Query Breakdown

### INNER JOIN

Joins user and post tables based on user ID.

### WHERE Clause

Filters posts:

* Year = 2021
* Month = January

### COUNT

Counts number of posts per user.

### GROUP BY

Groups records based on user ID.

### HAVING

Filters users with at least 2 posts.

### ORDER BY

Sorts by:

* posts_count (descending)
* user_id (ascending)

## Learning Outcome

* Learned date filtering using strftime
* Practiced JOIN with aggregation
* Used HAVING with conditions
* Combined multiple SQL concepts
