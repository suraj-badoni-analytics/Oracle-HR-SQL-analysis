Oracle SQL HR Analytics Project


Task 1. Employees with department names :
select 
a.FIRST_NAME,
a.LAST_NAME,
b.DEPARTMENT_NAME
from 
EMPLOYEES a
left join 
DEPARTMENTS b on a.DEPARTMENT_ID = b.DEPARTMENT_ID;



Task 2. Employees without department :
select 
a.FIRST_NAME,
a.LAST_NAME,
b.DEPARTMENT_NAME
from 
EMPLOYEES a
left join 
DEPARTMENTS b on a.DEPARTMENT_ID = b.DEPARTMENT_ID
where b.DEPARTMENT_ID is null;



Task 3. Employees with salary above company average :
select
FIRST_name,
LAST_NAME,
SALARY
from
EMPLOYEES
where
salary > (select avg(salary)
from EMPLOYEES);



Task 4. Average salary per department (only>8000) :
select
a.DEPARTMENT_NAME,
avg(b.SALARY) as avg_salary
from 
DEPARTMENTS A
join
EMPLOYEES b on a.DEPARTMENT_ID  = b.DEPARTMENT_ID
group by 
a.DEPARTMENT_NAME
having
avg(b.SALARY)>8000;



Task 5.Number of employees per department (including empty) :
select
a.DEPARTMENT_NAME,
count (b.DEPARTMENT_ID) as employee_count
from 
DEPARTMENTS a
left join
EMPLOYEES b on a.DEPARTMENT_ID = b.DEPARTMENT_ID
group by 
a.DEPARTMENT_NAME;




Conclusions :

Using Oracle HR schema, I analyzed employee distribution and salaries across departments.
Identified departments with high average salaries and employees earning above company average.
The project demonstrates skills in joins, aggregations, subqueries and handling NULL values.
