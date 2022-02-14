SET IDENTITY_INSERT dbo.city ON
GO
INSERT dbo.city(city_id, city, country_id) VALUES (1, 'Toronto', 2);
INSERT dbo.city(city_id, city, country_id) VALUES (2, 'Boston', 1);
GO
SET IDENTITY_INSERT dbo.city OFF
GO