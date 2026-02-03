-- Upsert cheatsheet

-- Suppose we have a table named products with columns: id, name, stock_count, and price.
-- The id column has a primary key constraint, and there is a unique constraint on (id, name).

-- 1. Update on Multi-Column Conflict
-- If a product with the same id and name already exists, update its price and stock_count.
-- If it doesn't exist, insert it as a new product.
-- This requires a UNIQUE constraint on (id, name).
INSERT INTO products (id, name, price, stock_count)
VALUES (1, 'apple', 1.25, 15)
ON CONFLICT (id, name)
DO UPDATE SET price = EXCLUDED.price, stock_count = EXCLUDED.stock_count;

-- 2. Do Nothing on Conflict
-- If a product with the same id already exists, do nothing.
-- If it doesn't exist, insert it.
INSERT INTO products (id, name, price, stock_count)
VALUES (2, 'orange', 1.60, 20)
ON CONFLICT (id)
DO NOTHING;

-- 3. Conditional Update on Conflict
-- If a product with the same id already exists, only update its stock_count if the new stock_count is greater than the existing one.
-- If it doesn't exist, insert it.
INSERT INTO products (id, name, price, stock_count)
VALUES (3, 'banana', 0.75, 5)
ON CONFLICT (id)
DO UPDATE SET stock_count = EXCLUDED.stock_count
WHERE products.stock_count < EXCLUDED.stock_count;

INSERT INTO products (id, name, price, stock_count)
VALUES (3, 'banana', 0.75, 15)
ON CONFLICT (id)
DO UPDATE SET stock_count = EXCLUDED.stock_count
WHERE products.stock_count < EXCLUDED.stock_count;
