
------ Data exploration
----- Initial overview of the data

select top 100 * from mextoys..products;
select top 100 * from mextoys..stores;
select top 100 * from mextoys..inventory;
select top 100 * from mextoys..sales;

select count(*) as cnt_products from mextoys..products; 
select count(*) as cnt_stores from mextoys..stores; 
select count(*) as cnt_inventory from mextoys..inventory; 
select count(*) as cnt_sales from mextoys..sales; 

select distinct Product_Category from mextoys..products;
select distinct Store_City from mextoys..stores;


------ Calculate average product cost and product price broken down by product category
------ Calculate total product cost and product price broken down by product category
------ Also, provide a breakdown of store locations across Mexico

select avg(Product_cost) as avg_cost, Product_Category 
from mextoys..products 
group by Product_Category
order by avg_cost;				-- cost effective product first

select avg(Product_Price) as avg_price, Product_Category 
from mextoys..products 
group by Product_Category
order by avg_price desc;		-- expensive product first

select sum(Product_cost) as total_cost, Product_Category 
from mextoys..products 
group by Product_Category
order by total_cost;				

select sum(Product_Price) as total_price, Product_Category 
from mextoys..products 
group by Product_Category
order by total_price;		

select count(*) as cnt_locations, Store_location 
from mextoys..stores
group by Store_location
order by cnt_locations;

select count(*) as cnt_locations, Store_City 
from mextoys..stores
group by Store_City
having count(*) > 1				-- only looking at cities that have multiple stores
order by Store_City;


------- Find the date range for when stores were opened across cities with multiple stores
------- Additionally, find all the stores that were opened in the 2000s, in downtown areas
------- Find all products starting with 'Mini'


select min(Store_Open_Date) as first_opened, max(Store_Open_Date) as last_opened, count(*) as store_count, Store_City 
from mextoys..stores
group by Store_City
having count(*) > 1
order by store_count;

select *
from mextoys..stores
where Store_Open_Date between '2000-01-01' and '2010-01-01'
and Store_Location = 'Downtown'
order by Store_Open_Date;

select *
from mextoys..products
where Product_Name like 'Mini%';


------ Find seasonal trends or patterns in the sales data

alter table mextoys..sales add Season VARCHAR(20);

update mextoys..sales 
set Season = 
Case month(Date) 
	when 1 then 'Winter'
	when 2 then 'Winter'
	when 3 then 'Spring'
	when 4 then 'Spring'
	when 5 then 'Spring'
	when 6 then 'Summer'
	when 7 then 'Summer'
	when 8 then 'Summer'
	when 9 then 'Fall'
	when 10 then 'Fall'
	when 11 then 'Fall'
	when 12 then 'Winter'
	end
where month(Date) between 1 and 12
;

select distinct month(Date) as month, year(Date) as year, Season, count(*) as cnt_sales			-- Initial analysis
from mextoys..sales 
group by month(Date), year(Date), Season
order by Season desc, year, month;

select sum(Units) as total_units_sold, Season			-- most items were sold in Fall and least items were sold in the Summer for 2017
from mextoys..sales
where YEAR(Date) = 2017									-- Filter on year because not enough data for 2018
group by Season
order by total_units_sold;

select sales.*, Product_Name, Product_Category, (Product_Cost * Units) as Sales_Cost, (Product_Price * Units) as Sales_Price, Store_Name, Store_City, Store_Location 
into mextoys..masterTable
from mextoys..sales sales 
inner join mextoys..products products on products.Product_ID = sales.Product_ID
inner join mextoys..stores stores on stores.Store_ID = sales.Store_ID
order by sales.Sale_ID;

select top 100 * from mextoys..masterTable;
select count(*) as cnt_sales from mextoys..masterTable; 

select Season, Product_Category, SUM(Units) as cnt			-- Breakdown of product categories sold in various seasons.
from mextoys..masterTable									-- Based on the analysis, Toys are the top-sellers in nearly every Season, except Fall.
where Year(Date) = 2017										-- Arts & Crafts are most popular in the Fall, perhaps due to Fall festivities like Halloween.
group by Season, Product_Category							-- As expected, Sports & Outdoor products are popular in the Summer while being least popular in Fall & Winter.
order by Season, cnt desc;									-- Electronic products are least popular in the Summer because people prefer to spend more time outdoors.


