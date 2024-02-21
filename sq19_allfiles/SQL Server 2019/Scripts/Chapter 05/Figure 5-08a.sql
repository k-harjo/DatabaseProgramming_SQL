USE AP;

SELECT VendorID, COUNT(*) AS InvoiceCount,
    SUM(InvoiceTotal) AS InvoiceTotal
FROM Invoices
GROUP BY CUBE(VendorID);

-- GROUP BY VendorID WITH CUBE -- Before 2008