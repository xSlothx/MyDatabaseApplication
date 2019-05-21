/****** Object: Table [COUNTRIES]   Script Date: 5/21/2019 9:45:38 AM ******/
GO
IF (EXISTS(SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COUNTRIES]') AND type ='U'))
BEGIN
	DROP TABLE [COUNTRIES]
END

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [COUNTRIES] (
	[COUNTRY_ID] char(2) NOT NULL,
	[COUNTRY_NAME] varchar(40) NULL,
	[REGION_ID] decimal(38, 0) NULL
) ON [PRIMARY]
WITH(DATA_COMPRESSION = NONE)
GO
EXECUTE [sp_tableoption]
	@TableNamePattern  = N'[COUNTRIES]',
	@OptionName  = 'vardecimal storage format',
	@OptionValue  = 'OFF'
GO
ALTER TABLE [COUNTRIES] SET (LOCK_ESCALATION = TABLE)

GO
EXECUTE [sp_tableoption]
	@TableNamePattern  = N'[COUNTRIES]',
	@OptionName  = 'table lock on bulk load',
	@OptionValue  = 'OFF'
GO
/****** Object: Table [DEPARTMENTS]   Script Date: 5/21/2019 9:45:38 AM ******/
GO
IF (EXISTS(SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEPARTMENTS]') AND type ='U'))
BEGIN
	DROP TABLE [DEPARTMENTS]
END

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [DEPARTMENTS] (
	[DEPARTMENT_ID] decimal(4, 0) NOT NULL,
	[DEPARTMENT_NAME] varchar(30) NOT NULL,
	[MANAGER_ID] decimal(6, 0) NULL,
	[LOCATION_ID] decimal(4, 0) NULL
) ON [PRIMARY]
WITH(DATA_COMPRESSION = NONE)
GO
EXECUTE [sp_tableoption]
	@TableNamePattern  = N'[DEPARTMENTS]',
	@OptionName  = 'vardecimal storage format',
	@OptionValue  = 'OFF'
GO
ALTER TABLE [DEPARTMENTS] SET (LOCK_ESCALATION = TABLE)

GO
EXECUTE [sp_tableoption]
	@TableNamePattern  = N'[DEPARTMENTS]',
	@OptionName  = 'table lock on bulk load',
	@OptionValue  = 'OFF'
GO
/****** Object: Table [DimStore]   Script Date: 5/21/2019 9:45:38 AM ******/
GO
IF (EXISTS(SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimStore]') AND type ='U'))
BEGIN
	DROP TABLE [DimStore]
END

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [DimStore] (
	[StoreKey] int NOT NULL,
	[GeographyKey] int NULL,
	[StoreManager] int NULL,
	[StoreType] nvarchar(50) NULL,
	[StoreName] nvarchar(64) NULL,
	[StoreDescription] nvarchar(63) NULL,
	[Status] nvarchar(50) NULL,
	[OpenDate] datetime NULL,
	[CloseDate] datetime NULL,
	[EntityKey] int NULL,
	[ZipCode] int NULL,
	[ZipCodeExtension] int NULL,
	[StorePhone] nvarchar(50) NULL,
	[StoreFax] nvarchar(50) NULL,
	[AddressLine1] nvarchar(95) NULL,
	[AddressLine2] nvarchar(95) NULL,
	[CloseReason] nvarchar(50) NULL,
	[EmployeeCount] int NULL,
	[SellingAreaSize] int NULL,
	[LastRemodelDate] datetime NULL,
	[GeoLocation] nvarchar(58) NULL,
	[Geometry] nvarchar(58) NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
) ON [PRIMARY]
WITH(DATA_COMPRESSION = NONE)
GO
EXECUTE [sp_tableoption]
	@TableNamePattern  = N'[DimStore]',
	@OptionName  = 'vardecimal storage format',
	@OptionValue  = 'OFF'
GO
ALTER TABLE [DimStore] SET (LOCK_ESCALATION = TABLE)

GO
EXECUTE [sp_tableoption]
	@TableNamePattern  = N'[DimStore]',
	@OptionName  = 'table lock on bulk load',
	@OptionValue  = 'OFF'
GO
/****** Object: Table [DimStore2]   Script Date: 5/21/2019 9:45:38 AM ******/
GO
IF (EXISTS(SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimStore2]') AND type ='U'))
BEGIN
	DROP TABLE [DimStore2]
END

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [DimStore2] (
	[StoreKey] int NOT NULL,
	[GeographyKey] int NULL,
	[StoreManager] int NULL,
	[StoreType] nvarchar(50) NULL,
	[StoreName] nvarchar(64) NULL,
	[StoreDescription] nvarchar(63) NULL,
	[Status] nvarchar(50) NULL,
	[OpenDate] datetime NULL,
	[CloseDate] datetime NULL,
	[EntityKey] int NULL,
	[ZipCode] int NULL,
	[ZipCodeExtension] int NULL,
	[StorePhone] nvarchar(50) NULL,
	[StoreFax] nvarchar(50) NULL,
	[AddressLine1] nvarchar(95) NULL,
	[AddressLine2] nvarchar(95) NULL,
	[CloseReason] nvarchar(50) NULL,
	[EmployeeCount] int NULL,
	[SellingAreaSize] int NULL,
	[LastRemodelDate] datetime NULL,
	[GeoLocation] nvarchar(58) NULL,
	[Geometry] nvarchar(58) NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
) ON [PRIMARY]
WITH(DATA_COMPRESSION = NONE)
GO
EXECUTE [sp_tableoption]
	@TableNamePattern  = N'[DimStore2]',
	@OptionName  = 'vardecimal storage format',
	@OptionValue  = 'OFF'
GO
ALTER TABLE [DimStore2] SET (LOCK_ESCALATION = TABLE)

GO
EXECUTE [sp_tableoption]
	@TableNamePattern  = N'[DimStore2]',
	@OptionName  = 'table lock on bulk load',
	@OptionValue  = 'OFF'
GO
/****** Object: Table [FactSalesSmall]   Script Date: 5/21/2019 9:45:38 AM ******/
GO
IF (EXISTS(SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactSalesSmall]') AND type ='U'))
BEGIN
	DROP TABLE [FactSalesSmall]
END

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [FactSalesSmall] (
	[SalesKey] int NOT NULL,
	[DateKey] datetime NULL,
	[channelKey] int NULL,
	[StoreKey] int NULL,
	[ProductKey] int NULL,
	[PromotionKey] int NULL,
	[CurrencyKey] int NULL,
	[UnitCost] decimal(30, 12) NULL,
	[UnitPrice] decimal(28, 10) NULL,
	[SalesQuantity] int NULL,
	[ReturnQuantity] int NULL,
	[ReturnAmount] decimal(28, 10) NULL,
	[DiscountQuantity] int NULL,
	[DiscountAmount] decimal(28, 10) NULL,
	[TotalCost] decimal(28, 10) NULL,
	[SalesAmount] decimal(28, 10) NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
) ON [PRIMARY]
WITH(DATA_COMPRESSION = NONE)
GO
EXECUTE [sp_tableoption]
	@TableNamePattern  = N'[FactSalesSmall]',
	@OptionName  = 'vardecimal storage format',
	@OptionValue  = 'OFF'
GO
ALTER TABLE [FactSalesSmall] SET (LOCK_ESCALATION = TABLE)

GO
EXECUTE [sp_tableoption]
	@TableNamePattern  = N'[FactSalesSmall]',
	@OptionName  = 'table lock on bulk load',
	@OptionValue  = 'OFF'
GO
/****** Object: Table [LOCATIONS]   Script Date: 5/21/2019 9:45:38 AM ******/
GO
IF (EXISTS(SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOCATIONS]') AND type ='U'))
BEGIN
	DROP TABLE [LOCATIONS]
END

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [LOCATIONS] (
	[LOCATION_ID] decimal(4, 0) NOT NULL,
	[STREET_ADDRESS] varchar(40) NULL,
	[POSTAL_CODE] varchar(12) NULL,
	[CITY] varchar(30) NOT NULL,
	[STATE_PROVINCE] varchar(25) NULL,
	[COUNTRY_ID] char(2) NULL
) ON [PRIMARY]
WITH(DATA_COMPRESSION = NONE)
GO
EXECUTE [sp_tableoption]
	@TableNamePattern  = N'[LOCATIONS]',
	@OptionName  = 'vardecimal storage format',
	@OptionValue  = 'OFF'
GO
ALTER TABLE [LOCATIONS] SET (LOCK_ESCALATION = TABLE)

GO
EXECUTE [sp_tableoption]
	@TableNamePattern  = N'[LOCATIONS]',
	@OptionName  = 'table lock on bulk load',
	@OptionValue  = 'OFF'
GO