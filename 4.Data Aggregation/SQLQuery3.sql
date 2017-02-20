
Select DISTINCT sal.DepartmentID,sal.Salary 
from
(Select e.DepartmentID,
		e.Salary,
	DENSE_RANK() OVER (Partition BY e.DepartmentID Order by e.salary DESC) as SalaryRank
from Employees as e) as sal
Where sal.SalaryRank = 3