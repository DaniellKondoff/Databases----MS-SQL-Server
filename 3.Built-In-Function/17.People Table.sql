/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[Name]
      ,[Birthdate]
	  ,DATEDIFF(YEAR,Birthdate,GETDATE()) as [Age in Years]
	  ,DATEDIFF(MONTH,Birthdate,GETDATE()) as [Age in Months]
	  ,DATEDIFF(DAY,Birthdate,GETDATE()) as [Age in Days]
	  ,DATEDIFF(MINUTE,Birthdate,GETDATE()) as [Age in Minutes]
  FROM [People].[dbo].[People]