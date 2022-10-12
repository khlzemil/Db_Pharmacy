CREATE DATABASE DrugstoreApp 

USE DrugstoreApp

CREATE TABLE Owners(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(50) NOT NULL,
	Surname nvarchar(50) NOT NULL

)



CREATE TABLE Pharmacy(
	ID int PRIMARY KEY IDENTITY,
	Name nvarchar(50) NOT NULL,
	Address nvarchar(50) NOT NULL UNIQUE,
	ContactNumber nvarchar(50)  UNIQUE,
	CreationDate datetime,
	OwnerID int FOREIGN KEY REFERENCES Owners(ID)
)

CREATE TABLE Pharmacist(
	ID int PRIMARY KEY IDENTITY,
	Name nvarchar(50) NOT NULL,
	Surname nvarchar(50) NOT NULL,
	Age int,
	Experience int,
	PharmacyID int FOREIGN KEY REFERENCES Pharmacy(ID)
)

CREATE TABLE Drugs(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(50) NOT NULL,
	Price double precision,
	Count int,
	PharmacyID int FOREIGN KEY REFERENCES Pharmacy(Id)
)





INSERT INTO Owners
VALUES('Emil','Quluzade'),
       ('Tural','Ismayilov')


INSERT INTO Pharmacy
VALUES('Zeferan','Sahil','+994513633533','2010-01-01',1),
	  ('Sefa','Xetai','+99400000000','2011-09-09',2)
	
INSERT INTO Pharmacist
VALUES('Faiq','Resulzade',20,3,1),
	  ('Tamerlan','Memmedov',31,10,2)

INSERT INTO Drugs
VALUES('TylolHOT',3.50,50,2),
	  ('Analgin',4,70,1)


SELECT*FROM Owners
SELECT*FROM Pharmacist
SELECT*FROM Pharmacy
SELECT*FROM Drugs