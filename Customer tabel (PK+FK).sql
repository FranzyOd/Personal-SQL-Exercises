CREATE TABLE Customers 
(
  CustomerID INT AUTO_INCREMENT,
  CustomerName VARCHAR(255),
  ContactName VARCHAR(225),
  Address VARCHAR(225),
  City VARCHAR(85),
  PostalCode VARCHAR(10),
  Country VARCHAR(60),
  PRIMARY KEY (CustomerID)
);

DESCRIBE Customers;

CREATE TABLE Orders
(
OrderID INT AUTO_INCREMENT,
CUSTOMERID INT,
OrderDate TIMESTAMP,
ShippingAddress VARCHAR(255),
City VARCHAR(85),
PostalCode VARCHAR(7),
Country VARCHAR(60),
PRIMARY KEY (OrderID),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE SET NULL
);

DESCRIBE Orders;

CREATE TABLE Categories(
CategoryID SMALLINT AUTO_INCREMENT,
CategoryName VARCHAR(100),
Description TEXT,
PRIMARY KEY (CategoryID)
);

DESCRIBE Categories;


CREATE TABLE Suppliers(

SupplierID INT AUTO_INCREMENT,
SupplierName VARCHAR(255),
ContactName VARCHAR(255),
Address VARCHAR(255),
City VARCHAR(85),
PostalCode VARCHAR(7),
Country VARCHAR(60),
Phone VARCHAR(25),
PRIMARY KEY (SupplierID)

);


CREATE TABLE Products(
ProductID INT AUTO_INCREMENT,
PoductName VARCHAR(255),
CategoryID SMALLINT,
SupplierID INT,
Unit VARCHAR(100),
Price DECIMAL(7,2),
PRIMARY KEY (ProductID),
FOREIGN KEY(CategoryID) REFERENCES Categories(CategoryID) ON DELETE CASCADE,
FOREIGN KEY(SupplierID) REFERENCES Suppliers(SupplierID) ON DELETE CASCADE
);


CREATE TABLE OrderDetails(
OrderDetailID INT AUTO_INCREMENT,
OrderID INT,
ProductID INT,
Quantity SMALLINT,
SalePrice DECIMAL(7,2),
PRIMARY KEY (OrderDetailID),
FOREIGN KEY(OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE,
FOREIGN KEY(ProductID) REFERENCES Products(ProductID) ON DELETE CASCADE
);
DESCRIBE OrderDetails;



--
-- Filling data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Oge Obi', 'Amaka Igwe', 'Kad Str. 10', 'Lagos', '10001', 'Nigeria'),
(2, 'Tega Enitan', 'Johhny Fin', 'UB40 Str. 50', 'London.', 'SLE3 VX4', 'UK'),
(3, 'Dami Olu', 'More Inke', 'Entebbe 12', 'Kampala.', 'ED6 BB3', 'Uganda'),
(4, 'Kewe Eze', 'Tunde Baba', '12 Ayi Patatu Str.', 'Lome', 'B.P 526', 'Togo'),
(5, 'Ejiro Mike', 'Moyo Owo', 'Kwame Str. 8', 'Kumasi', 'Ak000', 'Ghana'),
(6, 'Okemute Jon', 'Kupe Kelvin', 'Foster Str. 55', 'Accra', '305789', 'Ghana'),
(7, 'Mary Ogwori', 'Cyril Aka', '24, Akadeemia Tee', 'Tallinn', '12613', 'Estonia'),
(8, 'Nkonye Aziken', 'Kakashi Omo', 'Cottage Rd. 67', 'Lagos', '59004', 'Nigeria'),
(9, 'Aghogho Tony', 'Femi Oni', '12,E.Vilde Tee', 'Tallinn', '12491', 'Estonia'),
(10, 'Amadi Umar', 'Nas Zingy', '23 Ayo Jagun.', 'Lagos', '12001', 'Nigeria');




--
-- Filling data for table `Orders'`
--


INSERT INTO `orders` (`OrderID`, `CustomerID`, `OrderDate`, `ShippingAddress`, `City`, `PostalCode`, `Country`) VALUES
(10000, 1, '2018-04-03 14:05:33', 'Kad Str. 10', 'Lagos', '10001','Nigeria'),
(10002, 2, '2018-01-10 11:07:13', 'UB40 Str. 50', 'London', 'SLE3VX4', 'UK'),
(10003, 3, '2018-09-03 14:00:23', 'Entebbe 12', 'Kampala.', 'ED6 BB3', 'Uganda' ),
(10004, 4, '2018-11-30 12:00:44', '12 Ayi Patatu Str.', 'Lome', 'B.P 526', 'Togo'),
(10005, 5, '2018-12-20 07:11:00', 'Kwame Str. 8', 'Kumasi',  'Ak000', 'Ghana'),
(10006, 6, '2018-08-13 15:56:59', 'Foster Str. 55', 'Accra', '305789', 'Ghana'),
(10007, 7, '2018-06-04 10:23:43', '24, Akadeemia Tee', 'Tallinn', '12613', 'Estonia'),
(10008, 8, '2018-07-04 16:12:00', 'Cottage Rd. 67', 'Lagos', '59004', 'Nigeria'),
(10009, 9, '2018-02-02 17:00:33', '12,E.Vilde Tee', 'Tallinn', '12491', 'Estonia'),
(10010, 10, '2018-05-13 13:00:01', '23 Ayo Jagun.', 'Lagos', '12001', 'Nigeria');




--
-- Filling data for table `Categories' 
--


INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`)
VALUES(321, 'Beverages', 'Coffee');

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`)
VALUES(19,'Seafood', 'Shrimps');

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`)
VALUES(323, 'Red Meat', 'Goat');

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`)
VALUES(324, 'Grains', 'Buckwheat');

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`)
VALUES(322, 'Dairy Products', 'Yogurt');

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`)
VALUES(320, 'Condiments', 'Spices');

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`)
VALUES(340, 'Confections', 'Cakes');

