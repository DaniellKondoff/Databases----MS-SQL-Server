Create Procedure usp_EmployeesBySalaryLevel 
(@stringSallevel varchar(10))
AS
Select FirstName,
LastName
from Employees
Where dbo.ufn_GetSalaryLevel(Salary) = @stringSallevel
 
 Exec dbo.usp_EmployeesBySalaryLevel 'High'