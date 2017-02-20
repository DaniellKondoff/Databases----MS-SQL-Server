Select co.CountryName,
con.ContinentName,
COUNT(r.RiverName) as [RiversCount],
ISNULL(SUM(r.Length),0) as [TotalLength]
 from Countries as co
LEFT JOIN CountriesRivers as cr
ON co.CountryCode = cr.CountryCode
LEFT JOIN Rivers as r
ON cr.RiverId=r.Id
JOIN Continents as con
ON co.ContinentCode=con.ContinentCode
Group BY co.CountryName,
con.ContinentName
Order BY RiversCount DESC,
TotalLength DESC,
Co.CountryName ASC
