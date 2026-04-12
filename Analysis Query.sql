-- ==========================================================
-- PROJECT: Nigeria Automotive Sales Analysis
-- ANALYST: Akinnusi Semilore Anthony
-- TOOLS: PostgreSQL, Python, Power BI
-- ==========================================================
CREATE TABLE cleaned_nigeria_car_sales_data (
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
    brand VARCHAR(100)
);

--Create a View, Filter Out unnecessary Column
CREATE VIEW car_sales_data AS
 SELECT DISTINCT sale_date,
          brand,
		  region,
          state,
		  quantity,
		  revenue_naira,
		  delivery_time_hours
FROM cleaned_nigeria_car_sales_data
WHERE revenue_naira > 0;

SELECT COUNT(*)
FROM cleaned_nigeria_car_sales_data;
SELECT COUNT(*)
FROM car_sales_data;

SELECT sale_date, brand, region, revenue_naira, COUNT(*)
FROM cleaned_nigeria_car_sales_data
GROUP BY sale_date, brand, region, revenue_naira
HAVING COUNT(*) > 1;


SELECT 
    region, 
    SUM(revenue_naira) AS total_revenue,
    SUM(quantity) AS units_sold
FROM car_sales_data
GROUP BY region
ORDER BY total_revenue DESC

--Top Brands

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