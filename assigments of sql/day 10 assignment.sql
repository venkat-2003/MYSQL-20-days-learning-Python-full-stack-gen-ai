use pfs8;
drop table sales;

CREATE TABLE sales ( sale_id INT PRIMARY KEY, product VARCHAR(50),
category VARCHAR(50), units_sold INT, unit_price INT, region VARCHAR(50)
);

INSERT INTO sales (sale_id, product, category, units_sold, unit_price,region) 
VALUES
(1, 'Keyboard', 'Electronics', 10, 1200, 'North'),
(2, 'Monitor', 'Electronics', 5, 7000, 'South'),
(3, 'Chair', 'Furniture', 15, 2500, 'North'),
(4, 'Desk', 'Furniture', 7, 4500, 'West'),
(5, 'Mouse', 'Electronics', 20, 800, 'East'),
(6, 'Sofa', 'Furniture', 3, 15000, 'South'),
(7, 'Headphones', 'Electronics', 8, 1800, 'North'),
(8, 'Laptop', 'Electronics', 6, 55000, 'West'),
(9, 'Table', 'Furniture', 12, 6000, 'East'),
(10, 'Fan', 'HomeAppliance', 18, 3000, 'South'),
(11, 'AC', 'HomeAppliance', 4, 35000, 'North'),
(12, 'Cupboard', 'Furniture', 5, 12000, 'West'),
(13, 'Printer', 'Electronics', 9, 9000, 'East'),
(14, 'Bed', 'Furniture', 2, 25000, 'South'),
(15, 'Mobile', 'Electronics', 14, 20000, 'North');

select * from sales;
select * from sales where Category='Electronics';
select * from sales where Unit_price>10000;
select * from sales where region='north';
select * from sales where Units_sold between 5 and 15;
select category='Furniture' where unit_price>5000;

-- group by having 
 select category, sum(Units_sold)as total_units from sales
 group by category having sum(Units_sold)>20;
select region, sum(Unit_price)as totalrevenue from sales
 group by region having sum(Unit_price)>50000;
select category, count(product)as count_products from sales
 group by category having count(product)>2;
 select category, avg(Unit_price)as avg_unit_price from sales
 group by category having avg(Unit_price)<5000;
select region, count(*)as electronics from sales
 group by region having count(*)>1;
 -- group by and order by
 select category, sum(Units_sold)as totalunits from sales group by category order by totalunits desc;
 select region, avg(Unit_price)as avg_unitprice from sales group by region order by region ;
 select category, sum(Unit_price)as total_revenue from sales group by category order by total_revenue desc ;
 select region, count(product) AS Product_count from sales group by region order by product_count desc;
 select region, sum(Units_sold)as each_region from sales group by region order by each_region ;

-- group by + having + order by

select region,sum(Unit_price)as totalrevenue from sales group by region having sum(Unit_price)>20000 order by totalrevenue desc;
select category,sum(Units_sold)as totalunitsold from sales group by category having sum(Units_sold)>10 order by category;
select region,count(product) as countproduct from sales group by region having count(product)>1 order by region Asc;
 select region,sum(Unit_price)as totalrevenue from sales group by region having sum(Unit_price)>20000 order by totalrevenue desc;
select category,Avg(Unit_price) as avg_price from sales group by category having avg(Unit_price)<6000 order by avg_price;
SELECT category, AVG(Units_sold) AS avg_unitssold 
FROM sales 
GROUP BY category 
HAVING AVG(Units_sold) > 5 
ORDER BY avg_unitssold DESC;

-- where + groupby + having + order by
select region,sum(Units_sold) as totalunits from sales where category='Electronics' group by region having sum(Units_sold)>15 order by totalunits desc;
select category,sum(Unit_price) as total_revenue from sales where Unit_price >2000 group by category having sum(Unit_price)>10000 order by total_revenue desc;
select region,avg(Unit_price) as avg_price from sales where Units_sold>=5 group by region having avg(Unit_price)>5000 order by avg_price asc;
select category,count(product) as count_product from sales where  region in ('North','South') group by category having count(product)>2 order by count_product desc;