USE [master]
GO
IF EXISTS (SELECT [name] FROM [master].[sys].[databases] WHERE [name] = N'TestLink_DataGenerator')
	BEGIN
		ALTER DATABASE [TestLink_DataGenerator] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
		DROP DATABASE [TestLink_DataGenerator]
	END
GO

CREATE DATABASE [TestLink_DataGenerator]
GO

USE [TestLink_DataGenerator]
GO

CREATE TABLE dbo.table1 (
id INT IDENTITY,
c_dec NUMERIC(15, 4),
c_txt VARCHAR(50),
c_txt_max VARCHAR(MAX),
CONSTRAINT PK_table1 PRIMARY KEY CLUSTERED (id)
) ON [PRIMARY]
GO

CREATE TABLE dbo.table2 (
id INT IDENTITY,
c1 INT NULL,
CONSTRAINT PK_table2 PRIMARY KEY CLUSTERED (id),
CONSTRAINT FK_table2_table1_id FOREIGN KEY (c1) REFERENCES dbo.table1 (id)
) ON [PRIMARY]
GO


CREATE SCHEMA schm_CustomGenerator
GO

CREATE SCHEMA schm_DG;
GO

CREATE TABLE schm_CustomGenerator.tSource (
  id integer NOT NULL,
  col1 varchar(50) NOT NULL,
  CONSTRAINT PK_SourceId PRIMARY KEY (id)
	);


CREATE TABLE schm_CustomGenerator.tCustomGenerator (
  id integer NOT NULL,
  col1 varchar(50) NOT NULL,
  col2 varchar(50) NOT NULL,
  CONSTRAINT PK_CustomGeneratorId PRIMARY KEY (id)
	);


INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (1, 'row1');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (2, 'row2');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (3, 'row3');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (4, 'row4');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (5, 'row5');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (6, 'row6');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (7, 'row7');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (8, 'row8');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (9, 'row9');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (10, 'row10');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (11, 'row11');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (12, 'row12');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (13, 'row13');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (14, 'row14');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (15, 'row15');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (16, 'row16');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (17, 'row17');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (18, 'row18');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (19, 'row19');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (20, 'row20');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (21, 'row21');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (22, 'row22');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (23, 'row23');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (24, 'row24');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (25, 'row25');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (26, 'row26');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (27, 'row27');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (28, 'row28');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (29, 'row29');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (30, 'row30');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (31, 'row31');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (32, 'row32');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (33, 'row33');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (34, 'row34');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (35, 'row35');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (36, 'row36');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (37, 'row37');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (38, 'row38');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (39, 'row39');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (40, 'row40');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (41, 'row41');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (42, 'row42');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (43, 'row43');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (44, 'row44');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (45, 'row45');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (46, 'row46');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (47, 'row47');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (48, 'row48');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (49, 'row49');
INSERT INTO schm_CustomGenerator.tSource(id, col1) VALUES (50, 'row50');

