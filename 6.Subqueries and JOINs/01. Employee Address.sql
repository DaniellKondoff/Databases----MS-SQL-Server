Select top 5 e.EmployeeID,e.JobTitle,a.AddressID,a.AddressText from Employees as e
INNER JOIN Addresses as a
ON e.AddressID = a.AddressID
Order BY a.AddressID 