CREATE TABLE [internal].[executables] (
  [executable_id] [bigint] IDENTITY,
  [project_id] [bigint] NOT NULL,
  [project_version_lsn] [bigint] NOT NULL,
  [package_name] [nvarchar](260) NOT NULL,
  [package_location_type] [nvarchar](128) NULL,
  [package_path_full] [nvarchar](4000) NULL,
  [executable_name] [nvarchar](4000) NULL,
  [executable_guid] [nvarchar](38) NULL,
  [package_path] [nvarchar](max) NULL,
  CONSTRAINT [PK_Executables] PRIMARY KEY CLUSTERED ([executable_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [internal].[executables]
  ADD CONSTRAINT [FK_Executables] FOREIGN KEY ([project_id]) REFERENCES [internal].[projects] ([project_id]) ON DELETE CASCADE
GO