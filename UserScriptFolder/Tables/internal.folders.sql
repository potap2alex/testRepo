CREATE TABLE [internal].[folders] (
  [folder_id] [bigint] IDENTITY,
  [name] [sysname] NOT NULL,
  [description] [nvarchar](1024) NULL,
  [created_by_sid] [varbinary](85) NOT NULL,
  [created_by_name] [nvarchar](128) NOT NULL,
  [created_time] [datetimeoffset] NOT NULL,
  CONSTRAINT [PK_Folders] PRIMARY KEY CLUSTERED ([folder_id])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Unique_folder_name]
  ON [internal].[folders] ([name])
  ON [PRIMARY]
GO