
Select AirportID,AirportName, COUNT(*) as Passengers
 from Flights as f
Join Airports as a
ON f.OriginAirportID=a.AirportID AND f.Status='Departing'
JOIN Tickets as t
ON t.FlightID=f.FlightID
Group By AirportID,AirportName
Order BY AirportID ASC

