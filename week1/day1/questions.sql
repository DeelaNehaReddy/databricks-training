-- Basic Queries
-- Q1 Select all columns from the Employee table
SELECT * FROM Employee;

--Q2 Select only the name and salary columns from the Employee table
SELECT name, salary FROM Employee; 

--Q3 Select employees who are older than 30
SELECT * FROM Employee WHERE age > 30;

--Q4 Select the names of all departments.
SELECT name FROM Department;

--Q5 Select employees who work in the IT department
SELECT * FROM Employee WHERE department_id = (SELECT department_id FROM Department WHERE name = 'IT');
