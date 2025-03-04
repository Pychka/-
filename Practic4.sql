CREATE DATABASE Productsdb_Shadiev_Abduvokhidov
GO
USE Productsdb_Shadiev_Abduvokhidov

CREATE TABLE Products
(
	Id INT PRIMARY KEY IDENTITY,
	ProductName NVARCHAR(30) NOT NULL,
	Manufacturer NVARCHAR(20) NOT NULL,
	ProductCount INT,
	Price MONEY NOT NULL
);
GO
INSERT INTO Products VALUES
	('iPhone 6','Apple', 3, 36000),
	('iPhone 6S','Apple', 2, 41000),
	('iPhone 7','Apple', 5, 52000),
	('Galaxy S8','Samsung', 2, 46000),
	('Galaxy S8 Plus','Samsung', 1, 56000),
	('Mi6','Xiaomi', 5, 28000),
	('OnePlus 5','OnePlus', 6, 38000);

SELECT
	ProductName,
	Price
FROM Products

SELECT
	ProductName + ' (' + Manufacturer + ')',
	Price,
	Price * ProductCount
FROM Products

SELECT
	ProductName + ' (' + Manufacturer + ')' AS ModelName,
	Price,
	Price * ProductCount AS TotalSum
FROM Products

SELECT Manufacturer
FROM Products

SELECT
	ProductName + ' (' + Manufacturer + ')' AS ModelName,
	Price
	INTO ProductSummary
FROM Products

SELECT * FROM ProductSummary

INSERT INTO ProductSummary
SELECT
	ProductName + ' (' + Manufacturer + ')' AS ModelName,
	Price
FROM Products

--Задание 2 необходимо сделать--

USE lecture_Primer_Shadiev_Abduvokhidov

SELECT * FROM Doughnut_list
SELECT * FROM Drink_Info
SELECT * FROM Jelly_Doughnuts
SELECT * FROM Vasya_list
SELECT * FROM Easy_Drinks

--Так как у нас нет девушки Энн из Сан-Франциско, возьмём Имя7 из локации7
SELECT * FROM Vasya_list
WHERE last_name = 'Имя7' AND [location] = 'локация7'

--Так как у нас нет программистов, то заменим их на профессия7--
SELECT
	email
	profession
FROM Vasya_list
WHERE profession = 'профессия7'

SELECT
	last_name,
	first_name,
	birthday
FROM Vasya_list
WHERE birthday = '2007-09-20' OR birthday = '2008-03-17'
--Никого :( --

SELECT TOP 1 * FROM Jelly_Doughnuts WHERE Rating = 10

USE lecture_Primer_Shadiev_Abduvokhidov

--У нас нет коктеля лягушка и поцелуй поэтому заменим их на название3 и название5 соответсвенно--
SELECT Drink_Name FROM Easy_Drinks
WHERE Main=',main5'

SELECT Drink_Name FROM Easy_Drinks
WHERE Amount = 5.5

SELECT Drink_Name FROM Easy_Drinks
WHERE [Second] = 'second5'

SELECT Drink_Name FROM Easy_Drinks
WHERE Amount2 = 5.5

SELECT Drink_Name FROM Easy_Drinks
WHERE Directions = 'directions5'

SELECT Drink_Name FROM Easy_Drinks
WHERE Amount = 3.3

SELECT Drink_Name FROM Easy_Drinks
WHERE Amount2 = 3.3

SELECT Drink_Name FROM Easy_Drinks
WHERE Directions = 'directions3'

SELECT Drink_Name FROM Easy_Drinks
WHERE Main = ',main1' AND Amount = 1.1

SELECT Drink_Name FROM Easy_Drinks
WHERE Main = ',main3' AND Amount = 3.3

SELECT Drink_Name FROM Easy_Drinks
WHERE Main = ',main2'

CREATE TABLE Drink_Info
(
	Drink_Name NVARCHAR(50) NOT NULL,
	Cost DECIMAL(8, 2) NOT NULL,
	Carbs DECIMAL(8, 2) NOT NULL,
	Color NVARCHAR(50) NOT NULL,
	Ice NVARCHAR(1) NOT NULL,
	Colories INT NOT NULL
)
GO
INSERT INTO Drink_Info
VALUES
('Терновик', 3.00, 8.40, 'Жёлтый', 'Д', 33),
('Голубая Луна', 2.50, 3.20, 'Синий', 'Д', 12),
('Вот тебе', 3.50, 8.60, 'Оранжевый', 'Д', 35),
('Лаймовый физз', 2.50, 5.40, 'Зелёный', 'Д', 24),
('Поцелуй', 5.50, 42.50, 'Фиолетовый', 'Д', 171),
('Горячее золото', 3.20, 32.10, 'Оранжевый', 'Н', 135),
('Одинокое дерево', 3.60, 4.20, 'Красный', 'Д', 17),
('Борзая', 4.00, 14.00, 'Жёлтый', 'Д', 50),
('Бабье лето', 2.80, 7.20, 'Коричневый', 'Н', 30),
('Лягушка', 2.60, 21.50, 'Бронзовый', 'Д', 80),
('Сода плюс', 3.80, 4.70, 'Красный', 'Н', 19);

SELECT
	Cost
FROM Drink_Info
WHERE Color = 'Жёлтый' AND Colories > 33

SELECT
	Drink_Name,
	Color
FROM Drink_Info
WHERE Carbs < 4 AND Ice = 'Д'

SELECT
	Cost
FROM Drink_Info
WHERE Color = 'Жёлтый' AND Colories >= 80

SELECT
	Color,
	Ice
FROM Drink_Info
WHERE Drink_Name = 'Борзая' OR Drink_Name = 'Поцелуй'

USE PaidPolyclinic_Shadiev_Abduvohidov_47
SELECT * FROM Appeal
SELECT * FROM Doctor
SELECT * FROM Patient
SELECT * FROM Treatment
--выводим все обращения, где цена больше 1000 денях, а так же немного магии JOIN--
SELECT
	a.PatientId,
	p.[Name],
	p.LastName,
    a.DoctorId,
    a.TreatmentId,
    a.Diagnos,
    a.Cost,
    a.[Date]
FROM Appeal a
JOIN Patient p ON a.PatientId = p.Id
WHERE Cost > 1000

--Выводим всех докторов у кого в имени есть буква 'я'--
SELECT
	[Name],
	LastName
FROM Doctor
WHERE [Name] LIKE '%я%'

--Выводи всех пациентов у кого день рождения в 2001 году--
SELECT
	[Name],
	LastName
FROM Patient
WHERE YEAR(Birthday) = 2001
--Выводи всех пациентов у кого день рождения в сентябре--
SELECT
	[Name],
	LastName
FROM Patient
WHERE MONTH(Birthday) = 09
--Выводи всех пациентов у кого день рождения 11 числа--
SELECT
	[Name],
	LastName
FROM Patient
WHERE DAY(Birthday) = 11

--Если честно мы уже не смогли вспомнить зачем нужна была таблица Treatment, ну ладно. Выведем все строки где цена ниже 5000 и выше 1000 денях--
SELECT
	*
FROM Treatment
WHERE Cost > 1000 AND Cost < 5000