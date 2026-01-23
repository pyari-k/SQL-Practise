CREATE TABLE music_data (
    id SERIAL PRIMARY KEY,
    song VARCHAR(255),
    artist VARCHAR(255),
    played_at TIMESTAMP,
    user_name VARCHAR(100),
    country VARCHAR(100)
);