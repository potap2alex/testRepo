CREATE TABLE [internal].[execution_component_phases] (
  [phase_stats_id] [bigint] IDENTITY,
  [execution_id] [bigint] NOT NULL,
  [package_name] [nvarchar](260) NOT NULL,
  [package_location_type] [nvarchar](128) NULL,
  [package_path_full] [nvarchar](4000) NULL,
  [task_name] [nvarchar](4000) NOT NULL,
  [subcomponent_name] [nvarchar](4000) NULL,
  [phase] [sysname] NOT NULL,
  [is_start] [bit] NULL,
  [phase_time] [datetimeoffset] NULL,
  [execution_path] [nvarchar](max) NULL,
  [sequence_id] [int] NULL,
  CONSTRAINT [PK_Execution_component_phases] PRIMARY KEY CLUSTERED ([phase_stats_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [Unique_sequence_id]
  ON [internal].[execution_component_phases] ([execution_id], [sequence_id])
  ON [PRIMARY]
GO

ALTER TABLE [internal].[execution_component_phases]
  ADD CONSTRAINT [FK_ExecCompPhases_ExecutionId_Executions] FOREIGN KEY ([execution_id]) REFERENCES [internal].[executions] ([execution_id]) ON DELETE CASCADE
GO