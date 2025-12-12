-- Creating employees table
CREATE TABLE Employees3 (
    Employee_ID INT PRIMARY KEY,
    EName VARCHAR(50),
    Age INT,
    Salary INT,
    Department_ID INT,
    FOREIGN KEY(department_id) REFERENCES 
    departments (department_id)
);

INSERT INTO Employees3 (Employee_ID, EName, Age, Salary, Department_ID) VALUES
(1, 'John', 30, 60000, 101),
(2, 'Emily', 25, 48000, 102),
(3, 'Michael', 40, 75000, 103),
(4, 'Sara', 35, 56000, 101),
(5, 'David', 28, 49000, 102),
(6,'Robert',45,90000,103),
(7,'sophia',29,51000,102);

SELECT * FROM Employees3;

-- Create Department Table
CREATE TABLE Departments3 (
 Department_ID INT PRIMARY KEY,
 Department_Name VARCHAR (50));
 
 INSERT INTO Departments3( Department_ID,Department_Name) VALUES(101,'HR'),(102,'FINANCE'),(103,'IT');
 
SELECT * FROM Departments3;

-- Create Sales Table
CREATE TABLE Sales3(
Sales_ID int,
Customer_ID int,
Amount int,
Sales_Date Date); 

INSERT INTO Sales3( Sales_ID,Customer_ID,Amount,Sales_Date) VALUES
(1,101,4500.00,'2023-03-15'),
(2,102,5500.00,'2023-03-16'),
(3,103,7000.00,'2023-03-17'),
(4,104,3000.00,'2023-03-18'),
(4,105,6000.00,'2023-03-19');

SELECT * FROM Sales3;

-- create Product table
CREATE TABLE Products3(
Product_ID int,
Product_Name varchar(50),
Price int); 

INSERT INTO Products3( Product_ID,Product_Name,Price ) VALUES
(1,'Laptop',1000),
(2,'Mobile',500),
(3,'Tablet',300),
(4,'Headphones',300);
 
 SELECT * FROM Products3;

-- Create order table
CREATE TABLE Orders3(
Order_ID int,
Customer_Name varchar(50),
Order_Date date,
Order_Amount int);

INSERT INTO Orders3(order_ID,Customer_Name,Order_Date,Order_Amount) VALUES
(1,'Jhon','2023-05-01',500),
(2,'Emily','2023-05-02',700),
(3,'Michael','2023-05-03',1200),
(4,'Sara','2023-05-04',450),
(5,'David','2023-05-05',900),
(6,'John','2023-05-06',600),
(7,'Emily','2023-05-07',750);

SELECT * FROM Orders3;

-- create employee table
CREATE TABLE Employees5 (
    Employee_ID INT PRIMARY KEY,
    EName VARCHAR(50),
    Age INT,
    Salary INT,
    Department_ID INT,
    FOREIGN KEY(Department_ID) REFERENCES 
    Departments3 (Department_ID)
);

INSERT INTO Employees5 (Employee_ID, EName, Age, Salary, Department_ID) VALUES
(1, 'John', 30, 60000, 101),
(2, 'Emily', 25, 48000, 102),
(3, 'Michael', 40, 75000, 103),
(4, 'Sara', 35, 56000, 101),
(5, 'David', 28, 49000, 102),
(6,'Robert',45,90000,103),
(7,'sophia',29,51000,102);



-- QUESTIONS
-- 1.	Retrieve all employees whose salary is greater than 60000.
SELECT * FROM  Employees3
WHERE Salary>60000;

-- 2.Calculate the total sales amount for each customer from the sales table.

SELECT SUM(Amount) as Sales_Amount FROM
Sales3
GROUP BY Customer_ID;

-- 3.Retrieve the names and salaries of all employees working in the Finance department
SELECT Employees5. EName ,Employees5.Salary, Departments3.Department_Name
FROM Employees5
LEFT JOIN 
Departments3
ON
Employees5.Department_ID = Departments3.Department_ID
WHERE Department_Name="Finance";

-- 4.Find the total sales amount made on 2023-03-17 from the sales table.
SELECT Amount as Total_Sales
  FROM Sales3
WHERE Sales_Date='2023-03-17';

-- 5.Get the names of customers who have placed an order of more than 600 from the orders table.
  SELECT Customer_Name FROM Orders3
  WHERE Order_Amount>600;



