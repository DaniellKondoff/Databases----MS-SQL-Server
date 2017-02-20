
Update Chats
SET  StartDate = (Select MIN(m.SentOn) from Chats as c
					JOIN Messages as m
					ON m.ChatId=c.Id
					Where c.Id=Chats.Id
					)
Where Chats.Id IN (Select c.Id from Chats as c
					JOIN Messages as m
					ON c.Id=m.ChatId
					Group BY c.Id, c.StartDate
					HAVING c.StartDate > MIN(m.SentOn)
					)

