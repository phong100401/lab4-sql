USE [Quanlysinhvien]
GO

/****** Object:  Table [dbo].[BOOK]    Script Date: 2020-08-03 8:10:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ClassDetails](
	[CodeStudent] [int] NOT NULL,
	[CodeClass] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
CONSTRAINT fk_cd_codestudent FOREIGN KEY (CodeStudent) REFERENCES Students (Code)
	)
GO

ALTER TABLE [dbo].[ClassDetails] ADD  CONSTRAINT [DF_ClassDetails_StartTime]  DEFAULT (getdate()) FOR [StartTime]
GO

ALTER TABLE [dbo].[ClassDetails] ADD  CONSTRAINT [DF_ClassDetails_EndTime]  DEFAULT (getdate()) FOR [EndTime]
GO

ALTER TABLE [dbo].[ClassDetails] ADD  CONSTRAINT [DF_ClassDetails_Status]  DEFAULT ((0)) FOR [Status]
GO

ALTER TABLE [dbo].[ClassDetails]
 ADD CONSTRAINT fk_cd_codeclass FOREIGN KEY (CodeClass) REFERENCES Class (Code)