SELECT
  director.id AS director_id,
  count(movie_director.movie_id) AS no_of_movies
FROM
  director
  RIGHT JOIN movie_director ON director.id = movie_director.director_id
  RIGHT JOIN movie ON movie_director.movie_id = movie.id
WHERE
  movie.rating > 6
GROUP BY
  director.id
HAVING
  no_of_movies >= 2
ORDER BY
  no_of_movies DESC,
  movie_director.director_id ASC;
