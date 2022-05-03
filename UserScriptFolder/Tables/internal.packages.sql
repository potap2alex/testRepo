CREATE TABLE [internal].[packages] (
  [package_id] [bigint] IDENTITY,
  [project_version_lsn] [bigint] NOT NULL,
  [name] [nvarchar](260) NOT NULL,
  [package_guid] [uniqueidentifier] NOT NULL,
  [description] [nvarchar](1024) NULL,
  [package_format_version] [int] NOT NULL,
  [version_major] [int] NOT NULL,
  [version_minor] [int] NOT NULL,
  [version_build] [int] NOT NULL,
  [version_comments] [nvarchar](1024) NULL,
  [version_guid] [uniqueidentifier] NOT NULL,
  [project_id] [bigint] NOT NULL,
  [entry_point] [bit] NOT NULL,
  [validation_status] [char](1) NOT NULL,
  [last_validation_time] [datetimeoffset] NULL,
  [package_data] [varbinary](max) NULL,
  CONSTRAINT [PK_Packages] PRIMARY KEY CLUSTERED ([package_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_Packages_Name]
  ON [internal].[packages] ([name])
  INCLUDE ([package_id], [project_version_lsn], [project_id])
  ON [PRIMARY]
GO

ALTER TABLE [internal].[packages]
  ADD CONSTRAINT [FK_Packages_ProjectId_Projects] FOREIGN KEY ([project_id]) REFERENCES [internal].[projects] ([project_id]) ON DELETE CASCADE
GO

ALTER TABLE [internal].[packages]
  ADD CONSTRAINT [FK_Packages_ProjectVersionLsn_ObjectVersions] FOREIGN KEY ([project_version_lsn]) REFERENCES [internal].[object_versions] ([object_version_lsn]) ON DELETE CASCADE
GO