-- Aggregate functions 
-- count
-- min
-- max
-- avg
-- sum
use pfs8;
select * from employees;
-- clouse
-- where 
-- group by
-- having 
-- order by
-- limit
drop table students;
use pfs8;
-- where condition
CREATE TABLE STUDENTS (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(30),
    Marks INT,
    City VARCHAR(30)
);
INSERT INTO STUDENTS (Name, Age, Department, Marks, City) VALUES
('Anil', 20, 'CSE', 85, 'Hyderabad'),
('Sneha', 22, 'ECE', 75, 'Mumbai'),
('Ravi', 20, 'CSE', NULL, 'Hyderabad'),
('Divya', 23, 'MECH', 65, NULL),
('Kiran', 22, 'ECE', 75, 'Pune'),
('Varun', 21, 'CSE', 92, 'Chennai'),
('Priya', 20, 'EEE', 88, 'Delhi'),
('John', 22, 'MECH', 55, 'Mumbai'),
('Rekha', 21, 'ECE', 75, 'Pune'),
('Ramesh', 23, 'EEE', NULL, 'Delhi');
select * from STUDENTS;
select * from STUDENTS where department='CSE';
select * from STUDENTS where Marks>80;
select * from STUDENTS where age=22;
select * from STUDENTS where Marks between 70 and 90;
select * from STUDENTS where department='CSE' and Marks>80;
-- group by 
select Department,count(*)as Total_Students
from STUDENTS GROUP BY Department;
select Department,avg(Marks)as Each_department
from STUDENTS group by Department;
select Department,sum(Marks)as total_marks
from STUDENTS group by Department;
select Department,max(Marks)as Each_department
from STUDENTS group by Department;
select Department,min(Marks)as min_marks
from STUDENTS group by Department;
select * from STUDENTS;
select city,count(*)as number_students
from STUDENTS group by city;
select Marks,count(Marks)as total_marks
from STUDENTS group by Marks;
-- having
select Department,avg(Marks)as avg_marks
from STUDENTS group by Department having Avg_marks>80;
select Department,sum(Marks)as total_marks
from STUDENTS group by Department having total_marks>200;
-- order by
select * from STUDENTS order by StudentID desc;


select Department,avg(Marks)as avg_marks
from STUDENTS group by Department having Avg_marks>70 order by Avg_Marks desc;

select city,count(*)as total_students
from STUDENTS where marks>70 group by city having total_students>1 order by total_students ;
