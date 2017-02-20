Select usages.ContinentCode,
usages.CurrencyCode,
usages.Usages as CurrencyUsage
from
(Select ContinentCode,CurrencyCode,
Count(*) as Usages
from Countries
Group BY ContinentCode,CurrencyCode) as usages
JOIN
(Select  maXusage.ContinentCode , MAX(maXusage.Usages) as maximumUsage from 
(Select ContinentCode,CurrencyCode,
Count(*) as Usages
from Countries
Group BY ContinentCode,CurrencyCode) maXusage
Group BY maXusage.ContinentCode) as MaxUsages
ON usages.ContinentCode=MaxUsages.ContinentCode AND MaxUsages.maximumUsage=usages.Usages
Where usages.Usages !=1
Order BY ContinentCode
