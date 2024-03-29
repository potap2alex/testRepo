﻿CREATE TABLE [internal].[project_permissions] (
  [id] [bigint] IDENTITY,
  [sid] [internal].[adt_sid] NOT NULL,
  [object_id] [bigint] NOT NULL,
  [permission_type] [smallint] NOT NULL,
  [is_role] [bit] NOT NULL,
  [is_deny] [bit] NOT NULL,
  [grantor_sid] [internal].[adt_sid] NOT NULL,
  CONSTRAINT [PK_Project_Permissions] PRIMARY KEY CLUSTERED ([id]),
  CONSTRAINT [CK_Project_PermissionType] CHECK ([permission_type]=(4) OR [permission_type]=(3) OR [permission_type]=(2) OR [permission_type]=(1))
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Unique_ProjectPermissions]
  ON [internal].[project_permissions] ([object_id], [permission_type], [sid])
  ON [PRIMARY]
GO

ALTER TABLE [internal].[project_permissions]
  ADD CONSTRAINT [FK_ProjectPermissions_ObjectId_Projects] FOREIGN KEY ([object_id]) REFERENCES [internal].[projects] ([project_id]) ON DELETE CASCADE
GO