Select DepartmentID
	,SUM(Salary) as TotalSalary
 from Employees
 Group BY DepartmentID