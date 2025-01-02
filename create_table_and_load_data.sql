-- Create the sales_data table
CREATE OR REPLACE TABLE sales_data (
    OrderId STRING,
    OrderDate VARCHAR,
    ShipDate VARCHAR,
    ShipMode STRING,
    CustomerName STRING,
    Segment STRING,
    State STRING,
    Country STRING,
    Market STRING,
    Region STRING,
    ProductId STRING,
    Category STRING,
    SubCategory STRING,
    ProductName STRING,
    Sales VARCHAR,
    Quantity INTEGER,
    Discount FLOAT,
    Profit FLOAT,
    ShippingCost FLOAT,
    OrderPriority STRING,
    OrderYear INTEGER
);

-- Load data into the sales_data table from a stage (e.g., SuperStoreOrders.csv)
COPY INTO SALES_DATA
FROM @sales_stage/SuperStoreOrders.csv
FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1)
ON_ERROR = 'SKIP_FILE';
