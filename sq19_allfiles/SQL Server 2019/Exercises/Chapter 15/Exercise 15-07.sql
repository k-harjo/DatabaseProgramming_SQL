USE AP;

SELECT VendorName, FunctionTable.*
FROM Vendors JOIN Invoices
  ON Vendors.VendorID = Invoices.VendorID
JOIN dbo.fnDateRange('10/10/19','10/20/19') AS FunctionTable
  ON Invoices.InvoiceNumber = FunctionTable.InvoiceNumber;
