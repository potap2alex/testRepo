CREATE TABLE [internal].[projects] (
  [project_id] [bigint] IDENTITY,
  [folder_id] [bigint] NOT NULL,
  [name] [sysname] NOT NULL,
  [description] [nvarchar](1024) NULL,
  [project_format_version] [int] NULL,
  [deployed_by_sid] [varbinary](85) NOT NULL,
  [deployed_by_name] [nvarchar](128) NOT NULL,
  [last_deployed_time] [datetimeoffset] NOT NULL,
  [created_time] [datetimeoffset] NOT NULL,
  [object_version_lsn] [bigint] NOT NULL,
  [validation_status] [char](1) NOT NULL,
  [last_validation_time] [datetimeoffset] NULL,
  CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED ([project_id]),
  CONSTRAINT [Unique_Project_FolderName] UNIQUE ([name], [folder_id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_Projects_Name]
  ON [internal].[projects] ([name])
  INCLUDE ([project_id], [folder_id], [object_version_lsn])
  ON [PRIMARY]
GO

ALTER TABLE [internal].[projects]
  ADD CONSTRAINT [FK_Projects_FolderId_Folders] FOREIGN KEY ([folder_id]) REFERENCES [internal].[folders] ([folder_id])
GO