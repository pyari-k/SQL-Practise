# Problem 2: Find students with the second largest score

## Description

Given the `students_score` table, write a SQL query to retrieve the `first_name`, `last_name`, and `score` of all students who have the second-highest score.

## Example Data

The `students_score` table contains the following data:

| student_id | first_name | last_name | score |
|------------|------------|-----------|-------|
| 1          | Alice      | Smith     | 85    |
| 2          | Bob        | Johnson   | 90    |
| 3          | Charlie    | Brown     | 85    |
| 4          | David      | Davis     | 78    |
| 5          | Eve        | Wilson    | 90    |
| 6          | Frank      | Miller    | 78    |
| 7          | Grace      | Taylor    | 92    |
| 8          | Harry      | Moore     | 85    |

## Expected Output (Example)

In this dataset, the highest score is 92 and the second-highest is 90. The query should return all students who scored 90.

| first_name | last_name | score |
|------------|-----------|-------|
| Bob        | Johnson   | 90    |
| Eve        | Wilson    | 90    |
