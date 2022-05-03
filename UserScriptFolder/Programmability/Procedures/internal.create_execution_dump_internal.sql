SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [internal].[create_execution_dump_internal] (@execution_id [bigint])
AS EXTERNAL NAME [ISSERVER].[Microsoft.SqlServer.IntegrationServices.Server.ServerApi].[CreateExecutionDumpInternal]
GO