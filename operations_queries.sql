-- Create Sales Table
CREATE TABLE sales (
  order_id VARCHAR2(20),
  region VARCHAR2(20),
  product VARCHAR2(30),
  quantity NUMBER,
  revenue NUMBER
);

-- Insert Data
INSERT INTO sales VALUES ('ORD001', 'East', 'Laptop', 5, 275000);
INSERT INTO sales VALUES ('ORD002', 'West', 'Monitor', 8, 72000);
INSERT INTO sales VALUES ('ORD003', 'North', 'Mouse', 20, 10000);
INSERT INTO sales VALUES ('ORD004', 'South', 'Laptop', 3, 165000);
INSERT INTO sales VALUES ('ORD005', 'East', 'Bookshelf', 10, 32000);
INSERT INTO sales VALUES ('ORD006', 'West', 'Laptop', 7, 385000);
INSERT INTO sales VALUES ('ORD007', 'North', 'Monitor', 4, 36000);
INSERT INTO sales VALUES ('ORD008', 'South', 'Mouse', 15, 7500);

-- Query 1: Total Revenue by Region
SELECT region, SUM(revenue) AS total_revenue
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;
-- Query 2: Top Products by Revenue
SELECT product, SUM(revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;
-- Query 3: Count of Orders by Region
SELECT region, COUNT(order_id) AS total_orders
FROM sales
GROUP BY region
ORDER BY total_orders DESC;
-- Query 4: Average Order Value
SELECT ROUND(AVG(revenue), 2) AS avg_order_value
FROM sales;
-- Query 5: Products with Revenue Above 50,000
SELECT product, revenue
FROM sales
WHERE revenue > 50000
ORDER BY revenue DESC;
