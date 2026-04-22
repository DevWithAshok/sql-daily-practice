# Day 32 - Subquery with Calculation

## Topic

Using subquery inside SELECT for calculations

## SQL Query

```sql id="v5k9ps"
SELECT
  name,
  (
    SELECT
      AVG(rating)
    FROM
      product
    WHERE
      category = "MOBILE"
  ) - rating AS rating_variance
FROM
  product
WHERE
  category = "MOBILE";
```

## Explanation

This query retrieves:

* Product name
* Difference between average rating and individual product rating

Only for products in the MOBILE category.

## Query Breakdown

### Subquery

Calculates the average rating of all MOBILE category products.

### Main Query

For each product:

* Subtracts its rating from the average rating
* Produces rating variance

### WHERE Clause

Filters only MOBILE category products.

## Example Output

| name      | rating_variance |
| --------- | --------------- |
| Product A | 0.5             |
| Product B | -0.3            |

## Learning Outcome

* Learned subquery in SELECT
* Performed calculations using subquery
* Compared row value with aggregate value
* Practiced analytical SQL queries
