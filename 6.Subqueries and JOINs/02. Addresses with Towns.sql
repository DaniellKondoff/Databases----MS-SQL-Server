Select TOP 50 e.FirstName,e.LastName,t.Name as Town,a.AddressText 
from Employees as e
INNER JOIN Addresses as a ON e.AddressID = a.AddressID
Inner JOIN Towns as t ON t.TownID = a.TownID
Order by e.FirstName ASC,e.LastName ASC