Select m.MountainRange,p.PeakName,p.Elevation from Mountains as m
	JOIN Peaks as p ON
p.MountainId = m.Id
Where m.MountainRange='Rila'
Order By p.Elevation DESC