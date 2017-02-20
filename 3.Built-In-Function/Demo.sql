Select CustomerID
,FirstName
,LastName
,LEFT(PaymentNumber,6) + '**********' AS PaymentNumber
from Customers

Create VIEW v__PublicPaymentInfo
AS
Select CustomerID
,FirstName
,LastName
,LEFT(PaymentNumber,6) + REPLICATE ('*',LEN(PaymentNumber) -6 )AS PaymentNumber
from Customers

SELECT * from v__PublicPaymentInfo