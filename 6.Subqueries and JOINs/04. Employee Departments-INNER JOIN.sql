Select top 5 e.EmployeeID,e.FirstName,e.Salary,d.Name as DepartmentName
 from Employees as e
INNER JOIN Departments as d
ON e.DepartmentID=d.DepartmentID
Where e.Salary >15000
Order by e.DepartmentID asc