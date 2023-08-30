/* How many Invoices were there in 2009 and 2011? */

SELECT 
    COUNT(CASE WHEN InvoiceDate LIKE '2009%' THEN InvoiceDate END) AS InvoicesIn2009,
    COUNT(CASE WHEN InvoiceDate LIKE '2011%' THEN InvoiceDate END) AS InvoicesIn2011,
    COUNT(CASE WHEN InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%' THEN InvoiceDate END) AS Total
FROM Invoice;