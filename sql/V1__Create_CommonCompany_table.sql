CREATE TABLE [dbo].[CommonCompany](
	[CompanyId] [int] NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[CompanyShortName] [varchar](20) NOT NULL,
	[PartitionDatabase] [varchar](50) NOT NULL,
	[IsServiceableByProcesses] [int] NOT NULL,
	[IsCompanyBeingConverted] [int] NOT NULL,
	[WebserviceToken] [varchar](50) NOT NULL,
	[IsActiveCompany] [int] NOT NULL,
 CONSTRAINT [PK_CommonCompany] PRIMARY KEY NONCLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ,
 CONSTRAINT [UK_BrandName] UNIQUE NONCLUSTERED 
(
	[CompanyShortName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85)
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CommonCompany] ADD  CONSTRAINT [DF_CommonCompany_CompanyId]  DEFAULT ((0)) FOR [CompanyId]
GO

ALTER TABLE [dbo].[CommonCompany] ADD  CONSTRAINT [DF_CommonCompany_CompanyName]  DEFAULT ('') FOR [CompanyName]
GO

ALTER TABLE [dbo].[CommonCompany] ADD  CONSTRAINT [DF_CommonCompany_CompanyShortName]  DEFAULT ('') FOR [CompanyShortName]
GO

ALTER TABLE [dbo].[CommonCompany] ADD  CONSTRAINT [DF_CommonCompany_PartitionDatabase]  DEFAULT ('') FOR [PartitionDatabase]
GO

ALTER TABLE [dbo].[CommonCompany] ADD  CONSTRAINT [DF_CommonCompany_IsServiceableByProcesses]  DEFAULT ((1)) FOR [IsServiceableByProcesses]
GO

ALTER TABLE [dbo].[CommonCompany] ADD  CONSTRAINT [DF_CommonCompany_IsCompanyBeingConverted]  DEFAULT ((0)) FOR [IsCompanyBeingConverted]
GO

ALTER TABLE [dbo].[CommonCompany] ADD  CONSTRAINT [DF_CommonCompany_WebserviceToken]  DEFAULT ('') FOR [WebserviceToken]
GO

ALTER TABLE [dbo].[CommonCompany] ADD  CONSTRAINT [DF_CommonCompany_IsActiveCompany]  DEFAULT ((1)) FOR [IsActiveCompany]
GO
