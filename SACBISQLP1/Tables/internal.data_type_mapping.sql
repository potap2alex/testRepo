CREATE TABLE [internal].[data_type_mapping] (
  [mapping_id] [bigint] IDENTITY,
  [ssis_data_type] [nvarchar](128) NOT NULL,
  [sql_data_type] [nvarchar](128) NOT NULL,
  CONSTRAINT [PK_Data_Type_Mapping] PRIMARY KEY CLUSTERED ([mapping_id]),
  CONSTRAINT [Unique_data_type_mapping] UNIQUE ([ssis_data_type], [sql_data_type])
)
ON [PRIMARY]
GO