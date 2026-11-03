-- operstors
-- operators or nothing but symbol which perform operation 
-- they are two
-- operand
-- operator
-- a+b
use pfs8;
CREATE TABLE Products (
 id INT,
 name VARCHAR(100),
 price DECIMAL(10,2),
 qty INT
 );

INSERT INTO Products VALUES
 (1, 'Pen', 10.00, 100),
 (2, 'Notebook', 25.00, 50),
 (3, 'Pencil', 5.00, 200),
 (4, 'Eraser', 3.00, 300),
 (5, 'Marker', 15.00, 80),
 (6, 'Scale', 20.00, 150),
 (7, 'Sharpener', 8.00, 120),
 (8, 'Geometry Box', 120.00, 40),
 (9, 'Sketch Pen', 60.00, 75),
 (10, 'Crayons', 90.00, 55);
 drop table products;
 
select name,price,price+(price*0.10)as pricewithtax from products;
select name,price,price-5 as discountedprice from products;
select name,price,qty,price*qty as total_inventory from products;
select name,price,price*10 as caluclateperten10units from products;
select name,qty,qty%50!=0 as price_not_50 from products;



use pfs8;
CREATE TABLE StudentScores (
 id INT,
 name VARCHAR(100),
 subject VARCHAR(50),
 marks INT
 );


INSERT INTO StudentScores VALUES
 (1, 'Alice', 'Math', 95),
 (2, 'Bob', 'Math', 76),
 (3, 'Charlie', 'Math', 59),
 (4, 'Diana', 'Math', 88),
 (5, 'Eve', 'Math', 40),
 (6, 'Frank', 'Math', 95),
 (7, 'Grace', 'Science', 67),
 (8, 'Henry', 'Science', 82),
 (9, 'Ivy', 'English', 91),
 (10, 'Jack', 'English', 55),
 (11, 'Kevin', 'Math', 73),
 (12, 'Lily', 'Science', 48),
 (13, 'Mia', 'English', 100),
 (14, 'Noah', 'Math', 64),
 (15, 'Olivia', 'Science', 79);
drop table StudentScores;
--
set SQL_SAFE_UPDATES=0;

update products set price=price-5;
select * from products;
update products set qty=qty*2 where name='Eraser';

update products set qty=qty/2 where name='Marker';

delete from products where qty<100;
select * from products;
delete from products where price<10;

use pfs8;
CREATE TABLE StudentScores (
 id INT,
 name VARCHAR(100),
 subject VARCHAR(50),
 marks INT
 );


INSERT INTO StudentScores VALUES
 (1, 'Alice', 'Math', 95),
 (2, 'Bob', 'Math', 76),
 (3, 'Charlie', 'Math', 59),
 (4, 'Diana', 'Math', 88),
 (5, 'Eve', 'Math', 40),
 (6, 'Frank', 'Math', 95),
 (7, 'Grace', 'Science', 67),
 (8, 'Henry', 'Science', 82),
 (9, 'Ivy', 'English', 91),
 (10, 'Jack', 'English', 55),
 (11, 'Kevin', 'Math', 73),
 (12, 'Lily', 'Science', 48),
 (13, 'Mia', 'English', 100),
 (14, 'Noah', 'Math', 64),
 (15, 'Olivia', 'Science', 79);
 
 select*from StudentScores where marks>80;
 select*from StudentScores where marks>=60;
 select * from StudentScores where marks<50;
 select * from StudentScores where marks=95;
  select * from StudentScores where marks!=95;
   select*from StudentScores where marks<=60;
   
-- updates
   
update StudentScores set marks=marks+5 where marks<60;
select * from StudentScores;
update StudentScores Set marks=marks+2 where marks>90;
update StudentScores Set marks=marks+3 where marks>80;
update StudentScores Set marks=marks-1 where marks!=95;

-- delete
delete from StudentScores where marks<50;
delete from StudentScores Where marks<60;
delete from StudentScores where marks>80;
delete from StudentScores where marks!=95;

drop table employees;
use pfs8;
CREATE TABLE Employees (
   id INT,
   name VARCHAR(100),
   department VARCHAR(100),
   salary INT,
   isactive BOOLEAN
);
Insert Into employees values
(1, 'Rahul Sharma', 'IT', 50000, TRUE),
(2, 'Priya Reddy', 'HR', 30000, TRUE),
(3, 'Amit Kumar', 'Finance', 45000, FALSE),
(4, 'Sneha Patel', 'IT', 35000, TRUE),
(5, 'Vikram Singh', 'Finance', 28000, TRUE),
(6, 'Anjali Mehta', 'HR', 32000, FALSE),
(7, 'Kiran Rao', 'IT', 60000, TRUE),
(8, 'Pooja Verma', 'Marketing', 27000, TRUE);
select*from employees;
select * from employees where department='IT' and salary>40000;
select * from employees where department='HR' or salary<35000;
select * from employees where not department='HR';
select * from employees where  department<>'HR';
select * from employees where department='Finance' or
(salary>30000 and isactive-1); 

-- updates
update employees set salary=salary+2000 where department='IT' and isactive=true and salary<60000;
update employees set salary=salary-(salary*0.10) where department='Finance' or isactive=false;

-- assigment
use pfs8;
drop table products;

