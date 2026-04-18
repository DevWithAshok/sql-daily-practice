# Day 28 - Multiple JOIN with HAVING

## Topic

Using multiple joins with aggregation and filtering

## SQL Query

```sql
SELECT
  director.id AS director_id,
  COUNT(movie_director.movie_id) AS no_of_movies
FROM
  director
  INNER JOIN movie_director ON director.id = movie_director.director_id
  INNER JOIN movie ON movie_director.movie_id = movie.id
WHERE
  movie.rating > 6
GROUP BY
  director.id
HAVING
  no_of_movies >= 2
ORDER BY
  no_of_movies DESC,
  director_id ASC;
```

## Explanation

This query retrieves:

* Director ID
* Number of movies directed

Only for directors who have at least 2 movies with rating greater than 6.

## Query Breakdown

### INNER JOIN

Joins director, movie_director, and movie tables.

### WHERE Clause

Filters movies with rating greater than 6.

### COUNT

Counts number of movies per director.

### GROUP BY

Groups records based on director ID.

### HAVING

Filters directors with at least 2 movies.

### ORDER BY

Sorts by number of movies in descending order.

## Learning Outcome

* Learned multiple table joins
* Practiced aggregation with joins
* Used HAVING for filtering
* Improved query optimization
