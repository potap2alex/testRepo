SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

--  Comments here are associated with the test.
--  For test case examples, see: http://tsqlt.org/user-guide/tsqlt-tutorial/
CREATE PROCEDURE [DG].[test DG]
AS
BEGIN
DECLARE  @countACT INT, @countRez INT;
SET @countACT= (SELECT COUNT (*) FROM dbForge_UnitTest.dbo.testDG);
SET @countRez=1;
IF (@countACT >= @countRez)
RETURN 1;

EXEC DG.[test DG];

END;
GO