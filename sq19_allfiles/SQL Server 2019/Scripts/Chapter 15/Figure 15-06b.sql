USE AP;

DECLARE @InvCount int;
EXEC @InvCount = spInvCount '2020-01-01', 'P%';
PRINT 'Invoice count: ' + CONVERT(varchar, @InvCount);