Create View V_EmployeesHiredAfter2000 AS
Select FirstName,LastName
FROM Employees
Where DATEPART(YEAR,HireDate) > '2000'

Select * from V_EmployeesHiredAfter2000