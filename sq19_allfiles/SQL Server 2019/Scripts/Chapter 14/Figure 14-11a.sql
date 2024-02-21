USE AP;
BEGIN TRY
    INSERT Invoices
    VALUES (799, 'ZXK-799', '2020-03-07', 299.95, 0, 0,
            1, '2020-04-06', NULL);
    PRINT 'SUCCESS: Record was inserted.';
END TRY
BEGIN CATCH
    PRINT 'FAILURE: Record was not inserted.';
    PRINT 'Error ' + CONVERT(varchar, ERROR_NUMBER(), 1) 
        + ': ' + ERROR_MESSAGE();
END CATCH;