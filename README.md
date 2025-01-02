# Snowflake Sales Analytics
This project demonstrates how to use Snowflake for analyzing sales data. It includes creating a data warehouse, database, and schema, loading data into a Snowflake table, updating data for enhanced analysis, and running queries to extract meaningful insights such as total sales, profit trends, and top-performing products.

## Project Overview
The Snowflake Sales Analytics project is designed to showcase how Snowflake's cloud data warehouse can be used to handle and analyze sales data. By following the steps outlined in the provided scripts, you can set up a fully functional Snowflake environment to perform data analysis tasks.

## Features
This project allows you to:
- Create a warehouse, database, and schema in Snowflake.
- Load sales data from a CSV file into a table.
- Update data to calculate additional metrics like profit margin and monthly trends.
- Perform SQL queries to analyze data and gain insights such as total sales, profit by region, and top-performing products.

## Files Included
The project is organized into the following files:
1. SuperStoreOrders.csv: Sample sales data in CSV format.
2. create_warehouse_and_database.sql: SQL script to create the warehouse and database.
3. create_schema.sql: Script to create the schema within the database.
4. create_table_and_load_data.sql: Script to create the sales data table and load data from the CSV file.
5. update_data.sql: Script to update the table, adding new columns and calculating metrics like profit margins and monthly sales trends.
6. sales_analysis.sql: Script with SQL queries to analyze the sales data, such as total sales, profit trends, and top-performing products.

## Installation
To use this project, ensure you have a Snowflake account and environment set up. Then, follow these steps:
1. Execute 'create_warehouse_and_database.sql' to create the warehouse and database.
2. Run 'create_schema.sql' to set up the schema.
3. Use 'create_table_and_load_data.sql' to create the table and load data from `SuperStoreOrders.csv`.
4. Run 'update_data.sql' to add calculated metrics to the data.
5. Execute queries in 'sales_analysis.sql' to analyze the data.

## Usage
Start by setting up your Snowflake environment with the provided scripts. After loading the data into the table, you can use the SQL queries in the 'sales_analysis.sql' file to perform analysis, such as identifying top-performing regions and products or visualizing sales trends over time.
