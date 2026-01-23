WITH score_counts AS (
    SELECT
        student_id, -- Keep student_id if we need to ensure distinct students later, though not explicitly asked in final output
        first_name,
        last_name,
        score,
        COUNT(*) OVER (PARTITION BY score) as ct
    FROM
        students_score
)
SELECT
    first_name,
    last_name,
    score
FROM
    score_counts
WHERE
    ct >= 2;
