
CREATE DATABASE SALES

Use [Sales]
GO

IF OBJECT_ID('Sales') > 0
      DROP TABLE Sales

GO

IF OBJECT_ID('Customers') > 0
      DROP TABLE Customers

GO

IF OBJECT_ID('Products') > 0
      DROP TABLE Products

GO
CREATE TABLE Customers

(

CustomerID INT IDENTITY PRIMARY KEY,

FirstName VARCHAR(50),

LastName VARCHAR(50),

City VARCHAR(50),

State CHAR(2),

Zip VARCHAR(10)

)

GO

CREATE TABLE Products

(

ProductID TINYINT IDENTITY PRIMARY KEY,

ProductName VARCHAR(20),

RecommendedPrice MONEY,

Category VARCHAR(10)

)

GO

CREATE TABLE Sales

(

SaleID INT IDENTITY PRIMARY KEY,

ProductID TINYINT NOT NULL REFERENCES Products(ProductID),

CustomerID INT NOT NULL REFERENCES Customers(CustomerID),

SalePrice MONEY NOT NULL,

SaleDate SMALLDATETIME NOT NULL

)

GO
INSERT INTO Products(ProductName, RecommendedPrice, Category)

VALUES('DVD',105,'LivingRoom')

INSERT INTO Products(ProductName, RecommendedPrice, Category) VALUES('Microwave',98,'Kitchen')

INSERT INTO Products(ProductName, RecommendedPrice, Category)

VALUES('Monitor',200,'Office')

INSERT INTO Products(ProductName, RecommendedPrice, Category)

VALUES('Speakers',85,'Office')

INSERT INTO Products(ProductName, RecommendedPrice, Category) VALUES('Refrigerator',900,'Kitchen')

INSERT INTO Products(ProductName, RecommendedPrice, Category)

VALUES('VCR',165,'LivingRoom')
INSERT INTO Products(ProductName, RecommendedPrice, Category) VALUES('CoffeePot',35,'Kitchen')

GO

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('John','Miller','Asbury','NY','23433')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Fred','Hammill','Basham','AK','85675')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Stan','Mellish','Callahan','WY','38556')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Adrian','Caparzo','Denver','CO','12377')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Mike','Horvath','Easton','IN','47130')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Irwin','Wade','Frankfurt','KY','45902')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('George','Marshall','Gallipoli','ND','34908')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Frank','Costello','Honolulu','HI','23905')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Billy','Costigan','Immice','SC','75389')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Shelly','Sipes','Lights','AZ','35263')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Chirsty','Melton','Spade','CA','97505')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Amanda','Owens','Flask','CN','50386')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Brittany','Smits','Bourbon','KY','24207')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Kristy','Bryant','Tarp','FL','58960')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Kelly','Street','TableTop','ID','57732')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Tricia','Hill','Camera','ME','46738')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Holly','Raines','Compact','MS','35735')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Natalie','Woods','Woods','IN','87219')

INSERT INTO Customers(FirstName, LastName, City, State, Zip) VALUES('Wendy','Hilton','Action','KY','47093')

GO

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(1,1,130,'2/6/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(2,2,97,'1/7/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(3,3,200,'8/8/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(4,4,80,'4/9/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(5,5,899,'10/10/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(6,6,150,'10/11/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(3,7,209,'12/12/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(4,8,90,'5/13/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(6,9,130,'6/14/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(2,14,85,'6/19/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(3,15,240,'9/20/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(1,16,99,'7/21/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(1,17,87,'3/22/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(2,18,99,'1/23/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(6,19,150,'3/24/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(5,5,900,'3/10/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(4,6,86,'8/11/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(2,7,88,'8/12/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(3,8,198,'12/13/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(1,9,150,'5/14/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(6,14,99,'7/19/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(6,15,104,'9/20/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(3,16,270,'2/21/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(4,17,90,'7/22/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(1,1,130,'3/6/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(2,2,102,'4/7/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(1,3,114,'11/8/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(5,4,1000,'5/9/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(5,5,1100,'10/10/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(3,6,285,'6/11/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(2,7,87,'10/12/2005')

INSERT INTO Sales(ProductID, CustomerID, SalePrice, SaleDate) VALUES(3,8,300,'7/13/2005')

GO
--Queries
GO
--1.	For all sales in the month of October 2005, return the first and last name of the customer, the product name, and final sale price
;with SalesForMonth AS(
select c.FirstName, c.LastName, p.ProductName,s.SalePrice from Customers c 
join Sales s on c.CustomerID = s.CustomerID
join Products p on p.ProductID = s.ProductID
where YEAR(s.SaleDate) = 2005 and MONTH(s.SaleDate) = 5)
select * from SalesForMonth

--2.	For all customers who have made no purchases, return the Customer ID, first and last name of those individuals from the customer table.
;with CustomersWithNoSales AS(
select c.FirstName, c.LastName, s.SaleID from Customers c 
left outer join Sales s on c.CustomerID = s.CustomerID
where s.SaleID is null)
select * from CustomersWithNoSales

--3.	For all sales, return the customer’s first and last name, the sale price, and the recommended sale price,
-- and the difference between the sale price and recommended sale price.  
--The difference must be returned as a positive number.
;with AllSales AS(
select c.FirstName, c.LastName,s.SalePrice, p.RecommendedPrice, ABS(s.SalePrice - p.RecommendedPrice) as PriceDiff
from Customers c 
join Sales s on c.CustomerID = s.CustomerID
join Products p on p.ProductID = s.ProductID)
select * from AllSales

-- 4.	Return the average price by product category.
;with AvgPriceByCategory AS(
select p.Category as Category, AVG(s.SalePrice) as AvgPrice from Sales s
join Products p on s.ProductID = p.ProductID
group by Category
)
select * from AvgPriceByCategory


--6 Delete the customer(s) from the database who are from the state of California. 
delete from Customers  where State = 'CA'

--8. Update the sale price to the recommended sale price of those sales occurring between 6/10/2005 and 6/20/2005.
update s set SalesPrice = RecommendedPrice from Sales s
join Products p on p.ProductID = p.ProductID
where s.SaleDate BETWEEN '6/10/2005' AND '6/20/2005'

END


