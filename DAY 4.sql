create database employee;

CREATE table employee(
empid char(5),
empname varchar(15),
empdept char(4),
age int,
doj date,
empsalary int,
empaddress tinytext
);

DESC employee;

ALTER table employee modify empname varchar(20);

ALTER table employee modify empdept char(3);

ALTER table employee  add location tinytext;

-- HOW to add A column After a particular Column
--- syntax: 
ALTER table employee Add EMPPFID char(5) after empaddress

-- How to add column name in the first in the table 
-- Syntax:
Alter table employee add  company_name  text first;

-- how to add existing column name in the table
-- syntax: Alter table tablename change existing column name new-column name datatype(size)

Alter Table employee CHANGE empname First_name varchar(40);

--- Drop the created drop column column name

ALTER table employee drop column compnay_name;

ALTER table employee drop column EMpPFID;


create database Company_Staff;

create table company_STaff(
empid int primary key,
age Tinyint,
experience smallint,
gender char(1),
empname varchar(50),
address tinytext,
salary decimal(10,2),
department ENUM('HR','IT','SALES','FINANCE','SUPPORT'),
skills SET('java','python','sql','excel','communication'),
joining date
);

desc company_staff; 

ALTER table company_staff add Email varchar(100);

ALTER table company_staff add phone_number bigint;

Alter table company_staff add bonus decimal(8,2) after salary;

Alter table company_staff add company_name varchar(50) first ;

Alter table company_staff add qualification varchar(40) after empname;

Alter table company_staff modify empname varchar(100);

Alter table company_staff modify salary decimal(12,2);

Alter table company_staff rename  column empname to employee_name;

Alter table comapny_staff rename column joining to joiningdate




