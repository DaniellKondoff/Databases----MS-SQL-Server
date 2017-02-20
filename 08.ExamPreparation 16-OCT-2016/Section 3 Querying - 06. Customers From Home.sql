Select c.CustomerID,
c.FirstName+' ' + c.LastName as FullName,
t.TownName as HomeTown
from Customers as c
JOin Towns as t
ON c.HomeTownID=t.TownID
JOIn Tickets as ti
ON ti.CustomerID=c.CustomerID
JOIN Flights as f
ON ti.FlightID=f.FlightID
JOIN Airports as a
ON f.OriginAirportID=a.AirportID and a.TownID=t.TownID
Where f.Status='Departing'
