/* Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
Invoice Total
Customer Name
Customer Country
Sale Agent full name */

SELECT
    i.Total,
    c.FirstName || ' ' || c.LastName AS customer_name,
    c.Country,
    e.FirstName || ' ' || e.LastName AS employee_name
FROM INVOICE i
JOIN CUSTOMER c ON i.CustomerId = c.CustomerId
JOIN EMPLOYEE e ON c.SupportRepId = e.EmployeeId;