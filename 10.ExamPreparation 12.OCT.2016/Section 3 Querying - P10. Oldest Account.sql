Select top 1 c.CustomerID,c.FirstName,a.StartDate from Customers as c
JOIN Accounts as a
ON c.CustomerID=a.CustomerID
Order BY a.StartDate ASC

