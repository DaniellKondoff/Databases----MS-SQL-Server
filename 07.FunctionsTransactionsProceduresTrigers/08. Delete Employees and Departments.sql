BEGIN TRAN

Alter Table Departments
Alter column ManagerId INT NULL;

Delete from EmployeesProjects
where EmployeeID IN (
Select e.EmployeeID from Employees as e
JOIN Departments as d
ON e.DepartmentID=d.DepartmentID
Where d.Name IN ('Production','Production Control')
)

UPDATE Employees
SET ManagerID = NULL
Where ManagerID IN (
Select e.EmployeeID from Employees as e
JOIN Departments as d
ON e.DepartmentID=d.DepartmentID
Where d.Name IN ('Production','Production Control')
)

Update Departments
SET ManagerID= NULL
Where ManagerID IN (
Select e.EmployeeID from Employees as e
JOIN Departments as d
ON e.DepartmentID=d.DepartmentID
Where d.Name IN ('Production','Production Control')
)

Delete from Employees
Where EmployeeID IN (
Select e.EmployeeID from Employees as e
JOIN Departments as d
ON e.DepartmentID=d.DepartmentID
Where d.Name IN ('Production','Production Control')
)


Delete from Departments
Where Name  IN ('Production','Production Control')

ROLLBACK