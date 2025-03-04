USE Practic2_Shadiev_Abduvokhidov;

DROP TABLE Customers1
DROP TABLE Customers2

CREATE TABLE Customers1
(
	Id INT PRIMARY KEY,
	Age INT,
	FirstName NVARCHAR(20),
	LastName NVARCHAR(20),
	Email VARCHAR(30),
	Phone VARCHAR(20),
);
CREATE TABLE Customers2
(
	Id INT,
	Age INT,
	FirstName NVARCHAR(20),
	LastName NVARCHAR(20),
	Email VARCHAR(30),
	Phone VARCHAR(20),
	PRIMARY KEY(Id)
);

CREATE TABLE OrderLines
(
	OrderId INT,
	ProductId INT,
	Quantity INT,
	Price MONEY,
	PRIMARY KEY(OrderId, ProductId)
);

DROP TABLE Customers1

CREATE TABLE Customers1
(
	Id INT PRIMARY KEY IDENTITY,
	Age INT,
	FirstName NVARCHAR(20),
	LastName NVARCHAR(20),
	Email VARCHAR(30),
	Phone VARCHAR(20),
);

DROP TABLE Customers1

CREATE TABLE Customers1
(
	Id INT CONSTRAINT PK_Customer_Id PRIMARY KEY IDENTITY,
	Age INT
		CONSTRAINT DF_Customer_Age DEFAULT 18
		CONSTRAINT CK_Customer_Age CHECK(Age > 0 AND Age < 100),
	FirstName NVARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	Email VARCHAR(30) CONSTRAINT UQ_Customer_Email UNIQUE,
	Phone VARCHAR(20) CONSTRAINT UQ_Customer_Phone UNIQUE,
);

DROP TABLE Customers1

CREATE TABLE Student
(
	Id INT CONSTRAINT PK_AdditionalTest_Id PRIMARY KEY IDENTITY NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Patronymic NVARCHAR(50),
);
CREATE TABLE Test
(
	Id INT CONSTRAINT PK_Test_Id PRIMARY KEY IDENTITY NOT NULL,
	StudentId INT CONSTRAINT FK_Test_StudentId FOREIGN KEY REFERENCES Student(Id) NOT NULL CONSTRAINT UQ_Test_StudentId UNIQUE,
	Score INT CONSTRAINT CK_Test_Score CHECK (Score >= 0 AND Score <= 5) CONSTRAINT DF_Test_Score DEFAULT 0 NOT NULL
);

USE Productsdb_Shadiev_Abduvokhidov

CREATE TABLE Customers
(
	Id INT PRIMARY KEY IDENTITY,
	Age INT,
	FirstName NVARCHAR(20),
	LastName NVARCHAR(20),
	Email VARCHAR(30),
	Phone VARCHAR(20),
);
GO
ALTER TABLE Customers
ADD [Address] NVARCHAR(50) NULL

ALTER TABLE Customers
DROP COLUMN [Address]

ALTER TABLE Customers
ALTER COLUMN FirstName NVARCHAR(200)

ALTER TABLE Customers
ADD CHECK (Age > 21)

ALTER TABLE Customers WITH NOCHECK
ADD CHECK (Age > 21)

CREATE DATABASE UserDb_Shadiev_Abduvokhidov
GO
USE UserDb_Shadiev_Abduvokhidov

CREATE TABLE Customers1
(
	Id INT PRIMARY KEY IDENTITY,
	Age INT DEFAULT 18,
	FirstName NVARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	Email VARCHAR(30) UNIQUE,
	Phone VARCHAR(20) UNIQUE
);
CREATE TABLE Orders1
(
	Id INT IDENTITY,
	CustomerId INT,
	CreatedAt Date
);
GO

ALTER TABLE Orders1
ADD FOREIGN KEY(CustomerId) REFERENCES Customers1(Id)

ALTER TABLE Orders1
ADD PRIMARY KEY (Id)

