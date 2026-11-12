use pfs8;
-- left join 
select E.emp_id,E.name,D.Department_name
from employees.E
left join Department.D
on E.Department_id=D.Department_id;

select E.department_name,E.name,
from Departments.D
left join employees.E
on D.Department_id=E.Department_id;

select E.emp_id,E.name,D.Department_name
From employees.E
left join Department.D
On D.department_id=E.Department_id
where Department_name is null;

select E.emp_id,E.name,P.project_name
from employees
left join project.P
on E.emp_id=E.emp_id
where project_name is null;

-- count Employees per each department
select P.project_name,count(e.emp_id)as total_projects
from employees E
left join projects P
on e.emp_id=P.Emp_id
group by E.name;

select D.Department_name,sum(E.salary)as total_salary
from Departments D
left join Employees E
on D.department_id=E.department_id
group by department_name

select D.Department_name,count(e.emp_id)as total_employees
from departments D
left join employees E
on d.department_id=E.department_id
Group by department_name
order by total_employees desc;

select D.Department_name,sum(E.salary)as total_salary
from Departments D
left join Employees E
on D.department_id=E.department_id
group by department_name
order by total_salary asc;

select D.Department_name,count(e.emp_id)as total_employees
from departments D
left join employees E
on d.department_id=E.department_id
Group by department_name
having count(e.emp_id)>1
order by total_employees desc;



select D.Department_name,avg(E.salary)as avg_salary
from Departments D
left join Employees E
on D.department_id=E.department_id
group by department_name
having avg_salary>40000
order by avg_salary asc;


select D.Department_name,avg(E.salary)as avg_salary
from Departments D
left join Employees E
on D.department_id=E.department_id
group by department_name
order by avg_salary desc
limit 1;s
