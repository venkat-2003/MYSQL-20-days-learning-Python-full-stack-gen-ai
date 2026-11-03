-- constraints 
-- are nothing but the rules and data types in the creating table in the data base.
-- NOT NULL
-- UNIQUE
-- PRIMARY KEY
-- DEFAULT
-- check
-- COMPOSITE KEY
-- forign key


-- not null
use employee
create table employee(
empid int,
empname varchar(30) not null,
salary decimal(10,2)
);
insert into employee values(101,'maneendra',50000);
insert into employee values(102,'venkat',35000);

select * from employee;
set sql_safe_updates=0;
update employee set empname='pavan' where empid='103';

-- unique constraints
create table enrollment(
stuid int,
email varchar(40),
stuname varchar(40),
unique(stuid,email));

insert into enrollment values(1000,'mani@gmail.com','venkat');
insert into enrollment values(1002,'ram@gmail.com','ramcharan');
insert into enrollment values(1003,'ram@gmail.com','ntr');

select * from enrollment;

-- primary key constraints 
-- composite key constraints
create table products(
productid int, 
productname varchar(40),
productprice decimal(10,2),
primary key(productid,productname));

insert into products values(00011,'smartwatch',35000);
insert into products values(10012,'samsungA37',35000);
insert into products values(10013,'AC',40000);
select * from products;
