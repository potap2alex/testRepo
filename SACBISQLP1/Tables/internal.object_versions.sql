CREATE TABLE [internal].[object_versions] (
  [object_version_lsn] [bigint] IDENTITY,
  [object_id] [bigint] NOT NULL,
  [object_type] [smallint] NOT NULL,
  [description] [nvarchar](1024) NULL,
  [created_by] [nvarchar](128) NOT NULL,
  [created_time] [datetimeoffset] NOT NULL,
  [restored_by] [nvarchar](128) NULL,
  [last_restored_time] [datetimeoffset] NULL,
  [object_data] [varbinary](max) NOT NULL,
  [object_status] [char](1) NOT NULL,
  CONSTRAINT [PK_Object_Versions] PRIMARY KEY CLUSTERED ([object_version_lsn])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO