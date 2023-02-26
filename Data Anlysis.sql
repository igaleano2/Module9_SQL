--List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT e.emp_no, last_name, first_name, sex, salary
FROM employeesPH AS e
LEFT JOIN salaryPH AS s
ON e.emp_no=s.emp_no
ORDER BY s.salary DeSC;

--List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT e.emp_no, last_name, first_name, hire_date
FROM employeesPH AS e
where hire_date >= '1/1/1986' AND hire_date <= '12/31/1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)

select e.first_name, e.last_name, m.dept_no, dn.dept_name,m.emp_no

FROM dep_managerPH as m
join departmentsph as dn 
on m.dept_no =dn.dept_no
join employeesph as e
on m.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)

select de.dept_name, dem.dept_no, e.first_name, e.last_name,e.emp_no
FROM employeesph as e
join dept_empph as dem
on e.emp_no = dem.emp_no
join departmentsph as de
on dem.dept_no = de.dept_no

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)

select e.first_name, e.last_name, e.sex
from employeesph as e
where e.first_name ='Hercules' and e.last_name like 'B%'

--List each employee in the Sales department, including their employee number, last name, and first name (2 points)

select dem.dept_no, e.emp_no, e.last_name, e.first_name
FROM employeesph as e
join dept_empph as dem
on dem.emp_no = e.emp_no
where dem.dept_no ='d007'

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)

select e.emp_no, e.first_name, e.last_name, d.dept_name
from employeesph as e
join dept_empph as dem
on dem.emp_no = e.emp_no
join departmentsph as d
on d.dept_no = dem.dept_no
where dem.dept_no ='d007' or dem.dept_no ='d005'

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)

select e.last_name, count(e.last_name) as last_name_count
from employeesph as e
group by last_name
order by last_name_count desc
