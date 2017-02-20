Select FirstName,
DateOfBirth,
DATEDIFF(year,DateOfBirth,'10.01.2016') as Age
from Customers
Where DATEDIFF(year,DateOfBirth,'10.01.2016') Between 40 AND 50
