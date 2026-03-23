## Anomaly Analysis

### Insert Anomaly
If a new product needs to be added (e.g., a new product_id and product_name), it cannot be inserted unless an order is also created. For example, product details like product_id, product_name, and category are tied to order_id, so inserting a product without an order is not possible.

### Update Anomaly
If a customer's email or city changes (e.g., customer_id = CUST101 appears in multiple rows), updating it requires modifying multiple rows. If one row is missed, it leads to inconsistent data across the table.

### Delete Anomaly
If an order is deleted (e.g., a row with a unique product_id), all related product and sales representative information is also lost. For example, deleting the only order of a product removes product_name and category information permanently.

## Normalization Justification

Keeping all data in a single table may seem simpler at first, but it leads to serious data management issues as seen in the given dataset. For example, customer details such as customer_name, customer_email, and customer_city are repeated across multiple rows for every order they place. This redundancy increases storage usage and makes updates inefficient. If a customer changes their email, it must be updated in multiple rows, increasing the risk of inconsistent data.

Similarly, product-related information like product_name, category, and unit_price is duplicated for every order involving that product. This creates unnecessary repetition and increases the chance of errors during updates. Sales representative details such as sales_rep_name and office_address also suffer from the same issue, being repeated across multiple transactions.

By normalizing the data into separate tables such as customers, products, sales_reps, and orders, we eliminate redundancy and ensure that each piece of information is stored only once. This improves data consistency, reduces anomalies, and makes the database easier to maintain. Although normalization introduces multiple tables and relationships, it significantly enhances data integrity and scalability, making it the preferred approach for real-world systems.
