/* Provide a query that shows the total number of invoices per country.
HINT: GROUP BY */

SELECT BillingCountry,
COUNT(invoiceId) AS number_of_invoices
FROM invoice
GROUP BY BillingCountry
ORDER BY number_of_invoices DESC;