Select CountryName,IsoCode
 from Countries
 Where  (LEN(CountryName) - LEN(REPLACE(CountryName,'A',''))) >=3
 Order BY IsoCode ASC

 SELECT Len(Replace('Albania','A',''))


