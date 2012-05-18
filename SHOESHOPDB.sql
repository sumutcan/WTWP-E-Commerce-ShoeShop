USE [SHOESHOP]
GO
/****** Object:  Table [dbo].[CARGO]    Script Date: 05/18/2012 15:51:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARGO](
	[CargoID] [int] IDENTITY(1,1) NOT NULL,
	[CargoName] [nvarchar](50) NULL,
	[CargoPrice] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CARGO] PRIMARY KEY CLUSTERED 
(
	[CargoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCER]    Script Date: 05/18/2012 15:51:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCER](
	[ProducerID] [int] IDENTITY(1,1) NOT NULL,
	[ProducerName] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_PRODUCER_1] PRIMARY KEY CLUSTERED 
(
	[ProducerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONE]    Script Date: 05/18/2012 15:51:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONE](
	[PhoneID] [int] IDENTITY(1,1) NOT NULL,
	[AreaCode] [nvarchar](3) NOT NULL,
	[PhoneNumber] [nvarchar](7) NOT NULL,
 CONSTRAINT [PK_PHONE] PRIMARY KEY CLUSTERED 
(
	[PhoneID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PHONE] ON
INSERT [dbo].[PHONE] ([PhoneID], [AreaCode], [PhoneNumber]) VALUES (5, N'343', N'2342423')
INSERT [dbo].[PHONE] ([PhoneID], [AreaCode], [PhoneNumber]) VALUES (6, N'345', N'3545454')
INSERT [dbo].[PHONE] ([PhoneID], [AreaCode], [PhoneNumber]) VALUES (7, N'', N'')
INSERT [dbo].[PHONE] ([PhoneID], [AreaCode], [PhoneNumber]) VALUES (8, N'', N'')
INSERT [dbo].[PHONE] ([PhoneID], [AreaCode], [PhoneNumber]) VALUES (9, N'343', N'3343434')
INSERT [dbo].[PHONE] ([PhoneID], [AreaCode], [PhoneNumber]) VALUES (10, N'343', N'3434343')
INSERT [dbo].[PHONE] ([PhoneID], [AreaCode], [PhoneNumber]) VALUES (11, N'435', N'2343545')
INSERT [dbo].[PHONE] ([PhoneID], [AreaCode], [PhoneNumber]) VALUES (12, N'234', N'3242342')
SET IDENTITY_INSERT [dbo].[PHONE] OFF
/****** Object:  Table [dbo].[PERSON]    Script Date: 05/18/2012 15:51:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERSON](
	[Pno] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[Surname] [varchar](25) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[RegisterDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PERSON_1] PRIMARY KEY CLUSTERED 
(
	[Pno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PERSON] ON
INSERT [dbo].[PERSON] ([Pno], [Name], [Surname], [Email], [Password], [RegisterDate]) VALUES (4, N'asdasdsad', N'sadadasd', N'asdasd@asdasd.com', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A05500095F15 AS DateTime))
INSERT [dbo].[PERSON] ([Pno], [Name], [Surname], [Email], [Password], [RegisterDate]) VALUES (5, N'fgdfgdfg', N'sfsf', N'dsfsdf@dasdsf.com', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A055000AADCF AS DateTime))
INSERT [dbo].[PERSON] ([Pno], [Name], [Surname], [Email], [Password], [RegisterDate]) VALUES (6, N'adad', N'asdasd', N'asdasd@asdasd.com', N'96E79218965EB72C92A549DD5A330112', CAST(0x0000A055000B44DA AS DateTime))
INSERT [dbo].[PERSON] ([Pno], [Name], [Surname], [Email], [Password], [RegisterDate]) VALUES (7, N'Umutcan', N'Þimþek', N's.umutcan@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A05501020DD2 AS DateTime))
SET IDENTITY_INSERT [dbo].[PERSON] OFF
/****** Object:  Table [dbo].[PAYMENTTYPE]    Script Date: 05/18/2012 15:51:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENTTYPE](
	[PaymentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentTypeName] [nvarchar](50) NULL,
	[PaymentTypeInfo] [nvarchar](max) NULL,
 CONSTRAINT [PK_PAYMENTTYPE] PRIMARY KEY CLUSTERED 
(
	[PaymentTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CITY]    Script Date: 05/18/2012 15:51:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CITY](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityCode] [int] NOT NULL,
	[CityName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CITY] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CITY] ON
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (1, 1, N'Adana')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (2, 2, N'Adýyaman')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (3, 3, N'Afyon')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (4, 4, N'Aðrý')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (5, 5, N'Amasya')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (6, 6, N'Ankara')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (7, 7, N'Antalya')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (8, 8, N'Artvin')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (9, 9, N'Aydýn')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (10, 10, N'Balýkesir')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (11, 11, N'Bilecik')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (12, 12, N'Bingöl')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (13, 13, N'Bitlis')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (14, 14, N'Bolu')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (15, 15, N'Burdur')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (16, 16, N'Bursa')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (17, 17, N'Çanakkale')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (18, 18, N'Çankýrý')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (19, 19, N'Çorum')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (20, 20, N'Denizli')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (21, 21, N'Diyarbakýr')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (22, 22, N'Edirne')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (23, 23, N'Elazýð')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (24, 24, N'Erzincan')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (25, 25, N'Erzurum')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (26, 26, N'Eskiþehir')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (27, 27, N'Gaziantep')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (28, 28, N'Giresun')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (29, 29, N'Gümüþhane')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (30, 30, N'Hakkari')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (31, 31, N'Hatay')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (32, 32, N'Isparta')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (33, 33, N'Ýçel')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (34, 34, N'Ýstanbul')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (35, 35, N'Ýzmir')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (36, 36, N'Kars')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (37, 37, N'Kastamonu')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (38, 38, N'Kayseri')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (39, 39, N'Kýrklareli')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (40, 40, N'Kýrþehir')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (41, 41, N'Kocaeli')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (42, 42, N'Konya')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (43, 43, N'Kütahya')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (44, 44, N'Malatya')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (45, 45, N'Manisa')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (46, 46, N'K.Maraþ')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (47, 47, N'Mardin')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (48, 48, N'Muðla')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (49, 49, N'Muþ')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (50, 50, N'Nevþehir')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (51, 51, N'Niðde')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (52, 52, N'Ordu')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (53, 53, N'Rize')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (54, 54, N'Sakarya')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (55, 55, N'Samsun')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (56, 56, N'Siirt')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (57, 57, N'Sinop')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (58, 58, N'Sivas')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (59, 59, N'Tekirdað')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (60, 60, N'Tokat')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (61, 61, N'Trabzon')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (62, 62, N'Tunceli')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (63, 63, N'Þanlýurfa')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (64, 64, N'Uþak')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (65, 65, N'Van')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (66, 66, N'Yozgat')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (67, 67, N'Zonguldak')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (68, 68, N'Aksaray')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (69, 69, N'Bayburt')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (70, 70, N'Karaman')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (71, 71, N'Kýrýkkale')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (72, 72, N'Batman')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (73, 73, N'Þýrnak')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (74, 74, N'Bartýn')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (75, 75, N'Ardahan')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (76, 76, N'Iðdýr')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (77, 77, N'Yalova')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (78, 78, N'Karabük')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (79, 79, N'Kilis')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (80, 80, N'Osmaniye')
INSERT [dbo].[CITY] ([CityID], [CityCode], [CityName]) VALUES (81, 81, N'Düzce')
SET IDENTITY_INSERT [dbo].[CITY] OFF
/****** Object:  Table [dbo].[CAMPAIGN]    Script Date: 05/18/2012 15:51:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAMPAIGN](
	[CampaignID] [int] IDENTITY(1,1) NOT NULL,
	[CampaignName] [nvarchar](50) NULL,
	[CampaignRate] [decimal](18, 0) NULL,
	[CampaignStartDate] [datetime] NULL,
	[CampaignFinishDate] [datetime] NULL,
 CONSTRAINT [PK_CAMPAIGN] PRIMARY KEY CLUSTERED 
(
	[CampaignID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 05/18/2012 15:51:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProducerID] [int] NOT NULL,
	[Model] [nchar](10) NOT NULL,
	[Type] [int] NOT NULL,
	[Sex] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImportDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DISTRICT]    Script Date: 05/18/2012 15:51:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISTRICT](
	[DistrictID] [int] IDENTITY(1,1) NOT NULL,
	[CityCode] [int] NOT NULL,
	[DistrictCode] [int] NOT NULL,
	[DistrictName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DISTRICT] PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DISTRICT] ON
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (1, 1, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (2, 1, 20, N'ALADAG')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (3, 1, 28, N'CEYHAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (4, 1, 36, N'FEKE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (5, 1, 40, N'IMAMOGLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (6, 1, 48, N'KARAISALI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (7, 1, 52, N'KARATAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (8, 1, 56, N'KOZAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (9, 1, 64, N'POZANTI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (10, 1, 68, N'SAIMBEYLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (11, 1, 72, N'SEYHAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (12, 1, 76, N'TUFANBEYLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (13, 1, 80, N'YUMURTALIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (14, 1, 84, N'YÜREGIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (15, 2, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (16, 2, 20, N'BESNI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (17, 2, 25, N'ÇELIKHAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (18, 2, 30, N'GERGER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (19, 2, 35, N'GÖLBASI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (20, 2, 40, N'KAHTA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (21, 2, 45, N'SAMSAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (22, 2, 50, N'SINCIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (23, 2, 55, N'TUT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (24, 3, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (25, 3, 20, N'BASMAKÇI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (26, 3, 24, N'BAYAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (27, 3, 28, N'BOLVADIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (28, 3, 32, N'ÇOBANLAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (29, 3, 36, N'ÇAY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (30, 3, 40, N'DAZKIRI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (31, 3, 44, N'DINAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (32, 3, 48, N'EMIRDAG')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (33, 3, 52, N'EVCILER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (34, 3, 56, N'HOCALAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (35, 3, 60, N'IHSANIYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (36, 3, 64, N'ISCEHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (37, 3, 68, N'KIZILÖREN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (38, 3, 72, N'SANDIKLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (39, 3, 76, N'SINCANLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (40, 3, 80, N'SULTANDAGI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (41, 3, 84, N'SUHUT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (42, 4, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (43, 4, 20, N'DIYADIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (44, 4, 25, N'DOGUBEYAZIT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (45, 4, 30, N'ELESKIRT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (46, 4, 35, N'HAMUR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (47, 4, 40, N'PATNOS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (48, 4, 45, N'TASLIÇAY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (49, 4, 50, N'TUTAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (50, 5, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (51, 5, 20, N'GÖYNÜCEK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (52, 5, 25, N'GÜMÜSHACIKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (53, 5, 30, N'HAMAMÖZÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (54, 5, 35, N'MERZIFON')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (55, 5, 40, N'SULUOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (56, 5, 45, N'TASOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (57, 6, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (58, 6, 20, N'AKYURT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (59, 6, 23, N'ALTINDAG')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (60, 6, 26, N'AYAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (61, 6, 29, N'BALA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (62, 6, 32, N'BEYPAZARI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (63, 6, 35, N'ÇAMLIDERE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (64, 6, 38, N'ÇANKAYA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (65, 6, 41, N'ÇUBUK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (66, 6, 44, N'ELMADAG')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (67, 6, 47, N'ETIMESGUT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (68, 6, 50, N'EVREN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (69, 6, 53, N'GÖLBASI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (70, 6, 56, N'GÜDÜL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (71, 6, 59, N'HAYMANA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (72, 6, 62, N'KALECIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (73, 6, 65, N'KAZAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (74, 6, 68, N'KEÇIÖREN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (75, 6, 71, N'KIZILCAHAMAM')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (76, 6, 74, N'MAMAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (77, 6, 77, N'NALLIHAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (78, 6, 80, N'POLATLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (79, 6, 83, N'SINCAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (80, 6, 86, N'SEREFLIKOÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (81, 6, 89, N'YENIMAHALLE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (82, 7, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (83, 7, 20, N'AKSEKI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (84, 7, 25, N'ALANYA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (85, 7, 28, N'DEMRE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (86, 7, 30, N'ELMALI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (87, 7, 35, N'FINIKE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (88, 7, 40, N'GAZIPASA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (89, 7, 45, N'GÜNDOGMUS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (90, 7, 50, N'IBRADI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (91, 7, 55, N'KALE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (92, 7, 60, N'KAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (93, 7, 65, N'KEMER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (94, 7, 70, N'KORKUTELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (95, 7, 75, N'KUMLUCA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (96, 7, 80, N'MANAVGAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (97, 7, 85, N'SERIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (98, 8, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (99, 8, 20, N'ARDANUÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (100, 8, 25, N'ARHAVI')
GO
print 'Processed 100 total records'
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (101, 8, 30, N'BORÇKA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (102, 8, 32, N'HOPA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (103, 8, 35, N'MURGUL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (104, 8, 45, N'SAVSAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (105, 8, 50, N'YUSUFELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (106, 9, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (107, 9, 20, N'BOZDOGAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (108, 9, 24, N'BUHARKENT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (109, 9, 28, N'ÇINE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (110, 9, 32, N'GERMENCIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (111, 9, 36, N'INCIRLIOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (112, 9, 40, N'KARACASU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (113, 9, 44, N'KARPUZLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (114, 9, 48, N'KOÇARLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (115, 9, 52, N'KÖSK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (116, 9, 56, N'KUSADASI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (117, 9, 60, N'KUYUCAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (118, 9, 64, N'NAZILLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (119, 9, 68, N'SÖKE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (120, 9, 72, N'SULTANHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (121, 9, 76, N'YENIHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (122, 9, 80, N'YENIPAZAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (123, 10, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (124, 10, 20, N'AYVALIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (125, 10, 21, N'AKÇAY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (126, 10, 24, N'BALYA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (127, 10, 28, N'BANDIRMA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (128, 10, 32, N'BIGADIÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (129, 10, 36, N'BURHANIYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (130, 10, 40, N'DURSUNBEY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (131, 10, 44, N'EDREMIT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (132, 10, 48, N'ERDEK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (133, 10, 52, N'GÖNEN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (134, 10, 56, N'GÖMEÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (135, 10, 60, N'HAVRAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (136, 10, 64, N'IVRINDI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (137, 10, 68, N'KEPSUT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (138, 10, 72, N'MANYAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (139, 10, 76, N'MARMARA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (140, 10, 80, N'SAVASTEPE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (141, 10, 84, N'SINDIRGI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (142, 10, 88, N'SUSURLUK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (143, 11, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (144, 11, 20, N'BOZÖYÜK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (145, 11, 25, N'GÖLPAZARI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (146, 11, 30, N'INHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (147, 11, 35, N'OSMANELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (148, 11, 40, N'PAZARYERI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (149, 11, 45, N'SÖGÜT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (150, 11, 50, N'YENIPAZAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (151, 12, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (152, 12, 20, N'ADAKLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (153, 12, 25, N'GENÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (154, 12, 30, N'KARLIOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (155, 12, 35, N'KIGI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (156, 12, 40, N'SOLHAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (157, 12, 45, N'YAYLADERE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (158, 12, 55, N'YEDISU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (159, 13, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (160, 13, 20, N'ADILCEVAZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (161, 13, 25, N'AHLAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (162, 13, 30, N'GÜROYMAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (163, 13, 35, N'HIZAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (164, 13, 40, N'MUTKI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (165, 13, 45, N'TATVAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (166, 14, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (167, 14, 35, N'DÖRTDIVAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (168, 14, 45, N'GEREDE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (169, 14, 55, N'GÖYNÜK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (170, 14, 60, N'KIBRISCIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (171, 14, 65, N'MENGEN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (172, 14, 70, N'MUDURNU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (173, 14, 75, N'SEBEN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (174, 14, 80, N'YENIÇAGA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (175, 15, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (176, 15, 20, N'ALTINYAYLA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (177, 15, 25, N'AGLASUN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (178, 15, 30, N'BUCAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (179, 15, 35, N'ÇAVDIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (180, 15, 40, N'ÇELTIKÇI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (181, 15, 45, N'GÖLHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (182, 15, 50, N'KARAMANLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (183, 15, 55, N'KEMER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (184, 15, 60, N'TEFENNI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (185, 15, 65, N'YESILOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (186, 16, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (187, 16, 24, N'BÜYÜKORHAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (188, 16, 28, N'GEMLIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (189, 16, 32, N'GÜRSU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (190, 16, 36, N'HARMANCIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (191, 16, 40, N'INEGÖL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (192, 16, 44, N'IZNIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (193, 16, 48, N'KARACABEY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (194, 16, 52, N'KELES')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (195, 16, 56, N'KESTEL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (196, 16, 60, N'MUDANYA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (197, 16, 64, N'MUSTAFAKEMA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (198, 16, 68, N'NILÜFER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (199, 16, 72, N'ORHANELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (200, 16, 76, N'ORHANGAZI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (201, 16, 80, N'OSMANGAZI')
GO
print 'Processed 200 total records'
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (202, 16, 84, N'YENISEHIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (203, 16, 88, N'YILDIRIM')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (204, 17, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (205, 17, 25, N'AYVACIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (206, 17, 30, N'BAYRAMIÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (207, 17, 32, N'BOZCAADA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (208, 17, 35, N'BIGA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (209, 17, 40, N'ÇAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (210, 17, 45, N'ECEABAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (211, 17, 50, N'EZINE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (212, 17, 55, N'GELIBOLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (213, 17, 57, N'GÖKÇEADA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (214, 17, 65, N'LAPSEKI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (215, 17, 70, N'YENICE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (216, 18, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (217, 18, 25, N'ATKARACALAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (218, 18, 30, N'BAYRAMÖREN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (219, 18, 35, N'ÇERKES')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (220, 18, 40, N'ELDIVAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (221, 18, 50, N'ILGAZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (222, 18, 55, N'KIZILIRMAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (223, 18, 60, N'KORGUN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (224, 18, 65, N'KURSUNLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (225, 18, 70, N'ORTA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (226, 18, 75, N'OVACIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (227, 18, 80, N'SABANÖZÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (228, 18, 85, N'YAPRAKLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (229, 19, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (230, 19, 25, N'ALACA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (231, 19, 30, N'BAYAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (232, 19, 35, N'BOGAZKALE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (233, 19, 40, N'DODURGA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (234, 19, 45, N'ISKILIP')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (235, 19, 50, N'KARGI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (236, 19, 55, N'LAÇIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (237, 19, 60, N'MECITÖZÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (238, 19, 65, N'OGUZLAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (239, 19, 70, N'ORTAKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (240, 19, 75, N'OSMANCIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (241, 19, 80, N'SUNGURLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (242, 19, 85, N'UGURLUDAG')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (243, 20, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (244, 20, 23, N'ACIPAYAM')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (245, 20, 26, N'AKKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (246, 20, 29, N'BABADAG')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (247, 20, 32, N'BAKLAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (248, 20, 35, N'BEKILLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (249, 20, 38, N'BEYAGAÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (250, 20, 41, N'BULDAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (251, 20, 44, N'BOZKURT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (252, 20, 47, N'ÇAL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (253, 20, 50, N'ÇAMELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (254, 20, 53, N'ÇARDAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (255, 20, 56, N'ÇIVRIL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (256, 20, 59, N'GÜNEY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (257, 20, 62, N'HONAZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (258, 20, 65, N'KALE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (259, 20, 68, N'SARAYKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (260, 20, 71, N'SERINHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (261, 20, 74, N'TAVAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (262, 21, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (263, 21, 25, N'BISMIL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (264, 21, 30, N'ÇERMIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (265, 21, 35, N'ÇINAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (266, 21, 40, N'ÇÜNGÜS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (267, 21, 45, N'DICLE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (268, 21, 50, N'EGIL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (269, 21, 55, N'ERGANI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (270, 21, 60, N'HANI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (271, 21, 65, N'HAZRO')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (272, 21, 70, N'KOCAKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (273, 21, 75, N'KULP')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (274, 21, 80, N'LICE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (275, 21, 85, N'SILVAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (276, 22, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (277, 22, 25, N'ENEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (278, 22, 30, N'HAVSA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (279, 22, 35, N'IPSALA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (280, 22, 40, N'KESAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (281, 22, 45, N'LALAPASA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (282, 22, 50, N'MERIÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (283, 22, 55, N'SÜLOGLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (284, 22, 60, N'UZUNKÖPRÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (285, 23, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (286, 23, 25, N'AGIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (287, 23, 30, N'ALACAKAYA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (288, 23, 35, N'ARICAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (289, 23, 40, N'BASKIL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (290, 23, 45, N'KARAKOÇAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (291, 23, 50, N'KEBAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (292, 23, 55, N'KOVANCILAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (293, 23, 60, N'MADEN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (294, 23, 65, N'PALU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (295, 23, 70, N'SIVRICE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (296, 24, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (297, 24, 25, N'ÇAYIRLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (298, 24, 30, N'ILIÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (299, 24, 35, N'KEMAH')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (300, 24, 40, N'KEMALIYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (301, 24, 45, N'OTLUKBELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (302, 24, 50, N'REFAHIYE')
GO
print 'Processed 300 total records'
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (303, 24, 55, N'TERCAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (304, 24, 60, N'ÜZÜMLÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (305, 25, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (306, 25, 23, N'ASKALE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (307, 25, 26, N'ÇAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (308, 25, 29, N'HINIS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (309, 25, 32, N'HORASAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (310, 25, 35, N'ILICA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (311, 25, 38, N'ISPIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (312, 25, 41, N'KARAÇOBAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (313, 25, 44, N'KARAYAZI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (314, 25, 47, N'KÖPRÜKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (315, 25, 50, N'NARMAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (316, 25, 53, N'OLTU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (317, 25, 55, N'OLUR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (318, 25, 58, N'PASINLER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (319, 25, 61, N'PAZARYOLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (320, 25, 64, N'SENKAYA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (321, 25, 67, N'TEKMAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (322, 25, 70, N'TORTUM')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (323, 25, 73, N'UZUNDERE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (324, 26, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (325, 26, 25, N'ALPU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (326, 26, 30, N'BEYLIKOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (327, 26, 35, N'ÇIFTELER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (328, 26, 40, N'GÜNYÜZÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (329, 26, 45, N'HAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (330, 26, 50, N'INÖNÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (331, 26, 55, N'MAHMUDIYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (332, 26, 60, N'MIHALGAZI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (333, 26, 65, N'MIHALIÇÇIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (334, 26, 70, N'SARICAKAYA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (335, 26, 75, N'SEYITGAZI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (336, 26, 80, N'SIVRIHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (337, 27, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (338, 27, 25, N'ARABAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (339, 27, 30, N'ISLAHIYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (340, 27, 35, N'KILIS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (341, 27, 40, N'KARGAMIS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (342, 27, 45, N'NIZIP')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (343, 27, 50, N'NURDAGI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (344, 27, 55, N'OGUZELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (345, 27, 60, N'SAHINBEY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (346, 27, 65, N'SEHITKAMIL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (347, 27, 70, N'YAVUZELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (348, 28, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (349, 28, 25, N'ALUCRA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (350, 28, 30, N'BULANCAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (351, 28, 32, N'ÇAMOLUK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (352, 28, 35, N'ÇANAKÇI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (353, 28, 40, N'DERELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (354, 28, 42, N'DOGANKENT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (355, 28, 45, N'ESPIYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (356, 28, 50, N'EYNESIL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (357, 28, 55, N'GÖRELE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (358, 28, 60, N'GÜCE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (359, 28, 65, N'KESAP')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (360, 28, 70, N'PIRAZIZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (361, 28, 75, N'SEBINKARAHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (362, 28, 80, N'TIREBOLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (363, 28, 85, N'YAGLIDERE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (364, 29, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (365, 29, 25, N'KELKIT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (366, 29, 30, N'KÖSE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (367, 29, 35, N'KÜRTÜN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (368, 29, 40, N'SIRAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (369, 29, 45, N'TORUL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (370, 30, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (371, 30, 25, N'ÇUKURCA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (372, 30, 30, N'SEMDINLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (373, 30, 35, N'YÜKSEKOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (374, 31, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (375, 31, 25, N'ALTINÖZÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (376, 31, 30, N'BELEN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (377, 31, 35, N'DÖRTYOL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (378, 31, 40, N'ERZIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (379, 31, 45, N'HASSA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (380, 31, 50, N'ISKENDERUN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (381, 31, 55, N'KIRIKHAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (382, 31, 60, N'KUMLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (383, 31, 65, N'REYHANLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (384, 31, 70, N'SAMANDAGI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (385, 31, 75, N'YAYLADAGI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (386, 32, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (387, 32, 25, N'AKSU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (388, 32, 30, N'ATABEY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (389, 32, 35, N'EGIRDIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (390, 32, 40, N'GELENDOST')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (391, 32, 45, N'GÖNEN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (392, 32, 50, N'KEÇIBORLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (393, 32, 55, N'SENIRKENT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (394, 32, 60, N'SÜTÇÜLER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (395, 32, 65, N'SARKIKARAAG')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (396, 32, 70, N'ULUBORLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (397, 32, 75, N'YENISARBADE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (398, 32, 80, N'YALVAÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (399, 33, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (400, 33, 25, N'ANAMUR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (401, 33, 30, N'AYDINCIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (402, 33, 35, N'BOZYAZI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (403, 33, 40, N'ÇAMLIYAYLA')
GO
print 'Processed 400 total records'
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (404, 33, 45, N'ERDEMLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (405, 33, 50, N'GÜLNAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (406, 33, 55, N'MUT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (407, 33, 60, N'SILIFKE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (408, 33, 65, N'TARSUS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (409, 34, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (410, 34, 23, N'ADALAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (411, 34, 24, N'AVCILAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (412, 34, 25, N'BAGCILAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (413, 34, 26, N'BAKIRKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (414, 34, 27, N'BAHÇELIEVLE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (415, 34, 29, N'BAYRAMPASA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (416, 34, 32, N'BESIKTAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (417, 34, 35, N'BEYKOZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (418, 34, 38, N'BEYOGLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (419, 34, 41, N'BÜYÜKÇEKMECE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (420, 34, 44, N'ÇATALCA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (421, 34, 47, N'EMINÖNÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (422, 34, 50, N'EYÜP')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (423, 34, 51, N'ESENLER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (424, 34, 53, N'FATIH')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (425, 34, 56, N'GAZIOSMANPASA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (426, 34, 57, N'GÜNGÖREN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (427, 34, 59, N'KADIKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (428, 34, 61, N'KAGITHANE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (429, 34, 64, N'KARTAL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (430, 34, 67, N'KÜÇÜKÇEKMECE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (431, 34, 68, N'MALTEPE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (432, 34, 70, N'PENDIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (433, 34, 73, N'SARIYER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (434, 34, 76, N'SILIVRI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (435, 34, 77, N'SULTANBEYLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (436, 34, 79, N'SILE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (437, 34, 81, N'SISLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (438, 34, 82, N'TUZLA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (439, 34, 84, N'ÜMRANIYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (440, 34, 87, N'ÜSKÜDAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (441, 34, 90, N'YALOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (442, 34, 93, N'ZEYTINBURNU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (443, 35, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (444, 35, 23, N'ALIAGA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (445, 35, 26, N'BAYINDIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (446, 35, 27, N'BALÇOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (447, 35, 29, N'BERGAMA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (448, 35, 32, N'BEYDAG')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (449, 35, 35, N'BORNOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (450, 35, 37, N'BUCA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (451, 35, 41, N'ÇESME')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (452, 35, 42, N'ÇIGLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (453, 35, 44, N'DIKILI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (454, 35, 47, N'FOÇA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (455, 35, 48, N'GAZIEMIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (456, 35, 49, N'GÜZELBAHÇE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (457, 35, 50, N'KARABURUN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (458, 35, 53, N'KARSIYAKA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (459, 35, 56, N'KEMALPASA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (460, 35, 59, N'KINIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (461, 35, 62, N'KIRAZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (462, 35, 65, N'KONAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (463, 35, 68, N'MENDERES')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (464, 35, 71, N'MENEMEN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (465, 35, 72, N'NARLIDERE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (466, 35, 74, N'ÖDEMIS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (467, 35, 77, N'SEFERIHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (468, 35, 80, N'SELÇUK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (469, 35, 83, N'TIRE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (470, 35, 86, N'TORBALI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (471, 35, 89, N'URLA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (472, 36, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (473, 36, 24, N'AKYAKA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (474, 36, 36, N'ARPAÇAY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (475, 36, 44, N'DIGOR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (476, 36, 60, N'KAGIZMAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (477, 36, 68, N'SARIKAMIS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (478, 36, 72, N'SELIM')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (479, 36, 76, N'SUSUZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (480, 37, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (481, 37, 23, N'ABANA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (482, 37, 26, N'AGLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (483, 37, 29, N'ARAÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (484, 37, 32, N'AZDAVAY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (485, 37, 35, N'BOZKURT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (486, 37, 38, N'CIDE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (487, 37, 41, N'ÇATALZEYTIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (488, 37, 44, N'DADAY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (489, 37, 47, N'DEVREKANI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (490, 37, 50, N'DOGANYURT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (491, 37, 53, N'HANÖNÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (492, 37, 56, N'IHSANGAZI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (493, 37, 59, N'INEBOLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (494, 37, 62, N'KÜRE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (495, 37, 65, N'PINARBASI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (496, 37, 68, N'SEYDILER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (497, 37, 71, N'SENPAZAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (498, 37, 74, N'TASKÖPRÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (499, 37, 77, N'TOSYA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (500, 38, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (501, 38, 24, N'AKKISLA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (502, 38, 28, N'BÜNYAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (503, 38, 32, N'DEVELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (504, 38, 36, N'FELAHIYE')
GO
print 'Processed 500 total records'
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (505, 38, 40, N'HACILAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (506, 38, 44, N'INCESU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (507, 38, 48, N'KOCASINAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (508, 38, 52, N'MELIKGAZI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (509, 38, 56, N'ÖZVATAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (510, 38, 60, N'PINARBASI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (511, 38, 64, N'SARIOGLAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (512, 38, 68, N'SARIZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (513, 38, 72, N'TALAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (514, 38, 76, N'TOMARZA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (515, 38, 80, N'YAHYALI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (516, 38, 84, N'YESILHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (517, 39, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (518, 39, 25, N'BABAESKI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (519, 39, 30, N'DEMIRKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (520, 39, 35, N'KOFÇAZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (521, 39, 40, N'LÜLEBURGAZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (522, 39, 45, N'PEHLIVANKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (523, 39, 50, N'PINARHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (524, 39, 55, N'VIZE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (525, 40, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (526, 40, 20, N'AKÇAKENT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (527, 40, 25, N'AKPINAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (528, 40, 27, N'BOZTEPE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (529, 40, 30, N'ÇIÇEKDAGI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (530, 40, 35, N'KAMAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (531, 40, 40, N'MUCUR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (532, 41, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (533, 41, 20, N'DARICA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (534, 41, 25, N'GEBZE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (535, 41, 30, N'GÖLCÜK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (536, 41, 35, N'KANDIRA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (537, 41, 40, N'KARAMÜRSEL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (538, 41, 45, N'KÖRFEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (539, 42, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (540, 42, 22, N'AHIRLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (541, 42, 24, N'AKÖREN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (542, 42, 26, N'AKSEHIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (543, 42, 28, N'ALTINEKIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (544, 42, 30, N'BEYSEHIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (545, 42, 32, N'BOZKIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (546, 42, 34, N'DEREBUCAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (547, 42, 36, N'CIHANBEYLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (548, 42, 38, N'ÇUMRA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (549, 42, 40, N'ÇELTIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (550, 42, 42, N'DERBENT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (551, 42, 44, N'DOGANHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (552, 42, 46, N'EMIRGAZI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (553, 42, 48, N'EREGLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (554, 42, 50, N'GÜNEYSINIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (555, 42, 52, N'HALKAPINAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (556, 42, 54, N'HADIM')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (557, 42, 55, N'HALKAPINAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (558, 42, 56, N'HÜYÜK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (559, 42, 58, N'ILGIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (560, 42, 60, N'KADINHANI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (561, 42, 62, N'KARAPINAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (562, 42, 64, N'KARATAY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (563, 42, 66, N'KULU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (564, 42, 68, N'MERAM')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (565, 42, 70, N'SARAYÖNÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (566, 42, 72, N'SELÇUKLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (567, 42, 74, N'SEYDISEHIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (568, 42, 76, N'TASKENT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (569, 42, 78, N'TUZLUKÇU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (570, 42, 80, N'YALIHÖYÜK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (571, 42, 82, N'YUNAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (572, 43, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (573, 43, 25, N'ALTINTAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (574, 43, 30, N'ASLANAPA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (575, 43, 35, N'CAVDARHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (576, 43, 40, N'DOMANIÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (577, 43, 45, N'DUMLUPINAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (578, 43, 50, N'EMET')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (579, 43, 55, N'GEDIZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (580, 43, 60, N'HISARCIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (581, 43, 65, N'PAZARLAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (582, 43, 70, N'SIMAV')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (583, 43, 75, N'SAPHANE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (584, 43, 80, N'TAVSANLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (585, 44, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (586, 44, 25, N'AKÇADAG')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (587, 44, 30, N'ARAPGIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (588, 44, 35, N'ARGUVAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (589, 44, 40, N'BATTALGAZI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (590, 44, 45, N'DARENDE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (591, 44, 50, N'DOGANSEHIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (592, 44, 55, N'DOGANYOL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (593, 44, 60, N'HEKIMHAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (594, 44, 65, N'KALE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (595, 44, 70, N'KULUNCAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (596, 44, 75, N'PÖTÜRGE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (597, 44, 80, N'YAZIHAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (598, 44, 85, N'YESILYURT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (599, 45, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (600, 45, 25, N'AHMETLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (601, 45, 30, N'AKHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (602, 45, 35, N'ALASEHIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (603, 45, 40, N'DEMIRCI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (604, 45, 45, N'GÖLMARMARA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (605, 45, 50, N'GÖRDES')
GO
print 'Processed 600 total records'
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (606, 45, 55, N'KIRKAGAÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (607, 45, 60, N'KÖPRÜBASI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (608, 45, 65, N'KULA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (609, 45, 70, N'SALIHLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (610, 45, 75, N'SARIGÖL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (611, 45, 80, N'SARUHANLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (612, 45, 85, N'SELENDI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (613, 45, 90, N'SOMA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (614, 45, 95, N'TURGUTLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (615, 46, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (616, 46, 25, N'AFSIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (617, 46, 30, N'ANDIRIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (618, 46, 35, N'ÇAGLAYANCER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (619, 46, 40, N'EKINÖZÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (620, 46, 45, N'ELBISTAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (621, 46, 50, N'GÖKSUN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (622, 46, 55, N'NURHAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (623, 46, 60, N'PAZARCIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (624, 46, 65, N'TÜRKOGLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (625, 47, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (626, 47, 25, N'DARGEÇIT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (627, 47, 30, N'DERIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (628, 47, 40, N'KIZILTEPE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (629, 47, 45, N'MAZIDAGI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (630, 47, 50, N'MIDYAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (631, 47, 55, N'NUSAYBIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (632, 47, 60, N'ÖMERLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (633, 47, 65, N'SAVUR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (634, 47, 70, N'YESILLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (635, 48, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (636, 48, 25, N'BODRUM')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (637, 48, 30, N'DALAMAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (638, 48, 35, N'DATÇA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (639, 48, 40, N'FETHIYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (640, 48, 45, N'KAVAKLIDERE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (641, 48, 50, N'KÖYCEGIZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (642, 48, 55, N'MARMARIS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (643, 48, 60, N'MILAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (644, 48, 65, N'ORTACA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (645, 48, 70, N'ULA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (646, 48, 75, N'YATAGAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (647, 49, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (648, 49, 25, N'BULANIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (649, 49, 30, N'HASKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (650, 49, 35, N'KORKUT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (651, 49, 40, N'MALAZGIRT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (652, 49, 45, N'VARTO')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (653, 50, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (654, 50, 25, N'ACIGÖL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (655, 50, 30, N'AVANOS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (656, 50, 35, N'DERINKUYU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (657, 50, 40, N'GÜLSEHIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (658, 50, 45, N'HACIBEKTAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (659, 50, 50, N'KOZAKLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (660, 50, 55, N'ÜRGÜP')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (661, 51, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (662, 51, 25, N'ALTUNHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (663, 51, 30, N'BOR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (664, 51, 35, N'ÇAMARDI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (665, 51, 40, N'ÇIFTLIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (666, 51, 45, N'ULUKISLA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (667, 52, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (668, 52, 23, N'AKKUS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (669, 52, 26, N'AYBASTI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (670, 52, 29, N'ÇAMAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (671, 52, 32, N'ÇATALPINAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (672, 52, 35, N'ÇAYBASI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (673, 52, 38, N'FATSA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (674, 52, 41, N'GÖLKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (675, 52, 44, N'GÖLYALI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (676, 52, 47, N'GÜRGENTEPE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (677, 52, 50, N'IKIZCE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (678, 52, 53, N'KORGAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (679, 52, 56, N'KABADÜZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (680, 52, 59, N'KABATAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (681, 52, 62, N'KUMRU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (682, 52, 65, N'MESUDIYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (683, 52, 68, N'PERSEMBE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (684, 52, 71, N'ULUBEY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (685, 52, 74, N'ÜNYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (686, 53, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (687, 53, 25, N'ARDESEN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (688, 53, 30, N'ÇAMLIHEMSIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (689, 53, 35, N'ÇAYELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (690, 53, 40, N'DEREPAZARI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (691, 53, 45, N'FINDIKLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (692, 53, 50, N'GÜNEYSU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (693, 53, 55, N'HEMSIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (694, 53, 60, N'IKIZDERE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (695, 53, 65, N'IYIDERE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (696, 53, 70, N'KALKANDERE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (697, 53, 75, N'PAZAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (698, 54, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (699, 54, 25, N'AKYAZI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (700, 54, 30, N'FERIZLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (701, 54, 35, N'GEYVE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (702, 54, 40, N'HENDEK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (703, 54, 45, N'KARAPÜRÇEK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (704, 54, 50, N'KARASU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (705, 54, 55, N'KAYNARCA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (706, 54, 60, N'KOCAALI')
GO
print 'Processed 700 total records'
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (707, 54, 65, N'PAMUKOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (708, 54, 70, N'SAPANCA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (709, 54, 75, N'SÖGÜTLÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (710, 54, 80, N'TARAKLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (711, 55, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (712, 55, 25, N'ALAÇAM')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (713, 55, 30, N'ASARCIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (714, 55, 35, N'AYVACIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (715, 55, 40, N'BAFRA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (716, 55, 45, N'ÇARSAMBA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (717, 55, 50, N'HAVZA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (718, 55, 55, N'KAVAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (719, 55, 60, N'LADIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (720, 55, 65, N'19MAYIS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (721, 55, 70, N'SALIPAZARI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (722, 55, 75, N'TEKKEKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (723, 55, 80, N'TERME')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (724, 55, 85, N'VEZIRKÖPRÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (725, 55, 90, N'YAKAKENT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (726, 56, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (727, 56, 25, N'AYDINLAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (728, 56, 30, N'BAYKAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (729, 56, 35, N'ERUH')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (730, 56, 42, N'KOZLUK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (731, 56, 45, N'KURTALAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (732, 56, 50, N'PERVARI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (733, 56, 55, N'SIRVAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (734, 57, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (735, 57, 25, N'AYANCIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (736, 57, 30, N'BOYABAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (737, 57, 35, N'DIKMEN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (738, 57, 40, N'DURAGAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (739, 57, 45, N'ERFELEK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (740, 57, 50, N'GERZE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (741, 57, 55, N'SARAYDÜZÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (742, 57, 60, N'TÜRKELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (743, 58, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (744, 58, 24, N'AKINCILAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (745, 58, 28, N'ALTINYAYLA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (746, 58, 32, N'DIVRIGI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (747, 58, 36, N'DOGANSAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (748, 58, 40, N'GEMEREK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (749, 58, 44, N'GÖLOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (750, 58, 48, N'GÜRÜN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (751, 58, 52, N'HAFIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (752, 58, 56, N'IMRANLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (753, 58, 60, N'KANGAL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (754, 58, 64, N'KOYULHISAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (755, 58, 68, N'SUSEHRI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (756, 58, 72, N'SARKISLA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (757, 58, 76, N'ULAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (758, 58, 80, N'YILDIZELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (759, 58, 84, N'ZARA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (760, 59, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (761, 59, 25, N'ÇERKEZKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (762, 59, 30, N'ÇORLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (763, 59, 35, N'HAYRABOLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (764, 59, 40, N'MALKARA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (765, 59, 45, N'MARMARAEREGLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (766, 59, 50, N'MURATLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (767, 59, 55, N'SARAY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (768, 59, 60, N'SARKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (769, 60, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (770, 60, 25, N'ALMUS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (771, 60, 30, N'ARTOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (772, 60, 35, N'BASÇIFTLIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (773, 60, 40, N'ERBAA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (774, 60, 45, N'NIKSAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (775, 60, 50, N'PAZAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (776, 60, 55, N'RESADIYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (777, 60, 60, N'SULUSARAY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (778, 60, 65, N'TURHAL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (779, 60, 70, N'YESILYURT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (780, 60, 75, N'ZILE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (781, 61, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (782, 61, 24, N'AKÇAABAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (783, 61, 28, N'ARAKLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (784, 61, 32, N'ARSIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (785, 61, 36, N'BESIKDÜZÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (786, 61, 40, N'ÇARSIBASI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (787, 61, 44, N'ÇAYKARA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (788, 61, 48, N'DERNEKPAZAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (789, 61, 52, N'DÜZKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (790, 61, 56, N'HAYRAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (791, 61, 60, N'KÖPRÜBASI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (792, 61, 64, N'MAÇKA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (793, 61, 68, N'OF')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (794, 61, 72, N'SÜRMENE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (795, 61, 76, N'SALPAZARI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (796, 61, 80, N'TONYA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (797, 61, 84, N'VAKFIKEBIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (798, 61, 88, N'YOMRA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (799, 62, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (800, 62, 25, N'ÇEMISGEZEK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (801, 62, 30, N'HOZAT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (802, 62, 35, N'MAZGIRT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (803, 62, 40, N'NAZIMIYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (804, 62, 45, N'OVACIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (805, 62, 50, N'PERTEK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (806, 62, 55, N'PÜLÜMÜR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (807, 63, 0, N'MERKEZ')
GO
print 'Processed 800 total records'
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (808, 63, 25, N'AKÇAKALE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (809, 63, 30, N'BIRECIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (810, 63, 35, N'BOZOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (811, 63, 40, N'CEYLANPINAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (812, 63, 45, N'HALFETI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (813, 63, 50, N'HARRAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (814, 63, 55, N'HILVAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (815, 63, 60, N'SIVEREK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (816, 63, 65, N'SURUÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (817, 63, 70, N'VIRANSEHIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (818, 64, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (819, 64, 25, N'BANAZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (820, 64, 30, N'ESME')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (821, 64, 35, N'KARAHALLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (822, 64, 40, N'SIVASLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (823, 64, 45, N'ULUBEY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (824, 65, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (825, 65, 25, N'BAHÇESARAY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (826, 65, 30, N'BASKALE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (827, 65, 35, N'ÇALDIRAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (828, 65, 40, N'ÇATAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (829, 65, 45, N'EDREMIT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (830, 65, 50, N'ERCIS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (831, 65, 55, N'GEVAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (832, 65, 60, N'GÜRPINAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (833, 65, 65, N'MURADIYE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (834, 65, 70, N'ÖZALP')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (835, 65, 75, N'SARAY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (836, 66, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (837, 66, 25, N'AKDAGMADENI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (838, 66, 30, N'AYDINCIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (839, 66, 35, N'BOGAZLIYAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (840, 66, 40, N'ÇANDIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (841, 66, 45, N'ÇAYIRALAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (842, 66, 50, N'ÇEKEREK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (843, 66, 55, N'KADISEHRI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (844, 66, 60, N'SARIKAYA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (845, 66, 65, N'SARAYKENT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (846, 66, 70, N'SORGUN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (847, 66, 75, N'SEFAATLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (848, 66, 80, N'YENIFAKILI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (849, 66, 85, N'YERKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (850, 67, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (851, 67, 24, N'ALAPLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (852, 67, 36, N'ÇAMOLUK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (853, 67, 38, N'ÇAYCUMA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (854, 67, 44, N'DEVREK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (855, 67, 52, N'EFLANI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (856, 67, 56, N'EREGLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (857, 67, 60, N'GÖKÇEBEY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (858, 68, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (859, 68, 25, N'AGAÇÖREN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (860, 68, 30, N'ESKIL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (861, 68, 35, N'GÜLAGAÇ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (862, 68, 40, N'GÜZELYURT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (863, 68, 45, N'ORTAKÖY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (864, 68, 50, N'SARIYAHSI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (865, 69, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (866, 69, 25, N'AYDINTEPE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (867, 69, 30, N'DEMIRÖZÜ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (868, 70, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (869, 70, 25, N'AYRANCI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (870, 70, 30, N'BASYAYLA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (871, 70, 35, N'ERMENEK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (872, 70, 40, N'KAZIMKARABEKIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (873, 70, 45, N'SARIVELILER')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (874, 71, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (875, 71, 25, N'BAHSILI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (876, 71, 30, N'BAGLISEYH')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (877, 71, 35, N'ÇELEBI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (878, 71, 40, N'DELICE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (879, 71, 45, N'KARAKEÇILI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (880, 71, 50, N'KESKIN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (881, 71, 55, N'SULAKYURT')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (882, 71, 60, N'YAHSIHAN')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (883, 72, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (884, 72, 25, N'GERCÜS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (885, 72, 30, N'HASANKEYF')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (886, 72, 35, N'BESIRI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (887, 72, 37, N'KOZLUK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (888, 72, 40, N'SASON')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (889, 73, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (890, 73, 25, N'BEYTÜSSEBA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (891, 73, 30, N'ULUDERE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (892, 73, 35, N'CIZRE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (893, 73, 40, N'IDIL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (894, 73, 45, N'SILOPI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (895, 73, 55, N'GÜÇLÜKONAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (896, 74, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (897, 74, 20, N'AMASRA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (898, 74, 30, N'KURUCASILE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (899, 74, 40, N'ULUS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (900, 75, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (901, 75, 30, N'ÇILDIR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (902, 75, 35, N'DAMAL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (903, 75, 50, N'GÖLE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (904, 75, 55, N'HANAK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (905, 75, 75, N'POSOF')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (906, 76, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (907, 76, 25, N'ARALIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (908, 76, 50, N'KARAKOYUNLU')
GO
print 'Processed 900 total records'
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (909, 76, 75, N'TUZLUCA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (910, 77, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (911, 77, 10, N'ALTINOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (912, 77, 15, N'ARMUTLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (913, 77, 20, N'CINARCIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (914, 77, 22, N'CIFTLIKKOY')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (915, 77, 80, N'TERMAL')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (916, 78, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (917, 78, 30, N'EFLANI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (918, 78, 33, N'ESKIPAZAR')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (919, 78, 50, N'OVACIK')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (920, 78, 70, N'SAFRANBOLU')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (921, 78, 90, N'YENICE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (922, 79, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (923, 79, 30, N'ELBEYLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (924, 79, 50, N'MUSABEYLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (925, 79, 60, N'POLATELI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (926, 80, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (927, 80, 20, N'BAHÇE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (928, 80, 23, N'HASANBEYLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (929, 80, 25, N'DÜZIÇI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (930, 80, 30, N'KADIRLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (931, 80, 45, N'SUNBAS')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (932, 80, 50, N'TOPRAKKALE')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (933, 81, 0, N'MERKEZ')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (934, 81, 20, N'AKÇAKOCA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (935, 81, 25, N'CUMAYERI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (936, 81, 30, N'ÇILIMLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (937, 81, 35, N'GÖLYAKA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (938, 81, 40, N'GÜMÜSOVA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (939, 81, 45, N'KAYNASLI')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (940, 81, 50, N'YIGILCA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (941, 3, 0, N'SINANPASA')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (942, 9, 0, N'DIDIM')
INSERT [dbo].[DISTRICT] ([DistrictID], [CityCode], [DistrictCode], [DistrictName]) VALUES (943, 41, 0, N'DERINCE')
SET IDENTITY_INSERT [dbo].[DISTRICT] OFF
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 05/18/2012 15:51:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[Pno] [int] NOT NULL,
	[YearOfBirth] [int] NOT NULL,
	[HomePhoneID] [int] NOT NULL,
	[MobilePhoneID] [int] NOT NULL,
	[Gender] [char](1) NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[Pno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CUSTOMER] ([Pno], [YearOfBirth], [HomePhoneID], [MobilePhoneID], [Gender]) VALUES (4, 1991, 5, 6, N'X')
INSERT [dbo].[CUSTOMER] ([Pno], [YearOfBirth], [HomePhoneID], [MobilePhoneID], [Gender]) VALUES (5, 2000, 7, 8, N'E')
INSERT [dbo].[CUSTOMER] ([Pno], [YearOfBirth], [HomePhoneID], [MobilePhoneID], [Gender]) VALUES (6, 2000, 9, 10, N'E')
INSERT [dbo].[CUSTOMER] ([Pno], [YearOfBirth], [HomePhoneID], [MobilePhoneID], [Gender]) VALUES (7, 1991, 11, 12, N'E')
/****** Object:  Table [dbo].[ADMIN]    Script Date: 05/18/2012 15:51:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[Pno] [int] NOT NULL,
	[LastLogin] [datetime] NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[Pno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[CheckUser]    Script Date: 05/18/2012 15:51:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CheckUser]
(
	@email nvarchar(max)
)
AS
SELECT COUNT(*) AS 'Sayi' FROM PERSON WHERE Email = @email GROUP BY Pno
GO
/****** Object:  Table [dbo].[CARTPRODUCT]    Script Date: 05/18/2012 15:51:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARTPRODUCT](
	[CartProductID] [int] IDENTITY(1,1) NOT NULL,
	[Pno] [int] NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_CARTPRODUCT] PRIMARY KEY CLUSTERED 
(
	[CartProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 05/18/2012 15:51:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADDRESS](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[Pno] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[DistrictID] [int] NOT NULL,
	[BuildingNum] [nvarchar](max) NOT NULL,
	[DoorNum] [nvarchar](max) NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[AddCustomer]    Script Date: 05/18/2012 15:51:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddCustomer]
(
	@name varchar(25),
	@surname varchar(25),
	@email nvarchar(max),
	@password nvarchar(max),
	@yearOfBirth int,
	@gender char(1),
	@homeAreaCode varchar(3),
	@homeNumber varchar(7),
	@mobileAreaCode varchar(3),
	@mobileNumber varchar(7)
	
	
)
AS
BEGIN TRAN

INSERT INTO PERSON (Name,Surname, Email, Person.Password, RegisterDate) 
VALUES (@name, @surname, @email, @password, GETDATE())

IF @@ERROR <> 0
 BEGIN
    -- Rollback the transaction
    ROLLBACK

    -- Raise an error and return
    RAISERROR ('Kiþi bilgilerini kaydederken bir hata oluþtu.', 16, 1)
    RETURN
 END
 
DECLARE @Pno int

set @Pno = @@IDENTITY

INSERT INTO PHONE (AreaCode,PhoneNumber) VALUES (@homeAreaCode, @homeNumber)


IF @@ERROR <> 0
 BEGIN
    -- Rollback the transaction
    ROLLBACK

    -- Raise an error and return
    RAISERROR ('Ev telefonunu kaydaderken hata oluþtu.', 16, 2)
    RETURN
 END
 
DECLARE @homePhoneID int

set @homePhoneID = @@IDENTITY

INSERT INTO PHONE (AreaCode,PhoneNumber) VALUES (@mobileAreaCode, @mobileNumber)

IF @@ERROR <> 0
 BEGIN
    -- Rollback the transaction
    ROLLBACK

    -- Raise an error and return
    RAISERROR ('Cep telefonunu kaydaderken hata oluþtu.', 16, 3)
    RETURN
 END
 
DECLARE @mobilePhoneID int

set @mobilePhoneID = @@IDENTITY

INSERT INTO CUSTOMER (Pno, YearOfBirth, HomePhoneID, MobilePhoneID, Gender)
VALUES (@Pno, @yearOfBirth, @homePhoneID, @mobilePhoneID, @gender)

IF @@ERROR <> 0
 BEGIN
    -- Rollback the transaction
    ROLLBACK

    -- Raise an error and return
    RAISERROR ('Müþteri bilgilerini kaydederken hata oluþtu.', 16, 4)
    RETURN
 END
 
 COMMIT
GO
/****** Object:  StoredProcedure [dbo].[LoginUser]    Script Date: 05/18/2012 15:51:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LoginUser]
(
	@email nvarchar(max),
	@password nvarchar(max)
)
AS
SELECT Person.Pno FROM PERSON, CUSTOMER WHERE Email = @email and Password = @password and PERSON.Pno = CUSTOMER.Pno
GO
/****** Object:  Table [dbo].[INVENTORY]    Script Date: 05/18/2012 15:51:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTORY](
	[ProductID] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[PricePerPiece] [float] NOT NULL,
 CONSTRAINT [PK_INVENTORY] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAMPAIGNPRODUCT]    Script Date: 05/18/2012 15:51:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAMPAIGNPRODUCT](
	[CampaignProduct] [int] IDENTITY(1,1) NOT NULL,
	[CampaignID] [int] NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_CAMPAIGNPRODUCT] PRIMARY KEY CLUSTERED 
(
	[CampaignProduct] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SALE]    Script Date: 05/18/2012 15:51:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALE](
	[SaleID] [int] IDENTITY(1,1) NOT NULL,
	[Pno] [int] NULL,
	[AddressID] [int] NULL,
	[CargoID] [int] NULL,
	[PaymentTypeID] [int] NULL,
 CONSTRAINT [PK_SALE] PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SALEPRODUCT]    Script Date: 05/18/2012 15:51:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALEPRODUCT](
	[SaleProductID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_SALEPRODUCT_1] PRIMARY KEY CLUSTERED 
(
	[SaleProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_PRODUCT_PRODUCER]    Script Date: 05/18/2012 15:51:50 ******/
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_PRODUCER] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[PRODUCER] ([ProducerID])
GO
ALTER TABLE [dbo].[PRODUCT] CHECK CONSTRAINT [FK_PRODUCT_PRODUCER]
GO
/****** Object:  ForeignKey [FK_DISTRICT_CITY]    Script Date: 05/18/2012 15:51:50 ******/
ALTER TABLE [dbo].[DISTRICT]  WITH CHECK ADD  CONSTRAINT [FK_DISTRICT_CITY] FOREIGN KEY([CityCode])
REFERENCES [dbo].[CITY] ([CityID])
GO
ALTER TABLE [dbo].[DISTRICT] CHECK CONSTRAINT [FK_DISTRICT_CITY]
GO
/****** Object:  ForeignKey [FK_CUSTOMER_PERSON]    Script Date: 05/18/2012 15:51:50 ******/
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [FK_CUSTOMER_PERSON] FOREIGN KEY([Pno])
REFERENCES [dbo].[PERSON] ([Pno])
GO
ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [FK_CUSTOMER_PERSON]
GO
/****** Object:  ForeignKey [FK_CUSTOMER_PHONE]    Script Date: 05/18/2012 15:51:50 ******/
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [FK_CUSTOMER_PHONE] FOREIGN KEY([HomePhoneID])
REFERENCES [dbo].[PHONE] ([PhoneID])
GO
ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [FK_CUSTOMER_PHONE]
GO
/****** Object:  ForeignKey [FK_CUSTOMER_PHONE1]    Script Date: 05/18/2012 15:51:50 ******/
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [FK_CUSTOMER_PHONE1] FOREIGN KEY([MobilePhoneID])
REFERENCES [dbo].[PHONE] ([PhoneID])
GO
ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [FK_CUSTOMER_PHONE1]
GO
/****** Object:  ForeignKey [FK_ADMIN_PERSON]    Script Date: 05/18/2012 15:51:50 ******/
ALTER TABLE [dbo].[ADMIN]  WITH CHECK ADD  CONSTRAINT [FK_ADMIN_PERSON] FOREIGN KEY([Pno])
REFERENCES [dbo].[PERSON] ([Pno])
GO
ALTER TABLE [dbo].[ADMIN] CHECK CONSTRAINT [FK_ADMIN_PERSON]
GO
/****** Object:  ForeignKey [FK_CARTPRODUCT_CUSTOMER]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[CARTPRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_CARTPRODUCT_CUSTOMER] FOREIGN KEY([Pno])
REFERENCES [dbo].[CUSTOMER] ([Pno])
GO
ALTER TABLE [dbo].[CARTPRODUCT] CHECK CONSTRAINT [FK_CARTPRODUCT_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_CARTPRODUCT_PRODUCT]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[CARTPRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_CARTPRODUCT_PRODUCT] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PRODUCT] ([ProductID])
GO
ALTER TABLE [dbo].[CARTPRODUCT] CHECK CONSTRAINT [FK_CARTPRODUCT_PRODUCT]
GO
/****** Object:  ForeignKey [FK_ADDRESS_CITY]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_CITY] FOREIGN KEY([CityID])
REFERENCES [dbo].[CITY] ([CityID])
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_CITY]
GO
/****** Object:  ForeignKey [FK_ADDRESS_DISTRICT]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_DISTRICT] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[DISTRICT] ([DistrictID])
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_DISTRICT]
GO
/****** Object:  ForeignKey [FK_ADDRESS_PERSON]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_PERSON] FOREIGN KEY([Pno])
REFERENCES [dbo].[PERSON] ([Pno])
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_PERSON]
GO
/****** Object:  ForeignKey [FK_INVENTORY_PRODUCT]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[INVENTORY]  WITH CHECK ADD  CONSTRAINT [FK_INVENTORY_PRODUCT] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PRODUCT] ([ProductID])
GO
ALTER TABLE [dbo].[INVENTORY] CHECK CONSTRAINT [FK_INVENTORY_PRODUCT]
GO
/****** Object:  ForeignKey [FK_CAMPAIGNPRODUCT_CAMPAIGN]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[CAMPAIGNPRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_CAMPAIGNPRODUCT_CAMPAIGN] FOREIGN KEY([CampaignID])
REFERENCES [dbo].[CAMPAIGN] ([CampaignID])
GO
ALTER TABLE [dbo].[CAMPAIGNPRODUCT] CHECK CONSTRAINT [FK_CAMPAIGNPRODUCT_CAMPAIGN]
GO
/****** Object:  ForeignKey [FK_CAMPAIGNPRODUCT_PRODUCT]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[CAMPAIGNPRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_CAMPAIGNPRODUCT_PRODUCT] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PRODUCT] ([ProductID])
GO
ALTER TABLE [dbo].[CAMPAIGNPRODUCT] CHECK CONSTRAINT [FK_CAMPAIGNPRODUCT_PRODUCT]
GO
/****** Object:  ForeignKey [FK_SALE_ADDRESS]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[SALE]  WITH CHECK ADD  CONSTRAINT [FK_SALE_ADDRESS] FOREIGN KEY([AddressID])
REFERENCES [dbo].[ADDRESS] ([AddressID])
GO
ALTER TABLE [dbo].[SALE] CHECK CONSTRAINT [FK_SALE_ADDRESS]
GO
/****** Object:  ForeignKey [FK_SALE_CARGO]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[SALE]  WITH CHECK ADD  CONSTRAINT [FK_SALE_CARGO] FOREIGN KEY([CargoID])
REFERENCES [dbo].[CARGO] ([CargoID])
GO
ALTER TABLE [dbo].[SALE] CHECK CONSTRAINT [FK_SALE_CARGO]
GO
/****** Object:  ForeignKey [FK_SALE_CUSTOMER]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[SALE]  WITH CHECK ADD  CONSTRAINT [FK_SALE_CUSTOMER] FOREIGN KEY([Pno])
REFERENCES [dbo].[CUSTOMER] ([Pno])
GO
ALTER TABLE [dbo].[SALE] CHECK CONSTRAINT [FK_SALE_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_SALE_PAYMENTTYPE]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[SALE]  WITH CHECK ADD  CONSTRAINT [FK_SALE_PAYMENTTYPE] FOREIGN KEY([PaymentTypeID])
REFERENCES [dbo].[PAYMENTTYPE] ([PaymentTypeID])
GO
ALTER TABLE [dbo].[SALE] CHECK CONSTRAINT [FK_SALE_PAYMENTTYPE]
GO
/****** Object:  ForeignKey [FK_SALEPRODUCT_PRODUCT]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[SALEPRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_SALEPRODUCT_PRODUCT] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PRODUCT] ([ProductID])
GO
ALTER TABLE [dbo].[SALEPRODUCT] CHECK CONSTRAINT [FK_SALEPRODUCT_PRODUCT]
GO
/****** Object:  ForeignKey [FK_SALEPRODUCT_SALE]    Script Date: 05/18/2012 15:51:51 ******/
ALTER TABLE [dbo].[SALEPRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_SALEPRODUCT_SALE] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SALE] ([SaleID])
GO
ALTER TABLE [dbo].[SALEPRODUCT] CHECK CONSTRAINT [FK_SALEPRODUCT_SALE]
GO
