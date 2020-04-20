Create Table Employee
(
 EmployeeID INT,
  FirstName VARCHAR(255),
  LastName VARCHAR(225)
  )

  Insert Into Employee (EmployeeID, FirstName, LastName)VALUES
  
(1, 'Oge', 'Obi'),
(2, 'Tega', 'Enitan'),
(3, 'Dami', 'Olu')

Select * From Employee

Create Table Salary
(
 EmployeeID INT,
  Salary VARCHAR(255),
  )
   Insert Into Salary (EmployeeID, Salary)VALUES
  
(1, '$10,000'),
(2, '$8,000'),
(3, '$6,000')

-----Inner Join
Select * From Employee
Select * From Salary

Select A.FirstName, A.LastName, B.Salary
From Employee A INNER JOIN Salary B ON A.EmployeeID = B.EmployeeID



Create Table Phone (EmployeeID INT, PhoneNumber INT)
 Insert Into Phone Values (1, 33333333)
 Insert Into Phone Values (2, 11111111)

 ----Left Join
 Select * From Employee
 Select * From Phone

 Select A.FirstName, A.LastName, B.PhoneNumber From Employee A Left Join Phone B
 ON A.EmployeeID = B.EmployeeID


Create Table Worker (WokersID INT, WorkersName Varchar(255),)

Insert Into Worker(WokersID, WorkersName)VALUES
  
(1, 'Oge'),
(2, 'Tega'), 
(3,'Enitan'),
(4, 'Dami'),
(5, 'Olu')

Create Table Parking (WokersID INT, Parking_Spot INT)

Insert Into Parking(WokersID, Parking_Spot)VALUES
  
(1, '11'),
(2, '32'), 
(3,'63')

---Right Outer Join
Select * From Parking
 Select * From Worker

 Select A.Parking_Spot, B.WorkersName From Parking A Right Join Worker B
 ON A.WokersID = B.WokersID




 Create Table Customer (CustomerID INT, CustomerName Varchar (255))
 TRUNCATE Table Customer
 Insert Into Customer(CustomerID, CustomerName)VALUES
 (1, 'Amaka'),
 (3, 'Igwe')

 Create Table Orders(OrderID INT, OrderName Varchar (255), CustomerID INT)
 Insert Into Orders(OrderID, OrderName, CustomerID)VALUES
 (1, 'Pepper', 2),
 (2, 'Thinker', 1),
 (3, 'Kamil', 7),
 (4, 'Orbit', 8)

 ----FUll Outer Join

 Select * From Customer
 Select * From Orders

 Select A.CustomerID, A.CustomerName, B.OrderID, OrderName 
 From Customer A Full Outer Join Orders B
 ON A.CustomerID = B.CustomerID



--- Cross Join

Select * From Customer
 Select * From Salary

 Select * From Customer Cross Join Salary

 ---DATES

 SELECT GETDATE ()

SELECT GETDATE () - 2

---DATEPART

SELECT DATEPART (YYYY, GETDATE()) AS YEARNUMBER

SELECT DATEPART (MM, GETDATE()) AS Month

SELECT DATEPART (dd, GETDATE()) AS Day

---DATEADD

SELECT DATEADD(day, 5, GETDATE()) AS Experiment

SELECT DATEADD(month, 5, GETDATE()

SELECT DATEADD(year, 5, GETDATE())

---SALARY
---AGGREGATE FUNCTIONS
SELECT * FROM SALARY 

SELECT AVG FROM SALARY

---ORDERS
SELECT * FROM ORDERS

---CONCAT
PRINT CONCAT('String 1', ' String 2') 

SELECT ORDERID, ORDERNAME, CONCAT(ORDERNAME, ' ' , RAND()) AS CONCATENATEDTEXT FROM ORDERS

---LEFT
SELECT ORDERID, ORDERNAME, LEFT(ORDERNAME, 5) FROM ORDERS
SELECT ORDERID, ORDERNAME, LEFT(ORDERNAME, 3) FROM ORDERS

---RIGHT
SELECT ORDERID, ORDERNAME, RIGHT(ORDERNAME, 3) FROM ORDERS

---SUBSTRING

SELECT ORDERID, ORDERNAME, SUBSTRING(ORDERNAME, 2, 5) AS SUB FROM ORDERS

---LOWERCASE
SELECT ORDERID, ORDERNAME, LOWER(ORDERNAME) AS LOW FROM ORDERS

---UPPER
SELECT ORDERID, ORDERNAME, UPPER(ORDERNAME) AS UPP FROM ORDERS

---LENGTH
SELECT ORDERID, ORDERNAME, LEN(ORDERNAME) FROM ORDERS

SELECT ORDERID, ORDERNAME, CONCAT(UPPER(LEFT(ORDERNAME, 1)), LOWER (SUBSTRING(ORDERNAME, 2, LEN(ORDERNAME)))) FROM ORDERS

---TRIM

SELECT '        Mytext    '
SELECT LEN('        Mytext    ')

-----LEFT TRIM

SELECT LTRIM( '        Mytext    ')

----RIGHT TRIM

SELECT RTRIM('        Mytext    ')

---LEFT + RIGHT TRIM

SELECT LTRIM(RTRIM('        Mytext    '))
