Create Trigger TR_Flights ON Flights After Update
AS
Insert into ArrivedFlights
Select i.FlightID,i.ArrivalTime, org.AirportName,dest.AirportName,
(Select COUNT(*) from Tickets as t Where t.FlightID=i.FlightID) as Passengers
from inserted as i
JOIN Airports as org
ON i.OriginAirportID = org.AirportID
JOIN Airports as dest
ON dest.AirportID=i.DestinationAirportID
JOIN deleted as d
on d.FlightID=i.FlightID
Where i.Status='Arrived' AND  d.Status <> 'Arrived'