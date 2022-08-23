-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "Dept_No" VARCHAR   NOT NULL,
    "Dept_Name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Employees" (
    "Emp_No" INT   NOT NULL,
    "Emp_Title_Id" VARCHAR   NOT NULL,
    "Birth_Date" DATE   NOT NULL,
    "First_Name" VARCHAR   NOT NULL,
    "Last_Name" VARCHAR   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "Hire_Date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Dept_Emp" (
    "Emp_No" INT   NOT NULL,
    "Dept_No" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Dept_Emp" PRIMARY KEY (
        "Emp_No","Dept_No"
     )
);

CREATE TABLE "Dept_Manager" (
    "Dept_No" VARCHAR   NOT NULL,
    "Emp_No" INT   NOT NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY (
        "Dept_No","Emp_No"
     )
);

CREATE TABLE "Salaries" (
    "Emp_No" INT   NOT NULL,
    "Salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Titles" (
    "Title_Id" VARCHAR   NOT NULL,
    "Title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_Id"
     )
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Emp_Title_Id" FOREIGN KEY("Emp_Title_Id")
REFERENCES "Titles" ("Title_Id");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Departments" ("Dept_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Departments" ("Dept_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

