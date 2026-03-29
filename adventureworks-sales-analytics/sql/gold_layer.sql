create or replace table gold_sales as select s.OrderDate, s.OrderNumber, s.OrderLineItem, s.OrderQuantity, c.CustomerKey, c.Prefix, c.FirstName, c.LastName, c.EducationLevel, c.BirthDate, c.Gender, c.MaritalStatus, c.Occupation,c.HomeOwner,c.AnnualIncome,c.EmailAddress, c.TotalChildren, p.ProductKey, p.ProductSubcategoryKey, p.ProductName,p.ModelName,p.ProductSize,p.ProductColor,p.ProductPrice,p.ProductCost,p.ProductSKU, pc.ProductCategoryKey,pc.CategoryName, t.SalesTerritoryKey, t.Region, t.Country, t.Continent, cal.date from silver_sales s left join dim_customers c on s.CustomerKey = c.CustomerKey left join dim_products p on s.ProductKey = p.ProductKey left join dim_product_categories pc on p.ProductSubcategoryKey = pc.ProductCategoryKey left join dim_territories t on s.TerritoryKey = t.SalesTerritoryKey left join dim_calendar cal on s.OrderDate =  cal.date;


select * from gold_sales;


select ProductName, sum(OrderQuantity) as TotalSold from gold_sales group by ProductName order by TotalSold Desc;


select FirstName, LastName, Sum(OrderQuantity) as TotalOrders from gold_sales group by FirstName, LastName order by TotalOrders Desc;


SELECT FirstName, LastName, sum(OrderQuantity) as TotalOrders,
CASE when sum(OrderQuantity) > 100 then 'Very High' when sum(OrderQuantity) > 75 then 'High' when sum(OrderQuantity) > 50 then 'Medium' when sum(OrderQuantity) > 25 then 'Low' else 'Very Low' END as OrderCategory
FROM gold_sales 
GROUP BY FirstName, LastName 
ORDER BY TotalOrders DESC;
