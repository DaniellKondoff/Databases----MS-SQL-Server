/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Username]
	  ,SUBSTRING(Email,(CHARINDEX('@',Email,1)+1),LEN(Email)) as 'Email Provider'
  FROM Users
  Order BY [Email Provider] ,Username
