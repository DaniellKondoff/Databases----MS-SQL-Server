Select cur.CurrencyCode,
cur.Description as Currency,
COUNT(co.CountryCode) as NumberOfCountries
from Currencies as cur
LEFT JOIN Countries as co
ON cur.CurrencyCode=co.CurrencyCode
Group BY cur.CurrencyCode,
cur.Description
Order BY NumberOfCountries DESC,
cur.Description ASC
