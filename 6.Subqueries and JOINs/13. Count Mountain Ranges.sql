Select mc.CountryCode,Count(mc.CountryCode) as MountainRanges from MountainsCountries as mc
JOIN Mountains as m
ON mc.MountainId=m.Id
Where mc.CountryCode IN('BG','US','RU')
Group BY (mc.CountryCode)