SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [internal].[create_key_information] (@algorithm_name [nvarchar](255), @key [varbinary](8000) OUT, @IV [varbinary](8000) OUT)
AS EXTERNAL NAME [ISSERVER].[Microsoft.SqlServer.IntegrationServices.Server.Security.CryptoGraphy].[CreateKeyInformation]
GO