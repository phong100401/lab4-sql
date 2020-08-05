CREATE DATABASE Quanlysinhvien

USE [Quanlysinhvien]
GO

/****** Object:  Table [dbo].[BOOK]    Script Date: 2020-08-03 8:10:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Students](
	[Code] [int] NOT NULL,
	[Fullname] [nvarchar](500) NULL,
	[Birthday] [datetime] NOT NULL,
	[Gender] [bit] NULL,
	[Address] [nvarchar](500) NULL,
	[Email] [varchar](150) NULL,
	[Facebook] [varchar](150) NULL,
	[Passport] [int] NOT NULL,
	[Mobile] [int] NOT NULL,
	[Note] [nvarchar](500) NULL,

 CONSTRAINT [PK_Studens] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_Gender]  DEFAULT ((0)) FOR [Gender]
GO

ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_Birthday]  DEFAULT (getdate()) FOR [Birthday]
GO

ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_Passport]  DEFAULT ((0)) FOR [Passport]
GO

ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_Mobile]  DEFAULT ((0)) FOR [Mobile]
GO
