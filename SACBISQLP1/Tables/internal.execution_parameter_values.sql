CREATE TABLE [internal].[execution_parameter_values] (
  [execution_parameter_id] [bigint] IDENTITY,
  [execution_id] [bigint] NOT NULL,
  [object_type] [smallint] NOT NULL,
  [parameter_data_type] [nvarchar](128) NOT NULL,
  [parameter_name] [sysname] NOT NULL,
  [parameter_value] [sql_variant] NULL,
  [sensitive_parameter_value] [varbinary](max) NULL,
  [base_data_type] [nvarchar](128) NULL,
  [sensitive] [bit] NOT NULL,
  [required] [bit] NOT NULL,
  [value_set] [bit] NOT NULL,
  [runtime_override] [bit] NOT NULL,
  CONSTRAINT [PK_Execution_Parameter_value] PRIMARY KEY CLUSTERED ([execution_parameter_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_ExecutionParameterValue_ExecutionId]
  ON [internal].[execution_parameter_values] ([execution_id])
  ON [PRIMARY]
GO

ALTER TABLE [internal].[execution_parameter_values]
  ADD CONSTRAINT [FK_ExecutionParameterValue_ExecutionId_Executions] FOREIGN KEY ([execution_id]) REFERENCES [internal].[executions] ([execution_id]) ON DELETE CASCADE
GO