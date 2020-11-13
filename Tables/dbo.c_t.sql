CREATE TABLE [dbo].[c_t] (
  [id] [int] NOT NULL,
  [column2] [varchar](50) NULL,
  CONSTRAINT [PK_c_t_id] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[c_t]
  ADD CONSTRAINT [FK_c_t_id] FOREIGN KEY ([id]) REFERENCES [dbo].[p_t] ([id])
GO