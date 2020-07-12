SELECT employees.empno, lastname, firstname, sex, salaries.salary as salary
FROM employees
LEFT JOIN salaries
ON salaries.empno = employees.empno;

SELECT firstname, lastname, hiredate
FROM employees
WHERE hiredate LIKE '%1986%'

SELECT dept_manager.departmentno, dept.departmentname, dept_manager.empno, employees.lastname, employees.firstname
FROM dept_manager
LEFT JOIN dept
ON dept.departmentno = dept_manager.departmentno
LEFT JOIN employees
ON employees.empno = dept_manager.empno

SELECT dept_emp.empno, employees.lastname, employees.firstname, dept.departmentname
FROM dept_emp
LEFT JOIN employees
ON employees.empno = dept_emp.empno
LEFT JOIN dept
ON dept.departmentno = dept_emp.departmentno

SELECT firstname, lastname, sex
FROM employees
WHERE firstname = 'Hercules'
AND lastname LIKE 'B%'

SELECT dept_emp.empno, employees.lastname, employees.firstname, dept.departmentname
FROM dept
LEFT JOIN dept_emp
ON dept_emp.departmentno = dept.departmentno
LEFT JOIN employees
ON employees.empno = dept_emp.empno
WHERE dept.departmentname = 'Sales'


SELECT dept_emp.empno, employees.lastname, employees.firstname, dept.departmentname
FROM dept
LEFT JOIN dept_emp
ON dept_emp.departmentno = dept.departmentno
LEFT JOIN employees
ON employees.empno = dept_emp.empno
WHERE dept.departmentname = 'Sales'
OR dept.departmentname = 'Development'

SELECT lastname, COUNT(lastname) as lastnamecount
FROM employees
GROUP BY lastname
ORDER BY lastnamecount DESC