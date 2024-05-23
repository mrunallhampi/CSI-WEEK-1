SELECT 
    soh.SalesOrderID,
    MAX(sod.OrderQty) AS MaximumQuantity,
    MIN(sod.OrderQty) AS MinimumQuantity
FROM 
    Sales.SalesOrderHeader soh
JOIN 
    Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY 
    soh.SalesOrderID;
