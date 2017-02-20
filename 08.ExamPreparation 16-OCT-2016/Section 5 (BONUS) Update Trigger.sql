Create Trigger TR_ArrivedFlights ON FLights After Update
AS
Insert INTO ArrivedFlights(FlightID,ArrivalTime,Origin,Destination,Passengers)
Select i.FlightID,
i.ArrivalTime,orig.AirportName as Origin,
dest.AirportName as Destination,
(Select COUNT(*) from Tickets Where FlightID=i.FlightID) as Passengers
from inserted as i
JOIN Airports as orig
ON orig.AirportID=i.OriginAirportID
JOIN Airports as dest
ON dest.AirportID=i.DestinationAirportID
JOIN deleted as dt
ON i.FlightID=dt.FlightID
Where i.Status='Arrived' AND dt.Status <> 'Arrived'