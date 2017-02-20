Select us.ContinentCode,
		us.CurrencyCode,
		us.CurrencyUs as CurrencyUsage
from 
(Select c.ContinentCode,
cr.CurrencyCode,
COUNT(cr.Description) as  CurrencyUs,
DENSE_RANK() OVER (partition By c.ContinentCode order by COUNT(cr.Description) desc) as rank
 from Countries as c
JOIN Currencies as cr
ON c.CurrencyCode=cr.CurrencyCode
Group By c.ContinentCode, cr.CurrencyCode
Having COUNT(cr.Description) >1) us
Where us.rank=1
Order by ContinentCode