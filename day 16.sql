use pfs8;
show tables
CREATE table children(
ch_id  int primary key,
name  varchar(50),
email varchar(50));

start transaction;
insert into children values
(101,'ramu','ramu@gmail.com'),
(102,'raj','raj@gmail.com'),
(103,'venkat','venkat@gmail.com');
commit;
select * from children;

start transaction
delete from children where ch_id=102;
select * from children;
rollback;
select * from children;

start transaction;
insert into children values(104,'rajesh','rajesh@gmail.com');
select * from children;
update children set name='mani' where ch_id=104;
select* from children;
savepoint ch1;
delete from  children where ch_id=101;
select * from children;
rollback to ch1;
select*from children;

-- views
use pfs8;
drop table departments;
drop table employees;

CREATE TABLE departments (
	dept_id INT PRIMARY KEY AUTO_INCREMENT,
	dept_name VARCHAR(50),
	location VARCHAR(50)
);
CREATE TABLE employees (
	emp_id INT PRIMARY KEY AUTO_INCREMENT,
	emp_name VARCHAR(100),
	dept_id INT,
	designation VARCHAR(50),
	salary DECIMAL(10,2),
	join_date DATE,
	FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
INSERT INTO departments (dept_name, location) VALUES
('IT','Hyderabad'), ('HR','Bangalore'), ('Finance','Chennai'), ('Sales','Mumbai');
 
INSERT INTO employees (emp_name, dept_id, designation, salary, join_date) VALUES
('Rahul',1,'Software Engineer',55000,'2021-06-15'),
('Anita',2,'HR Executive',38000,'2020-03-21'),
('Suresh',4,'Sales Manager',52000,'2019-08-10'),
('Priya',1,'Team Lead',65000,'2022-01-05'),
('Kiran',3,'Finance Analyst',48000,'2018-12-11'),
('Deepika',2,'HR Manager',60000,'2019-10-19');
select*from departments;
select*from employees;

create view vw_employees_departments as
select e.emp_id,e.emp_name,e.designation,d.dept_name,d.location
from employees e
join departments d
on e.dept_id=d.dept_id;

select * from vw_employees_departments;

create view vw_employees_annual_salary as
select emp_name,salary as monthly_salary, salary*12 as annual_salary from employees;
select * from vw_employees_annual_salary;

create view vw_departments_salary_summary as
s