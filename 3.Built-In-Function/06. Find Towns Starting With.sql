Select TownID,Name
from Towns
Where LEFT(Name,1) IN ('M','K','B','E')
Order by Name ASC