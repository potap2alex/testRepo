CREATE TABLE [internal].[operations] (
  [operation_id] [bigint] IDENTITY,
  [operation_type] [smallint] NOT NULL,
  [created_time] [datetimeoffset] NULL,
  [object_type] [smallint] NULL,
  [object_id] [bigint] NULL,
  [object_name] [nvarchar](260) NULL,
  [status] [int] NOT NULL,
  [start_time] [datetimeoffset] NULL,
  [end_time] [datetimeoffset] NULL,
  [caller_sid] [varbinary](85) NOT NULL,
  [caller_name] [sysname] NOT NULL,
  [process_id] [int] NULL,
  [stopped_by_sid] [varbinary](85) NULL,
  [stopped_by_name] [nvarchar](128) NULL,
  [operation_guid] [uniqueidentifier] NULL,
  [server_name] [nvarchar](128) NULL,
  [machine_name] [nvarchar](128) NULL,
  CONSTRAINT [PK_Operations] PRIMARY KEY CLUSTERED ([operation_id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_Operations_object_id]
  ON [internal].[operations] ([object_id])
  ON [PRIMARY]
GO

GRANT
  SELECT,
  UPDATE
ON [internal].[operations] TO [ModuleSigner]
GO