CREATE TABLE [dbo].[DepartmentHistory] (
  [DeptID] [int] NOT NULL,
  [DeptName] [varchar](50) NOT NULL,
  [ManagerID] [int] NULL,
  [ParentDeptID] [int] NULL,
  [ValidFrom] [datetime2] NOT NULL,
  [ValidTo] [datetime2] NOT NULL
)
ON [PRIMARY]
GO

CREATE CLUSTERED COLUMNSTORE INDEX [IX_DepartmentHistory]
  ON [dbo].[DepartmentHistory]
GO

CREATE INDEX [IX_DepartmentHistory_ID_PERIOD_COLUMNS]
  ON [dbo].[DepartmentHistory] ([ValidTo], [ValidFrom], [DeptID])
  ON [PRIMARY]
GO