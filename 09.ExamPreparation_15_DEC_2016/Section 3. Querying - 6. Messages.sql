Select Content,SentOn from Messages
Where SentOn >'2014-05-12'
AND CharIndex('just',content) >0
Order BY Id DESC