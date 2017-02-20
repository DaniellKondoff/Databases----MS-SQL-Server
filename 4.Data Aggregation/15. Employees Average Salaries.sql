Select *
INTO EmployeeSelary
from Employees
Where Salary > 30000

Delete FROM EmployeeSelary
Where ManagerID=42

Update EmployeeSelary
SET Salary = Salary+5000
Where DepartmentID=1

Select DepartmentID,AVG(Salary) 
from EmployeeSelary
Group By DepartmentID

