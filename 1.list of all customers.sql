SELECT 
    p.FirstName, 
    p.LastName
FROM 
    Sales.Customer c
JOIN 
    Person.Person p ON c.PersonID = p.BusinessEntityID
WHERE 
    c.PersonID IS NOT NULL;
