Select top 10 e.FirstName,
	e.LastName,
	e.DepartmentID 
	from Employees as e
	Where Salary >
(Select AVG(sal.Salary) from
(Select Salary,DepartmentID from Employees) as sal
Where sal.DepartmentID = e.DepartmentID)


