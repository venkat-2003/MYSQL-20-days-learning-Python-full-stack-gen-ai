use companydb;
drop table employees;
CREATE TABLE Employees (
	emp_id INT PRIMARY KEY,
	emp_name VARCHAR(50),
	department VARCHAR(30),
	salary DECIMAL(10,2),
	experience INT,
	city VARCHAR(30)
);
 
INSERT INTO Employees VALUES
(101,'Rahul','IT',65000,5,'Hyderabad'),
(102,'Priya','HR',45000,3,'Chennai'),
(103,'Amit','Finance',70000,6,'Bangalore'),
(104,'Sneha','IT',80000,8,'Hyderabad'),
(105,'Kiran','Sales',40000,2,'Pune');


CREATE TABLE Employee_Audit(
	audit_id INT AUTO_INCREMENT PRIMARY KEY,
	emp_id INT,
	action_type VARCHAR(20),
	old_salary DECIMAL(10,2),
	new_salary DECIMAL(10,2),
	action_time DATETIME
);

select*from employees;
select*from employee_audit;
-- before insert --
DELIMITER //
CREATE TRIGGER TRG_BEFORE_INSERT_SALARY
BEFORE INSERT
ON EMPLOYEES
FOR EACH ROW
BEGIN
IF NEW.SALARY<20000 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT='SALARY CANNOT BE LESS THEN 20000';
END IF;
END //
DELIMITER ;
INSERT INTO EMPLOYEES VALUES(106,'rajesh','sales',12000,5,'anakapalle');

-- after insert-- 
DELIMITER //
CREATE TRIGGER TRG_AFTER_INSERT
AFTER INSERT
ON EMPLOYEES
FOR EACH ROW
BEGIN 
INSERT INTO EMPLOYEE_AUDIT(EMP_ID,ACTION_TYPE,NEW_SALARY,ACTION_TIME)
VALUES(NEW.EMP_ID,'INSERT',NEW.SALARY,NOW());
END //
DELIMITER ;
INSERT INTO EMPLOYEES VALUES(107,'CHANDU','IT',30000,3,'VIZAG');
SELECT * FROM EMPLOYEE_AUDIT;

-- BEFORE UPDATE-- 
delimiter //
create trigger trg_before_update_salary
before update
on employees
for each row
begin
if new.salary<old.salary then
signal sqlstate '45000'
set message_text ='the salary cannot be reduced';
end if;
end //
delimiter ;


-- after update --
DELIMITER //
CREATE TRIGGER TRG_AFTER_UPDATE
AFTER UPDATE
ON EMPLOYEES FOR EACH ROW 
BEGIN 
INSERT INTO EMPLOYEE_AUDIT(EMP_ID,ACTION_TYPE,OLD_SALARY,NEW_SALARY,ACTION_TIME)
VALUES(OLD.EMP_ID,'UPDATE',OLD.SALARY,NEW.SALARY,NOW());
END //
DELIMITER ;
UPDATE EMPLOYEES SET SALARY=60000 WHERE EMP_ID=107;
SELECT*FROM EMPLOYEE_AUDIT;

-- before delete --
delimiter //
create trigger trg_before_delete_employee
before delete
on employees
for each row
begin
if old.department='IT' then
signal sqlstate '45000'
set message_text='cannot delete it employees';
end if;
end //
delimiter ;
delete from employees where emp_id=101;
select * from employees;

drop table employees;

-- after delete --

delimiter //
create trigger trg_after_delete
after delete
on employees
for each row
begin
	insert into employee_audit(emp_id,action_type,old_salary,action_time)
    values(old.emp_id,'delete',old.salary,now());
    end //
    delimiter ;
   delete from employees where emp_id=103;
select *from employee_audit;





