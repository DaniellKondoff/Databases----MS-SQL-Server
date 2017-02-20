Select mc.CountryCode,m.MountainRange,p.PeakName,p.Elevation from MountainsCountries as mc
JOIN Mountains as m
ON mc.MountainId = m.Id
JOIN Peaks as p
ON p.MountainId = m.Id
Where mc.CountryCode='BG' AND
p.Elevation >2835
Order by p.Elevation desc
