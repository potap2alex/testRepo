SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [internal].[encrypt_binarydata] (@algorithmName [nvarchar](255),
@key [varbinary](8000),
@IV [varbinary](8000),
@binary_value [varbinary](max))
RETURNS [varbinary](max)
AS
EXTERNAL NAME [ISSERVER].[Microsoft.SqlServer.IntegrationServices.Server.Security.CryptoGraphy].[EncryptBinaryData]
GO