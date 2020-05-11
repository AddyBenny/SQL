drop table if exists department;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;


create table department(
	dept_no varchar(10) not null,
	dept_name varchar(50) not null 
);

select * from department;
 
create table dept_emp(
	emp_no int not null,
	dept_no varchar not null
);

select * from dept_emp;

create table dept_manager(
	dept_no varchar not null,
	emp_no int not null
);

select * from dept_manager
limit 100;

create table employees(
	emp_no int not null,
	emp_title_id varchar(45)not null,
	birth_date varchar not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	sex varchar(2) not null,
	hire_date varchar not null
);

select * from employees
limit 100;

create table salaries(
	emp_no int not null,
	salary int not null
);

select * from salaries
limit 20;

create table titles(
	title_id varchar(10) not null,
	title varchar(50) not null
);

select * from titles;