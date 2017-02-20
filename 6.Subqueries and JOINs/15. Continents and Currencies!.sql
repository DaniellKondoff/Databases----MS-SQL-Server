Select res.ContinentCode,res.CurrencyCode,res.Usage as CurrencyUsage
 from
(Select ContinentCode,
CurrencyCode,
Count(*) as Usage,
DENSE_RANK() OVER( Partition By ContinentCode Order BY Count(*) DESC) as rank
from Countries
Group BY ContinentCode,
CurrencyCode) as res
Where res.Usage <>1 AND res.rank=1
Order BY ContinentCode, CurrencyCode