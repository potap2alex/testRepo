CREATE ROLE [ssis_admin]
GO

EXEC sp_addrolemember N'ssis_admin', N'AllSchemaOwner'
GO

EXEC sp_addrolemember N'ssis_admin', N'HOTWATER\Admin01'
GO

EXEC sp_addrolemember N'ssis_admin', N'HOTWATER\adminweb'
GO