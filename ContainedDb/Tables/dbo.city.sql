CREATE TABLE [dbo].[city] (
  [city_id] [int] IDENTITY,
  [city] [varchar](50) NOT NULL,
  [country_id] [int] NOT NULL,
  CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED ([city_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[city]
  ADD FOREIGN KEY ([country_id]) REFERENCES [dbo].[country] ([country_id])
GO