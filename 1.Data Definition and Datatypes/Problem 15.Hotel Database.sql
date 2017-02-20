
Create Table Employees(
Id int Primary Key IDENTITY,
FistName varchar(50) NOT NULL,
LastName varchar(50) NOT NULL,
Title varchar(50) NOT NULL,
Notes varchar(MAX)
)

Create Table Customers (
AccountNumber int Primary Key NOT NULL,
FistName varchar(50) NOT NULL,
LastName varchar(50) NOT NULL,
PhoneNumber varchar(20) NOT NULL,
EmergencyName varchar(50) NOT NULL,
EmergencyNumber int NOT NULL,
Notes varchar(MAX)
)

Create table RoomStatus(
RoomStatus varchar(10) Primary Key,
Notes varchar(MAX)
)

Create table RoomTypes (
RoomType varchar(10) Primary Key,
Notes varchar(MAX)
)

Create Table BedTypes(
BedType  varchar(10)  Primary Key,
Notes varchar(MAX)
)

Create Table Rooms(
RoomNumber int Primary Key NOT NULL,
RoomType varchar(10) NOT NULL,
Constraint FK_Room_Type Foreign Key (RoomType) references RoomTypes(RoomType),
BedType  varchar(10) NOT NULL,
Constraint FK_Bed_Type Foreign Key (BedType) references BedTypes(BedType),
Rate int NOT NULL,
RoomStatus varchar(10) NOT NULL,
Constraint FK_Room_Status Foreign Key (RoomStatus) references RoomStatus(RoomStatus),
Notes varchar(MAX)
)

Create table Payments(
Id int Primary Key IDENTITY,
EmployeeId int NOT NULL,
Constraint FK_Employee_Id Foreign Key (EmployeeId) references Employees(Id),
PaymentDate date,
AccountNumber int NOT NULL,
Constraint FK_Account_Id Foreign Key (AccountNumber) references Customers(AccountNumber),
FirstDateOccupied date,
LastDateOccupied date NOT NULL DEFAULT GETDATE(),
TotalDays int,
AmountCharged money NOT NULL,
TaxRate money NOT NULL,
TaxAmount money NOT NULL,
PaymentTotal money NOT NULL,
Notes varchar(MAX)
)

Create Table Occupancies(
Id int Primary Key IDENTITY,
EmployeeId int NOT NULL,
Constraint FK_EmployeeOC_Id Foreign Key (EmployeeId) references Employees(Id),
DateOccupied date,
AccountNumber int NOT NULL,
Constraint FK_AccountOC_Id Foreign Key (AccountNumber) references Customers(AccountNumber),
RoomNumber int not null,
Constraint FK_Room_Number Foreign Key (RoomNumber) references Rooms(RoomNumber),
RateApplied int not null,
PhoneCharge money,
Notes varchar(MAX)
)


Insert Into Employees(FistName,LastName,Title,Notes)
Values
('Daniel','Ivanov','Title','Some Notes'),
('Daniel','Ivanov','Title','Some Notes'),
('Daniel','Ivanov','Title','Some Notes')

Insert Into Customers(AccountNumber,FistName,LastName,PhoneNumber,EmergencyName,EmergencyNumber,Notes)
Values
(1,'fName','sName',112,'eName',456,'Some text'),
(2,'fName','sName',112,'eName',456,'Some text'),
(3,'fName','sName',112,'eName',456,'Some text')

Insert Into RoomStatus(RoomStatus,Notes)
VALUES
('1','Some notes'),
('2','Some notes'),
('3','Some notes')

Insert Into RoomTypes(RoomType,Notes)
VALUES
('A','Some notes'),
('B','Some notes'),
('C','Some notes')

Insert Into BedTypes(BedType,Notes)
VALUES
('A','Some notes'),
('B','Some notes'),
('C','Some notes')

Insert Into Rooms(RoomNumber,RoomType,BedType,Rate,RoomStatus,Notes)
Values
(1,'A','C',10,'1','Som Text'),
(2,'B','A',7,'1','Som Text'),
(3,'A','B',10,'1','Som Text')


INSERT INTO Payments(EmployeeId,PaymentDate,AccountNumber,FirstDateOccupied,LastDateOccupied,TotalDays,AmountCharged,TaxRate,TaxAmount,PaymentTotal,Notes)
Values
(1,'02/02/2012',1,'03/03/2013',DEFAULT,25,150,100,200,550,'Some notes'),
(2,'02/02/2012',3,'03/03/2013',DEFAULT,25,150,100,200,550,'Some notes'),
(3,'02/02/2012',2,'03/03/2013',DEFAULT,25,150,100,200,550,'Some notes')

INSERT INTO Occupancies(EmployeeId,DateOccupied,AccountNumber,RoomNumber,RateApplied,PhoneCharge,Notes)
Values
(1,'02/02/2012',2,1,10,15,'Some text'),
(3,'02/02/2012',3,2,10,15,'Some text'),
(2,'02/02/2012',1,3,10,15,'Some text')

