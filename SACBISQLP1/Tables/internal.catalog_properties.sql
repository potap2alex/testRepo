CREATE TABLE [internal].[catalog_properties] (
  [property_name] [nvarchar](256) NOT NULL,
  [property_value] [nvarchar](256) NOT NULL,
  CONSTRAINT [PK_ISServer_Property] PRIMARY KEY CLUSTERED ([property_name])
)
ON [PRIMARY]
GO