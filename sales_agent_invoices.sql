/* Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
Sales Agent's full name
Invoice ID */


SELECT 
    I.InvoiceId,
    E.FirstName || ' ' || E.LastName AS SalesRep
FROM INVOICE I
JOIN CUSTOMER C ON C.CustomerId = I.CustomerId
JOIN EMPLOYEE E ON E.EmployeeId = C.SupportRepId;