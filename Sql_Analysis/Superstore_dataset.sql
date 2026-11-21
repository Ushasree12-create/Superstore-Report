



CREATE TABLE fact_sales(
row_id INT PRIMARY KEY, 
order_id VARCHAR(50), 
order_date TEXT, 
ship_date TEXT, 
ship_mode VARCHAR(50),
customer_id VARCHAR(50), 
customer_name VARCHAR(100), 
segment varchar(50), 
country varchar(50), 
city varchar(100),
state varchar(100),
postal_code varchar(20),
region varchar(50),
product_id varchar(50),
category varchar(50),
sub_catogory varchar(50),
product_name varchar(50),
sales numeric(10, 2),
quantity int,
discount numeric(5, 2),
profit numeric(10, 2)
);
UPDATE fact_sales
SET order_date = STR_TO_DATE(order_date, '%m/%d/%Y');
alter table fact_sales alter column product_name type varchar(255);
alter database "Superstore_analytics"
set datestyle to 'ISO, MDY';
truncate table fact_sales;
select * from fact_sales order by row_id;
show datestyle;
SELECT row_id, order_id, order_date, ship_date, sales, profit
FROM fact_sales
WHERE ship_date < order_date;
