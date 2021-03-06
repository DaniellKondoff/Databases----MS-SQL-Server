Select  con.ContinentName,
SUM(co.AreaInSqKm) as [CountriesArea],
SUM( CAST(co.Population as bigint)) as [CountriesPopulation]
 from Continents as con
JOIN Countries as co
ON con.ContinentCode=co.ContinentCode
Group By con.ContinentName
Order By CountriesPopulation DESC