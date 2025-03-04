CREATE DATABASE Practic2_Shadiev_Abduvokhidov
GO

USE Practic2_Shadiev_Abduvokhidov;


CREATE TABLE Customers1
(
	Id INT,
	Age INT,
	FirstName NVARCHAR(20),
	LastName NVARCHAR(20),
	Email VARCHAR(30),
	Phone VARCHAR(20),
);

CREATE TABLE Customers2
(
	Id INT IDENTITY,
	Age INT,
	FirstName NVARCHAR(20),
	LastName NVARCHAR(20),
	Email VARCHAR(30),
	Phone VARCHAR(20),
);

CREATE TABLE Customers3
(
	Id INT IDENTITY,
	Age INT,
	FirstName NVARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	Email VARCHAR(30) UNIQUE,
	Phone VARCHAR(20) UNIQUE,
);
GO

INSERT INTO Customers3(Age, FirstName, LastName, Email, Phone)
VALUES
(1, 'Имя1', 'Фамилия1', '1', '1'),
(2, 'Имя2', 'Фамилия2', '2', '2'),
(3, 'Имя3', 'Фамилия3', '3', '3'),
(4, 'Имя4', 'Фамилия4', '4', '4'),
(5, 'Имя5', 'Фамилия5', '5', '5');

CREATE TABLE Customers4
(
	Id INT IDENTITY,
	Age INT,
	FirstName NVARCHAR(20),
	LastName NVARCHAR(20),
	Email VARCHAR(30) UNIQUE,
	Phone VARCHAR(20) UNIQUE,
	UNIQUE(Email, Phone)
);

CREATE TABLE Customers5
(
	Id INT IDENTITY,
	Age INT,
	FirstName NVARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	Email VARCHAR(30) UNIQUE,
	Phone VARCHAR(20) UNIQUE,
	UNIQUE(Email, Phone)
);

CREATE TABLE Customers6
(
	Id INT IDENTITY,
	Age INT DEFAULT 18,
	FirstName NVARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	Email VARCHAR(30) UNIQUE,
	Phone VARCHAR(20) UNIQUE,
	UNIQUE(Email, Phone)
);

CREATE TABLE Customers7
(
	Id INT IDENTITY,
	Age INT DEFAULT 18 CHECK(Age > 0 AND Age < 100),
	FirstName NVARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	Email VARCHAR(30) UNIQUE CHECK(Email !=''),
	Phone VARCHAR(20) UNIQUE CHECK(Phone !=''),
	UNIQUE(Email, Phone)
);

CREATE TABLE Customers8
(
	Id INT IDENTITY,
	Age INT DEFAULT 18,
	FirstName NVARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	Email VARCHAR(30) UNIQUE CHECK(Email !=''),
	Phone VARCHAR(20) UNIQUE CHECK(Phone !=''),
	CHECK((Age > 0 AND Age < 100) AND (Email != '') AND (Phone != '')),
	UNIQUE(Email, Phone)
);

/*
USE Practic2_Shadiev_Abduvokhidov;
DROP TABLE Customers1;
DROP TABLE Customers2;
DROP TABLE Customers3;
DROP TABLE Customers4;
DROP TABLE Customers5;
DROP TABLE Customers6;
DROP TABLE Customers7;
DROP TABLE Customers8;
*/

CREATE DATABASE NotaryOffice;
GO

USE NotaryOffice;

CREATE TABLE [Service]
(
	ServicesId INT PRIMARY KEY IDENTITY,
	ServiceName NVARCHAR(100),
	ServiceDescription NVARCHAR(300),
	Cost DECIMAL(12,2),
);

CREATE TABLE Client
(
	ClientId INT PRIMARY KEY IDENTITY,
	ClientName NVARCHAR(50),
	TypeActivity NVARCHAR(50),
	Address NVARCHAR(50),
	Phone NVARCHAR(11)
);

CREATE TABLE Deal
(
	DealId INT PRIMARY KEY IDENTITY,
	DealnDescription NVARCHAR(300),
	AmountDeal DECIMAL(12,2),
);
CREATE TABLE RecordService
(
	RecordServiceId INT PRIMARY KEY IDENTITY,
	DealId INT FOREIGN KEY REFERENCES Deal(DealId),
	ClientId INT FOREIGN KEY REFERENCES Client(ClientId),
	ServiceId INT FOREIGN KEY REFERENCES [Service](ServicesId),
	AmountTransaction DECIMAL(12,2),
	Commision DECIMAL(6,2),
	RecordServiceDescription NVARCHAR(300),
);