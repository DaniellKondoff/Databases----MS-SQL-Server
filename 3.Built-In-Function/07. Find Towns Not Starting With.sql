Select TownID,Name
from Towns
Where NOT LEFT(Name,1) IN ('R','B','D')
Order by Name ASC