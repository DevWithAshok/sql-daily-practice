SELECT
  movie_director.director_id,
  count(movie_id) AS no_of_movies,
  avg(rating) AS avg_rating
FROM
  movie
  INNER JOIN movie_director ON movie_director.movie_id = movie.id
GROUP BY
  movie_director.director_id
HAVING
  count(movie_id) >= 2
  AND avg(rating) > 8
ORDER BY
  no_of_movies DESC,
  director_id ASC;
