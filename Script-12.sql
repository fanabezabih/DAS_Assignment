--create schema business_manufacture;
--create table business_manufacture.employees_table(
--employeeId SERIAL primary key,
--first_name VARCHAR(20),
--last_name VARCHAR(20),
--gender VARCHAR(15),
--department VARCHAR(30),
--hire_date Date ,
--salary DECIMAL(12,2)
--);
--insert into business_manufacture.employees_table(first_name,last_name,gender,department,hire_date,salary)
--VALUES('John','Doe','Male','IT','2028-05-01',60000.00),
--      ('Jane','Smith','Female','HR','2019-06-15',50000.00),
--      ('Michael','Johnson','Male','Finance','2017-03-10',75000.00),
--      ('Emily','Davis','Female','IT','2020-11-20',70000.00),
--      ('Sarah','Brown','Female','Marketing','2016-07-30',45000.00),
--      ('David','Wilson','Male','Sales','2019-01-05',55000.00),
--      ('Chris','Taylor','Male','IT','2022-02-25',65000.00);
--
--create table business_manufacture.products(
--product_id SERIAL primary key,
--product_name varchar(20),
--category varchar(25),
--price decimal(5,2),
--stock int
--);
--insert into business_manufacture.products (product_name,category,price,stock)
--values('Desk','Furniture',300.00,50),
--('Chair','Furniture',150.00,200),
--('Smartphone','Electronics',800.00,75),
--('Monitor','Electronics',250.00,40),
--('Bookshelf','Furniture',100.00,60),
--('Printer','Electronics',200.00,25);

--CREATE TABLE business_manufacture.sales_table(
--    SaleID INT PRIMARY KEY,
--    ProductID INT,
--    EmployeeID INT,
--    SaleDate DATE,
--    Quantity INT,
--    Total DECIMAL(20,2)
--);
--INSERT into business_manufacture.sales_table(SaleID, ProductID, EmployeeID, SaleDate, Quantity, Total)
--VALUES
--(1, 1, 1, '2021-01-15', 2, 2400.00),
--(2, 2, 2, '2021-03-22', 1, 300.00),
--(3, 3, 3, '2021-05-10', 4, 600.00),
--(4, 4, 4, '2021-07-18', 3, 2400.00),
--(5, 5, 5, '2021-09-25', 2, 500.00),
--(6, 6, 6, '2021-11-30', 1, 100.00),
--(7, 7, 1, '2022-02-15', 1, 200.00),
--(8, 1, 2, '2022-04-10', 1, 1200.00),
--(9, 2, 3, '2022-06-20', 2, 600.00),
--(10, 3, 4, '2022-08-05', 3, 450.00),
--(11, 4, 5, '2022-10-11', 1, 800.00),
--(12, 5, 6, '2022-12-29', 4, 1000.00);


--SELECT * FROM business_manufacture.employees_table;
--SELECT first_name
--FROM business_manufacture.employees_table;
--SELECT DISTINCT department
--FROM business_manufacture.employees_table;
--SELECT COUNT(*)
--FROM business_manufacture.employees_table;
--SELECT SUM(salary) AS total_salary
--FROM business_manufacture.employees_table;
--SELECT AVG(salary) FROM business_manufacture.employees_table;
--SELECT MAX(salary) AS highest_salary
--FROM business_manufacture.employees_table;
--SELECT MIN(salary) AS lowest_salary
--FROM business_manufacture.employees_table;

--SELECT COUNT(*)
--FROM business_manufacture.employees_table
--WHERE gender = 'Male';
--SELECT COUNT(*)
--FROM business_manufacture.employees_table
--WHERE gender = 'female';
--SELECT COUNT(*) AS total_hired_2020
--FROM business_manufacture.employees_table
--WHERE EXTRACT(YEAR FROM hire_date) = 2020;

--SELECT AVG(salary)
--FROM business_manufacture.employees_table
--WHERE department = 'IT';
--SELECT Department, COUNT(*) AS employee_count
--FROM business_manufacture.employees_table
--GROUP BY Department;
--SELECT Department, SUM(Salary) AS total_salary
--FROM business_manufacture.employees_table
--GROUP BY Department;
--SELECT Department, MAX(Salary) AS max_salary
--FROM business_manufacture.employees_table
--GROUP BY Department;

--SELECT Department, MIN(Salary) AS min_salary
--FROM business_manufacture.employees_table
--GROUP BY Department;
--SELECT Gender, COUNT(*) AS num_employees
--FROM business_manufacture.employees_table
--GROUP BY Gender;
--SELECT Gender, AVG(Salary) AS avg_salary
--FROM business_manufacture.employees_table
--GROUP BY Gender;
--
--SELECT * FROM business_manufacture.employees_table
--ORDER BY Salary DESC
--LIMIT 5;
--SELECT COUNT(DISTINCT first_name) FROM business_manufacture.employees_table;
--SELECT e.*, s.*
--FROM business_manufacture.employees_table e
--JOIN business_manufacture.sales_table s ON e.EmployeeID = s.EmployeeID;
--SELECT * FROM business_manufacture.employees_table
--ORDER BY hire_date ASC
--LIMIT 10;
--SELECT * FROM business_manufacture.employees_table e
--WHERE NOT EXISTS (
--	SELECT 1 FROM business_manufacture.sales s WHERE s.EmployeeID = e.EmployeeID
--);
--SELECT e.employeeId, e.first_name, e.last_Name, COUNT(s.SaleID) AS total_sales
--FROM business_manufacture.employees_table e
--LEFT JOIN business_manufacture.sales_table s ON e.EmployeeID = s.EmployeeID
--GROUP BY e.employeeId, e.first_name, e.last_Name;
--ORDER BY total_sales DESC
--LIMIT 1;
--SELECT e.department, AVG(s.Quantity) AS avg_quantity
--FROM business_manufacture.employees_table e
--JOIN business_manufacture.sales_table s ON e.employeeId = s.employeeId
--GROUP BY e.department;
--SELECT e.employeeId, e.first_name, e.last_Name, SUM(s.Total) AS total_sales_2021
--FROM business_manufacture.employees_table e
--JOIN business_manufacture.sales_table s ON e.employeeId = s.employeeId
--WHERE EXTRACT(YEAR FROM s.SaleDate) = 2021
--GROUP BY e.employeeId, e.first_name, e.last_Name;
--SELECT e.employeeId, e.first_name, e.last_name, SUM(s.Quantity) AS total_quantity
--FROM business_manufacture.employees_table e
--JOIN business_manufacture.sales_table s ON e.employeeId = s.employeeId
--GROUP BY e.employeeId, e.first_name, e.last_name
--ORDER BY total_quantity DESC
--LIMIT 3;
--SELECT e.department, SUM(s.Quantity) AS total_quantity
--FROM business_manufacture.employees_table e
--JOIN business_manufacture.sales_table s ON e.employeeId = s.employeeId
--GROUP BY e.department;
SELECT s.category, SUM(s.Total) AS total_revenue
FROM business_manufacture.sales_table s
JOIN business_manufacture.products p ON s.ProductID = p.product_id
GROUP BY s.category;




































