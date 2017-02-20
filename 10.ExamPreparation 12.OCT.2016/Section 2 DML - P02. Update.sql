Update Employees
SET ManagerID = CASE
					When employeeID Between 2 and 10 Then 1
					When employeeID Between 12 and 20 Then 11
					When employeeID Between 22 and 30 Then 21
					When employeeID IN (11 ,21) Then 1
				END


Update Employees
SET ManagerID = 1
Where EmployeeID Between 2 and 10
Update Employees
SET ManagerID = 11
Where EmployeeID Between 12 and 20
Update Employees
SET ManagerID = 21
Where EmployeeID Between 22 and 30
Update Employees
SET ManagerID = 1
Where EmployeeID IN (11,21)
