--Create Database CarRental

USE CarRental

Create Table Categories (
Id int Primary Key Identity,
Category varchar(50) NOT NULL,
DailyRate decimal NOT NULL,
WeeklyRate decimal NOT NULL,
MonthlyRate decimal NOT NULL,
WeekendRate decimal NOT NULL
)

Create Table Cars(
Id int Primary Key Identity,
PlateNumber int NOT NULL,
Make varchar(50) NOT NULL,
Model varchar(50) NOT NULL,
CarYear Date NOT NULL,
CategoryId int NOT NULL,
Constraint FK_Category_Id Foreign Key (CategoryId) references Categories(Id),
Doors int NOT NULL,
Picture varbinary(MAX),
Condition varchar(MAX),
Available BIT NOT NULL
)

Create Table Employees (
Id int Primary Key Identity,
FirstName varchar(MAX) NOT NULL,
LastName varchar(MAX) NOT NULL,
Title varchar(50),
Notes varchar(MAX)
)

Create Table Customers (
Id int Primary Key Identity,
DriverLicenceNumber decimal NOT NULL,
FullName varchar(MAX) NOT NULL,
Address varchar(MAX) NOT NULL,
City varchar(MAX) NOT NULL,
ZIPCode decimal NOT NULL,
Notes varchar(MAX)
)

Create Table RentalOrders (
Id int Primary Key Identity,
EmployeeId int NOT NULL,
Constraint FK_Employee_Id Foreign Key (EmployeeId) references Employees(Id),
CustomerId int NOT NULL,
Constraint FK_Customer_Id Foreign Key (CustomerId) references Customers(Id),
CarId int NOT NULL,
Constraint FK_Car_Id Foreign Key (CarId) references Cars(Id),
CarCondition varchar(MAX) Default 'OK',
TankLevel varchar(MAX) Default 'FULL',
KilometrageStart decimal NOT NULL,
KilometrageEnd decimal NOT NULL,
TotalKilometrage decimal NOT NULL,
StartDate date,
EndDate date Default GETDATE(),
TotalDays decimal NOT NULL,
RateApplied decimal NOT NULL Default 0,
TaxRate money NOT NULL Default 0,
OrderStatus varchar(200) Default 'Confirm',
Notes varchar(MAX)
)

INSERT INTO Categories(Category,DailyRate,WeeklyRate,MonthlyRate,WeekendRate)
Values
('New One',8,15,30,10),
('New One',8,15,30,10),
('New One',8,15,30,10)

Insert INTO Cars(PlateNumber,Make,Model,CarYear,CategoryId,Doors,Picture,Condition,Available)
Values
(2223,'Germany','Golf','02/02/2001',1,4,NULL,'kato nova',1),
(2223,'Germany','Golf','02/02/2001',1,4,NULL,'kato nova',1),
(2223,'Germany','Golf','02/02/2001',1,4,NULL,'kato nova',1)

Insert Into Employees(FirstName,LastName,Title,Notes)
Values
('Fname','sName','Some Title','Some Notes'),
('Fname','sName','Some Title','Some Notes'),
('Fname','sName','Some Title','Some Notes')

Insert Into Customers(DriverLicenceNumber,FullName,Address,City,ZIPCode,Notes)
Values
(12345,'Full Name BGN','Some Adress','Pernik',1000,'hahaahah'),
(12345,'Full Name BGN','Some Adress','Pernik',1000,'hahaahah'),
(12345,'Full Name BGN','Some Adress','Pernik',1000,'hahaahah')

Insert Into RentalOrders(EmployeeId,CustomerId,CarId,CarCondition,TankLevel,KilometrageStart,KilometrageEnd,TotalKilometrage,StartDate,EndDate,TotalDays,RateApplied,TaxRate,OrderStatus,Notes)
Values
(1,1,1,'Syper','half Full',20,100,120,'02/02/2002',DEFAULT,4589,10,158,DEFAULT,'texttt'),
(2,1,3,'Syper','half Full',20,100,120,'02/02/2002',DEFAULT,4589,10,158,DEFAULT,'texttt'),
(3,1,2,'Syper','half Full',20,100,120,'02/02/2002',DEFAULT,4589,10,158,DEFAULT,'texttt')





