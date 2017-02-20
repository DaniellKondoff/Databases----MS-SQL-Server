Create Table Flights(
FlightID int Primary Key,
DepartureTime DateTime NOT NULL,
ArrivalTime DateTime NOT NULL,
Status varchar(9) Check(Status in ('Departing', 'Delayed', 'Arrived', 'Cancelled')),
OriginAirportID int,
DestinationAirportID int,
AirlineID int,
Constraint FK_Flights_Airports Foreign Key(OriginAirportID) references Airports(AirportID),
Constraint FK_FK_Flights_DestAirports Foreign Key(DestinationAirportID) references Airports(AirportID),
Constraint FK_Flights_Airlines Foreign key (AirlineID) references Airlines(AirlineID)
)

Create Table Tickets(
TicketID int Primary Key,
Price decimal(8,2) NOT NUll,
Class varchar(6) Check(Class IN('First', 'Second', 'Third')),
Seat varchar(5) NOT NULL,
CustomerID int,
FlightID int,
Constraint FK_Tickets_Customers Foreign Key(CustomerID) references Customers(CustomerID),
Constraint FK_Tickets_Flights Foreign Key(FlightID) references Flights(FlightID)
)