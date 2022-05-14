CREATE TABLE [internal].[environment_variables] (
  [variable_id] [bigint] IDENTITY,
  [environment_id] [bigint] NOT NULL,
  [name] [sysname] NOT NULL,
  [description] [nvarchar](1024) NULL,
  [type] [nvarchar](128) NOT NULL,
  [sensitive] [bit] NOT NULL,
  [value] [sql_variant] NULL,
  [sensitive_value] [varbinary](max) NULL,
  [base_data_type] [nvarchar](128) NOT NULL,
  CONSTRAINT [PK_Environment_Variables] PRIMARY KEY CLUSTERED ([variable_id]),
  CONSTRAINT [Unique_Environment_Variable] UNIQUE ([environment_id], [name])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [internal].[environment_variables]
  ADD CONSTRAINT [FK_EnvironmentVariables_EnvironmentId_Environments] FOREIGN KEY ([environment_id]) REFERENCES [internal].[environments] ([environment_id]) ON DELETE CASCADE
GO