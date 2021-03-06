/****** Script for SelectTopNRows command from SSMS  ******/

--01 STRING Functions Obfuscate CC Numbers
SELECT  [CustomerID]
      ,[FirstName]
      ,[LastName]
      ,LEFT([PaymentNumber],6)+ REPLICATE('*', Len(PaymentNumber)-6)
			AS PaymentNumber
  FROM [Demo].[dbo].[Customers]

  --02.Math Triangles Area
  Select Id,
  (A*H)/2 AS Area
   from Triangles2

  SELECT 
  
SELECT
  CEILING(
    CEILING(
      CAST(Quantity AS float) / 
      BoxCapacity) / PalletCapacity)
    AS [Number of pallets]
  FROM Products
