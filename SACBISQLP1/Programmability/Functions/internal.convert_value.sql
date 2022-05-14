SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [internal].[convert_value] (@origin_value [sql_variant],
@data_type [nvarchar](128))
RETURNS [sql_variant]
AS
EXTERNAL NAME [ISSERVER].[Microsoft.SqlServer.IntegrationServices.Server.ServerApi].[ConvertValue]
GO