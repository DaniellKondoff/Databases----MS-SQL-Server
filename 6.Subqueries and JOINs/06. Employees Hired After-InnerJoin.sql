Select e.FirstName,e.LastName,e.HireDate,d.Name as DeptName 
from Employees as e
	JOIN Departments as d
	ON e.DepartmentID=d.DepartmentID
Where (e.HireDate > '1/1/1999') AND (d.Name IN ('Sales','Finance'))

SELECT e.FirstName, e.LastName, e.HireDate,  d.Name as DeptName
FROM Employees e
  INNER JOIN Departments d
  ON (e.DepartmentId = d.DepartmentId
  AND e.HireDate > '1/1/1999'
  AND d.Name IN ('Sales', 'Finance'))
ORDER BY e.HireDate ASC
