create database companydb;
use companydb;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    experience INT,
    city VARCHAR(50),
    age INT
);

INSERT INTO employees
VALUES
(101, 'Ravi', 'IT', 45000, 2, 'Hyderabad', 24),
(102, 'Kiran', 'HR', 40000, 3, 'Vijayawada', 27),
(103, 'Suresh', 'IT', 55000, 5, 'Hyderabad', 30),
(104, 'Anil', 'Sales', 35000, 1, 'Chennai', 23),
(105, 'Priya', 'Finance', 60000, 6, 'Bangalore', 32),
(106, 'Sneha', 'IT', 50000, 4, 'Vizag', 28),
(107, 'Rahul', 'HR', 42000, 2, 'Hyderabad', 25),
(108, 'Arjun', 'Sales', 38000, 3, 'Chennai', 26),
(109, 'Divya', 'Finance', 65000, 7, 'Bangalore', 34),
(110, 'Manoj', 'IT', 70000, 8, 'Hyderabad', 35);

SELECT*FROM EMPLOYEES;
-- STORED PROCEDURE --

DELIMITER //
CREATE PROCEDURE GETITEMPLOYEES()
BEGIN
SELECT * FROM EMPLOYEES WHERE DEPARTMENT='IT';
END //
DELIMITER ;

CALL GETITEMPLOYEES();

DELIMITER //
CREATE PROCEDURE GETEXPERIENCEEMPLOYEES()
BEGIN
SELECT * FROM EMPLOYEES WHERE EXPERIENCE>5;
END //
DELIMITER ;
CALL GETEXPERIENCEEMPLOYEES();

-- IN PARAMETER --
DELIMITER //
CREATE PROCEDURE GETEMPLOYEESBYDEPARTMENT(IN DEPT VARCHAR(30))
BEGIN
SELECT * FROM EMPLOYEES WHERE DEPARTMENT=DEPT;
END //
DELIMITER //

CALL GETEMPLOYEESBYDEPARTMENT('IT');

DELIMITER //
CREATE PROCEDURE GETEMPLOYEESBYSALARY(IN SAL DECIMAL(10,2))
BEGIN
SELECT * FROM EMPLOYEES WHERE SALARY>SAL;
END //
DELIMITER //
CALL GETEMPLOYEESBYSALARY(50000);

DELIMITER //
CREATE PROCEDURE  INCREMENTBYEXPERIENCE(IN EXP INT,IN SAL DECIMAL(10,2))
BEGIN
UPDATE EMPLOYEES SET SALARY=SALARY+SAL WHERE EXPERIENCE>EXP;
END //
DELIMITER //
SET SQL_SAFE_UPDATES=0;

call INCREMENTBYEXPERIENCE(5,20000);

delimiter //
create procedure getemployeesbysalaryrange(in min_sal decimal(10,2), in max_sal decimal(10,2))
begin
select *from employees where salary between min_sal and max_sal;
end //
delimiter //

call   getemployeesbysalaryrange(20000,60000)

delimiter //
create procedure getemployees(out it int)
select count(*)into it from employees where department='it';
end //
delimiter //
call getemployees(@i)
-- in and out parameters --
delimiter //
create procedure addbonus(in empid int, inout bonus decimal(10,2))
begin
update employees set salary=salary+bonus where emp_id=emp_id;

select salary into bonus from employees where emp_id=emp_id;
select * from employees where emp_id=101;
end //
delimiter //
set @b=10000;
call addbonus(101,@b);
select @b;

DELIMITER //
CREATE PROCEDURE SUBTRACTBONUS(IN EMPID INT,INOUT BONUS DECIMAL(10,2))
BEGIN
UPDATE EMPLOYEES SET SALARY=SALARY-BONUS WHERE EMP_ID=EMPID;
SELECT SALARY INTO BONUS FROM EMPLOYEES WHERE EMP_ID=EMPID;
END //
DELIMITER ;
SET @B=6000;
CALL SUBTRACTBONUS(101,@B);
SELECT @B;



