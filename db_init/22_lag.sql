SELECT
    campaign_id,
    revenue_date,
    amount,
    LAG(amount) OVER (PARTITION BY campaign_id ORDER BY revenue_date) AS previous_day_amount,
    LAG(revenue_date) OVER (PARTITION BY campaign_id ORDER BY revenue_date) AS previous_day_date
FROM
    daily_revenue
ORDER BY
    campaign_id, revenue_date;
