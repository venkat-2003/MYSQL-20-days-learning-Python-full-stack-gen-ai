-- numeric and string function
select ABS(-100) as absolute_value;
select ceil(12.34) as rounded_up;
select FLOOR(12.34) as rounded_down;
select mod(17,5) as remainder;
select pow(2,3) as powervalue;
select sqrt(10) as squarevalue;
select radians(180) as radiansvalue;
select degrees(pi()) sa degrees_value;
select sign(10)as sign_value;


-- string functions--
use pfs8;
drop table employees;
CREATE TABLE employees (
	emp_id INT PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(60),
	phone_number VARCHAR(20),
	department VARCHAR(30),
	city VARCHAR(30),
	salary DECIMAL(10,2)
);
INSERT INTO employees VALUES
(101,'Rahul','Kumar','rahul.kumar@gmail.com','987-654-3210','IT','Hyderabad',45000),
(102,'Anita','Sharma','anita.sharma@yahoo.com','912-345-6789','HR','Bangalore',38000),
(103,'Suresh','Verma','suresh.verma@gmail.com','998-123-4567','Sales','Chennai',52000),
(104,'Priya','Singh','priya.singh@outlook.com','900-456-7890','Finance','Pune',47000),
(105,'Rahul','Joshi','rahul.joshi@gmail.com','955-888-1111','Testing','Delhi',41000),
(106,'Kiran','Reddy','kiran.reddy@gmail.com','901-222-3333','IT','Hyderabad',56000),
(107,'Deepika','Naidu','deepika.naidu@yahoo.com','944-111-2222','HR','Vizag',39000),
(108,'Mahesh','Patel','mahesh.patel@gmail.com','933-444-5555','Sales','Mumbai',62000),
(109,'Divya','Gupta','divya.gupta@gmail.com','955-777-8888','Finance','Delhi',49000),
(110,'Arjun','Rao','arjun.rao@gmail.com','988-999-7777','Developer','Hyderabad',68000);

select * from employees;
select concat(first_name,last_name) as fullname from employees;
select first_name,upper(first_name) as uppername from employees;
select last_name,lower(last_name) as lowername from employees;
select email,substring(email,1,10) as email_prefix from employees;
select first_name, length(first_name) as length_name from employees;
select phone_number, replace(phone_number,'-','') as clean_number from employees;

insert into employees(emp_id,first_name) values (111,'  sunny  ');
select first_name,trim(first_name) as trimedname from employees;
select first_name,position('a' in first_name) as positionof_A from employees;
select last_name,reverse(last_name) as reversename from employees;
select first_name,left(first_name,3) as shortname from employees;
select first_name,right(first_name,4) as endname from employees;
select first_name,lpad(first_name,10,'*') as padded_name from employees;
select email,rpad(email,9,'*') as padded_name from employees;

-- Date and time functions
select curdate() as current_date;
select curtime() as current_time;
select now() as current_date_time;
select date(now())as extracted_date;
select time(now())as extracted_time;
select month(now()) as month_part;
select year(now()) as year_part;
select day(now())as day_part;
select dayofweek(now()) as day_of_week;
select date_add(now(),interval 10 day) as new_date;
select date_sub(now(), interval 20 day) as early_date;
select datediff(now(),'2000-05-23')as days_differ;
select makedate(2024,31) as result_date;
select maketime(14,30,15) as result_time;
select monthname(now()) as month_name;
select dayname(now()) as day_name;
select quarter(now()) as quarter_value;
select sec_to_time(2456) as setastime;

use pfs8;
CREATE TABLE employee_attendance
(
	emp_id INT PRIMARY KEY AUTO_INCREMENT,
	emp_name VARCHAR(100),
	department VARCHAR(50),
	joining_date DATE,
	birth_date DATE,
	login_time DATETIME,
	logout_time DATETIME,
	salary DECIMAL(10,2)
);
INSERT INTO employee_attendance
(emp_name, department, joining_date, birth_date, login_time, logout_time, salary)
VALUES
('Rahul','IT','2021-06-15','1998-05-10','2024-11-20 09:05:10','2024-11-20 18:15:30',55000),
('Sneha','HR','2020-03-21','1996-11-18','2024-11-21 08:55:20','2024-11-21 17:45:50',48000),
('Arjun','Finance','2019-08-10','1994-07-30','2024-11-22 09:15:45','2024-11-22 18:35:20',62000),
('Priya','IT','2022-01-05','2000-01-25','2024-11-23 09:00:00','2024-11-23 17:55:40',51000),
('Kiran','Admin','2018-12-11','1992-09-15','2024-11-24 08:40:30','2024-11-24 17:30:00',45000),
('Anjali','Testing','2023-04-17','1999-12-20','2024-11-25 09:12:10','2024-11-25 18:05:00',47000),
('Vijay','IT','2021-09-14','1997-04-08','2024-11-26 09:08:15','2024-11-26 18:20:40',59000),
('Divya','HR','2019-10-19','1995-06-11','2024-11-27 08:50:30','2024-11-27 17:42:15',50000),
('Ramesh','Finance','2017-07-01','1991-08-14','2024-11-28 09:03:00','2024-11-28 18:12:00',70000),
('Pooja','Testing','2022-05-09','2001-03-19','2024-11-29 09:18:50','2024-11-29 18:25:10',53000);

SELECT*FROM employee_attendance;
select joining_date 