Select
PeakName,
RiverName,
LOWER(Concat(PeakName,SUBSTRING(RiverName,2,200))) AS Mix
FROM Peaks,Rivers
Where RIGHT(PeakName,1)=LEFT(RiverName,1)
Order BY Mix