CREATE TABLE Products (
 id INT,
 name VARCHAR(100),
 price DECIMAL(10,2),
 qty INT
 );
 
 INSERT INTO Products VALUES
 (1, 'Pen', 10.00, 100),
 (2, 'Notebook', 25.00, 50),
 (3, 'Pencil', 5.00, 200),
 (4, 'Eraser', 3.00, 300),
 (5, 'Marker', 15.00, 80),
 (6, 'Scale', 20.00, 150),
 (7, 'Sharpener', 8.00, 120),
 (8, 'Geometry Box', 120.00, 40),
 (9, 'Sketch Pen', 60.00, 75),
 (10, 'Crayons', 90.00, 55);
 
 select * from products;
 select name,price,price+20 from products;
 
  select name,qty,qty/2 from products;
select name,qty,qty*2 as doubleqty from products;
select name,qty,qty-10 as remainingqty from products;
select name, price,price/5 as equallyamong5people from products;
select name, price,price%2 as evennumber from products;
select name, qty,qty/5 asdividedby5 from products
select name, price,price+(price*0.10)as discount from products;
select name, price,price+15*1.18 as finalprice from products;
select name,qty,qty/2 as remainingqty from products;

-- updates
set SQL_SAFE_UPDATES=0;
 select * from products;

update products set qty=qty+50 where name='Pen';
update products set qty=qty-25 where name='Pencil';
update products set price=price*1.10 where name='Scale';
update products set price=price*2 where name='Sharpener';
update products set price=price-15 where name='Crayons';

-- delete 
 select * from products;

delete from products where price<10;
delete from products where name='Marker';
delete from products where qty=qty>300;
delete from products where price>100;

-- relational operators
drop table StudentScores;
use pfs8;
CREATE TABLE StudentScores (
 id INT,
 name VARCHAR(100),
 subject VARCHAR(50),
 marks INT
 );
 
INSERT INTO StudentScores VALUES
 (1, 'Alice', 'Math', 95),
 (2, 'Bob', 'Math', 76),
 (3, 'Charlie', 'Math', 59),
 (4, 'Diana', 'Math', 88),
 (5, 'Eve', 'Math', 40),
 (6, 'Frank', 'Math', 95),
 (7, 'Grace', 'Science', 67),
 (8, 'Henry', 'Science', 82),
 (9, 'Ivy', 'English', 91),
 (10, 'Jack', 'English', 55),
 (11, 'Kevin', 'Math', 73),
 (12, 'Lily', 'Science', 48),
 (13, 'Mia', 'English', 100),
 (14, 'Noah', 'Math', 64),
 (15, 'Olivia', 'Science', 79);
 select * from StudentScores;
select * from StudentScores where marks<60;
select * from StudentScores where marks>70;
select * from StudentScores where marks<=70;
select * from StudentScores where marks=100;
select * from StudentScores where marks!=40;
select * from StudentScores where marks>=90;
select * from StudentScores where marks<65;

update StudentScores set marks=100 where marks=95;
 select * from StudentScores;
update StudentScores set marks=marks+15 where marks<60;
update StudentScores set marks=marks+5 where marks>75;
update StudentScores set marks=marks-3 where marks>95;
update StudentScores set marks=75 where marks<50;
update StudentScores set marks=marks+8 where marks=64;
update StudentScores set marks=marks-5 where marks=100;

-- Delete 
delete from StudentScores where marks=76;
delete from StudentScores where marks=100;
delete from StudentScores where marks<65;
delete from StudentScores where marks>=90;
delete from StudentScores where marks=73;
delete from StudentScores where marks=48;
delete from StudentScores where marks>=70 and marks<=80;

show tables;
-- logical operator
use pfs8;
drop table employees;
CREATE TABLE Employees (
 id INT,
 name VARCHAR(100),
 department VARCHAR(100),
 salary INT,
 isactive BOOLEAN
 );

INSERT INTO Employees VALUES
 (1, 'Rahul Sharma', 'IT', 50000, TRUE),
 (2, 'Priya Reddy', 'HR', 30000, TRUE),
 (3, 'Amit Kumar', 'Finance', 45000, FALSE),
 (4, 'Sneha Patel', 'IT', 35000, TRUE),
 (5, 'Vikram Singh', 'Finance', 28000, TRUE),
 (6, 'Anjali Mehta', 'HR', 32000, FALSE),
 (7, 'Kiran Rao', 'IT', 60000, TRUE),
 (8, 'Pooja Verma', 'Marketing', 27000, TRUE),
 (9, 'Ramesh Naidu', 'Sales', 38000, TRUE),
 (10, 'Deepika Joshi', 'Finance', 52000, TRUE),
 (11, 'Suresh Babu', 'Marketing', 29000, FALSE),
 (12, 'Neha Kapoor', 'HR', 41000, TRUE),
 (13, 'Arjun Reddy', 'IT', 55000, FALSE),
 (14, 'Lakshmi Devi', 'Sales', 33000, TRUE),
 (15, 'Nikhil Jain', 'IT', 47000, TRUE);
 
 select * from employees;
select * from employees where isactive=false and salary<30000;
select * from employees where department='marketing' and salary>25000;
select * from employees where department!='Finance';
select * from employees where isactive=true and salary>50000;
select * from employees where department='sales' or department='Hr';
select * from employees where isactive='false' and department='IT';
select * from employees where salary<40000 and isactive='true';

update employees set isactive='1' where department='marketing';
update employees set salary=salary-2000 where isactive='0';
update employees set salary=salary*1.15 where isactive='1' and salary>50000
update employees set isactive='1' where department='Finance';
update employees set salary=salary+1000 where department='IT' or department='Sales';
