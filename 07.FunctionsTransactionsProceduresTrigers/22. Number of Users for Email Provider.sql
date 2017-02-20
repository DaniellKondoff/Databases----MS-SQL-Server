
Select em.domain as 'Email Provider',
 COUNT(*) as 'Number of Users' from
(Select Email,
Substring(Email,(CHARINDEX('@',Email)+1),LEN(email)) as domain
 from Users) em
 GROUP BY em.domain
 Order By COUNT(*) DESC, em.domain asc