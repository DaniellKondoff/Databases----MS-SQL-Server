Select top 5 cu.CustomerID,lo.Amount from Customers as cu
JOIN Loans as lo
ON cu.CustomerID=lo.CustomerID
Where lo.Amount >(
				Select  AVG(l.Amount) from Customers as cu
				JOIN Loans as l
				ON cu.CustomerID=l.CustomerID
				Where cu.Gender='M')
Order BY cu.LastName ASC
				
