--Order By Queries
--Q31 Select all employees ordered by their salary in ascending order.
SELECT * FROM Employee ORDER BY salary ASC;

--Q32 Select all employees ordered by their age in descending order.
SELECT * FROM Employee ORDER BY age DESC;

--Q33 Select all employees ordered by their hire date in ascending order.
SELECT * FROM Employee ORDER BY hire_date ASC;

--Q34 Select employees ordered by their department and then by their salary.
SELECT * FROM Employee ORDER BY department_id, salary;

--Q35 Select departments ordered by the total salary of their employees.
SELECT department_id, SUM(salary) FROM Employee GROUP BY department_id ORDER BY SUM(salary);

--Join Queries
--Q36 Select employee names along with their department names.
SELECT E.name, D.name FROM Employee E JOIN Department D ON E.department_id = D.department_id;

--Q37 Select project names along with the department names they belong to.
SELECT P.name, D.name FROM Project P JOIN Department D ON P.department_id = D.department_id;

--Q38 Select employee names and their corresponding project names.
SELECT E.name, P.name FROM Employee E JOIN Project P ON E.department_id = P.department_id;

--Q39 Select all employees and their departments, including those without a department.
SELECT E.name, D.name FROM Employee E LEFT JOIN Department D ON E.department_id = D.department_id;

--Q40 Select all departments and their employees, including departments without employees.
SELECT D.name, E.name FROM Department D LEFT JOIN Employee E ON D.department_id = E.department_id;

--Q41 Select employees who are not assigned to any project.
SELECT E.name FROM Employee E LEFT JOIN Project P ON E.department_id = P.department_id WHERE P.project_id IS NULL;

--Q42 Select employees and the number of projects their department is working on.
SELECT E.name, COUNT(P.project_id) FROM Employee E LEFT JOIN Project P ON E.department_id = P.department_id GROUP BY E.name;

--Q43 Select the departments that have no employees.
SELECT D.name FROM Department D LEFT JOIN Employee E ON D.department_id = E.department_id WHERE E.emp_id IS NULL;

--Q44 Select employee names who share the same department with 'John Doe'.
SELECT name FROM Employee WHERE department_id = (SELECT department_id FROM Employee WHERE name = 'John Doe') AND name != 'John Doe';

--Q45 Select the department name with the highest average salary.
SELECT D.name FROM Department D JOIN Employee E ON D.department_id = E.department_id GROUP BY D.name ORDER BY AVG(salary) DESC LIMIT 1;
