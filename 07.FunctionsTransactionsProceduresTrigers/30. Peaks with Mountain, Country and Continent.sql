Select p.PeakName,
m.MountainRange as Mountain,
c.CountryName,
co.ContinentName
from Peaks as p
JOIN Mountains as m
ON p.MountainId=m.Id
JOIN MountainsCountries as mc
ON m.Id=mc.MountainId
JOIN Countries as c
On c.CountryCode=mc.CountryCode
JOIN Continents as co
ON c.ContinentCode=co.ContinentCode
Order By p.PeakName ASC,
c.CountryName ASC