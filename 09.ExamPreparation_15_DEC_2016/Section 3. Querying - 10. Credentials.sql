Select u.Nickname,c.Email,c.Password
from Users as u
JOIN Credentials as c
ON c.Id=u.CredentialId
Where c.Email LIKE '%co.uk'
Order By c.Email ASC