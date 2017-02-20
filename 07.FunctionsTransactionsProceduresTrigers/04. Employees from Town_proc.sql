Create Procedure usp_GetEmployeesFromTown
(@townName varchar(max))
AS
Select e.FirstName,e.LastName
from Employees as e
JOIN Addresses as a
ON e.AddressID=a.AddressID
JOIN Towns as t
ON t.TownID=a.TownID
Where t.Name=@townName

Exec dbo.usp_GetEmployeesFromTown 'Sofia'