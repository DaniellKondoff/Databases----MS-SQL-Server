Select p.PeakName,
m.MountainRange as Mointain,
p.Elevation
 from Peaks as p
JOIN Mountains as m
ON p.MountainId=m.Id
Order By p.Elevation DESC,p.PeakName ASC