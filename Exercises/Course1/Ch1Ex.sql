--Use the Production.WorkOrder table in AdventureWorks
--Locate all December 2013 work orders that have a scrapped quantity above zero units
--Sort results so the work orders with the highest amount of scrapped units appear at
--the top
--In SQL Server, dates are treated like text stringsm so write them in single 
--quotation marks: 'yyyy-mm-dd'

SELECT WorkOrderID AS 'Work Order ID',
	ScrappedQty AS 'Scrapped Quantity',
	StartDate AS 'Start Date',
	EndDate AS 'End Date'
FROM Production.WorkOrder
WHERE ScrappedQty > 0
	AND StartDate >= '2013-12-01'
	AND EndDate <= '2013-12-31'
