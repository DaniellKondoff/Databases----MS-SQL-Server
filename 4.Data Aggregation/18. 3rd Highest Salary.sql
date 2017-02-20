Select DISTINCT sal.DepartmentID,sal.Salary From
(Select e.DepartmentID,
		e.Salary
		,DENSE_RANK() OVER (Partition By e.departmentID Order by e.salary DESC) as SalaryRank
from Employees as e) as sal
Where sal.SalaryRank=3

Select Salaries.DepartmentID, Salaries.Salary from 
(Select 
DepartmentID,
MAX(Salary) as Salary,
DENSE_RANK() OVER (Partition By departmentID Order by salary DESC) as SalaryRank
from Employees
Group BY DepartmentID,Salary) Salaries
Where SalaryRank=3