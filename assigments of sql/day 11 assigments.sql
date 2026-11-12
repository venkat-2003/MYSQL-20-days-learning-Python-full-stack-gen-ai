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

-- my sql string functions 
--------------------------------------------------------------

Q1. Find employees whose first_name starts with 'R'.

select * from employees where first_name like 'R%';
Q2. Find employees whose email contains 'yahoo'.

select * from employees where email like '%yahoo%';
Q3. Display full name along with department as a single string.
select concat(first_name, ' ',last_name, ' ',department) as fullnamedepartment from employees;

Q4. Find the length of every email address.
select email, length(email) as emaillength from employees;
Q5. Find employees whose first_name has more than 5 characters.
select first_name, length(first_name)>5 as fivecharcters from employees;
Q6. Replace 'gmail.com' with 'company.com' in email.

select email, replace(email,'gmail.com','company.com')as newemail from employees;
Q7. Find the position of the '@' symbol in email.
select email,position('@' in email) as positionofsymbol from employees;

Q8. Extract the username part of email (before '@') using SUBSTRING_INDEX().
select email,substring_index(email,'@',1)as username from employees;
Q9. Extract the domain part of email (after '@') using SUBSTRING_INDEX().
select email, substring_index(email,'@',-1)as demoinpart from employees;
Q10. Find employees whose last_name ends with 'a'.

select*from employees where last_name like '%a';
Q11. Display full name in uppercase for employees in the IT department.

select upper(concat(first_name,last_name))as fullname from employees where department='IT';
Q12. Find first names that are duplicated among employees.
select first_name, count(first_name)as count_firstname from employees group by first_name having count(first_name)>1;
Q13. Format phone numbers by removing all dashes.
select phone_number,replace(phone_number,'-','')as newphonenumber from employees;

Q14. Find employees whose first_name contains the letter 'i'.
select * from employees where first_name like '%i%';
Q15. Sort employees by the length of their first_name.
select * from employees order by length(first_name)
Q16. Find employees whose city name has more than 6 characters.
select city,length(city)as citych from employees where length(city)>6;
select concat(first_name,'-',department)as employeeinfo from employees
Q18. Display the initials of each employee (first letter of first and last name).

Q19. Remove leading and trailing spaces from employee names.

Q20. Display the first three characters of every employee's first_name.

     select first_name,substring(first_name,1,3) as firstthree from employees

-- date and time functions
-----------------------------------------
use pfs8;
drop table employee_attendence;
drop table employee_attendence;
CREATE TABLE staff_attendance
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

INSERT INTO staff_attendance
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

select*from staff_attendance;
Q1. Display only the date part from every employee's login time.
select joining_date(login_time) from staff_attendence;
Q2. Display only the time part from every employee's login time.

Q3. Display employee names along with their joining year.
select emp_name,year(joining_date) as empyear from staff_attendance;

Q4. Display employee names along with their birth month number.
select emp_name,month(birth_date)as empbirthmonth from staff_attendance;
Q5. Display employee names and day of birth.
select emp_name,day(birth_date)as empdayborn from staff_attendance;

Q6. Display the week number of every employee's joining date.
select week(joining_date)as  week_number from staff_attendance;
Q7. Display the weekday number of each employee's joining date.
select weekday(joining_date)as  week_day from staff_attendance;

Q8. Add 30 days to every employee's joining date.
SELECT emp_name, DATE_ADD(joining_date, INTERVAL 30 DAY) AS add30 
FROM staff_attendance;

Q9. Subtract 15 days from every employee's joining date.
SELECT emp_name, DATE_sub(joining_date, INTERVAL 15 DAY) AS sub15 
FROM staff_attendance;

Q10. Find how many days each employee has worked from joining date until today.
SELECT emp_name, DATEDIFF(CURDATE(), joining_date) AS howmanydays  from staff_attendance;


Q11. Find the number of days between login time and logout time.

Q12. Display the Unix timestamp of login_time.

Q13. Convert Unix timestamp 1700000000 into DateTime.

Q14. Display the last day of each employee's joining month.

Q15. Display the month name and day name of every employee's birth date.
