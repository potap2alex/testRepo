CREATE TABLE [internal].[extended_operation_info] (
  [info_id] [bigint] IDENTITY,
  [operation_id] [bigint] NOT NULL,
  [object_name] [nvarchar](260) NOT NULL,
  [object_type] [smallint] NULL,
  [reference_id] [bigint] NULL,
  [status] [int] NOT NULL,
  [start_time] [datetimeoffset] NOT NULL,
  [end_time] [datetimeoffset] NULL,
  CONSTRAINT [PK_Operation_Info] PRIMARY KEY CLUSTERED ([info_id])
)
ON [PRIMARY]
GO

ALTER TABLE [internal].[extended_operation_info]
  ADD CONSTRAINT [FK_OperationInfo_Operations] FOREIGN KEY ([operation_id]) REFERENCES [internal].[operations] ([operation_id]) ON DELETE CASCADE
GO