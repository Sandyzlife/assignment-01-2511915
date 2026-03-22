-- Fact Table
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    sales_amount DECIMAL(10,2),
    quantity INT,
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Date Dimension
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month VARCHAR(20),
    year INT
);

-- Store Dimension
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

-- Product Dimension
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Sample Inserts (cleaned data)
INSERT INTO dim_date VALUES
(1, '2024-01-01', 'January', 2024),
(2, '2024-02-01', 'February', 2024),
(3, '2024-03-01', 'March', 2024);

INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Bangalore');

INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Chair', 'Furniture'),
(3, 'Phone', 'Electronics');

INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 50000, 1),
(2, 1, 2, 2, 7000, 2),
(3, 2, 1, 3, 20000, 1),
(4, 2, 3, 1, 50000, 1),
(5, 3, 2, 2, 7000, 3),
(6, 3, 3, 3, 20000, 2),
(7, 1, 1, 2, 7000, 1),
(8, 2, 2, 1, 50000, 1),
(9, 3, 3, 2, 7000, 2),
(10, 1, 2, 3, 20000, 1);
