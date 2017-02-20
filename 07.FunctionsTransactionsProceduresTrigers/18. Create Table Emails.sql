
Create Trigger T_Logs_NotficiationEmails ON Logs After INSERT
AS
BEGIN
	INSERT INTO  NotificationEmails(Recipient,Subject,Body)
	Select AccountId,
	'Balance change for account: ' + CONVERT(varchar(10), AccountId) as 'Subject',
	'On '+ CAST(GETDATE() as varchar(30)) + ' your balance was changed from ' + CAST(OldSum as varchar(30)) + ' ' + 'to' +
	' '+ CAST(NewSum as varchar(30)) +'.' as 'Body'
	from Logs
END

UPDATE Accounts
SET Balance += 10
WHERE Id = 2
