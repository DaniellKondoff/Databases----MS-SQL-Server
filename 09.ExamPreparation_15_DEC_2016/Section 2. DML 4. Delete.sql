Delete from Locations
Where ID not IN (
Select Distinct LocationId from Users
Where LocationId IS NOT NULL)