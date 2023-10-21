-- Use the Person.Person table to retrieve people's names
-- Use a variable to define the number of rows to retrieve
-- Use a second variable to define the starting BusinessEntityID
-- Return all results in a single set, so do not use a WHILE loop

DECLARE @NumberToReturn INT = 3;
DECLARE @StartID INT = 260

SELECT TOP (@NumberToReturn) BusinessEntityID
	, FirstName
	, LastName
FROM Person.Person
WHERE BusinessEntityID >= @StartID
ORDER BY BusinessEntityID;
