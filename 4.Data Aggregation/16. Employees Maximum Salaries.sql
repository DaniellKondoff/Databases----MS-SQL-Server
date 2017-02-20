Select DepartmentID
	,MAX(Salary) as MaxSalary
 from Employees
 Group By DepartmentID
 HAVING NOT MAX(Salary) Between 30000 AND 70000