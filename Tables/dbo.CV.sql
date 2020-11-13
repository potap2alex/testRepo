CREATE TABLE [dbo].[CV] (
  [CVID] [int] IDENTITY,
  [Resume] [varbinary](max) NULL,
  [FName] [varchar](50) NULL,
  [FileExtension] [varchar](4) NULL,
  CONSTRAINT [PK_CVID] PRIMARY KEY CLUSTERED ([CVID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO