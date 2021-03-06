USE [SHOESHOP]
GO
/****** Object:  Table [dbo].[PRODUCER]    Script Date: 05/07/2012 23:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCER](
	[ProducerID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[PERSON]    Script Date: 05/07/2012 23:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERSON](
	[Pno] [int] NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[Surname] [varchar](25) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_PERSON_1] PRIMARY KEY CLUSTERED 
(
	[Pno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 05/07/2012 23:04:14 ******/
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
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 05/07/2012 23:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[ProductID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[INVENTORY]    Script Date: 05/07/2012 23:04:14 ******/
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
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 05/07/2012 23:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[Pno] [int] NOT NULL,
	[Age] [int] NOT NULL,
	[LastProcessDate] [datetime] NULL,
	[LastItemID] [int] NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[Pno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_ADMIN_PERSON]    Script Date: 05/07/2012 23:04:14 ******/
ALTER TABLE [dbo].[ADMIN]  WITH CHECK ADD  CONSTRAINT [FK_ADMIN_PERSON] FOREIGN KEY([Pno])
REFERENCES [dbo].[PERSON] ([Pno])
GO
ALTER TABLE [dbo].[ADMIN] CHECK CONSTRAINT [FK_ADMIN_PERSON]
GO
/****** Object:  ForeignKey [FK_CUSTOMER_PERSON]    Script Date: 05/07/2012 23:04:14 ******/
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [FK_CUSTOMER_PERSON] FOREIGN KEY([Pno])
REFERENCES [dbo].[PERSON] ([Pno])
GO
ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [FK_CUSTOMER_PERSON]
GO
/****** Object:  ForeignKey [FK_CUSTOMER_PRODUCT]    Script Date: 05/07/2012 23:04:14 ******/
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [FK_CUSTOMER_PRODUCT] FOREIGN KEY([LastItemID])
REFERENCES [dbo].[PRODUCT] ([ProductID])
GO
ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [FK_CUSTOMER_PRODUCT]
GO
/****** Object:  ForeignKey [FK_INVENTORY_PRODUCT]    Script Date: 05/07/2012 23:04:14 ******/
ALTER TABLE [dbo].[INVENTORY]  WITH CHECK ADD  CONSTRAINT [FK_INVENTORY_PRODUCT] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PRODUCT] ([ProductID])
GO
ALTER TABLE [dbo].[INVENTORY] CHECK CONSTRAINT [FK_INVENTORY_PRODUCT]
GO
/****** Object:  ForeignKey [FK_PRODUCT_PRODUCER]    Script Date: 05/07/2012 23:04:14 ******/
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_PRODUCER] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[PRODUCER] ([ProducerID])
GO
ALTER TABLE [dbo].[PRODUCT] CHECK CONSTRAINT [FK_PRODUCT_PRODUCER]
GO
