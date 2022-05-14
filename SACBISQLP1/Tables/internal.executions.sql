CREATE TABLE [internal].[executions] (
  [execution_id] [bigint] NOT NULL,
  [folder_name] [sysname] NOT NULL,
  [project_name] [sysname] NOT NULL,
  [package_name] [nvarchar](260) NOT NULL,
  [reference_id] [bigint] NULL,
  [reference_type] [char](1) NULL,
  [environment_folder_name] [nvarchar](128) NULL,
  [environment_name] [nvarchar](128) NULL,
  [project_lsn] [bigint] NULL,
  [executed_as_sid] [varbinary](85) NOT NULL,
  [executed_as_name] [nvarchar](128) NOT NULL,
  [use32bitruntime] [bit] NOT NULL,
  CONSTRAINT [PK_Executions] PRIMARY KEY CLUSTERED ([execution_id])
)
ON [PRIMARY]
GO

ALTER TABLE [internal].[executions]
  ADD CONSTRAINT [FK_Executions_ExecutionId_Operations] FOREIGN KEY ([execution_id]) REFERENCES [internal].[operations] ([operation_id]) ON DELETE CASCADE
GO