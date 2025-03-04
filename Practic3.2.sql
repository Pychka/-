CREATE DATABASE practic3_Shadiev_Abduvokhidov
GO
USE practic3_Shadiev_Abduvokhidov

CREATE TABLE Products
(
	Id INT IDENTITY,
	ProductName NVARCHAR(30) NOT NULL,
	Manufacturer NVARCHAR(20) NOT NULL,
	ProductCount INT DEFAULT 0,
	Price MONEY NOT NULL
);

INSERT Products VALUES('iPhone', 'Apple', 5 , 52000)

USE lecture_Primer_Shadiev_Abduvokhidov;

CREATE TABLE Easy_Drinks
(
	Drink_Name NVARCHAR(50) NOT NULL,
	Main NVARCHAR(50) NOT NULL,
	Amount DECIMAL(5,2) NOT NULL,
	[Second] NVARCHAR(50) NOT NULL,
	Amount2 DECIMAL(5,2) NOT NULL,
	Directions NVARCHAR(200) NOT NULL,
);

INSERT INTO Doughnut_list
VALUES
('имя 1','тип 1'),
('имя 2','тип 2'),
('имя 3','тип 3'),
('имя 4','тип 4'),
('имя 5','тип 5');

INSERT INTO Jelly_Doughnuts
VALUES
('магазин1','11:11','11.09.2001',1,'коммент1'),
('магазин2','11:11','11.09.2001',2,'коммент2'),
('магазин3','11:11','11.09.2001',3,'коммент3'),
('магазин4','11:11','11.09.2001',4,'коммент4'),
('магазин5','11:11','11.09.2001',5,'коммент5');

INSERT INTO Vasya_list
VALUES
('имя1','фамилия1','почта1','11.09.2001','профессия1','локация1','статус1','интерес1','seeking1'),
('имя2','фамилия2','почта2','11.09.2001','профессия2','локация2','статус2','интерес2','seeking2'),
('имя3','фамилия3','почта3','11.09.2001','профессия3','локация3','статус3','интерес3','seeking3'),
('имя4','фамилия4','почта4','11.09.2001','профессия4','локация4','статус4','интерес4','seeking4'),
('имя5','фамилия5','почта5','11.09.2001','профессия5','локация5','статус5','интерес5','seeking5');

INSERT INTO Easy_Drinks
VALUES
('название1',',main1',1.1,'second1',1.1,'directions1'),
('название2',',main2',2.2,'second2',2.2,'directions2'),
('название3',',main3',3.3,'second3',3.3,'directions3'),
('название4',',main4',4.4,'second4',4.4,'directions4'),
('название5',',main5',5.5,'second5',5.5,'directions5');

USE PaidPolyclinic_Shadiev_Abduvohidov_47;

INSERT INTO Patient
VALUES
('Имя1','Фамилия1','Отчество1','11.09.2001'),
('Имя2','Фамилия2','Отчество2','11.09.2001'),
('Имя3','Фамилия3','Отчество3','11.09.2001'),
('Имя4','Фамилия4','Отчество4','11.09.2001'),
('Имя5','Фамилия5','Отчество5','11.09.2001');

INSERT INTO Doctor
VALUES
('Имя1','Фамилия1','Отчество1','Специальность1','Квалификация1'),
('Имя2','Фамилия2','Отчество2','Специальность2','Квалификация2'),
('Имя3','Фамилия3','Отчество3','Специальность3','Квалификация3'),
('Имя4','Фамилия4','Отчество4','Специальность4','Квалификация4'),
('Имя5','Фамилия5','Отчество5','Специальность5','Квалификация5');

INSERT INTO Treatment
VALUES
(1000),
(2000),
(3000),
(4000),
(5000);

INSERT INTO Appeal
VALUES
(1,1,1,'Diagnos1',1000,'11.09.2001'),
(2,2,2,'Diagnos2',2000,'11.09.2001'),
(3,3,3,'Diagnos3',3000,'11.09.2001'),
(4,4,4,'Diagnos4',4000,'11.09.2001'),
(5,5,5,'Diagnos5',5000,'11.09.2001');