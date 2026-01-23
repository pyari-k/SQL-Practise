-- DDL for a more complete impressions/activity table
CREATE TABLE impressions (
    impression_id SERIAL PRIMARY KEY,
    campaign_id INT,
    impression_date DATE NOT NULL,
    impressions INT,
    clicks INT,
    revenue DECIMAL(10, 2),
    FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id)
);
