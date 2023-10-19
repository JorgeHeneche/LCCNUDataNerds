--Combine inforamtion from Person.Address, Person.StateProvince
--, and Person.CountryRegion
--Use two INNER JOINs to piece related data together so that you
--can read the city, state, and country names for each address

SELECT Address.AddressID,
	Address.AddressLine1,
	Address.AddressLine2,
	Address.City,
	StateProvince.Name AS 'State or Province Name',
	CountryRegion.Name AS 'Country or Region Name'
FROM Person.Address INNER JOIN Person.StateProvince
	ON Address.StateProvinceID = StateProvince.StateProvinceID
	INNER JOIN Person.CountryRegion
	ON StateProvince.CountryRegionCode = CountryRegion.CountryRegionCode
ORDER BY AddressID;
