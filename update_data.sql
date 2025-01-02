-- Add a new column 'OrderMonth' to the sales_data table
ALTER TABLE sales_data
ADD OrderMonth STRING;

-- Update 'OrderDate' and 'ShipDate' to the correct date format
UPDATE sales_data
SET OrderDate = TO_DATE(REPLACE(OrderDate, '-', '/'), 'YYYY-MM-DD');

UPDATE sales_data
SET ShipDate = TO_DATE(REPLACE(ShipDate, '-', '/'), 'YYYY-MM-DD');

-- Populate 'OrderMonth' column based on 'OrderDate'
UPDATE sales_data
SET OrderMonth = TO_CHAR(TO_DATE(OrderDate, 'YYYY-MM-DD'), 'Mon');

-- Add new columns for total revenue and profit margin calculations
ALTER TABLE sales_data
ADD COLUMN Total_Revenue FLOAT;

ALTER TABLE sales_data
ADD COLUMN Profit_Margin FLOAT;

-- Calculate Total Revenue and Profit Margin for each record
UPDATE sales_data
SET Total_Revenue = TRY_CAST(sales as INTEGER) * QUANTITY;

UPDATE sales_data
SET PROFIT_MARGIN = CASE 
    WHEN TRY_CAST(sales as INTEGER) > 0 THEN PROFIT / TRY_CAST(sales as INTEGER) 
    ELSE 0 
END;
