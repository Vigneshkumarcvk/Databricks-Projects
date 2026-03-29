CREATE OR REPLACE TABLE bronze_sales_all as SELECT * FROM workspace.default.adventure_works_sales_2015 UNION ALL SELECT * FROM workspace.default.adventure_works_sales_2016 UNION ALL SELECT * FROM workspace.default.adventure_works_sales_2017;


select * from bronze_sales_all;


SELECT Count(*) FROM bronze_sales_all;

select min(OrderDate), max(OrderDate) from bronze_sales_all;
