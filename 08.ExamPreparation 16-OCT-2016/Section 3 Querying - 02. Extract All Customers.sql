Select CustomerID,
FirstName +' ' + LastName as FullName,
Gender
from Customers
Order By FullName ASC,CustomerID ASC