ALTER TABLE Order1
ADD CONSTRAINT PK_Orders1_Id PRIMARY KEY (Id),
	CONSTRAINT FK_Orders1_To_Customers1 FOREIGN KEY(Customers1) REFERENCES Customres1(Id)
GO

ALTER TABLE Customers1
ADD CONSTRAINT CK_Age_Greater_Than_Zero CHECK (Age > 0)

ALTER TABLE Customers1
DROP CK_Age_Greater_Than_Zero

CREATE DATABASE InternetStore_Shadiev_Abduvohidov;
GO
Use InternetStore_Shadiev_Abduvohidov

CREATE TABLE Customers
(
	Id INT PRIMARY KEY IDENTITY,
	Age INT DEFAULT 18,
	FirstName VARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	Email VARCHAR(30) UNIQUE,
	Phone VARCHAR(20) UNIQUE
);

Create TABlE Orders
(
	Id INT PRIMARY KEY IDENTITY,
	CustomerId INT,
	CreatedAt DATE,
	FOREIGN KEY (CustomerId) REFERENCES Customers (Id) ON DELETE CASCADE
);

USE Productsdb_Shadiev_Abduvokhidov

SELECT *
FROM Products
ORDER BY ProductName

SELECT ProductName, ProductCount * Price AS TotalSum
FROM Products
ORDER BY TotalSum

SELECT ProductName, ProductCount * Price AS TotalSum
FROM Products
ORDER BY TotalSum DESC

SELECT ProductName, Price, Manufacturer
FROM Products
ORDER BY Manufacturer, ProductName

SELECT ProductName, Price, Manufacturer
FROM Products
ORDER BY Manufacturer, ProductName DESC

SELECT ProductName, Price, ProductCount
FROM Products
ORDER BY ProductCount * Price

SELECT TOP 4 ProductName
FROM Products

SELECT TOP 75 PERCENT ProductName
FROM Products

SELECT * FROM Products
ORDER BY Id
	OFFSET 2 ROWS

SELECT * FROM Products
ORDER BY Id
	OFFSET 2 ROWS
	FETCH NEXT 3 ROWS ONLY

USE lecture_Primer_Shadiev_Abduvokhidov

ALTER TABLE Vasya_list
ADD Id INT CONSTRAINT PK_Vasya_list_Id PRIMARY KEY IDENTITY NOT NULL

ALTER TABLE Jelly_Doughnuts
ADD Id INT CONSTRAINT PK_Jelly_Doughnuts_Id PRIMARY KEY IDENTITY NOT NULL

ALTER TABLE Easy_Drinks
ADD Id INT CONSTRAINT PK_Easy_Drinks_Id PRIMARY KEY IDENTITY NOT NULL

ALTER TABLE Drink_Info
ADD Id INT CONSTRAINT PK_Drink_Info_Id PRIMARY KEY IDENTITY NOT NULL

ALTER TABLE Doughnut_list
ADD Id INT CONSTRAINT PK_Doughnut_list_Id PRIMARY KEY IDENTITY NOT NULL

ALTER TABLE Clown_Info
ADD Id INT CONSTRAINT PK_Clown_Info_Id PRIMARY KEY IDENTITY NOT NULL

EXEC sp_rename 'Easy_Drinks.Drink_Name','Name'

EXEC sp_rename 'Doughnut_list.doughnut_name', 'Name'
EXEC sp_rename 'Doughnut_list.doughnut_type', 'Type'

EXEC sp_rename 'Drink_Info.Drink_Name','Name'

EXEC sp_rename 'Vasya_list.last_name', 'LastName'
EXEC sp_rename 'Vasya_list.first_name', 'FirstName'
EXEC sp_rename 'Vasya_list.email', 'Email'
EXEC sp_rename 'Vasya_list.birthday', 'Birthday'
EXEC sp_rename 'Vasya_list.profession', 'Profession'
EXEC sp_rename 'Vasya_list.location', 'Location'
EXEC sp_rename 'Vasya_list.status', 'Status'
EXEC sp_rename 'Vasya_list.interests', 'Interests'
EXEC sp_rename 'Vasya_list.seeking', 'Seeking'

