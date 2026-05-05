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

--String Matching Queries

--Q6 Select employees whose names start with 'J'
Select employees whose names start with 'J'.SELECT * FROM Employee WHERE name LIKE 'J%';

--Q7 Select employees whose names end with 'e'
Select employees whose names end with 'e'.SELECT * FROM Employee WHERE name LIKE '%e';

--Q8 Select employees whose names contain 'a'
Select employees whose names contain 'a'.SELECT * FROM Employee WHERE name LIKE '%a%';

--Q9 Select employees whose names are exactly 9 characters long
Select employees whose names are exactly 9 characters long.SELECT * FROM Employee WHERE name LIKE '_________';

--Q10 Select employees whose names have 'o' as the second character
Select employees whose names have 'o' as the second character.SELECT * FROM Employee WHERE name LIKE '_o%';

--Date Queries
--Q11 Select employees hired in the year 2020
Select employees hired in the year 2020.SELECT * FROM Employee WHERE hire_date LIKE '2020%';

--Q12 Select employees hired in January of any year
Select employees hired in January of any year.SELECT * FROM Employee WHERE hire_date LIKE '%-01-%';

--Q13 Select employees hired before 2019.
Select employees hired before 2019.SELECT * FROM Employee WHERE hire_date < '2019-01-01';

--Q14 Select employees hired on or after March 1, 2021
Select employees hired on or after March 1, 2021.SELECT * FROM Employee WHERE hire_date >= '2021-03-01';

--Q15 Select employees hired in the last 2 years
Select employees hired in the last 2 years.SELECT * FROM Employee WHERE hire_date >= '2024-05-05'; (Assuming current date 2026)
