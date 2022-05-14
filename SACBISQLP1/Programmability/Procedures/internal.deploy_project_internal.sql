SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [internal].[deploy_project_internal] (@deploy_id [bigint], @version_id [bigint], @project_id [bigint], @project_name [nvarchar](128))
AS EXTERNAL NAME [ISSERVER].[Microsoft.SqlServer.IntegrationServices.Server.ServerApi].[DeployProjectInternal]
GO