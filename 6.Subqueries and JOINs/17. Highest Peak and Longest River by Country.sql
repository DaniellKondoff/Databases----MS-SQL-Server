Select TOP 5 with ties c.CountryName,
MAX(p.Elevation) as HighestPeakElevation,
MAX(r.Length) as LongestRiverLength from Countries as c
FULL JOIN MountainsCountries as mc
ON c.CountryCode=mc.CountryCode
FULL JOIN Mountains as m
ON m.Id=mc.MountainId
FULL JOIN Peaks as p
ON p.MountainId=m.Id
FULL JOIN CountriesRivers as cr
ON cr.CountryCode=c.CountryCode
Full JOIN Rivers as r
ON cr.RiverId=r.Id
Group By c.CountryName
Order BY MAX(p.Elevation) DESC,
MAX(r.Length) DESC,
c.CountryName ASC