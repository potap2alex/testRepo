CREATE TABLE [internal].[execution_data_taps] (
  [data_tap_id] [bigint] IDENTITY,
  [execution_id] [bigint] NOT NULL,
  [package_path] [nvarchar](max) NULL,
  [dataflow_path_id_string] [nvarchar](4000) NULL,
  [dataflow_task_guid] [uniqueidentifier] NULL,
  [max_rows] [int] NULL,
  [filename] [nvarchar](4000) NULL,
  CONSTRAINT [PK_Execution_data_taps] PRIMARY KEY CLUSTERED ([data_tap_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [internal].[execution_data_taps]
  ADD CONSTRAINT [FK_ExecDataTaps_ExecutionId_Executions] FOREIGN KEY ([execution_id]) REFERENCES [internal].[executions] ([execution_id]) ON DELETE CASCADE
GO