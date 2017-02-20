Select e.EmployeeID,e.FirstName,e.LastName,d.Name as DepartmentName
from Employees as e
INNER JOIN Departments as d
ON e.DepartmentID = d.DepartmentID
Where d.Name = 'Sales'
Order By e.EmployeeID ASC
