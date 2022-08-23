-- Data import using Import/Export form CSV and querying the tables for data

-- Drop tables with dependents
DROP TABLE  "Departments" CASCADE;
DROP TABLE "Employees" CASCADE;
DROP TABLE "Dept_Emp" CASCADE;
DROP TABLE "Dept_Manager" CASCADE;
DROP TABLE  "Salaries" CASCADE;
DROP TABLE "Titles" CASCADE;

-- Select queries to verify data import
select * from "Departments";
select * from "Employees";
select * from "Dept_Emp";
select * from "Dept_Manager";
select * from "Salaries";
select * from "Titles";

