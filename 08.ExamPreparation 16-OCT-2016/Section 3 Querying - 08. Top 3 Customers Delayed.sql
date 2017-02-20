Select top 3  c.CustomerID, c.FirstName+' ' +c.LastName as FullName, 
t.Price as TicketPrice,
a.AirportName as Destination
 from Tickets as t
JOIN Flights as f
ON t.FlightID=f.FlightID
JOIN Airports as a
ON f.DestinationAirportID=a.AirportID
JOIN Customers as c
ON c.CustomerID=t.CustomerID
Where f.Status='Delayed'
Order BY t.Price DESC,c.CustomerID ASC