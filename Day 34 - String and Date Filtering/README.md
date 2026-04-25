# Day 34 - String and Date Filtering in SQL

## Topic

Using string functions and date filtering

## SQL Query

```sql id="z7m2hs"
SELECT
  name,
  no_of_views,
  CAST(strftime("%Y", published_datetime) AS INTEGER) AS year
FROM
  video
WHERE
  LOWER(name) LIKE "%music%"
  AND CAST(strftime("%Y", published_datetime) AS INTEGER) < 2016
ORDER BY
  year DESC,
  name ASC;
```

## Explanation

This query retrieves:

* Video name
* Number of views
* Year of publication

Only for videos:

* Containing "music" in their name
* Published before the year 2016

## Query Breakdown

### LOWER(name)

Converts name to lowercase for case-insensitive matching.

### LIKE "%music%"

Finds videos containing the word "music".

### strftime("%Y", published_datetime)

Extracts the year from the datetime.

### CAST(... AS INTEGER)

Converts extracted year to integer for comparison.

### WHERE Clause

Filters videos based on name and year.

### ORDER BY

Sorts results by:

* Year (descending)
* Name (ascending)

## Learning Outcome

* Learned string functions
* Learned date extraction
* Practiced case-insensitive search
* Combined multiple filtering conditions
