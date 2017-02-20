Select * from
(Select TOP 5
org.FlightID,
org.DepartureTime,
org.ArrivalTime,
org.AirportName as Origin,
dest.AirportName as Destination
 from
(Select * from Flights as f
JOIN Airports as a
ON f.OriginAirportID=a.AirportID AND f.Status='Departing') as org
JOIN
(Select * from Flights as f
JOIN Airports as a
ON f.DestinationAirportID=a.AirportID AND f.Status='Departing') as dest
ON org.FlightID=dest.FlightID
Order BY org.DepartureTime DESC,org.FlightID ASC) as res
order BY DepartureTime ASC

Select * from
(Select TOP 5 FlightID,DepartureTime,ArrivalTime,orig.AirportName as Origin,dest.AirportName as Destination from Flights as f
JOIN Airports as orig
ON f.OriginAirportID=orig.AirportID
JOIN Airports as dest
ON f.DestinationAirportID=dest.AirportID
AND f.Status='Departing'
Order BY DepartureTime DESC) as res
Order BY DepartureTime ASC,FlightID ASC