CREATE TABLE [dbo].[DevArtLicenses] (
  [Product] [varchar](2048) NOT NULL DEFAULT ('dbForge Studio for SQL Server Enterprise'),
  [LicenseID] [varchar](50) NOT NULL,
  [LicenseKey] [varchar](2048) NULL,
  [UserID] [int] NULL,
  CONSTRAINT [PK_DevArtLicenses] PRIMARY KEY CLUSTERED ([Product], [LicenseID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DevArtLicenses]
  ADD CONSTRAINT [FK_DevArtLicenses_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[DevArtUsers] ([UserID]) ON DELETE SET NULL ON UPDATE CASCADE
GO