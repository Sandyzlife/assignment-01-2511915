-- Q2: Customers Table
CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

-- Insert sample data
INSERT INTO customers VALUES
('CUST101', 'Amit Sharma', 'amit@example.com', 'Mumbai'),
('CUST102', 'Priya Singh', 'priya@example.com', 'Delhi'),
('CUST103', 'Rahul Verma', 'rahul@example.com', 'Bangalore'),
('CUST104', 'Sneha Iyer', 'sneha@example.com', 'Chennai'),
('CUST105', 'Arjun Patel', 'arjun@example.com', 'Mumbai');


-- Q3: Products Table
CREATE TABLE products (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

-- Insert sample data
INSERT INTO products VALUES
('P101', 'Laptop', 'Electronics', 50000),
('P102', 'Mobile Phone', 'Electronics', 20000),
('P103', 'Office Chair', 'Furniture', 7000),
('P104', 'Desk', 'Furniture', 12000),
('P105', 'Headphones', 'Electronics', 3000);


-- Q4: Sales Representatives Table
CREATE TABLE sales_reps (
    sales_rep_id VARCHAR(20) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL,
    office_address VARCHAR(150) NOT NULL
);

-- Insert sample data
INSERT INTO sales_reps VALUES
('SR101', 'Ravi Kumar', 'ravi@example.com', 'Mumbai Office'),
('SR102', 'Neha Kapoor', 'neha@example.com', 'Delhi Office'),
('SR103', 'Vikas Mehta', 'vikas@example.com', 'Bangalore Office'),
('SR104', 'Anjali Rao', 'anjali@example.com', 'Chennai Office'),
('SR105', 'Karan Shah', 'karan@example.com', 'Mumbai Office');


-- Q5: Orders Table
CREATE TABLE orders (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id VARCHAR(20) NOT NULL,
    product_id VARCHAR(20) NOT NULL,
    sales_rep_id VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

-- Insert sample data
INSERT INTO orders VALUES
('O101', '2024-01-01', 'CUST101', 'P101', 'SR101', 1),
('O102', '2024-01-02', 'CUST102', 'P102', 'SR102', 2),
('O103', '2024-01-03', 'CUST103', 'P103', 'SR103', 1),
('O104', '2024-01-04', 'CUST104', 'P104', 'SR104', 3),
('O105', '2024-01-05', 'CUST105', 'P105', 'SR105', 2);
