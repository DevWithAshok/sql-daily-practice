# Day 35 - JOIN with DISTINCT and Filtering

## Topic

Using JOIN with DISTINCT, string filtering, and date filtering

## SQL Query

```sql id="h7n3px"
SELECT
  DISTINCT channel.channel_id,
  channel.name AS channel_name
FROM
  channel
  INNER JOIN video ON channel.channel_id = video.channel_id
WHERE
  CAST(strftime("%Y", published_datetime) AS INTEGER) < 2016
  AND LOWER(video.name) LIKE "%music%"
ORDER BY
  channel_name ASC;
```

## Explanation

This query retrieves:

* Channel ID
* Channel name

Only for channels that have videos:

* Containing the word "music"
* Published before the year 2016

## Query Breakdown

### INNER JOIN

Joins channel and video tables using channel_id.

### DISTINCT

Removes duplicate channels caused by multiple videos.

### LOWER + LIKE

Performs case-insensitive search for "music".

### strftime + CAST

Extracts and compares the year from published_datetime.

### ORDER BY

Sorts channel names in ascending order.

## Learning Outcome

* Learned DISTINCT with JOIN
* Practiced filtering on joined tables
* Used string and date functions together
* Improved query optimization
