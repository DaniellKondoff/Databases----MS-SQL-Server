Select b.EmployeeID,
 b.FirstName,a.EmployeeID,a.FirstName from Employees as a
Join Employees as b
ON a.EmployeeID=b.ManagerID
Where b.ManagerID IN (3,7)
Order By b.EmployeeID asc

Select e.EmployeeID,e.FirstName,m.EmployeeID,m.FirstName from Employees as e
	Left JOIN Employees as m
ON m.EmployeeID=e.ManagerID
Where m.EmployeeID IN(3,7)


