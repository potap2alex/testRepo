SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [internal].[get_isserver_processes] ()
RETURNS TABLE (
  [process_id] [bigint] NULL
)
AS
EXTERNAL NAME [ISSERVER].[Microsoft.SqlServer.IntegrationServices.Server.StartupApi].[GetISServerProcesses]
GO