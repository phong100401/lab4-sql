USE [Quanlysinhvien]
GO

/****** Object:  Table [dbo].[BOOK]    Script Date: 2020-08-03 8:10:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Class](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,

 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [DF_Students_StartDate]  DEFAULT (getdate()) FOR [StartDate]
GO

ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [DF_Students_EndDate]  DEFAULT (getdate()) FOR [EndDate]
GO

ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [DF_Students_Status]  DEFAULT ((0)) FOR [Status]
GO
