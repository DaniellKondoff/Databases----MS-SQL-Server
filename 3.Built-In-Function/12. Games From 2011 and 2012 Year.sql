Select TOP 50 
Name
,FORMAT(Start,'yyyy-MM-dd') as Start
from Games as g
Where YEAR(g.Start) IN ('2011','2012')
Order BY g.Start,
Name ASC