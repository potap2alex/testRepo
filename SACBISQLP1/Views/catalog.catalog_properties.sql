﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE VIEW [catalog].[catalog_properties]
AS
SELECT     [property_name], 
           [property_value]
FROM       [internal].[catalog_properties]
GO

GRANT SELECT ON [catalog].[catalog_properties] TO [ModuleSigner]
GO