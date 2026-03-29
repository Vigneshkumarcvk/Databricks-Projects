select * from silver_sales;


select count(*) from silver_sales;

select min(OrderDate), max(OrderDate) from silver_sales;


select count(Distinct OrderNumber) from silver_sales;


CREATE OR REPLACE TABLE adventureworks.dim_customers AS SELECT * FROM default.dim_customers;

create or replace table adventureworks.dim_territories as select * from default.dim_territories;
CREATE OR REPLACE TABLE adventureworks.dim_product_subcategories AS SELECT * FROM default.dim_product_subcategories;
CREATE OR REPLACE TABLE adventureworks.dim_product_categories as SELECT * FROM default.dim_product_categories;
create or replace table adventureworks.dim_calendar as select * from default.dim_calendar;
