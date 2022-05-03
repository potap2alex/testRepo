CREATE TYPE [catalog].[Package_Table_Type] AS TABLE (
  [name] [nvarchar](260) NOT NULL,
  [package_data] [varbinary](max) NULL
)
GO