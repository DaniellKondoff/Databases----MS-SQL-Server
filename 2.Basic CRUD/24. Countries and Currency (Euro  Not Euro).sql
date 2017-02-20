SELECT CountryName,CountryCode,
(Case CurrencyCode
When 'EUR' THEN 'Euro'
ELSE 'Not Euro' END)
 FROM Countries
 Order by CountryName ASC