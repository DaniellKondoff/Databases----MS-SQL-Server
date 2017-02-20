Select TOP 50
 e.EmployeeID,
e.FirstName +' '+ e.LastName as EmployeeName,
m.FirstName + ' '+ m.LastName as managerName,
d.Name as DepartmentName
from Employees as e
	JOIN Employees as m
	ON m.EmployeeID=e.ManagerID
	JOIN Departments as d
	ON e.DepartmentID=d.DepartmentID
Order by e.EmployeeID ASC