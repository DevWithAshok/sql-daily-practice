# Day 33 - Subquery with IN and NOT IN

## Topic

Using IN and NOT IN with subqueries

## SQL Query

```sql id="r5v2kx"
SELECT
  order_id
FROM
  order_details
WHERE
  order_id IN (
    SELECT
      order_id
    FROM
      order_product
    WHERE
      product_id IN (291, 292, 293, 294, 296)
  )
  AND NOT order_id IN (
    SELECT
      order_id
    FROM
      order_product
    WHERE
      product_id IN (301, 302, 303, 304)
  );
```

## Explanation

This query retrieves order IDs that:

* Contain at least one product from a specific list
* Do not contain any product from another list

## Query Breakdown

### First Subquery (IN)

Selects order IDs that include products:

* 291, 292, 293, 294, 296

### Second Subquery (NOT IN)

Excludes order IDs that include products:

* 301, 302, 303, 304

### Main Query

Filters order_details based on these conditions.

## Use Case

* Filtering orders based on product inclusion and exclusion
* Common in e-commerce analytics

## Learning Outcome

* Learned IN with subquery
* Learned NOT IN with subquery
* Practiced conditional filtering
* Improved query logic
