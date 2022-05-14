CREATE TABLE [internal].[environments] (
  [environment_id] [bigint] IDENTITY,
  [environment_name] [sysname] NOT NULL,
  [folder_id] [bigint] NOT NULL,
  [description] [nvarchar](1024) NULL,
  [created_by_sid] [varbinary](85) NOT NULL,
  [created_by_name] [nvarchar](128) NOT NULL,
  [created_time] [datetimeoffset] NOT NULL,
  CONSTRAINT [PK_Environments] PRIMARY KEY CLUSTERED ([environment_id]),
  CONSTRAINT [Unique_Folder_Environment] UNIQUE ([environment_name], [folder_id])
)
ON [PRIMARY]
GO

ALTER TABLE [internal].[environments]
  ADD CONSTRAINT [FK_Environments_FolderId_Folders] FOREIGN KEY ([folder_id]) REFERENCES [internal].[folders] ([folder_id])
GO