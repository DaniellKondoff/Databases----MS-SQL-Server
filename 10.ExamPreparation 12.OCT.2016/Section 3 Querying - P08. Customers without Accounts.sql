Select cu.CustomerID,cu.Height
from Customers as cu
LEFT JOIN Accounts as a
ON a.CustomerID=cu.CustomerID
Where a.AccountNumber IS NULL AND cu.Height BETWEEN 1.74 AND 2.04