USE lecture_Primer_Shadiev_Abduvokhidov
CREATE TABLE Fish_Info
(
	Common NVARCHAR(100) NOT NULL,
	Species VARCHAR(100) NOT NULL,
	[Location] NVARCHAR(100) NOT NULL,
	[Weight] NVARCHAR(100) NOT NULL,
)

CREATE TABLE Fish_Records
(
	First_Name NVARCHAR(100) NOT NULL,
	Last_Name NVARCHAR(100) NOT NULL,
	Common NVARCHAR(100) NOT NULL,
	[Location] NVARCHAR(100) NOT NULL,
	[State] VARCHAR(2) NOT NULL,
	[Weight] NVARCHAR(100) NOT NULL,
	[Date] DATETIME NOT NULL,
)
GO
INSERT INTO Fish_Info
VALUES
('Большеротый окунь','M. salmoides','Монтгромери Лейк, GA','22 фт 4 унц'),
('судак','S. vitreus','Олд Хикори Лейк, TN','25 фт 0 унц'),
('лосось Кларка','O. Clarki','Пирамид Лейк, NV','41 фт 0 унц'),
('жёлтый окунь','P. Flavescens','Бордентаунт, NJ','4 фт 3 унц'),
('синежаберник','L. Macrochirus','Кетона Лейк, AL','4 фт 12 унц'),
('панцирник','L. Osseus','Тринити Ривер, TX','50 фт 5 унц'),
('белый краппи','P. annularis','Дамба Энид, MS','5 фт 3 унц'),
('красноперая щука','E. americanus','Дьюарт Лейк, IN','1 фт 0 унц'),
('серебристый карась','C. auratus','Лейк Ходжес, CA','6 фт 10 унц'),
('чавыча','O. Tshawytscha','Кенай Ривер, AK','97 фт 4 унц')

INSERT INTO Fish_Records
VALUES
('Фжордж','Перри','большеротый окунь','Монтгромери Лейк','GA','22 фт 4 унц','2/6/1932'),
('Мабри','Харпер','судак','Олд Хикори Лейк','TN','25 фт 0 унц','2/8/1960'),
('Джон','Скиммерхорн','лосось кларка','Пирамид Лейк','NV','41 фт 0 унц','1/12/1925'),
('С.С.','Эббот','жёлтый окунь','Бордентаунт','NJ','4 фт 3 унц','1/5/1865'),
('Т.С.','Хадсон','синежаберник','Кетона Лейк','AL','4 фт 12 унц','9/4/1950'),
('Таунсенд','Миллер','панцирник','Тринити Ривер','TX','50 фт 5 унц','30/7/1954'),
('Фред','Брайт','белый краппи','Дамба Энид','MS','5 фт 3 унц','31/7/1957'),
('Майк','Берг','красноперая щука','Дьюарт Лейк','IN','1 фт 0 унц','9/6/1990'),
('Флорентино','Абена','серебристый карась','Лейк Ходжес','CA','6 фт 10 унц','17/4/1996'),
('Лес','Андерсон','чавыча','Кенай Ривер','AK','97 фт 4 унц','17/5/1985')
GO

ALTER TABLE Fish_Info
ADD City NVARCHAR(100) NOT NULL DEFAULT '',
	[State] NVARCHAR(100) NOT NULL DEFAULT ''

USE lecture_Primer_Shadiev_Abduvokhidov

