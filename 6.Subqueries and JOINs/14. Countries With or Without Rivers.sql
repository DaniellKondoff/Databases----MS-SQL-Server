Select top 5 c.CountryName,
r.RiverName
 from Countries as c
	FULL JOIN CountriesRivers as cr
	ON cr.CountryCode=c.CountryCode
	FULL JOIN Rivers as r
	ON  r.Id=cr.RiverId
Where c.ContinentCode='AF'
Order By c.CountryName ASC