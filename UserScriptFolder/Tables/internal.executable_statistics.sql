CREATE TABLE [internal].[executable_statistics] (
  [statistics_id] [bigint] IDENTITY,
  [execution_id] [bigint] NOT NULL,
  [executable_id] [bigint] NOT NULL,
  [execution_path] [nvarchar](max) NULL,
  [start_time] [datetimeoffset] NULL,
  [end_time] [datetimeoffset] NULL,
  [execution_hierarchy] [hierarchyid] NULL,
  [execution_duration] [int] NULL,
  [execution_result] [smallint] NULL,
  [execution_value] [sql_variant] NULL,
  CONSTRAINT [PK_Executable_statistics] PRIMARY KEY CLUSTERED ([statistics_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_ExecutableStatistics_Execution_id]
  ON [internal].[executable_statistics] ([execution_id])
  INCLUDE ([statistics_id])
  ON [PRIMARY]
GO

ALTER TABLE [internal].[executable_statistics]
  ADD CONSTRAINT [FK_ExecutableStatistics_ExecutableId_Executables] FOREIGN KEY ([executable_id]) REFERENCES [internal].[executables] ([executable_id]) ON DELETE CASCADE
GO

ALTER TABLE [internal].[executable_statistics]
  ADD CONSTRAINT [FK_ExecutableStatistics_ExecutionId_Executions] FOREIGN KEY ([execution_id]) REFERENCES [internal].[executions] ([execution_id]) ON DELETE CASCADE
GO