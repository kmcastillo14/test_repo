/*
 Navicat Premium Dump SQL

 Source Server         : Noah Database
 Source Server Type    : SQL Server
 Source Server Version : 14002070 (14.00.2070)
 Source Host           : 172.16.20.100:1433
 Source Catalog        : NOAH_GHMPI
 Source Schema         : AR

 Target Server Type    : SQL Server
 Target Server Version : 14002070 (14.00.2070)
 File Encoding         : 65001

 Date: 04/08/2025 17:16:01
*/


-- ----------------------------
-- Table structure for CustomerInformation
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[AR].[CustomerInformation]') AND type IN ('U'))
	DROP TABLE [AR].[CustomerInformation]
GO

CREATE TABLE [AR].[CustomerInformation] (
  [ClientType] int  NULL,
  [CustType] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LocAccForms] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SourceType] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Others] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustCode] varchar(12) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CrossRefCode] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RegName] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TradeName] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Salutation] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LastName] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FirstName] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MiddleName] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NickName] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DateOfBirth] datetime  NULL,
  [Age] int  NULL,
  [PlaceOfBirth] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Gender] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CivilStatus] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nationality] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Religion] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NULL,
  [Level1] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Level2] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Level3] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Level4] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Level5] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Level6] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Level7] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Level8] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Level9] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Level10] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LandLine] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Local] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Mobile] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EmailAdd] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [WebSite] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RecUser] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RecDate] datetime  NULL,
  [ModUser] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ModDate] datetime  NULL,
  [Currency] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Government] int  NULL,
  [Pipeline] int  NULL,
  [rgstrdName] varchar(180) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [middleIntl] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [trdName] varchar(180) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [AR].[CustomerInformation] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of CustomerInformation
-- ----------------------------
INSERT INTO [AR].[CustomerInformation] ([ClientType], [CustType], [LocAccForms], [SourceType], [Others], [CustCode], [CrossRefCode], [RegName], [TradeName], [Salutation], [LastName], [FirstName], [MiddleName], [NickName], [DateOfBirth], [Age], [PlaceOfBirth], [Gender], [CivilStatus], [Nationality], [Religion], [Status], [Level1], [Level2], [Level3], [Level4], [Level5], [Level6], [Level7], [Level8], [Level9], [Level10], [LandLine], [Local], [Mobile], [EmailAdd], [WebSite], [RecUser], [RecDate], [ModUser], [ModDate], [Currency], [Government], [Pipeline], [rgstrdName], [middleIntl], [trdName]) VALUES (N'1', N'01', N'011', N'OFC', N'', N'C-0000000001', N'', N'MA. TIFFANY FAITH ELEMENTO', N'MA. TIFFANY FAITH ELEMENTO', N'MS.', N'', N'', N'', N'', NULL, NULL, N'', N'F', N'01', N'FIL', N'01', N'4', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'09473370942', N'', N'', N'FPTI', N'2018-05-16 00:00:00.000', N'Null', NULL, N'PHP', N'0', N'0', NULL, NULL, NULL)
GO

INSERT INTO [AR].[CustomerInformation] ([ClientType], [CustType], [LocAccForms], [SourceType], [Others], [CustCode], [CrossRefCode], [RegName], [TradeName], [Salutation], [LastName], [FirstName], [MiddleName], [NickName], [DateOfBirth], [Age], [PlaceOfBirth], [Gender], [CivilStatus], [Nationality], [Religion], [Status], [Level1], [Level2], [Level3], [Level4], [Level5], [Level6], [Level7], [Level8], [Level9], [Level10], [LandLine], [Local], [Mobile], [EmailAdd], [WebSite], [RecUser], [RecDate], [ModUser], [ModDate], [Currency], [Government], [Pipeline], [rgstrdName], [middleIntl], [trdName]) VALUES (N'1', N'01', N'011', N'OFC', N'', N'C-0000000002', N'', N'LESTER TAN/ADELA JAYLO', N'LESTER TAN/ADELA JAYLO', N'MR.', N'', N'', N'', N'', NULL, NULL, N'', N'M', N'01', N'FIL', N'01', N'4', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Null', N'', N'', N'FPTI', N'2018-05-16 00:00:00.000', N'Null', NULL, N'PHP', N'0', N'0', NULL, NULL, NULL)
GO

INSERT INTO [AR].[CustomerInformation] ([ClientType], [CustType], [LocAccForms], [SourceType], [Others], [CustCode], [CrossRefCode], [RegName], [TradeName], [Salutation], [LastName], [FirstName], [MiddleName], [NickName], [DateOfBirth], [Age], [PlaceOfBirth], [Gender], [CivilStatus], [Nationality], [Religion], [Status], [Level1], [Level2], [Level3], [Level4], [Level5], [Level6], [Level7], [Level8], [Level9], [Level10], [LandLine], [Local], [Mobile], [EmailAdd], [WebSite], [RecUser], [RecDate], [ModUser], [ModDate], [Currency], [Government], [Pipeline], [rgstrdName], [middleIntl], [trdName]) VALUES (N'1', N'01', N'011', N'OFC', N'', N'C-0000000003', N'', N'CELSO PADILLA', N'CELSO PADILLA', N'MR.', N'', N'', N'', N'', NULL, NULL, N'', N'M', N'01', N'FIL', N'01', N'4', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Null', N'', N'', N'FPTI', N'2018-05-16 00:00:00.000', N'Null', NULL, N'PHP', N'0', N'0', NULL, NULL, NULL)
GO

INSERT INTO [AR].[CustomerInformation] ([ClientType], [CustType], [LocAccForms], [SourceType], [Others], [CustCode], [CrossRefCode], [RegName], [TradeName], [Salutation], [LastName], [FirstName], [MiddleName], [NickName], [DateOfBirth], [Age], [PlaceOfBirth], [Gender], [CivilStatus], [Nationality], [Religion], [Status], [Level1], [Level2], [Level3], [Level4], [Level5], [Level6], [Level7], [Level8], [Level9], [Level10], [LandLine], [Local], [Mobile], [EmailAdd], [WebSite], [RecUser], [RecDate], [ModUser], [ModDate], [Currency], [Government], [Pipeline], [rgstrdName], [middleIntl], [trdName]) VALUES (N'1', N'01', N'011', N'OFC', N'', N'C-0000000004', N'', N'MARK ANTHONY SANTOS', N'MARK ANTHONY SANTOS', N'MR.', N'', N'', N'', N'', NULL, NULL, N'', N'M', N'01', N'FIL', N'01', N'4', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'09178438583', N'', N'', N'FPTI', N'2018-05-16 00:00:00.000', N'Null', NULL, N'PHP', N'0', N'0', NULL, NULL, NULL)
GO

-- ----------------------------
-- Primary Key structure for table CustomerInformation
-- ----------------------------
ALTER TABLE [AR].[CustomerInformation] ADD CONSTRAINT [PK_CustomerInformation] PRIMARY KEY CLUSTERED ([CustCode])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

