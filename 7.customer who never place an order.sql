SELECT 
    c.CustomerID,
    p.FirstName,
    p.LastName
FROM 
    Sales.Customer c
JOIN 
    Person.Person p ON c.PersonID = p.BusinessEntityID
LEFT JOIN 
    Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
WHERE 
    soh.CustomerID IS NULL;
