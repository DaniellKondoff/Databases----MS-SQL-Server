
Create PROC usp_GetEmployeesSalaryAbove35000
AS
Select FirstName,
LastName
FROM Employees
Where Salary>35000
GO

EXEC dbo.usp_GetEmployeesSalaryAbove35000