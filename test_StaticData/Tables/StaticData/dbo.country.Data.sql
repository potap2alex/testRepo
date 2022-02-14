SET IDENTITY_INSERT dbo.country ON
GO
INSERT dbo.country(country_id, country) VALUES (1, 'USA');
INSERT dbo.country(country_id, country) VALUES (2, 'Canada');
GO
SET IDENTITY_INSERT dbo.country OFF
GO