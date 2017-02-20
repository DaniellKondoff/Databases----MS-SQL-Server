Select TOP 5 AirlineID,
AirlineName,
Nationality,
Rating
from Airlines
Where AirlineID IN (Select AirlineID from Flights)
Order BY Rating DESC,AirlineID ASC

