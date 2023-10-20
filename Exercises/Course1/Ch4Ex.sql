--Summarize the data stored in Sales.SalesOrderHeader
--Find the customers that have spent the most money at AdventureWorks
--Apply what you know about the SUM() function to the MIN(),MAX(), and AVG() functions to return additional details
--Display customer names from Person.Person: Join on SalesOrderHeader.CustomerID = Person.BusinessEntityID

SELECT CustomerID
	, FirstName
	, LastName
	, SUM(SOH.TotalDue) AS TotalPurchaseAmount
	, AVG(SOH.TotalDue) AS AveragePurchaseAmount
	, MIN(SOH.TotalDue) AS LowestPurchaseAmount
	, MAX(SOH.TotalDue) AS HighestPurchaseAmount
	, MIN(SOH.OrderDate) AS FirstOrder
	, SUM(SOH.Freight) AS TotalFreightCharges
FROM Sales.SalesOrderHeader AS SOH
	INNER JOIN Person.Person AS P
		ON SOH.CustomerID = P.BusinessEntityID
GROUP BY SOH.CustomerID, P.FirstName, P.LastName
ORDER BY SUM(SOH.TotalDue) DESC;
