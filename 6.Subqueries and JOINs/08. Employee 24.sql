Select e.EmployeeID,
e.FirstName, 
Case
	When p.StartDate >'01/01/2005' Then NULL
	Else p.Name
END as ProjectName
 from Employees as e
JOIN EmployeesProjects as ep
ON e.EmployeeID=ep.EmployeeID
JOIN Projects as p
ON p.ProjectID=ep.ProjectID
Where e.EmployeeID=24


 
