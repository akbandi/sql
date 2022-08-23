-- List the following details of each employee: employee number, last name, first name, sex, and salary.
Select e."Emp_No",
e."Last_Name",
e."First_Name",
e."Sex",
s."Salary"
from "Employees" e
join "Salaries" s
on e."Emp_No" = s."Emp_No"
order by e."Emp_No";

--List first name, last name, and hire date for employees who were hired in 1986.
Select
e."Last_Name",
e."First_Name",
e."Hire_Date"
from "Employees" e
where e."Hire_Date" >= '1986-01-01' and e."Hire_Date" <= '1986-12-31'
order by e."Hire_Date";

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

select distinct dm."Dept_No",
d."Dept_Name",
e."Emp_No",
e."Last_Name",
e."First_Name"
from "Dept_Manager" dm
join "Departments" d
on dm."Dept_No" = d."Dept_No"
join "Employees" e
on dm."Emp_No" = e."Emp_No"
join "Titles" ti
on e."Emp_Title_Id" = ti."Title_Id"
where ti."Title_Id" = 'm0001'
order by dm."Dept_No";


--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

Select e."Emp_No",
e."Last_Name",
e."First_Name",
d."Dept_Name"
from "Employees" e
join "Dept_Emp" de
on e."Emp_No" = de."Emp_No"
join "Departments" d
on de."Dept_No" = d."Dept_No"
order by e."Emp_No";

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select e."Emp_No",
e."Last_Name",
e."First_Name",
e."Sex"
from "Employees" e
where e."First_Name" ='Hercules' and e."Last_Name" like 'B%'
order by e."Emp_No";

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select e."Emp_No",
e."Last_Name",
e."First_Name",
d."Dept_Name"
from "Employees" e
join "Dept_Emp" de
on e."Emp_No" = de."Emp_No"
join "Departments" d
on de."Dept_No" = d."Dept_No"
where d."Dept_No" = 'd007' --sales depatment
order by e."Emp_No";

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
Select e."Emp_No",
e."Last_Name",
e."First_Name",
d."Dept_Name"
from "Employees" e
join "Dept_Emp" de
on e."Emp_No" = de."Emp_No"
join "Departments" d
on de."Dept_No" = d."Dept_No"
where d."Dept_No" in ('d005','d007') --sales and Development depatment
order by e."Emp_No";

--List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select e."Last_Name", 
count(e."Last_Name") as "Frequency_Count"
from "Employees" e
group by e."Last_Name"
order by "Frequency_Count" desc;
;