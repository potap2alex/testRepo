CREATE TABLE [internal].[environment_permissions] (
  [id] [bigint] IDENTITY,
  [sid] [internal].[adt_sid] NOT NULL,
  [object_id] [bigint] NOT NULL,
  [permission_type] [smallint] NOT NULL,
  [is_role] [bit] NOT NULL,
  [is_deny] [bit] NOT NULL,
  [grantor_sid] [internal].[adt_sid] NOT NULL,
  CONSTRAINT [PK_Environment_Permissions] PRIMARY KEY CLUSTERED ([id]),
  CONSTRAINT [CK_Environment_PermissionType] CHECK ([permission_type]=(4) OR [permission_type]=(2) OR [permission_type]=(1))
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Unique_EnvironmentPermissions]
  ON [internal].[environment_permissions] ([object_id], [permission_type], [sid])
  ON [PRIMARY]
GO

ALTER TABLE [internal].[environment_permissions]
  ADD CONSTRAINT [FK_EnvironmentPermissions_ObjectId_Environments] FOREIGN KEY ([object_id]) REFERENCES [internal].[environments] ([environment_id]) ON DELETE CASCADE
GO