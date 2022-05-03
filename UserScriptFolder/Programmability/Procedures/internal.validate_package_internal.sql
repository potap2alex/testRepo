SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [internal].[validate_package_internal] (@project_id [bigint], @package_id [bigint], @version_id [bigint], @validation_id [bigint], @environment_scope [nchar](1), @use32bitruntime [smallint])
AS EXTERNAL NAME [ISSERVER].[Microsoft.SqlServer.IntegrationServices.Server.ServerApi].[ValidatePackageInternal]
GO