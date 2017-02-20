--Create database SoftUni
--USE SoftUni

Create Table Towns(
Id INT Primary Key Identity,
Name varchar(50) NOT NULL
)

Create Table Addresses(
Id INT Primary Key Identity,
AddressText varchar(200) NOT NULL,
TownId int NOT NULL,
Constraint FK_Town_ID Foreign Key(TownId) references Towns(Id)
)

Create Table Departments(
Id INT Primary Key Identity,
Name varchar(50) NOT NULL
)

Create Table Employees(
Id INT Primary Key Identity,
FirstName varchar(100) NOT NULL,
MiddleName varchar(100) NOT NULL,
LastName varchar(100) NOT NULL,
JobTitle varchar(100) NOT NULL,
DepartmentId int NOT NULL,
Constraint FK_Department_Id Foreign Key(DepartmentId) references Departments(Id),
HireDate datetime,
Salary money NOT NULL,
AddressId int,
Constraint FK_Address_Id Foreign Key(AddressId) references Addresses(Id)
)
