# Day 29 - Aggregation with HAVING

## Topic

Using multiple aggregation functions with HAVING clause

## SQL Query

```sql id="y3n8vp"
SELECT
  movie_director.director_id,
  COUNT(movie_id) AS no_of_movies,
  AVG(rating) AS avg_rating
FROM
  movie
  INNER JOIN movie_director ON movie_director.movie_id = movie.id
GROUP BY
  movie_director.director_id
HAVING
  COUNT(movie_id) >= 2
  AND AVG(rating) > 8
ORDER BY
  no_of_movies DESC,
  director_id ASC;
```

## Explanation

This query retrieves:

* Director ID
* Number of movies directed
* Average rating of those movies

Only for directors who:

* Directed at least 2 movies
* Have an average rating greater than 8

## Query Breakdown

### INNER JOIN

Joins movie and movie_director tables.

### COUNT(movie_id)

Counts total movies per director.

### AVG(rating)

Calculates average rating of movies.

### GROUP BY

Groups records based on director ID.

### HAVING

Applies conditions on aggregated results:

* At least 2 movies
* Average rating greater than 8

### ORDER BY

Sorts by:

* Number of movies (descending)
* Director ID (ascending)

## Learning Outcome

* Learned multiple aggregation functions
* Practiced HAVING with multiple conditions
* Improved analytical SQL thinking
* Worked with real-world query patterns
