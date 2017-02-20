Select DepartmentID
	,Min(Salary) as MinimumSalary
 from Employees
 Where (DepartmentID IN (2,5,7)) AND (HireDate >'01/01/2000')
 Group BY DepartmentID