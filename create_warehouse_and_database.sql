-- Create a Snowflake Warehouse for the data processing
CREATE WAREHOUSE my_wh
WITH WAREHOUSE_SIZE = 'XSMALL'
AUTO_SUSPEND = 60
AUTO_RESUME = TRUE;

-- Create a new Database for sales analytics
CREATE DATABASE sales_analytics;

-- Switch to the newly created database
USE DATABASE sales_analytics;
