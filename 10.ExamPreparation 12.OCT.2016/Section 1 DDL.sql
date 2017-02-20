Create Table DepositTypes(
DepositTypeID int Primary Key,
Name varchar(20)
)

Create Table Deposits(
DepositID int Primary Key Identity,
Amount decimal(10,2),
StartDate Date,
EndDate Date,
DepositTypeID int,
CustomerID int
Constraint FK_Deposits_DepositTypes Foreign Key(DepositTypeID) References DepositTypes(DepositTypeID),
Constraint FK_Deposits_Customers Foreign Key(CustomerID) references Customers(CustomerID)
)

Create Table EmployeesDeposits(
EmployeeID int,
DepositID int,
Constraint PK_EmployeesDeposits Primary Key(EmployeeID,DepositID),
Constraint FK_EmployeesDeposits_Employees Foreign Key(EmployeeID) References Employees(EmployeeID),
Constraint FK_EmployeesDeposits_Deposits Foreign Key(DepositID) References Deposits(DepositID)
)

Create Table CreditHistory(
CreditHistoryID int Primary Key,
Mark char(1),
StartDate Date,
EndDate Date,
CustomerID int
Constraint FK_CreditHistory_Customers Foreign Key(CustomerID) References Customers(CustomerID)
)

Create Table Payments(
PayementID int Primary Key,
Date Date,
Amount decimal(10,2),
LoanID int,
Constraint FK_Payments_Loans Foreign Key(LoanID) References Loans(LoanID)
)

Create Table Users(
UserID int Primary Key,
UserName varchar(20),
Password varchar(20),
CustomerID int Unique ,
Constraint FK_Users_Customers Foreign Key (CustomerID) references Customers(CustomerID)
)

Alter Table Employees
ADD ManagerID int
Constraint FK_Employees_Employees Foreign Key(ManagerID) References Employees(EmployeeId)

