Begin Transaction

Update Tickets
Set Price *=1.5
Where FlightID IN
(Select FlightID from Flights
Where AirlineID =
(Select top 1 AirlineID from Airlines
Order By Rating DESC))

Rollback
