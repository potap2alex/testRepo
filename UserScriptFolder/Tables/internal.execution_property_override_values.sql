CREATE TABLE [internal].[execution_property_override_values] (
  [property_id] [bigint] IDENTITY,
  [execution_id] [bigint] NOT NULL,
  [property_path] [nvarchar](4000) NOT NULL,
  [property_value] [nvarchar](max) NULL,
  [sensitive_property_value] [varbinary](max) NULL,
  [sensitive] [bit] NOT NULL,
  CONSTRAINT [PK_Execution_Property_Override_Value] PRIMARY KEY CLUSTERED ([property_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [internal].[execution_property_override_values]
  ADD CONSTRAINT [FK_ExecutionPropertyOverrideValue_ExecutionId_Executions] FOREIGN KEY ([execution_id]) REFERENCES [internal].[executions] ([execution_id]) ON DELETE CASCADE
GO