CREATE TABLE products (
    id INT,
    name VARCHAR(255),
    stock_count INT,
    price DECIMAL,
    PRIMARY KEY (id),
    UNIQUE (id, name)
);
