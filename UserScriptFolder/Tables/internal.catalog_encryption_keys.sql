CREATE TABLE [internal].[catalog_encryption_keys] (
  [key_id] [bigint] IDENTITY,
  [key_name] [nvarchar](255) NOT NULL,
  [KEY] [varbinary](8000) NOT NULL,
  [IV] [varbinary](8000) NOT NULL,
  CONSTRAINT [PK_Encryption_Keys] PRIMARY KEY CLUSTERED ([key_id])
)
ON [PRIMARY]
GO