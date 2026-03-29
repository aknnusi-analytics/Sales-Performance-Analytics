-- ==========================================================
-- PROJECT: Nigeria Automotive Sales Analysis
-- ANALYST: Akinnusi Semilore Anthony
-- TOOLS: PostgreSQL, Python, Power BI
-- ==========================================================
CREATE TABLE car_sales_data (
    sale_date DATE,
    state VARCHAR(50),
	city VARCHAR(50),
	car_model VARCHAR(100),
	car_type VARCHAR(50),
	unit_price_naira NUMERIC,
	quantity INT,
	discount_percent NUMERIC,
	revenue_naira NUMERIC,
	customer_type VARCHAR(50),
	delivery_date DATE,
	delivery_status VARCHAR(20),
	delivery_time_hours INT,
	warehouse VARCHAR(50),
	driver VARCHAR(50),
	car_age INT,
	region VARCHAR(50),
    sales_rep VARCHAR(50),
    brand VARCHAR(50)
);

--Revenue Performance
SELECT 
    region, 
    SUM(revenue_naira) AS total_revenue,
    SUM(quantity) AS units_sold
FROM car_sales_data
GROUP BY region
ORDER BY total_revenue DESC;

--Top Brands
SELECT 
    brand, 
    AVG(unit_price_naira) AS avg_price,
    SUM(quantity) AS total_units
FROM car_sales_data
GROUP BY brand
ORDER BY total_units DESC
LIMIT 10;

--Efficiency Audit(Delivery Performance)
SELECT driver,
       AVG(delivery_time_hours) AS avg_wait_time
FROM car_sales_data
GROUP BY driver
ORDER BY avg_wait_time DESC;

--Monthly Trends
SELECT DATE_TRUNC('month', sale_date) AS sales_month,
SUM(revenue_naira) AS monthly_cash
FROM car_sales_data
GROUP BY DATE_TRUNC('month', sale_date)
ORDER BY sales_month;
	 