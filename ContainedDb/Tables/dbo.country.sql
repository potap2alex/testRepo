CREATE TABLE [dbo].[country] (
  [country_id] [int] IDENTITY,
  [country] [varchar](50) NOT NULL,
  CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED ([country_id])
)
ON [PRIMARY]
GO