select top 3 e.EmployeeID,e.FirstName
from Employees as e
LEFT JOIN EmployeesProjects as ep
ON e.EmployeeID = ep.EmployeeID
Where ep.ProjectID is NULL
Order by e.EmployeeID