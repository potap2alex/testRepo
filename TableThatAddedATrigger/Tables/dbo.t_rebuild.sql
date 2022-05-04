CREATE TABLE [dbo].[t_rebuild] (
  [id1] [int] NULL,
  [id2] [int] NULL
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[trg_dml_on_table]
  ON [t_rebuild]
  FOR UPDATE
AS
SET NOCOUNT ON;
GO