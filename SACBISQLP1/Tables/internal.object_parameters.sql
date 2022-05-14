CREATE TABLE [internal].[object_parameters] (
  [parameter_id] [bigint] IDENTITY,
  [project_id] [bigint] NOT NULL,
  [project_version_lsn] [bigint] NOT NULL,
  [object_type] [smallint] NOT NULL,
  [object_name] [nvarchar](260) NOT NULL,
  [parameter_name] [sysname] NOT NULL,
  [parameter_data_type] [nvarchar](128) NOT NULL,
  [required] [bit] NOT NULL,
  [sensitive] [bit] NOT NULL,
  [description] [nvarchar](1024) NULL,
  [design_default_value] [sql_variant] NULL,
  [default_value] [sql_variant] NULL,
  [sensitive_default_value] [varbinary](max) NULL,
  [base_data_type] [nvarchar](128) NULL,
  [value_type] [char](1) NOT NULL,
  [value_set] [bit] NOT NULL,
  [referenced_variable_name] [nvarchar](128) NULL,
  [validation_status] [char](1) NOT NULL,
  [last_validation_time] [datetimeoffset] NULL,
  CONSTRAINT [PK_Object_Parameters] PRIMARY KEY CLUSTERED ([parameter_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_internal_object_parameters_inc]
  ON [internal].[object_parameters] ([project_id], [project_version_lsn])
  ON [PRIMARY]
GO

ALTER TABLE [internal].[object_parameters]
  ADD CONSTRAINT [FK_ObjectParameters_ProjectId_Projects] FOREIGN KEY ([project_id]) REFERENCES [internal].[projects] ([project_id]) ON DELETE CASCADE
GO

ALTER TABLE [internal].[object_parameters]
  ADD CONSTRAINT [FK_ObjectParameters_ProjectVersionLsn_ObjectVersions] FOREIGN KEY ([project_version_lsn]) REFERENCES [internal].[object_versions] ([object_version_lsn]) ON DELETE CASCADE
GO