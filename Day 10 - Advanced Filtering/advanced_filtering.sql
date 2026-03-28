SELECT
  *
FROM
  product
WHERE
  (
    NOT name LIKE "Black%"
    AND NOT name LIKE "%Jeans"
  )
  AND (
    brand = "Puma"
    OR brand = "Nike"
    OR brand = "Levi's"
  );
