Select MIN(av.AverageSalary) as MinAverageSalary 
from
(Select DepartmentID, AVG(Salary) AverageSalary
from Employees
Group by DepartmentID) as av

----with
;
With av as
(
Select  DepartmentID,AVG(Salary) as averageSalary 
from Employees
Group by DepartmentID
)
Select Min(averageSalary) as MinAverageSalary from av