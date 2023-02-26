

CREATE TABLE "employeesph" (
    "emp_no" INTEGER   NOT NULL primary key,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" date   NOT NULL    
 );

SELECT * FROM employeesph;

CREATE TABLE "departmentsph" (
    "dept_no" VARCHAR   NOT NULL primary key,
    "dept_name" VARCHAR   NOT NULL   
);
SELECT * FROM departmentsph;

CREATE TABLE "dep_managerph" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    FOREIGN key (emp_no) references employeesph(emp_no),
	FOREIGN key (dept_no) references departmentsph(dept_no)
);

SELECT * FROM dep_managerph;

CREATE TABLE "dept_empph" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
	FOREIGN key (emp_no) references employeesph(emp_no),
	FOREIGN key (dept_no) references departmentsph(dept_no),
	Primary key (emp_no, dept_no)
);

SELECT * FROM dept_empph;

CREATE TABLE "salaryph" (
    "emp_no" INTEGER   NOT NULL primary key,
    "salary" INTEGER   NOT NULL,
    FOREIGN key (emp_no) references employeesph(emp_no)
);
SELECT * FROM salaryph;


CREATE TABLE "titlesph" (
    "title_id" VARCHAR   NOT NULL primary key,
    "title" VARCHAR   NOT NULL
    
);

SELECT * FROM titlesph;