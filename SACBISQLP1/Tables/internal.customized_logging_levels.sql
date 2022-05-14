CREATE TABLE [internal].[customized_logging_levels] (
  [level_id] [bigint] IDENTITY,
  [name] [sysname] NOT NULL,
  [description] [nvarchar](1024) NULL,
  [profile_value] [bigint] NOT NULL,
  [events_value] [bigint] NOT NULL,
  [created_by_sid] [varbinary](85) NOT NULL,
  [created_by_name] [nvarchar](128) NOT NULL,
  [created_time] [datetimeoffset] NOT NULL,
  CONSTRAINT [PK_Levels] PRIMARY KEY CLUSTERED ([level_id])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Unique_level_name]
  ON [internal].[customized_logging_levels] ([name])
  ON [PRIMARY]
GO