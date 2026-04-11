# Day 21 - CREATE TABLE with FOREIGN KEY

## Topic

Creating table with foreign key constraint

## SQL Query

```sql
CREATE TABLE post(
  post_id INTEGER NOT NULL PRIMARY KEY,
  content TEXT,
  published_at DATETIME,
  user_id INTEGER,
  FOREIGN KEY (user_id) REFERENCES USER(id) ON DELETE CASCADE
);
```

## Explanation

This query creates a table named post with the following columns:

* post_id — Primary key for post table
* content — Stores post content
* published_at — Stores date and time of post
* user_id — References user table

## FOREIGN KEY

* user_id is a foreign key
* References id column in USER table
* Establishes relationship between user and post

## ON DELETE CASCADE

When a user is deleted:

* All related posts are automatically deleted
* Maintains referential integrity

## Learning Outcome

* Learned CREATE TABLE
* Learned FOREIGN KEY
* Learned table relationships
* Learned ON DELETE CASCADE
