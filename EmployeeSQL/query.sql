--1.List the following details of each employee: employee number, 
--last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s
using(emp_no);

--2. List employees who were hired in 1986.
select * from employees 
where extract('year' from hire_date) = 1986
order by hire_date;

--3.List the manager of each department with the following information: 
--department number,department name, the manager's employee number, 
--last name, first name, and start and end employment dates.
select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, e.hire_date
from employees as e
join dept_manager as dm
on e.emp_no = dm.emp_no
join department as d
on d.dept_no = dm.dept_no
order by dm.emp_no;

-- NOTE, i did not find employment end date in any of my tables

--4.List the department of each employee with the following information:
--employee number, last name, first name, and department name.
select  e.emp_no, e.last_name, e.first_name,d.dept_name
from dept_emp as de
join employees as e
on de.emp_no = e.emp_no
join department as d
on d.dept_no = de.dept_no;


--5.List all employees whose first name is "Hercules" and 
--last names begin with "B."

select first_name, last_name
from employees
where (first_name = 'Hercules') and (last_name like 'B%');

--6. List all employees in the Sales department, including their 
--employee number,last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join department as d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales';


--7.7. List all employees in the Sales and Development departments,including
--their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join department as d
on d.dept_no = de.dept_no
where (d.dept_name = 'Sales') or d.dept_name = ('Development');

--8. In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.
select last_name, count(last_name) as "last_name_count"
from employees
group by last_name
order by "last_name_count" desc;






