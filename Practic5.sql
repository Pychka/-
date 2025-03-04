USE Productsdb_Shadiev_Abduvokhidov
SELECT
	*
FROM Products
WHERE Manufacturer = 'Samsung'

SELECT
	*
FROM Products
WHERE Price > 45000

SELECT
	*
FROM Products
WHERE Price * ProductCount > 200000

SELECT
	*
FROM Products
WHERE Manufacturer = 'Samsung' AND Price > 50000

SELECT
	*
FROM Products
WHERE Manufacturer = 'Samsung' OR Price > 50000

SELECT
	*
FROM Products
WHERE Manufacturer != 'Samsung'

SELECT
	*
FROM Products
WHERE Manufacturer = 'Samsung' OR Price > 30000 AND ProductCount > 2

SELECT
	*
FROM Products
WHERE ProductCount IS NULL

SELECT
	*
FROM Products
WHERE ProductCount IS NOT NULL

SELECT
	*
FROM Products
WHERE Manufacturer IN ('Samsung',' Xiaomi','Huawei')

SELECT
	*
FROM Products
WHERE Price BETWEEN 20000 AND 40000

SELECT
	*
FROM Products
WHERE Price NOT BETWEEN 20000 AND 40000

SELECT
	*
FROM Products
WHERE Price * ProductCount BETWEEN 100000 AND 200000

SELECT
	*
FROM Products
WHERE ProductName LIKE 'Iphone [6-8]%'

UPDATE Products
SET Price = Price + 5000

UPDATE Products
SET Manufacturer = 'Samsung Inc.'
WHERE Manufacturer = 'Samsung'

UPDATE Products
SET Manufacturer = 'Apple Inc.'
FROM
(
	SELECT TOP 2 * FROM Products WHERE Manufacturer = 'Apple'
) AS Selected
WHERE Products.Id = Selected.Id

DELETE Products
WHERE Id = 9

DELETE Products
WHERE Manufacturer = 'Xiaomi' AND Price < 15000

DELETE Products FROM
(
	SELECT TOP 2
		*
	FROM Products
	WHERE Manufacturer = 'Apple'
) AS s
WHERE Products.Id = s.Id
USE lecture_Primer_Shadiev_Abduvokhidov
CREATE TABLE Clown_Info
(
	[Name] NVARCHAR(50) NOT NULL,
	Last_Seen NVARCHAR(100),
	Appearance NVARCHAR(100) NOT NULL,
	Activities NVARCHAR(100)
);
GO
INSERT INTO Clown_Info
VALUES
('Элси', 'Дом престарелых Черри Хилл', 'Ж, рыжие волосы, зеленый костюм, огромные ботинки', 'шарики, машинки'),
('Пиклз', 'Вечеринка Джека Грина', 'М, оранжевые волосы, синий костюм, огромные ботинки', 'мим'),
('Снаглз', 'Болмарт', 'Ж, желтая рубашка, красные штаны', 'рожок, зонтик'),
('Мистер Хобо', 'Цирк BG', 'М, сигара, черные волосы, маленькая шляпа', 'скрипка'),
('Кларабелл', 'Дом престарелых Бельмонт', 'Ж, розовые волосы, большой цветок, синее платье', 'кричалки, танцы'),
('Скутер', 'Больница Окленд', 'М, синие волосы, красный костюм, большой нос', 'шарики'),
('Зиппо', 'Торговый центр Милстоун', 'Ж, оранжевый костюм, штаны', 'танцы'),
('Бэйб', 'Автошкола Эрла','Ж, розовый костюм с блестками', 'эквилибристика, машинки'),
('Бонзо', NULL,'М, женское платье в горошек', 'пение, танцы'),
('Снифлз', 'Заведение Трэйси', 'М, зелено-фиолетовый костюм, длинный нос', NULL);

SELECT * FROM Clown_Info
WHERE Last_Seen IS NULL

DELETE FROM Clown_Info
WHERE [Name] != 'Снифлз'

--Провальная попытка--
INSERT INTO Clown_Info
VALUES
('Снифлз','Детский садик','М, зелено-фиолетовый костюм, длинный нос',NULL),
('Снифлз','Детский дом','М, зелено-фиолетовый костюм, длинный нос',NULL)
GO

DECLARE @count INT
SELECT @count = COUNT(*)
FROM Clown_Info
WHERE [Name] = 'Снифлз'

SELECT * FROM Clown_Info
WHERE [Name] = 'Снифлз'
ORDER BY [Name]
OFFSET 0 ROWS
FETCH NEXT @count-1 ROWS ONLY
--Это код чтобы вывести все записи кроме последней, но как их приминить при удалении мы так и не выяснили)--

UPDATE Drink_Info
SET Carbs = 170
WHERE Drink_Name = 'Поцелуй'

UPDATE Drink_Info
SET Color = 'Золотистый'
WHERE Color = 'Жёлтый'

UPDATE Drink_Info
SET Cost = 4.5
WHERE Cost = 3.5

UPDATE Drink_Info
SET Cost = 3.5
WHERE Cost = 2.5

UPDATE Clown_Info
SET Last_Seen = 'Заведение Трэйси'
WHERE [Name] = 'Мистер Хобо'
AND Last_Seen = 'Парк Диксон'

UPDATE Clown_Info
SET Activities = 'пение'
WHERE [Name] = 'Зиппо'

UPDATE Clown_Info
SET Appearance = 'Ж, жёлтая рубашка, синие штаны'
WHERE [Name] = 'Snuggles'

UPDATE Clown_Info
SET Activities = 'разъезжает на машинке'
WHERE [Name] = 'Снифлз'

USE PaidPolyclinic_Shadiev_Abduvohidov_47

SELECT
	Diagnos
	Cost
FROM Appeal
WHERE Cost > 1000

SELECT
	[Name],
	LastName
FROM Doctor
WHERE [Name] Like 'И%'

SELECT
		[Name],
	LastName
FROM Patient
WHERE [Name] Like '%я%'

SELECT
	Cost
FROM Treatment
WHERE Cost > 1000
USE PaidPolyclinic_Shadiev_Abduvohidov_47

SELECT
	Diagnos,
	Cost
FROM Appeal
WHERE Cost IN (SELECT Cost FROM Appeal WHERE Cost < 5000)