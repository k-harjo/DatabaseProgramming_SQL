SELECT sys.tables.name AS TableName, sys.columns.name AS ColumnName,
       collation_name  
FROM sys.columns inner join sys.tables
  ON sys.columns.object_id = sys.tables.object_id;