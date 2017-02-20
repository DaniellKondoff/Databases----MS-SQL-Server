Select Count(c.CountryCode) from 
Countries as c
FULL JOIN MountainsCountries as mc
ON c.CountryCode=mc.CountryCode
FULL JOIN Mountains as m
ON m.Id = mc.MountainId
Where mc.MountainId IS NULL