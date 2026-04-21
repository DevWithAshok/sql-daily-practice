# Day 31 - CREATE VIEW with JOIN

## Topic

Creating a view using JOIN between tables

## SQL Query

```sql id="q1t8zp"
CREATE VIEW user_order_details AS
SELECT
  user.id AS user_id,
  user.name,
  user.age,
  user.gender,
  user.pincode,
  order_details.order_id,
  order_details.total_amount
FROM
  user
  INNER JOIN order_details ON user.id = order_details.customer_id;
```

## Explanation

This query creates a view named user_order_details by combining data from user and order_details tables.

## Query Breakdown

### INNER JOIN

Joins user and order_details tables using user ID and customer ID.

### Selected Columns

* User details (id, name, age, gender, pincode)
* Order details (order_id, total_amount)

## Purpose of View

* Combines user and order data
* Simplifies complex queries
* Useful for reporting and analytics

## Example Usage

```sql id="z8m4rx"
SELECT * FROM user_order_details;
```

## Learning Outcome

* Learned CREATE VIEW with JOIN
* Practiced multi-table views
* Improved query abstraction
* Understood real-world use cases
