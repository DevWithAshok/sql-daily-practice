# Day 09 - AND & OR Operators in SQL

## 📌 Topic

Using AND and OR operators to filter data

## 💻 SQL Query

```sql
SELECT
  *
FROM
  product
WHERE
  brand = "Redmi"
  AND rating > 4.0
  OR brand = "OnePlus";
```

## 🧠 Explanation

This query retrieves:

* Products where brand is **Redmi** and rating is greater than **4.0**
* OR products where brand is **OnePlus**

## Condition Breakdown

* `AND` → Both conditions must be true
* `OR` → Any one condition must be true

## Example Output

This query returns:

* Redmi phones with rating above 4.0
* All OnePlus phones

## Learning Outcome

* Learned AND operator
* Learned OR operator
* Learned multiple condition filtering

---

Daily SQL Learning Challenge
