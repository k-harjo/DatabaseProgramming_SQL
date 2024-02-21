USE AP;
GO

DROP TRIGGER IF EXISTS Database_CreateTable_DropTable ;
GO

DROP TABLE IF EXISTS AuditDDL;
GO

CREATE TABLE AuditDDL (
	EventType VARCHAR(MAX),
	EventData XML
);
GO

CREATE TRIGGER Database_CreateTable_DropTable
    ON DATABASE
    AFTER CREATE_TABLE, DROP_TABLE
AS
    DECLARE @EventData xml;
    DECLARE @EventType varchar(20);

    SELECT @EventData = EVENTDATA();
    SET @EventType = 
        @EventData.value('(/EVENT_INSTANCE/EventType)[1]', 'varchar(100)');

    INSERT INTO AuditDDL (EventType, EventData)
        VALUES(@EventType, @EventData);

    PRINT CONVERT(VARCHAR(MAX), @EventData);