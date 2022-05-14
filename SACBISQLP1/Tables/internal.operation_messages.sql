CREATE TABLE [internal].[operation_messages] (
  [operation_message_id] [bigint] IDENTITY,
  [operation_id] [bigint] NOT NULL,
  [message_time] [datetimeoffset] NOT NULL,
  [message_type] [smallint] NOT NULL,
  [message_source_type] [smallint] NULL,
  [message] [nvarchar](max) NULL,
  [extended_info_id] [bigint] NULL,
  CONSTRAINT [PK_Operation_Messages] PRIMARY KEY CLUSTERED ([operation_message_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_OperationMessages_Operation_id]
  ON [internal].[operation_messages] ([operation_id])
  INCLUDE ([operation_message_id])
  ON [PRIMARY]
GO

ALTER TABLE [internal].[operation_messages]
  ADD CONSTRAINT [FK_OperationMessages_OperationId_Operations] FOREIGN KEY ([operation_id]) REFERENCES [internal].[operations] ([operation_id]) ON DELETE CASCADE
GO