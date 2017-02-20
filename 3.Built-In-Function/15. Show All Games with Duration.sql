Select G.Name as Game,
Case 
When DATEPART(HOUR,G.Start) Between 0 and 11 Then 'Morning'
When DATEPART(HOUR,G.Start) Between 12 and 17 Then 'Afternoon'
When DATEPART(HOUR,G.Start) Between 18 and 23 Then 'Evening'
END AS [Part of the Day],
Case
When G.Duration <=3 THEN 'Extra Short'
When G.Duration Between 4 AND 6 THEN 'Short'
When G.Duration >6 THEN 'Long'
When G.Duration IS NULL THEN 'Extra Long'
END as [Duration]
from Games as G
Order BY Game ASC,
[Duration],
[Part of the Day]
