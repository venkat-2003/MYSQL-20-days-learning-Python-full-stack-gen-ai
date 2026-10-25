create database staff_details;
use staff_details
create table staff_details(
empid int primary key,
empname varchar(100),
department varchar(50),
jobrole varchar(50),
salary decimal(10,2),
joiningdate date,
city varchar(60)
);

desc staff_details;

insert into staff_details 
(empid , empname , department, jobrole, salary, joiningdate,city)
values
(101,'RaviKumar','IT','Developer',45000,'2023-01-15','Vizag'),
(102,'PriyaSharma','HR','HR Manager',55000,'2022-06-20','Hyderabad'),
(103,'KiranReddy','IT','Tester',40000,'2023-03-10','Vizag');

select * from staff_details

insert into staff_details values
(104, 'Sneha Rao', 'Finance', 'Accountant', 48000, '2021-11-25', 'Chennai'),
(105, 'Arun Kumar', 'IT', 'Developer', 60000, '2020-08-18', 'Bangalore'),
(106, 'Divya Reddy', 'HR', 'Recruiter', 35000, '2024-01-05', 'Vizag'),
(107, 'Suresh Babu', 'Sales', 'Executive', 42000, '2022-09-12', 'Hyderabad'),
(108, 'Anjali Devi', 'IT', 'Developer', 70000, '2019-05-30', 'Chennai'),
(109, 'Mahesh Kumar', 'Sales', 'Manager', 65000, '2020-02-14', 'Bangalore'),
(110, 'Lakshmi Rao', 'Finance', 'Analyst', 52000, '2023-07-22', 'Hyderabad');


select * from staff_details

-- updating values
set sql_safe_updates=0;

update staff_details set salary=50000 where empname='RaviKumar';
update staff_details set salary=salary*1.10 where department='IT';
select * from staff_details
update staff_details set city='vizag' where empname='PriyaSharma';
select * from staff_details
update staff_details set jobrole='seniorTester' where empname='KiranReddy';
select * from staff_details
update staff_details set salary=salary+5000 where department='HR';
select * from staff_details
update staff_details set city='Hyderabad' where city='Vizag';
select * from staff_details
update staff_details set department='Development' where empname='Arun Kumar';
select * from staff_details
update staff_details set salary=salary*1.15 where salary<45000;
select  * from staff_details
update staff_details set jobrole='senior Developer' where empname='Anjali Devi';
select  * from staff_details
update staff_details set city='Bangalore' where department='Finance';
select  * from staff_details 

-- select commands
select  * from staff_details 
select * from staff_details where department='IT';
select * from staff_details where salary>50000;
select empname,salary from staff_details;
select * from staff_details where city='Vizag';
select * from staff_details where joiningdate>'2022-01-01';
select * from staff_details where salary between 40000 and 60000;
select * from staff_details order by salary asc;
select * from staff_details order by salary desc;

-- delect commands
delete from staff_details where empid=106;
select * from staff_details
delete from staff_details where department='Finance';
select * from staff_details
delete from staff_details where salary<40000;
delete from staff_details where city='vizag';
delete from staff_details where empname='Suresh Babu';
delete from staff_details where joiningdate<'2020-01-01';
delete from staff_details where jobrole='Recruiter';
delete from staff_details where department='Sales'<50000;


