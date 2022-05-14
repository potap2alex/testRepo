CREATE TABLE [dbo].[DevArtUsers] (
  [UserID] [int] IDENTITY,
  [FirstName] [nvarchar](255) NULL,
  [LastName] [nvarchar](255) NULL,
  [Team] [nvarchar](255) NULL,
  [Location] [nvarchar](255) NULL,
  CONSTRAINT [PK_DevArtUsers_UserID] PRIMARY KEY CLUSTERED ([UserID])
)
ON [PRIMARY]
GO