CREATE TABLE sales_data (
    row_id INTEGER,
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(150),
    segment VARCHAR(50),
    country VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales NUMERIC(12,2),
    quantity INTEGER,
    discount NUMERIC(5,2),
    profit NUMERIC(12,2),
    order_year INTEGER,
    order_quarter INTEGER,
    order_month_number INTEGER,
    order_month_name VARCHAR(20)
);

TRUNCATE TABLE public.sales_data;



SELECT COUNT(*) FROM public.sales_data;

SELECT * FROM Sales_data;

--1.How is the business performing overall?

SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(quantity) AS total_units
FROM public.sales_data;

--2.Is sales performance improving over time?

SELECT
    order_year,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM public.sales_data
GROUP BY order_year
ORDER BY order_year;

--3.What are the sales patterns month-by-month?

SELECT
    order_year,
    order_month_number,
    order_month_name,
    SUM(sales) AS total_sales
FROM public.sales_data
GROUP BY
    order_year,
    order_month_number,
    order_month_name
ORDER BY
    order_year,
    order_month_number;

--4.Which categories and products are driving sales?

SELECT
    category,
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS units_sold
FROM public.sales_data
GROUP BY category, sub_category
ORDER BY total_sales DESC;


--5.Who are our top 10 customers?

SELECT 
    customer_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM public.sales_data
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

--6.Which type of customer generates the most sales?

SELECT 
    segment,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY segment
ORDER BY total_sales DESC;


--7.Who are our highest-value customers?

SELECT
    customer_name,
    SUM(sales) AS total_sales,
    RANK() OVER (ORDER BY SUM(sales) DESC) AS customer_rank
FROM sales_data
GROUP BY customer_name
ORDER BY customer_rank;


--8.Which products are the best sellers within each category?

SELECT
    category,
    product_name,
    SUM(sales) AS total_sales,
    RANK() OVER (
        PARTITION BY category
        ORDER BY SUM(sales) DESC
    ) AS product_rank
FROM sales_data
GROUP BY category, product_name
ORDER BY category, product_rank;


--9.Are we selling products that generate revenue but don't generate enough profit?

SELECT
    product_name,
    category,
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM public.sales_data
GROUP BY product_name, category, sub_category
HAVING SUM(sales) > 500
ORDER BY total_profit ASC
LIMIT 10;

--10.Which regions perform best and which need attention?

SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM public.sales_data
GROUP BY region
ORDER BY total_sales DESC;