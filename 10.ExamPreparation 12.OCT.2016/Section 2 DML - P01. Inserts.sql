Insert Into DepositTypes(DepositTypeID,Name)
Values
(1,'Time Deposit'),
(2,'Call Deposit'),
(3,'Free Deposit')

Insert Into Deposits(Amount,StartDate,EndDate,DepositTypeID,CustomerID)
Select CASE
			When c.DateOfBirth >'1980-01-01' Then 1000
			ELSE 1500
		END
		+
		Case
			When c.Gender ='M' Then 100
			ELSE 200
		END as Amount,
		GETDATE() as StartDate,
		NULL as EndDate,
		CASE
			When c.CustomerID >15 Then 3
			When c.CustomerID % 2=0 Then 2
			When c.CustomerID % 2<>0 Then 1
		END as DepositTypeID,
		C.CustomerID
from Customers as c
Where c.CustomerID<20

Insert into EmployeesDeposits
Values
(15,4),
(20,15),
(8,7),
(4,8),
(3,13),
(3,8),
(4,10),
(10,1),
(13,4),
(14,9)

