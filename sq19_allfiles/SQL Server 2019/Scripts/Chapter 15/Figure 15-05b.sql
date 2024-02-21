USE AP;

DECLARE @MyInvTotal money;
EXEC spInvTotal3 @MyInvTotal OUTPUT, '2020-01-01', 'P%';

PRINT '$' + CONVERT(varchar,@MyInvTotal,1);