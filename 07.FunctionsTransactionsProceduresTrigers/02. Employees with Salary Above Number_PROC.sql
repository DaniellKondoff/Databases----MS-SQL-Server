Create PROCEDURE usp_GetEmployeesSalaryAboveNumber
(@sal money)
AS
Select FirstName,
LastName
from Employees
Where Salary >= @sal

Exec dbo.usp_GetEmployeesSalaryAboveNumber 48100
