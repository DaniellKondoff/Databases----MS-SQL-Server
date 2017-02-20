Select top 5 e.EmployeeID,e.FirstName,p.Name as ProjectName
from Employees as e
 JOIN EmployeesProjects as ep
ON e.EmployeeID=ep.EmployeeID
 JOIN Projects as p
ON ep.ProjectID =p.ProjectID
Where  p.StartDate >'08/13/2002' AND
p.EndDate IS NULL 
Order by EmployeeID ASC

select top 5  e.EmployeeID,  e.FirstName , p.Name from employees as e
inner join EmployeesProjects as ep on e.EmployeeID= ep.EmployeeID
inner join Projects as p on p.ProjectID= ep.ProjectID
where  StartDate > '2002-08-13'
and EndDate is null
order by EmployeeID asc