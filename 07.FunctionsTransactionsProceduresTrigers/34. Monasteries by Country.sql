Create Table Monasteries(
Id INT Primary Key Identity,
Name varchar(200),
CountryCode char(2)
Constraint FK_Monasteries_Countries Foreign KEY (CountryCode) references Countries (CountryCode)
)

--2
INSERT INTO Monasteries(Name, CountryCode) VALUES
('Rila Monastery “St. Ivan of Rila”', 'BG'), 
('Bachkovo Monastery “Virgin Mary”', 'BG'),
('Troyan Monastery “Holy Mother''s Assumption”', 'BG'),
('Kopan Monastery', 'NP'),
('Thrangu Tashi Yangtse Monastery', 'NP'),
('Shechen Tennyi Dargyeling Monastery', 'NP'),
('Benchen Monastery', 'NP'),
('Southern Shaolin Monastery', 'CN'),
('Dabei Monastery', 'CN'),
('Wa Sau Toi', 'CN'),
('Lhunshigyia Monastery', 'CN'),
('Rakya Monastery', 'CN'),
('Monasteries of Meteora', 'GR'),
('The Holy Monastery of Stavronikita', 'GR'),
('Taung Kalat Monastery', 'MM'),
('Pa-Auk Forest Monastery', 'MM'),
('Taktsang Palphug Monastery', 'BT'),
('Sümela Monastery', 'TR')

--3
Alter Table Countries
ADD IsDeleted bit Default 0

--4
Update Countries
SET IsDeleted = 1
Where CountryCode IN (
Select riv.CountryCode from
(Select c.CountryCode,
COUNT(r.RiverName) as riverCount
from Countries as c
JOIN CountriesRivers as cr
ON cr.CountryCode=c.CountryCode
JOIN Rivers as r
ON cr.RiverId=r.Id
Group by c.CountryCode
Having COUNT(r.RiverName) > 3) as riv)

--5

Select m.Name,
c.CountryName
 from Monasteries as m
JOIN Countries as c
ON m.CountryCode=c.CountryCode
Where c.IsDeleted != 1 OR c.IsDeleted is NULL
Order BY m.Name