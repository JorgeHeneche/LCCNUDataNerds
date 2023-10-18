--Use the Purchasing.Vendor table in AdventureWorks
--Locate all vendors whose name starts with the letter "C"
--Filter the reulsts further to just those that also include the word "Bike" or "Bicycle"

SELECT Name
FROM Purchasing.Vendor
WHERE Name LIKE 'C%' AND Name LIKE '%Bike%'
		OR Name LIKE 'C%' AND Name LIKE '%Bicycle%';
