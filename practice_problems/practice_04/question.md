# Problem: Get student names with the same score

## Description

Given a table named `students_score` with the following columns:

- `student_id` (INT)
- `first_name` (VARCHAR)
- `last_name` (VARCHAR)
- `score` (INT)

Write a SQL query to retrieve the `first_name`, `last_name`, and `score` of all students who have the same score as at least one other student.

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

| first_name | last_name | score |
|------------|-----------|-------|
| Alice      | Smith     | 85    |
| Charlie    | Brown     | 85    |
| Harry      | Moore     | 85    |
| Bob        | Johnson   | 90    |
| Eve        | Wilson    | 90    |
| David      | Davis     | 78    |
| Frank      | Miller    | 78    |
