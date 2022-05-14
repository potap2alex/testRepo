CREATE TABLE [internal].[execution_data_statistics] (
  [data_stats_id] [bigint] IDENTITY,
  [execution_id] [bigint] NOT NULL,
  [package_name] [nvarchar](260) NOT NULL,
  [package_location_type] [nvarchar](128) NULL,
  [package_path_full] [nvarchar](4000) NULL,
  [task_name] [nvarchar](4000) NULL,
  [dataflow_path_id_string] [nvarchar](4000) NULL,
  [dataflow_path_name] [nvarchar](4000) NULL,
  [source_component_name] [nvarchar](4000) NULL,
  [destination_component_name] [nvarchar](4000) NULL,
  [rows_sent] [bigint] NULL,
  [created_time] [datetimeoffset] NULL,
  [execution_path] [nvarchar](max) NULL,
  CONSTRAINT [PK_Execution_data_statistics] PRIMARY KEY CLUSTERED ([data_stats_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [internal].[execution_data_statistics]
  ADD CONSTRAINT [FK_ExecDataStat_ExecutionId_Executions] FOREIGN KEY ([execution_id]) REFERENCES [internal].[executions] ([execution_id]) ON DELETE CASCADE
GO