CREATE DATABASE DataBasePrimer_Shadiev_Abduvokhidov
GO
USE DataBasePrimer_Shadiev_Abduvokhidov

CREATE TABLE Products
(
	Id INT IDENTITY PRIMARY KEY,
	ProductName NVARCHAR(30) NOT NULL,
	Manufacturer NVARCHAR(20) NOT NULL,
	ProductCount INT DEFAULT 0,
	Price MONEY NOT NULL
)
GO

INSERT INTO Products
VALUES
('iPhone 6','Apple', 3, 36000),
('iPhone 6S','Apple', 2, 41000),
('iPhone 7','Apple', 5, 52000),
('Galaxy S8','Samsung', 2, 46000),
('Galaxy S8 Plus','Samsung', 1, 56000),
('Mi6','Xiaomi', 5, 28000),
('OnePlus 5','OnePlus', 6, 38000)
GO

SELECT AVG(Price)
AS Average_Price
FROM Products

SELECT AVG(Price)
AS Average_Price
FROM Products
WHERE Manufacturer='Apple'

SELECT AVG(Price * ProductCount)
AS Average_Price
FROM Products

SELECT COUNT(*) FROM Products

SELECT COUNT(Manufacturer) FROM Products

SELECT MIN(Price)
FROM Products

SELECT MAX(Price)
FROM Products

SELECT SUM(ProductCount)
FROM Products

SELECT SUM(Price * ProductCount)
FROM Products

SELECT COUNT(*) AS ProdCount,
		SUM(ProductCount) AS TotalCount,
		MIN(Price) AS MinPrice,
		MAX(Price) AS MaxPrice,
		AVG(Price) AS AvgPrice
FROM Products

SELECT Manufacturer, COUNT(*) AS ModelsCount
FROM Products
GROUP BY Manufacturer

SELECT Manufacturer, ProductCount, COUNT(*) AS ModelsCount
FROM Products
GROUP BY Manufacturer, ProductCount

SELECT Manufacturer, COUNT(*) AS ModelsCount
FROM Products
WHERE Price > 30000
GROUP BY Manufacturer
ORDER BY ModelsCount DESC

SELECT Manufacturer, COUNT(*) AS ModelsCount
FROM Products
GROUP BY Manufacturer
HAVING COUNT(*) > 1

SELECT Manufacturer, COUNT(*) AS ModelsCount
FROM Products
WHERE Price * ProductCount > 80000
GROUP BY Manufacturer
HAVING COUNT(*) > 1

SELECT Manufacturer, COUNT(*) AS Models, SUM(ProductCount) AS Units
FROM Products
WHERE Price * ProductCount > 80000
GROUP BY Manufacturer
HAVING SUM(ProductCount) > 2
ORDER BY Units DESC

SELECT Manufacturer, COUNT(*) AS Models, SUM(ProductCount) AS Units
FROM Products
GROUP BY Manufacturer WITH ROLLUP

SELECT Manufacturer, COUNT(*) AS Models, SUM(ProductCount) AS Units
FROM Products
GROUP BY ROLLUP(Manufacturer)

SELECT Manufacturer, COUNT(*) AS Models, SUM(ProductCount) AS Units
FROM Products
GROUP BY Manufacturer, ProductCount WITH ROLLUP

SELECT Manufacturer, COUNT(*) AS Models, SUM(ProductCount) AS Units
FROM Products
GROUP BY ROLLUP(Manufacturer)

SELECT Manufacturer, COUNT(*) AS Models, SUM(ProductCount) AS Units
FROM Products
GROUP BY Manufacturer, ProductCount WITH CUBE

SELECT Manufacturer, COUNT(*) AS Models, ProductCount
FROM Products
GROUP BY GROUPING SETS(Manufacturer, ProductCount)

SELECT Manufacturer, COUNT(*) AS Models,
	ProductCount, SUM(ProductCount) AS Units
FROM Products
GROUP BY GROUPING SETS(ROLLUP(Manufacturer), ProductCount)

SELECT Manufacturer, COUNT(*) AS Models,
	ProductCount, SUM(ProductCount) AS Units
FROM Products
GROUP BY GROUPING SETS((Manufacturer, ProductCount), ProductCount)

SELECT ProductName, Manufacturer, ProductCount,
	COUNT(*) OVER (PARTITION BY Manufacturer) AS Models,
	SUM(ProductCount) OVER (PARTITION BY Manufacturer) AS Units
FROM Products
