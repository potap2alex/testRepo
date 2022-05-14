SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [internal].[check_schema_version_internal] (@operationId [bigint], @use32bitruntime [smallint], @serverBuild [nvarchar](1024) OUT, @schemaVersion [int] OUT, @schemaBuild [nvarchar](1024) OUT, @assemblyBuild [nvarchar](1024) OUT, @componentVersion [nvarchar](1024) OUT, @compatibilityStatus [smallint] OUT)
AS EXTERNAL NAME [ISSERVER].[Microsoft.SqlServer.IntegrationServices.Server.ServerApi].[CheckSchemaVersionInternal]
GO

GRANT EXECUTE ON [internal].[check_schema_version_internal] TO [ModuleSigner]
GO