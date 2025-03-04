CREATE DATABASE Sales_Shadiev_Abduvokhidov_Pr1;
GO

USE Sales_Shadiev_Abduvokhidov_Pr1;

CREATE TABLE Customer(
	CustomerID INT PRIMARY KEY NOT NULL,
	CustomerName NVARCHAR(40) NOT NULL,
	YTDOrders INT NOT NULL,
	YTDSales INT NOT NULL,
);

CREATE TABLE Orders(
	CustomerID INT NOT NULL,
	OrderID INT PRIMARY KEY NOT NULL,
	OrderDate DATETIME NOT NULL,
	FilledDate DATETIME,
	[Status] CHAR(1) NOT NULL,
	Amount INT NOT NULL,
);
GO
INSERT INTO Customer (CustomerID, CustomerName, YTDOrders, YTDSales)
VALUES
(1, 'Заказчик 1', 1, 200),
(2, 'Заказчик 2', 2, 200),
(3, 'Заказчик 3', 3, 200),
(4, 'Заказчик 4', 4, 200),
(5, 'Заказчик 5', 5, 200),
(6, 'Заказчик 6', 6, 200),
(7, 'Заказчик 7', 7, 200),
(8, 'Заказчик 8', 8, 200),
(9, 'Заказчик 9', 9, 200),
(10, 'Заказчик 10', 10, 200);

INSERT INTO Orders (CustomerID, OrderID, OrderDate, FilledDate, [Status], Amount)
VALUES
(1, 1, '11/09/2001', NULL, 'Д', 1),
(2, 2, '11/09/2001', NULL, 'Д', 1),
(3, 3, '11/09/2001', NULL, 'Д', 1),
(4, 4, '11/09/2001', NULL, 'Д', 1),
(5, 5, '11/09/2001', NULL, 'Д', 1),
(6, 6, '11/09/2001', NULL, 'Н', 1),
(7, 7, '11/09/2001', NULL, 'Н', 1),
(8, 8, '11/09/2001', NULL, 'Н', 1),
(9, 9, '11/09/2001', NULL, 'Н', 1),
(10, 10, '11/09/2001', NULL, 'Н', 1);

CREATE DATABASE lecture_Primer_Shadiev_Abduvokhidov;
GO

USE lecture_Primer_Shadiev_Abduvokhidov;

CREATE TABLE Doughnut_list(
	doughnut_name VARCHAR(10),
	doughnut_type VARCHAR(6)
);

CREATE TABLE Jelly_Doughnuts(
	Shop VARCHAR(50),
	[Time] Time,
	[Date] DATE,
	Rating INT,
	Comments NVARCHAR(100)
);

CREATE TABLE Vasya_list(
	last_name VARCHAR(50),
	first_name VARCHAR(50),
	email VARCHAR(50),
	birthday DATE,
	profession VARCHAR(50),
	[location] VARCHAR(50),
	[status] VARCHAR(50),
	interests VARCHAR(100),
	seeking VARCHAR(50),
);
GO
INSERT INTO Doughnut_list(doughnut_name, doughnut_type)
VALUES
('пончик1','1'),
('пончик2','2'),
('пончик3','3'),
('пончик4','4'),
('пончик5','5'),
('пончик6','6'),
('пончик7','7'),
('пончик8','8'),
('пончик9','9'),
('пончик10','10');

INSERT INTO Jelly_Doughnuts (Shop, [Time], [Date], Rating, Comments)
VALUES
('имя магазина1','8:46','11/09/2001', 1 ,'комент1'),
('имя магазина2','8:46','11/09/2001', 2 ,'комент2'),
('имя магазина3','8:46','11/09/2001', 3 ,'комент3'),
('имя магазина4','8:46','11/09/2001', 4 ,'комент4'),
('имя магазина5','8:46','11/09/2001', 5 ,'комент5'),
('имя магазина6','8:46','11/09/2001', 6 ,'комент6'),
('имя магазина7','8:46','11/09/2001', 7 ,'комент7'),
('имя магазина8','8:46','11/09/2001', 8 ,'комент8'),
('имя магазина9','8:46','11/09/2001', 9 ,'комент9'),
('имя магазина10','8:46','11/09/2001', 10 ,'комент10');

INSERT INTO Vasya_list (last_name, first_name, email, birthday, profession, [location], [status], interests, seeking)
VALUES
('Имя1','Фамилия1','почта1@почта.почта','11/09/2001','профессия1','локация1','статус1','интерес1','смотреть1'),
('Имя2','Фамилия2','почта2@почта.почта','11/09/2001','профессия2','локация2','статус2','интерес2','смотреть2'),
('Имя3','Фамилия3','почта3@почта.почта','11/09/2001','профессия3','локация3','статус3','интерес3','смотреть3'),
('Имя4','Фамилия4','почта4@почта.почта','11/09/2001','профессия4','локация4','статус4','интерес4','смотреть4'),
('Имя5','Фамилия5','почта5@почта.почта','11/09/2001','профессия5','локация5','статус5','интерес5','смотреть5'),
('Имя6','Фамилия6','почта6@почта.почта','11/09/2001','профессия6','локация6','статус6','интерес6','смотреть6'),
('Имя7','Фамилия7','почта7@почта.почта','11/09/2001','профессия7','локация7','статус7','интерес7','смотреть7'),
('Имя8','Фамилия8','почта8@почта.почта','11/09/2001','профессия8','локация8','статус8','интерес8','смотреть8'),
('Имя9','Фамилия9','почта9@почта.почта','11/09/2001','профессия9','локация9','статус9','интерес9','смотреть9'),
('Имя10','Фамилия10','почта10@почта.почта','11/09/2001','профессия10','локация10','статус10','интерес10','смотреть10');

CREATE DATABASE PaidPolyclinic_Shadiev_Abduvohidov_47;
GO
USE PaidPolyclinic_Shadiev_Abduvohidov_47;

CREATE TABLE Patient
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Patronymic NVARCHAR(50),
	Birthday DATE NOT NULL
);

CREATE TABLE Doctor
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Patronymic NVARCHAR(50),
	Specialty NVARCHAR(50) NOT NULL,
	Qualification NVARCHAR(50) NOT NULL,
	UNIQUE (Specialty, Qualification) 
);

CREATE TABLE Treatment
(
	Id INT PRIMARY KEY IDENTITY,
	Cost MONEY NOT NULL
);

CREATE TABLE Appeal
(
	Id INT PRIMARY KEY IDENTITY,
	PatientId INT FOREIGN KEY REFERENCES Patient(Id),
	DoctorId INT FOREIGN KEY REFERENCES Doctor(Id),
	TreatmentId INT FOREIGN KEY REFERENCES Treatment(Id),
	Diagnos NVARCHAR(400),
	Cost MONEY NOT NULL,
	[Date] DATE NOT NULL
);