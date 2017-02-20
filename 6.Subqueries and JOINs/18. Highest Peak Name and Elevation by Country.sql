Select TOP 5
c.CountryName as Country,
ISNULL (p.PeakName, '(no highest peak)' )as HighestPeakName,
ISNULL(p.Elevation,0 )as HighestPeakElevation,
ISNULL(m.MountainRange,'(no mountain)' )as Mountain
from Countries as c
LEFT JOIN MountainsCountries as mc
ON c.CountryCode=mc.CountryCode
LEFT JOIN Mountains as m
ON mc.MountainId=m.Id
LEFT JOIN Peaks as p
ON m.Id=p.MountainId
Group by c.CountryName,p.PeakName, p.Elevation,m.MountainRange
Order by c.CountryName,p.PeakName

-----------------------------------------
Select top 5 * from 
(Select
c.CountryName,p.PeakName,p.Elevation,m.MountainRange
from Countries as c
INNER JOIN MountainsCountries as mc
ON c.CountryCode=mc.CountryCode
INNER JOIN Mountains as m
ON mc.MountainId=m.Id
Inner JOIN Peaks as p
ON m.Id=p.MountainId
Inner JOIN (
Select
c.CountryName,MAX(p.Elevation) as MAXELEvation
from Countries as c
INNER JOIN MountainsCountries as mc
ON c.CountryCode=mc.CountryCode
INNER JOIN Mountains as m
ON mc.MountainId=m.Id
Inner JOIN Peaks as p
ON m.Id=p.MountainId
Group by c.CountryName
)  as Max_Elevation
ON Max_Elevation.MAXELEvation=p.Elevation
AND Max_Elevation.CountryName = c.CountryName
UNION ALL
Select
c.CountryName,'(no highest peak)' as PeakName,
0 as Elevation,'(no mountain)' as MountainRange
from Countries as c
LEFT JOIN MountainsCountries as mc
ON c.CountryCode=mc.CountryCode
Where mc.MountainId IS NULL) as result
Order BY CountryName,PeakName
