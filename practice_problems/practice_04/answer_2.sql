WITH RankedScores AS (
    SELECT
        first_name,
        last_name,
        score,
        DENSE_RANK() OVER (ORDER BY score DESC) as score_rank
    FROM
        students_score
)
SELECT
    first_name,
    last_name,
    score
FROM
    RankedScores
WHERE
    score_rank = 2;
