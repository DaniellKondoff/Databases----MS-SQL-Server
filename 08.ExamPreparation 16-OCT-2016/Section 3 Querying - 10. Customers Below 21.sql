
 Select * from
 (Select DISTINCT c.CustomerID,
 c.FirstName+' ' + c.LastName as FullName,
 DATEDIFF(YEAR,DateOfBirth,'20160101') as Age
 from Customers as c
 JOIN Tickets as t
 ON c.CustomerID=t.CustomerID
 JOIN Flights as f
 ON f.FlightID=t.FlightID AND f.Status='Arrived') as res
 Where res.Age <21
 Order By res.Age DESC,res.CustomerID ASC

 Select DISTINCT c.CustomerID,
 c.FirstName+' ' + c.LastName as FullName,
 DATEDIFF(YEAR,DateOfBirth,'20160101') as Age
 from Customers as c
 JOIN Tickets as t
 ON c.CustomerID=t.CustomerID
 JOIN Flights as f
 ON f.FlightID=t.FlightID AND f.Status='Arrived'
 Where  DATEDIFF(YEAR,DateOfBirth,'20160101') <21
 Order BY Age DESC,CustomerID ASC
