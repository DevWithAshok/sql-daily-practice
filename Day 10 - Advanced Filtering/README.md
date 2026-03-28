# Day 10 - Advanced Filtering in SQL

## Topic

Using NOT, LIKE, AND, OR operators together

## SQL Query

```sql
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
```

## Explanation

This query retrieves:

* Products that **do NOT start with "Black"**
* Products that **do NOT end with "Jeans"**
* Only products from **Puma, Nike, or Levi's**

## Condition Breakdown

### First Condition

* `NOT name LIKE "Black%"` → Excludes names starting with Black
* `NOT name LIKE "%Jeans"` → Excludes names ending with Jeans

### Second Condition

* Includes only brands:

  * Puma
  * Nike
  * Levi's

## Learning Outcome

* Learned NOT operator
* Combined multiple LIKE conditions
* Used complex filtering logic
* Practiced nested conditions

---

Daily SQL Learning Challenge
