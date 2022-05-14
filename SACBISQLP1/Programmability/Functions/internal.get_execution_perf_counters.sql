SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [internal].[get_execution_perf_counters] (@execution_id [bigint],
@execution_guid [uniqueidentifier])
RETURNS TABLE (
  [execution_id] [bigint] NULL,
  [counter_name] [nvarchar](128) NULL,
  [counter_value] [bigint] NULL
)
AS
EXTERNAL NAME [ISSERVER].[Microsoft.SqlServer.IntegrationServices.Server.ExecPerfCounterApi].[GetExecPerfCounters]
GO