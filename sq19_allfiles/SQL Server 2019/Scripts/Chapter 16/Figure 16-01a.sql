USE AP;

DECLARE @InvoiceID int;
INSERT Invoices
    VALUES (34,'ZXA-080','2020-03-01',14092.59,0,0,3,'2030-03-31',NULL);
SET @InvoiceID = @@IDENTITY;
INSERT InvoiceLineItems VALUES (@InvoiceID,1,160,4447.23,'HW upgrade');
INSERT InvoiceLineItems VALUES (@InvoiceID,2,167,9645.36,'OS upgrade');