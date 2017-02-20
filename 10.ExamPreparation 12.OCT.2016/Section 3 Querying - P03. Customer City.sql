Select  cu.CustomerID,cu.FirstName,cu.LastName,cu.Gender,ci.CityName
from Customers as cu
JOIN Cities as ci
ON cu.CityID=ci.CityID
Where (LEFT (cu.LastName,2) = 'Bu' OR
RIGHT(cu.FirstName,1)='a')
AND LEN(ci.CityName)>=8
Order BY cu.CustomerID ASC
