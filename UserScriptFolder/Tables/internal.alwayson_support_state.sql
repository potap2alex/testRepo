CREATE TABLE [internal].[alwayson_support_state] (
  [server_name] [nvarchar](256) NOT NULL,
  [state] [tinyint] NOT NULL,
  PRIMARY KEY CLUSTERED ([server_name])
)
ON [PRIMARY]
GO