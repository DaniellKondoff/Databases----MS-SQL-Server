--1
Update Countries
SET CountryName ='Burma'
Where CountryName='Myanmar'
--2
Insert INTO Monasteries(Name,CountryCode)
Select 'Hanga Abbey',
CountryCode from Countries
Where CountryName='Tanzania'
--3
Insert INTO Monasteries(Name,CountryCode)
Select 'Myin-Tin-Daik',
CountryCode from Countries
Where CountryName='Myanmar'
--4

Select con.ContinentName,
c.CountryName,
COUNT(M.id) as MonasteriesCount
 from Continents as con
JOIN Countries as c
ON c.ContinentCode = con.ContinentCode
LEFT JOIN Monasteries as m
ON c.CountryCode=m.CountryCode
Where c.IsDeleted <> 1 OR  c.IsDeleted is NULL
Group BY con.ContinentName,
c.CountryName
Order BY COUNT(M.id) DESC,
c.CountryName ASC