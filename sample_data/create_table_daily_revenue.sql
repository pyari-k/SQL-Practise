-- DDL for daily_revenue table
CREATE TABLE daily_revenue (
    revenue_id SERIAL PRIMARY KEY,
    campaign_id INT NOT NULL,
    revenue_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    UNIQUE (campaign_id, revenue_date) -- Ensure unique entries per campaign per day
);