CREATE TABLE dbo.Product (
  c1 VARBINARY(MAX) NULL
 ,Image BINARY(130) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE schm_DG.t_dt_numeric(
  pk INT CONSTRAINT pk_dt_numeric PRIMARY KEY,
  clm_bigint BIGINT,
  clm_bit BIT,
  clm_int INT,
  clm_smallint SMALLINT,
  clm_tinyint TINYINT,
  clm_money MONEY,
  clm_smallmoney SMALLMONEY,
  clm_decimal_18_00 DECIMAL(18,0),
  clm_decimal_01_01 DECIMAL(1,1),
  clm_decimal_18_09 DECIMAL(18,9),
  clm_decimal_18_18 DECIMAL(18,18),
  clm_numeric_18_00 NUMERIC(18,0),
  clm_numeric_01_01 NUMERIC(1,1),
  clm_numeric_18_09 NUMERIC(18,9),
  clm_numeric_18_18 NUMERIC(18,18),
  clm_float FLOAT,
  clm_real REAL
  )
GO

CREATE TABLE schm_DG.t_dt_string (
  pk int NOT NULL,
  clm_sysname sysname NOT NULL,
  clm_char_01 char(1) NULL,
  clm_char_50 char(50) NULL,
  clm_varchar_001 varchar(1) NULL,
  clm_varchar_050 varchar(50) NULL,
  clm_varchar_max varchar(max) NULL,
  clm_text text NULL,
  clm_nchar_01 nchar(1) NULL,
  clm_nchar_50 nchar(50) NULL,
  clm_nvarchar_001 nvarchar(1) NULL,
  clm_nvarchar_050 nvarchar(50) NULL,
  clm_nvarchar_max nvarchar(max) NULL,
  clm_ntext ntext NULL,
  CONSTRAINT pk_dt_string PRIMARY KEY CLUSTERED (pk)
)
GO

CREATE TABLE schm_DG.t_dt_datetime (
  pk int NOT NULL,
  clm_date date NULL,
  clm_datetime datetime NULL,
  clm_datetime2 datetime2(5) NULL,
  clm_datetimeoffset datetimeoffset(5) NULL,
  clm_smalldatetime smalldatetime NULL,
  clm_time time(5) NULL,
  CONSTRAINT pk_dt_datetime PRIMARY KEY CLUSTERED (pk)
)
GO

CREATE TABLE schm_DG.t_dt_binary (
  pk int NOT NULL,
  clm_binary_01 binary(1) NULL,
  clm_binary_50 binary(50) NULL,
  clm_varbinary_001 varbinary(1) NULL,
  clm_varbinary_050 varbinary(50) NULL,
  clm_varbinary_max varbinary(max) NULL,
  clm_image image NULL,
  CONSTRAINT pk_dt_binary PRIMARY KEY CLUSTERED (pk)
)
GO

CREATE TABLE schm_DG.supported_wl_simple (
clm_sysname SYSNAME NOT NULL,
clm_char_50 CHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_varchar_050 VARCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_varchar_max VARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
clm_text TEXT COLLATE Cyrillic_General_CI_AS NULL,
clm_nchar_50 NCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_nvarchar_050 NVARCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_nvarchar_max NVARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
clm_ntext NTEXT COLLATE Cyrillic_General_CI_AS NULL,
clm_xml XML NULL,
clm_date DATE NULL,
clm_datetime DATETIME NULL,
clm_datetime2 DATETIME2 NULL,
clm_datetimeoffset DATETIMEOFFSET NULL,
clm_smalldatetime SMALLDATETIME NULL,
clm_time TIME NULL,
clm_bigint BIGINT NULL,
clm_bit BIT NULL,
clm_int INT NULL,
clm_smallint SMALLINT NULL,
clm_tinyint TINYINT NULL,
clm_money MONEY NULL,
clm_smallmoney SMALLMONEY NULL,
clm_decimal DECIMAL NULL,
clm_numeric NUMERIC NULL,
clm_float FLOAT NULL,
clm_real REAL NULL,
clm_binary_50 BINARY(50) NULL,
clm_varbinary_050 VARBINARY(50) NULL,
clm_varbinary_max VARBINARY(MAX) NULL,
clm_image IMAGE NULL,
clm_hierarchyid HIERARCHYID NULL,
clm_uniqueidentifier UNIQUEIDENTIFIER NULL,
clm_geography GEOGRAPHY NULL,
clm_sql_variant SQL_VARIANT NULL,
clm_geometry GEOMETRY NULL
)
GO

CREATE TABLE dbo.for_test (
clm_int INT IDENTITY,
clm_varchar VARCHAR(50) NULL,
clm_date DATETIME2 NULL,
CONSTRAINT PK_for_test PRIMARY KEY CLUSTERED (clm_int)
)
GO

CREATE TABLE dbo.for_ins (
clm_int INT IDENTITY,
clm_varchar VARCHAR(50) NULL,
clm_date DATETIME NULL,
clm_sql_v SQL_VARIANT,
CONSTRAINT PK_for_ins PRIMARY KEY CLUSTERED (clm_int)
)
GO

CREATE VIEW dbo.test_view
AS
SELECT * FROM dbo.for_ins
GO

SET IDENTITY_INSERT dbo.for_ins ON
GO
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (1, N'test1', '2000-05-20 06:31:13.950')
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (2, N'test2', '1981-08-09 01:05:39.750')
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (3, N'test3', '1992-02-08 20:22:43.750')
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (4, N'test4', '1981-04-19 20:24:53.690')
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (5, N'test5', '2006-09-01 13:19:09.720')
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (6, N'test6', '2000-05-20 06:31:13.950')
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (7, N'test7', '2000-05-20 06:31:13.950')
GO
SET IDENTITY_INSERT dbo.for_ins OFF
GO

CREATE TABLE dbo.t_parent (
  pk INT PRIMARY KEY,
  uk INT UNIQUE)
GO

CREATE TABLE dbo.t_child (
  fk_pk INT FOREIGN KEY REFERENCES dbo.t_parent(pk),
  fk_uk INT FOREIGN KEY REFERENCES dbo.t_parent(uk) NOT NULL)
GO

CREATE TABLE dbo.t_overlapped (
A VARCHAR(3) NOT NULL,
B VARCHAR(3) NOT NULL,
C VARCHAR(3) NOT NULL,
D VARCHAR(3) NULL,
E VARCHAR(3) NULL,
F VARCHAR(3) NULL,
J VARCHAR(3) NULL,
PRIMARY KEY CLUSTERED (A, B),
CONSTRAINT FK_CD FOREIGN KEY (C, D) REFERENCES dbo.t_overlapped (A, B),
CONSTRAINT FK_DE FOREIGN KEY (D, E) REFERENCES dbo.t_overlapped (A, B)
) 
GO

CREATE TABLE t1 (
c1 VARCHAR(50) NULL
)
GO

CREATE TABLE t2 (
c2 VARCHAR(50) NULL,
c3 INT NULL
)
GO

CREATE TABLE t_constant (
c_int INT NULL DEFAULT (123),
c_varchar VARCHAR(50) NULL DEFAULT ('test123'),
c_datetime DATETIME2 NULL DEFAULT (GETDATE()),
c_dec DECIMAL(18, 6) NULL,
c_bit BIT NULL DEFAULT (0),
c_geography GEOGRAPHY NULL DEFAULT ('POINT (5 5)'),
c_geometry GEOMETRY NULL DEFAULT ('POINT (5 5)'),
c_hierarchyid HIERARCHYID NULL DEFAULT ('/25/')
)
GO

CREATE TABLE t_ipv4 (
ip_var_v4 VARCHAR(15) COLLATE Cyrillic_General_CI_AS NULL,
ip_text_v4 TEXT COLLATE Cyrillic_General_CI_AS NULL,
ip_nmax_v4 NVARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
ip_vmax_v4 VARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
ip_ch_v4 CHAR(15) COLLATE Cyrillic_General_CI_AS NULL,
ip_nv_v4 NVARCHAR(15) COLLATE Cyrillic_General_CI_AS NULL,
ip_ntext_v4 NTEXT COLLATE Cyrillic_General_CI_AS NULL,
ip_nc_v4 NCHAR(15) COLLATE Cyrillic_General_CI_AS NULL,
var_ip_addr VARCHAR(15) COLLATE Cyrillic_General_CI_AS NULL,
text_ip_addr TEXT COLLATE Cyrillic_General_CI_AS NULL,
nvmax_ip_addr NVARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
vmax_ip_addr VARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
char_ip_addr CHAR(15) COLLATE Cyrillic_General_CI_AS NULL,
nvar_ip_addr NVARCHAR(15) COLLATE Cyrillic_General_CI_AS NULL,
ntext_ip_addr NTEXT COLLATE Cyrillic_General_CI_AS NULL,
nchar_ip_addr NCHAR(15) COLLATE Cyrillic_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE schm_DG.[supported_shuffled]
(
clm_sysname SYSNAME NOT NULL,
clm_char_50 CHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_varchar_050 VARCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_varchar_max VARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
clm_text TEXT COLLATE Cyrillic_General_CI_AS NULL,
clm_nchar_50 NCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_nvarchar_050 NVARCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_nvarchar_max NVARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
clm_ntext NTEXT COLLATE Cyrillic_General_CI_AS NULL,
clm_sql_variant SQL_VARIANT NULL,
)
GO

CREATE TABLE schm_DG.[unsupported_shuffled]
(
clm_date DATE NULL,
clm_datetime DATETIME NULL,
clm_datetime2 DATETIME2 NULL,
clm_datetimeoffset DATETIMEOFFSET NULL,
clm_smalldatetime SMALLDATETIME NULL,
clm_time TIME NULL,
clm_bigint BIGINT NULL,
clm_bit BIT NULL,
clm_int INT NULL,
clm_smallint SMALLINT NULL,
clm_tinyint TINYINT NULL,
clm_money MONEY NULL,
clm_smallmoney SMALLMONEY NULL,
clm_decimal DECIMAL NULL,
clm_numeric NUMERIC NULL,
clm_float FLOAT NULL,
clm_real REAL NULL,
clm_binary_50 BINARY(50) NULL,
clm_varbinary_050 VARBINARY(50) NULL,
clm_varbinary_max VARBINARY(MAX) NULL,
clm_image IMAGE NULL,
clm_hierarchyid HIERARCHYID NULL,
clm_uniqueidentifier UNIQUEIDENTIFIER NULL,
clm_xml XML NULL,
clm_geography GEOGRAPHY NULL,
clm_geometry GEOMETRY NULL
)
GO

CREATE TABLE schm_DG.t_spec_types (
  pk int NOT NULL,
  clm_hierarchyid hierarchyid NULL,
  clm_sql_variant sql_variant NULL,
  clm_uniqueidentifier uniqueidentifier NULL,
  clm_xml xml NULL,
  clm_geography geography NULL,
  clm_geometry geometry NULL,
  CONSTRAINT pk_t_spec_types PRIMARY KEY CLUSTERED (pk)
)
GO

CREATE TABLE dbo.[supported_regexp]
(
clm_sysname SYSNAME NOT NULL,
clm_char_50 CHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_varchar_050 VARCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_varchar_max VARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
clm_text TEXT COLLATE Cyrillic_General_CI_AS NULL,
clm_nchar_50 NCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_nvarchar_050 NVARCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_nvarchar_max NVARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
clm_ntext NTEXT COLLATE Cyrillic_General_CI_AS NULL,
clm_xml XML NULL,
clm_date DATE NULL,
clm_datetime DATETIME NULL,
clm_datetime2 DATETIME2 NULL,
clm_datetimeoffset DATETIMEOFFSET NULL,
clm_smalldatetime SMALLDATETIME NULL,
clm_time TIME NULL,
clm_bigint BIGINT NULL,
clm_bit BIT NULL,
clm_int INT NULL,
clm_smallint SMALLINT NULL,
clm_tinyint TINYINT NULL,
clm_money MONEY NULL,
clm_smallmoney SMALLMONEY NULL,
clm_decimal DECIMAL NULL,
clm_numeric NUMERIC NULL,
clm_float FLOAT NULL,
clm_real REAL NULL,
clm_binary_50 BINARY(50) NULL,
clm_varbinary_050 VARBINARY(50) NULL,
clm_varbinary_max VARBINARY(MAX) NULL,
clm_image IMAGE NULL,
clm_hierarchyid HIERARCHYID NULL,
clm_uniqueidentifier UNIQUEIDENTIFIER NULL,
clm_geography GEOGRAPHY NULL,
clm_sql_variant SQL_VARIANT NULL,
clm_geometry GEOMETRY NULL
)
GO

CREATE TABLE dbo.[supported_wl_ranged] (
clm_date DATE NULL,
clm_datetime DATETIME NULL,
clm_datetime2 DATETIME2 NULL,
clm_datetimeoffset DATETIMEOFFSET NULL,
clm_smalldatetime SMALLDATETIME NULL,
clm_time TIME NULL,
clm_bigint BIGINT NULL,
clm_int INT NULL,
clm_smallint SMALLINT NULL,
clm_tinyint TINYINT NULL,
clm_money MONEY NULL,
clm_smallmoney SMALLMONEY NULL,
clm_decimal DECIMAL NULL,
clm_numeric NUMERIC NULL,
clm_float FLOAT NULL,
clm_real REAL NULL
)
GO

CREATE TABLE dbo.[unsupported_wl_ranged] (
clm_sysname SYSNAME NOT NULL,
clm_char_50 CHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_varchar_050 VARCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_varchar_max VARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
clm_text TEXT COLLATE Cyrillic_General_CI_AS NULL,
clm_nchar_50 NCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_nvarchar_050 NVARCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_nvarchar_max NVARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
clm_ntext NTEXT COLLATE Cyrillic_General_CI_AS NULL,
clm_sql_variant SQL_VARIANT NULL,
clm_xml XML NULL,
clm_geography GEOGRAPHY NULL,
clm_geometry GEOMETRY NULL,
clm_image IMAGE,
clm_binary_50 BINARY(50) NULL,
clm_varbinary_050 VARBINARY(50) NULL,
clm_varbinary_max VARBINARY(MAX) NULL,
clm_hierarchyid HIERARCHYID NULL,
clm_uniqueidentifier UNIQUEIDENTIFIER NULL,
clm_bit BIT NULL
)
GO

CREATE TABLE dbo.[supported_textfile]
(
clm_sysname SYSNAME NOT NULL,
clm_char_50 CHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_varchar_050 VARCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_varchar_max VARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
clm_text TEXT COLLATE Cyrillic_General_CI_AS NULL,
clm_nchar_50 NCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_nvarchar_050 NVARCHAR(50) COLLATE Cyrillic_General_CI_AS NULL,
clm_nvarchar_max NVARCHAR(MAX) COLLATE Cyrillic_General_CI_AS NULL,
clm_ntext NTEXT COLLATE Cyrillic_General_CI_AS NULL,
clm_xml XML NULL,
)
GO

CREATE TABLE dbo.[unsupported_textfile]
(
clm_date DATE NULL,
clm_datetime DATETIME NULL,
clm_datetime2 DATETIME2 NULL,
clm_datetimeoffset DATETIMEOFFSET NULL,
clm_smalldatetime SMALLDATETIME NULL,
clm_time TIME NULL,
clm_bigint BIGINT NULL,
clm_bit BIT NULL,
clm_int INT NULL,
clm_smallint SMALLINT NULL,
clm_tinyint TINYINT NULL,
clm_money MONEY NULL,
clm_smallmoney SMALLMONEY NULL,
clm_decimal DECIMAL NULL,
clm_numeric NUMERIC NULL,
clm_float FLOAT NULL,
clm_real REAL NULL,
clm_binary_50 BINARY(50) NULL,
clm_varbinary_050 VARBINARY(50) NULL,
clm_varbinary_max VARBINARY(MAX) NULL,
clm_image IMAGE NULL,
clm_hierarchyid HIERARCHYID NULL,
clm_uniqueidentifier UNIQUEIDENTIFIER NULL,
clm_geography GEOGRAPHY NULL,
clm_sql_variant SQL_VARIANT NULL,
clm_geometry GEOMETRY NULL
)
GO

USE [master]
GO
IF EXISTS (SELECT [name] FROM [master].[sys].[databases] WHERE [name] = N'TestLink_DataGenerator1')
	BEGIN
		ALTER DATABASE [TestLink_DataGenerator1] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
		DROP DATABASE [TestLink_DataGenerator1]
	END
GO

CREATE DATABASE [TestLink_DataGenerator1]
GO

USE [TestLink_DataGenerator1]
GO

CREATE TABLE dbo.for_ins (
clm_int INT IDENTITY,
clm_varchar VARCHAR(50) NULL,
clm_date DATETIME NULL,
clm_sql_v SQL_VARIANT,
CONSTRAINT PK_for_ins PRIMARY KEY CLUSTERED (clm_int)
)
GO

CREATE VIEW dbo.test_view
AS
SELECT * FROM dbo.for_ins
GO

SET IDENTITY_INSERT dbo.for_ins ON
GO
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (1, N'test1', '2000-05-20 06:31:13.950')
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (2, N'test2', '1981-08-09 01:05:39.750')
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (3, N'test3', '1992-02-08 20:22:43.750')
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (4, N'test4', '1981-04-19 20:24:53.690')
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (5, N'test5', '2006-09-01 13:19:09.720')
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (6, N'test6', '2000-05-20 06:31:13.950')
INSERT dbo.for_ins(clm_int, clm_varchar, clm_date) VALUES (7, N'test7', '2000-05-20 06:31:13.950')
GO
SET IDENTITY_INSERT dbo.for_ins OFF
GO

USE [master]
GO
IF EXISTS (SELECT [name] FROM [master].[sys].[databases] WHERE [name] = N'TestLink_DataGenerator2')
	BEGIN
		ALTER DATABASE [TestLink_DataGenerator2] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
		DROP DATABASE [TestLink_DataGenerator2]
	END
GO

CREATE DATABASE [TestLink_DataGenerator2]
GO