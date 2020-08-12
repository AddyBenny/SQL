#My schema.sql and query.sql are in the EmployeeSQL file

Data Modeling
- Inspected the CSVs and sketched out an Entity Relationship Diagram (ERD) of the tables. Used: http://www.quickdatabasediagrams.com.

Data Engineering
- I used the information i have to create a table schema for each of the six CSV files. Specified the data types, primary keys, foreign keys, and other constraints.
- Import each CSV file into the corresponding SQL table.

Data Analysis
Using the complete database, performaed the following analyses:
- Listed the following details of each employee: employee number, last name, first name, gender, and salary.
- List of employees who were hired in 1986.
- List of the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
- List of the department of each employee with the following information: employee number, last name, first name, and department name.
- List of all employees whose first name is "Hercules" and last names begin with "B."
- List of all employees in the Sales department, including their employee number, last name, first name, and department name.
- List of all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
- In descending order, listed the frequency count of employee last names, i.e., how many employees share each last name.

Import the SQL database into Pandas
- Created a histogram to visualize the most common salary ranges for employees.
- Created a bar chart of average salary by title.

Tools and Library used: ERD, Postgres, Pandas, Matplotlib, Numpy, seaborn, sqlalchemy, Jupyter notebook.
