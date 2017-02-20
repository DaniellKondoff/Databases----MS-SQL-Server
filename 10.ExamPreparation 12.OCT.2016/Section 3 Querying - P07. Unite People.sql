Select top 3 e.FirstName, c.CityName from Employees as e
JOIN Branches as b
ON e.BranchID=b.BranchID
JOIN Cities as c
ON b.CityID=c.CityID
UNION ALL
Select top 3 cu.FirstName,c.CityName from Customers as cu
JOIN Cities as c
ON cu.CityID=c.CityID