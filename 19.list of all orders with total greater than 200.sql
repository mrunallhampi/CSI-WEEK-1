SELECT 
    soh.SalesOrderID,
    soh.OrderDate,
    SUM(sod.UnitPrice * sod.OrderQty) AS Total
FROM 
    Sales.SalesOrderHeader soh
JOIN 
    Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY 
    soh.SalesOrderID,
    soh.OrderDate
HAVING 
    SUM(sod.UnitPrice * sod.OrderQty) > 200;