--
-- Filling data for table `Suppliers' 
--


INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`, `Phone`) VALUES
(8, 'Emeka and Son', 'Maria Bonny', '60 Mario Str.', 'Lagos', '10546', 'Nigeria', '(34) 275-6843'),
(12, 'Strawberry Pastries', 'Melvin Pipe', 'Parnu mnt 605', 'Tallinn', '60582', 'Estonia', '(76) 638-4032'),
(31, 'Vivian Liquer', 'Timothy Drew', '707 Dawn Rd.', 'Accra', '28105', 'Ghana', '(33) 2527-0010'),
(54, 'Tony Store', 'Ebimo Ehis', '9 Westminister', 'London', 'TW1 SV3', 'UK', '(15) 5685-3011'),
(65, 'Victor', 'Steph Phil', 'File District 4', 'Lome', '23006', 'Togo', '(98) 3984-6597'),
(16, 'Babatunde','Julia Noah', 'Dennis Okafor Str. 23', 'Lagos', '134583', 'Nigeria', '(89) 283-6890'),
(97, 'Seun', 'Andy Frank', 'Isata Str. 10', 'Kumasi', '135469', 'Ghana', '(20 5670-3069');





--
-- Filling data for table `Products' 
--
INSERT INTO `products` (`ProductID`, `PoductName`, `SupplierID`, `CategoryID`, `Unit`, `Price`) VALUES
(23, 'Fanice', 8, 322, '5 x 5', 5.2),
(15, 'Xposh', 12, 340, '24 - 12', 6.2),
(69, 'Zeller', 31, 321, '12 - 550', 4.2),
(20, 'Maggi Seasoning', 65, 320, '48 - 6', 3.2),
(30, 'Riya', 54, 324, '16', 1.2),
(33, 'Tonado', 16, 323, '12 - 8', 6.1),
(27, 'Charldon', 97, 19, '12 - 1', 7.1),
(48, 'Zeller', 31, 321, '12 - 12', 3.1),
(29, 'Xposh', 12, 340, '18 - 500', 4.1),
(13, 'Riya', 54, 324, '12 - 200', 1.2);








--
-- Filling data for table `OrderDetails' 
--
INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`, `SalePrice`) 
VALUES(1, 10002, 23, 12, 3.2);

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`, `SalePrice`)
VALUES(2, 10000, 15, 10, 4.2);

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`, `SalePrice`)
VALUES(3, 10006, 69, 5, 2.2);

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`, `SalePrice`)
VALUES(4, 10005, 20, 9, 1.2);

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`, `SalePrice`)
VALUES(5, 10009, 30, 40, .50);

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`, `SalePrice`)
VALUES(6, 10004, 33, 10, 4.1);

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`, `SalePrice`)
VALUES(7, 10007, 27, 35, 5.1);

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`, `SalePrice`)
VALUES(8, 10008, 48, 15, 1.2);

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`, `SalePrice`)
VALUES(9, 10003, 29, 6, 2.1);

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`, `SalePrice`)
VALUES(10, 10010, 13, 15, .50);