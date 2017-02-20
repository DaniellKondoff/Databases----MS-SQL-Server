Select c.CityName,b.Name, COUNT(*) as EmployeeCount from Employees as e
JOIN Branches as b
ON e.BranchID=b.BranchID
JOIN Cities as c
ON b.CityID=c.CityID
Where NOT c.CityID IN  (4,5)
Group BY c.CityName,b.Name
Having COUNT(*)>=3