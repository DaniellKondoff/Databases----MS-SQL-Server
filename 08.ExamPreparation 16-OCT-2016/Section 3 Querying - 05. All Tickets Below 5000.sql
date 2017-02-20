Select TicketID,
a.AirportName as Destination,
c.FirstName+' '+c.LastName as CustomerName
from Tickets as t
JOIN Customers as c
ON t.CustomerID=c.CustomerID
JOIN Flights as f
ON t.FlightID=f.FlightID
JOIN Airports as a
ON f.DestinationAirportID=a.AirportID
Where t.Price<5000 AND t.Class='First'