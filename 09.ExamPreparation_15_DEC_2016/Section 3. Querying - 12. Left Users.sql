Select m.Id,m.ChatId,m.UserId from Messages as m
Where m.ChatId =17 AND (m.UserId NOT IN ( Select UserId from UsersChats Where ChatId=17) OR m.UserId IS NULL)
Order BY m.Id DESC