------ Which product categories drive the biggest profits? Is this the same across store locations?

select top 100 a.*, b.Profit								-- Select the top 100 most profitable items
from mextoys..masterTable as a inner join
(select Sale_ID, (Sales_Price - Sales_Cost) as Profit from mextoys..masterTable) as b
on a.Sale_ID = b.Sale_ID
order by b.Profit desc;

select sum(Sales_Price) as s_p, Product_Category			-- Total Sales broken down by product_category
from mextoys..masterTable
group by Product_Category
order by s_p desc;

select sum(Sales_Cost) as c_p, Product_Category				-- Total Cost broken down by product_category
from mextoys..masterTable
group by Product_Category
order by c_p desc;

select a.Product_Category, sum(b.Profit) as total_profit		-- According to this calculation, Toys drive the biggest profits, which aligns with their demand in all seasons.
from mextoys..masterTable as a inner join
(select Sale_ID, (Sales_Price - Sales_Cost) as Profit from mextoys..masterTable) as b
on a.Sale_ID = b.Sale_ID
group by a.Product_Category
order by total_profit desc
;

select a.Store_Location, a.Product_Category, sum(b.Profit) as total_profit					-- The data shows that profits are in fact, not consistent across store locations.
from mextoys..masterTable as a inner join													-- Electronics is the top seller at Airports and Commercial sites, with Toys a close second.
(select Sale_ID, (Sales_Price - Sales_Cost) as Profit from mextoys..masterTable) as b		-- Toys are the top sellers at Downtown and Residential areas.
on a.Sale_ID = b.Sale_ID
group by a.Store_Location, a.Product_Category
order by a.Store_Location, total_profit desc
;


------ Are sales being lost with out-of-stock products at certain locations?

select inventory.Store_ID, stores.Store_Name, inventory.Product_ID, products.Product_Name 
from mextoys..inventory as inventory
inner join mextoys..stores as stores on inventory.Store_ID = stores.Store_ID
inner join mextoys..products as products on inventory.Product_ID = products.Product_ID 
where inventory.Stock_On_Hand = 0;															-- Stores with products that have run out-of-stock

if OBJECT_ID('inventory_dummy', 'U') is not null
	drop table inventory_dummy;
select inventory.Store_ID, inventory.Product_ID, CONCAT(inventory.Store_ID, '-', inventory.Product_ID) as composite_id
into inventory_dummy
from mextoys..inventory as inventory
inner join mextoys..stores as stores on inventory.Store_ID = stores.Store_ID
inner join mextoys..products as products on inventory.Product_ID = products.Product_ID 
where inventory.Stock_On_Hand = 0;	

if OBJECT_ID('sales_dummy', 'U') is not null
	drop table sales_dummy;
select CONCAT(Store_ID, '-', Product_ID) as composite_id, Sale_ID, Store_ID, Product_ID, Sales_Cost, Sales_Price, Date
into sales_dummy
from mextoys..masterTable;		

select * from sales_dummy order by composite_id;

select *																	-- This indicates that Sales are being lost with products being out-of-stock
from sales_dummy
where composite_id in (select distinct composite_id from inventory_dummy)
and YEAR(Date) in (select YEAR(max(Date)) from mextoys..sales)
and MONTH(Date) in (select MONTH(max(Date)) from mextoys..sales)			-- assuming the inventory is listed for the last month of data collection
order by composite_id, Date;


select sum(Sales_Price) as Sales_Price_amt, sum(Sales_Cost) as Sales_Cost_Amt, sum(Sales_Price - Sales_Cost) as Sales_loss_amt										
from sales_dummy
where composite_id in (select distinct composite_id from inventory_dummy)
and YEAR(Date) in (select YEAR(max(Date)) from mextoys..sales)
and MONTH(Date) in (select MONTH(max(Date)) from mextoys..sales)
;																			-- This is the amount of money that the Mexico Toy Stores is currently losing because certain products are out-of-stock


-- Data cleanup

drop table sales_dummy;
drop table inventory_dummy;
drop table mextoys..masterTable;


