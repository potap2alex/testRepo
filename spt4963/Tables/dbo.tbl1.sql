CREATE TABLE [dbo].[tbl1] (
  [id] [int] NULL,
  [vname] [varchar](1) NULL
)
ON [PRIMARY]
GO

GRANT SELECT ON [dbo].[tbl1] TO [test_user]
GO