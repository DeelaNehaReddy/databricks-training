--Aggregate Queries

--Q16 Select the total salary of all employees.
SELECT SUM(salary) FROM Employee;

--Q17 Select the average salary of employees.
SELECT AVG(salary) FROM Employee;

--Q18 Select the minimum salary in the Employee table.
SELECT MIN(salary) FROM Employee;

--Q19 Select the number of employees in each department.
SELECT department_id, COUNT(*) FROM Employee GROUP BY department_id;

--Q20 Select the average salary of employees in each department.
SELECT department_id, AVG(salary) FROM Employee GROUP BY department_id;

  

--Group By Queries

--Q21 Select the total salary for each department.
SELECT department_id, SUM(salary) FROM Employee GROUP BY department_id;

--Q22 Select the average age of employees in each department.
SELECT department_id, AVG(age) FROM Employee GROUP BY department_id;

--Q23 Select the number of employees hired in each year.
SELECT YEAR(hire_date), COUNT(*)  FROM Employee GROUP BY YEAR(hire_date);

--Q24 Select the highest salary in each department.
SELECT department_id, MAX(salary) FROM Employee GROUP BY department_id;

--Q25 Select the department with the highest average salary.
SELECT department_id FROM Employee GROUP BY department_id ORDER BY AVG(salary) DESC LIMIT 1;

  
--Having Queries
--Q26 Select departments with more than 2 employees.
SELECT department_id FROM Employee GROUP BY department_id HAVING COUNT(*) > 2;

--Q27 Select departments with an average salary greater than 55000.
SELECT department_id FROM Employee GROUP BY department_id HAVING AVG(salary) > 55000;

--Q28 Select years with more than 1 employee hired.
SELECT strftime('%Y', hire_date) FROM Employee GROUP BY strftime('%Y', hire_date) HAVING COUNT(*) > 1;

--Q29 Select departments with a total salary expense less than 100000.
SELECT department_id FROM Employee GROUP BY department_id HAVING SUM(salary) < 100000;

--Q30 Select departments with the maximum salary above 75000.
SELECT department_id FROM Employee GROUP BY department_id HAVING MAX(salary) > 75000;
