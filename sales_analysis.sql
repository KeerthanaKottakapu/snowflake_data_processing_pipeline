-- Query to find Total Sales and Profit
SELECT SUM(TRY_CAST(sales as INTEGER)) AS Total_Sales, SUM(PROFIT) AS Total_Profit 
FROM sales_data;

-- Query to get the top 5 regions by Profit
SELECT region, SUM(PROFIT) AS Total_Profit 
FROM sales_data
GROUP BY region
ORDER BY Total_Profit DESC
LIMIT 5;

-- Query to show Monthly Sales Trends
SELECT ORDERMONTH, SUM(TRY_CAST(SALES AS INTEGER)) AS Total_Sales 
FROM sales_data
GROUP BY ORDERMONTH
ORDER BY ORDERMONTH DESC;

-- Query to get Top 5 Products by Revenue
SELECT productid, productname, SUM(total_revenue) as TOTAL_REVENUE 
FROM sales_data
GROUP BY productid, productname
ORDER BY TOTAL_REVENUE DESC
LIMIT 5;

-- Show order dates from the sales data table
SELECT orderdate FROM sales_data;

-- Cluster the table by orderdate for better performance on date-related queries
ALTER TABLE sales_data CLUSTER BY(orderdate);

-- Show the first 10 rows of the sales_data table
SELECT * FROM sales_data LIMIT 10;
