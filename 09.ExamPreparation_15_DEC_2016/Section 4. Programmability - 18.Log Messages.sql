--Select * INTO MessagesLogs
--FROM Messages
--Where NULL=NULL

Alter TRIGGER TR_MessagesLogs ON Messages After Delete
AS
Insert into MessagesLogs
Select *  from deleted as d

Delete FROm Messages
Where id=1