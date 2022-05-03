CREATE TABLE [internal].[environment_references] (
  [reference_id] [bigint] IDENTITY,
  [project_id] [bigint] NOT NULL,
  [reference_type] [char](1) NOT NULL,
  [environment_folder_name] [nvarchar](128) NULL,
  [environment_name] [sysname] NOT NULL,
  [validation_status] [char](1) NOT NULL,
  [last_validation_time] [datetimeoffset] NULL,
  CONSTRAINT [PK_environment_references] PRIMARY KEY CLUSTERED ([reference_id])
)
ON [PRIMARY]
GO

ALTER TABLE [internal].[environment_references]
  ADD CONSTRAINT [FK_ProjectEnvironment_ProjectId_Projects] FOREIGN KEY ([project_id]) REFERENCES [internal].[projects] ([project_id]) ON DELETE CASCADE
GO