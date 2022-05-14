SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [internal].[start_execution_internal] (@project_id [bigint], @execution_id [bigint], @version_id [bigint], @use32BitRuntime [smallint])
AS EXTERNAL NAME [ISSERVER].[Microsoft.SqlServer.IntegrationServices.Server.ServerApi].[StartExecutionInternal]
GO