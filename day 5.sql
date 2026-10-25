use pfs8
Show tables
show databases
desc employee
insert into employee(company_name,empid,empname,empdept,age,doj,empsalary,empaddress)
values
('infosys','emp01','venkat','IT',22,'2026-12-25',25000,'akp')


select * from employee;

insert into employee(company_name,empid,empname,empdept,age,doj,empsalary,empaddress)
values
('infosys','emp01','pavan','IT',23,'2026-12-12',20000,'vsp')

insert into employee values('infosys','emp03','maneendra','IT',22,'2025-12-01',30000,'akp')

-- insert values in the specified column
insert into employee(company_name,empname,empdept,empsalary)
values
('infosys','venkat','IT',30000)

insert into employee(empname,age,empaddress)
values
('suresh','22','vsp')

insert into employee set
company_name='infosys',empid='emp06',empname='rajesh',empdept='IT',age=22,doj='2024-03-02',empsalary=20000,empaddress='vsp';
-- update command--
select * from employee;
set sql_safe_updates=0;
update employee set empsalary=50000 where empname='venkat'

select * from employee where empname='venkat';
update employee set doj='2026-10-24' where empid='emp01';
update employee set empdept='hr' where empid='emp06';
update employee set age=30 where empname='suresh';

-- delete--

delete from employee where  empname='pavan';
delete from employee where empdept='hr';


