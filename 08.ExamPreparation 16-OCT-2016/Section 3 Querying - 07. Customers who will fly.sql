Select Distinct
c.CustomerID,
FirstName+' ' + LastName as FullName,
DATEDIFF(year,c.DateOfBirth,'2016') as Age
from Tickets as t
JOIN Customers as c
On t.CustomerID=c.CustomerID
JOIN Flights as f
ON f.FlightID=t.FlightID
Where f.Status='Departing'
Order BY Age ASC, CustomerID ASC