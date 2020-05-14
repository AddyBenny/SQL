drop table if exists department;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;


create table department(
	dept_no varchar(10) not null primary key,
	dept_name varchar(50) not null 
);

create table employees(
	emp_no int not null primary key,
	emp_title_id varchar(50)not null,
	birth_date date not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	sex char not null,
	hire_date date not null
);

create table titles(
	title_id varchar(10) not null primary key,
	title varchar(50) not null
);
 
create table dept_emp(
	emp_no int not null,
	dept_no varchar not null,
	foreign key(emp_no) references employees(emp_no),
	foreign key(dept_no) references department(dept_no)
);


create table dept_manager(
	dept_no varchar not null,
	emp_no int not null,
	foreign key(dept_no) references department(dept_no),
	foreign key(emp_no) references employees(emp_no)
);


create table salaries(
	emp_no int not null,
	salary real not null,
	foreign key(emp_no) references employees(emp_no)
);

