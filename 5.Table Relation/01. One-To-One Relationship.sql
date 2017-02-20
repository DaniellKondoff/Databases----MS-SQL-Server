
Create Table Passports(
PassportID int Primary Key,
PassportNumber varchar(50),
)

Create Table Persons(
PersonID int Primary KEY,
FirstName varchar(200),
Salary decimal(8,2),
PassportID int UNique,
Constraint FK_Passports_Persons Foreign Key(PassportID) references Passports(PassportID)
)


INSERT INTO Passports(PassportID,PassportNumber)
Values
(101,'N34FG21B'),
(102,'K65LO4R7'),
(103,'ZE657QP2')

INSERT INTO Persons(PersonID,FirstName,Salary,PassportID)
Values
(1,'Roberto',43300,102),
(2,'Tom',56100,103),
(3,'Yana',60200,101)

