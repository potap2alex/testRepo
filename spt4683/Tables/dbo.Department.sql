CREATE TABLE [dbo].[Department] (
  [DeptID] [int] NOT NULL,
  [DeptName] [varchar](50) NOT NULL,
  [ManagerID] [int] NULL,
  [ParentDeptID] [int] NULL,
  [ValidFrom] [datetime2] GENERATED ALWAYS AS ROW START NOT NULL,
  [ValidTo] [datetime2] GENERATED ALWAYS AS ROW END NOT NULL,
  PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo),
  PRIMARY KEY CLUSTERED ([DeptID])
)
ON [PRIMARY]
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = [dbo].[DepartmentHistory], DATA_CONSISTENCY_CHECK = ON))
GO