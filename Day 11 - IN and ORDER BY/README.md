# Day 11 - IN Operator and ORDER BY in SQL

## Topic

Using IN operator and ORDER BY clause

## SQL Query

```sql
SELECT
  *
FROM
  PRODUCT
WHERE
  brand IN ("Roadster", "Levi's", "Puma")
ORDER BY
  price ASC;
```

## Explanation

This query retrieves:

* Products from brands:

  * Roadster
  * Levi's
  * Puma

Then sorts them by **price in ascending order**

## Condition Breakdown

### IN Operator

* `IN` is used instead of multiple OR conditions
* Cleaner and more readable

Instead of:

```
brand = "Roadster"
OR brand = "Levi's"
OR brand = "Puma"
```

We use:

```
brand IN ("Roadster", "Levi's", "Puma")
```

### ORDER BY

* `ASC` → Ascending order (Low to High price)
* `DESC` → Descending order (High to Low price)

## Learning Outcome

* Learned IN operator
* Learned ORDER BY
* Learned sorting results
* Improved query readability

---

Daily SQL Learning Challenge 