UPDATE Fish_Info
SET City = CASE
			WHEN [Location] = 'Монтгромери Лейк, GA' THEN 'Монтгромери Лейк'
			WHEN [Location] = 'Олд Хикори Лейк, TN' THEN 'Олд Хикори Лейк'
			WHEN [Location] = 'Пирамид Лейк, NV' THEN 'Пирамид Лейк'
			WHEN [Location] = 'Бордентаунт, NJ' THEN 'Бордентаунт'
			WHEN [Location] = 'Кетона Лейк, AL' THEN 'Кетона Лейк'
			WHEN [Location] = 'Тринити Ривер, TX' THEN 'Тринити Ривер'
			WHEN [Location] = 'Дамба Энид, MS' THEN 'Дамба Энид'
			WHEN [Location] = 'Дьюарт Лейк, IN' THEN 'Дьюарт Лейк'
			WHEN [Location] = 'Лейк Ходжес, CA' THEN 'Лейк Ходжес'
			WHEN [Location] = 'Лейк Ходжес, CA' THEN 'Лейк Ходжес'
			WHEN [Location] = 'Кенай Ривер, AK' THEN 'Кенай Ривер'
		END,
	[State] = CASE
				WHEN [Location] = 'Монтгромери Лейк, GA' THEN 'GA'
				WHEN [Location] = 'Олд Хикори Лейк, TN' THEN 'TN'
				WHEN [Location] = 'Пирамид Лейк, NV' THEN 'NV'
				WHEN [Location] = 'Бордентаунт, NJ' THEN 'NJ'
				WHEN [Location] = 'Кетона Лейк, AL' THEN 'AL'
				WHEN [Location] = 'Тринити Ривер, TX' THEN 'TX'
				WHEN [Location] = 'Дамба Энид, MS' THEN 'MS'
				WHEN [Location] = 'Дьюарт Лейк, IN' THEN 'IN'
				WHEN [Location] = 'Лейк Ходжес, CA' THEN 'CA'
				WHEN [Location] = 'Лейк Ходжес, CA' THEN 'CA'
				WHEN [Location] = 'Кенай Ривер, AK' THEN 'AK'
			END
ALTER TABLE Fish_Info
DROP COLUMN [Location]

INSERT INTO Clown_Info
VALUES
('Снифлз','Детский садик','М, зелено-фиолетовый костюм, длинный нос',NULL),
('Снифлз','Детский дом','М, зелено-фиолетовый костюм, длинный нос',NULL)
GO

DECLARE @name NVARCHAR(50) = 'Снифлз'

DELETE FROM Clown_Info
WHERE [Name] = @name AND Id IN
(
	SELECT Id 
	FROM Clown_Info
	WHERE [Name] = @name
	ORDER BY Id DESC
	OFFSET 1 ROWS
)

USE PaidPolyclinic_Shadiev_Abduvohidov_47
--Атамарность бд и ключи у нас уже есть так что это ми пропустим :D--
--Запросы сделаем следующие: так как у нас 4 таблицы, то удалим все данные кроме первых/вторых/третьих/последних 25%,--
DECLARE @count INT
--Первые 25%
SELECT @count = COUNT(*) FROM Appeal

DELETE FROM Appeal
WHERE Id IN
(
	SELECT Id 
	FROM Appeal
	ORDER BY Id
	OFFSET 0 ROWS
	FETCH FIRST @count/4 ROWS ONLY
)
--Вторые 25%
SELECT @count = COUNT(*) FROM Doctor

DELETE FROM Doctor
WHERE Id IN
(
	SELECT Id 
	FROM Doctor
	ORDER BY Id
	OFFSET @count/4 ROWS
	FETCH NEXT @count/4 ROWS ONLY
)
--Третьи 25%
SELECT @count = COUNT(*) FROM Patient

DELETE FROM Patient
WHERE Id IN
(
	SELECT Id 
	FROM Patient
	ORDER BY Id
	OFFSET @count/2 ROWS
	FETCH NEXT @count/4 ROWS ONLY
)
--Последние 25%
SELECT @count = COUNT(*) FROM Treatment

DELETE FROM Treatment
WHERE Id IN
(
	SELECT Id 
	FROM Treatment
	ORDER BY Id
	OFFSET @count - @count/4 ROWS
	FETCH NEXT @count/4 ROWS ONLY
)
--Данный запрос выдаст ошибку по причине того что мы не назначили каскадное удаление в таблице Appeal :D--