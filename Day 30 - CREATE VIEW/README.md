# Day 30 - CREATE VIEW in SQL

## Topic

Creating a view for simplified data access

## SQL Query

```sql id="u9f3hb"
CREATE VIEW user_details AS
SELECT
  id,
  name,
  age,
  gender,
  pincode
FROM
  user;
```

## Explanation

This query creates a view named user_details.

A view is a virtual table based on a SELECT query.

## Why Use Views

* Simplifies complex queries
* Improves readability
* Enhances security by restricting columns
* Reusable query structure

## Example Usage

```sql id="k4j2mz"
SELECT * FROM user_details;
```

This retrieves data from the view instead of the original table.

## Learning Outcome

* Learned CREATE VIEW
* Understood virtual tables
* Learned query abstraction
* Practiced reusable SQL design
