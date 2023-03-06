/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount]
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
  LEFT(OrderDateKey, 4) >= YEAR(
    GETDATE()
  ) - 2 --Ensures we always only bring last two years
ORDER BY 
  OrderDateKey ASC;
