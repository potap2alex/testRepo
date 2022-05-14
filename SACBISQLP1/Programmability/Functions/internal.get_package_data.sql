SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [internal].[get_package_data] (@key_name [nvarchar](255),
@KEY [varbinary](8000),
@IV [varbinary](8000),
@project_version_lsn [bigint],
@project_id [bigint])
RETURNS TABLE (
  [name] [nvarchar](260) NULL,
  [package_data] [varbinary](max) NULL
)
WITH EXECUTE AS N'AllSchemaOwner'
AS
EXTERNAL NAME [ISSERVER].[Microsoft.SqlServer.IntegrationServices.Server.Security.CryptoGraphy].[GetDecryptedPackageData]
GO