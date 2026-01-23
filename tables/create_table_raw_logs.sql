-- DDL for raw_logs table with JSONB data
CREATE TABLE raw_logs (
    id SERIAL PRIMARY KEY,
    sample_json_logs JSONB
);
