ET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[IsActiveEmployee] [int] NOT NULL,
	[IsTrAvailable] [int] NOT NULL,
	[IsPmAvailable] [int] NOT NULL,
	[IsCallCenter] [int] NOT NULL,
	[IsVendor] [int] NOT NULL,
	[IsAccountLocked] [int] NOT NULL,
	[IsMasterAuthor] [int] NOT NULL,
	[IsPropertyAuthor] [int] NOT NULL,
	[IsSubscriptionEnabled] [int] NOT NULL,
	[ShowTR] [int] NOT NULL,
	[ShowPM] [int] NOT NULL,
	[ShowSM] [int] NOT NULL,
	[UsesReports] [int] NOT NULL,
	[UsesSetup] [int] NOT NULL,
	[ReceivesNewsletters] [int] NOT NULL,
	[ReceivesAnnouncements] [int] NOT NULL,
	[ReceivesServiceAlerts] [int] NOT NULL,
	[EmployeeHomePage] [int] NOT NULL,
	[NotifyMissingValues] [int] NOT NULL,
	[NotifyCallAttention] [int] NOT NULL,
	[FailedLoginAttempts] [int] NOT NULL,
	[EmployeeFirstName] [varchar](50) NOT NULL,
	[EmployeeLastName] [varchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[ExternalEmployeeCode] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[TRDeviceType] [int] NOT NULL,
	[TRDeviceAddress] [varchar](128) NOT NULL,
	[TRCCEmailAddress] [varchar](512) NOT NULL,
	[PMDeviceType] [int] NOT NULL,
	[PMDeviceAddress] [varchar](128) NOT NULL,
	[TRDeviceTypeDescription] [varchar](50) NOT NULL,
	[PMDeviceTypeDescription] [varchar](50) NOT NULL,
	[NotifyEmailAddress] [nvarchar](128) NOT NULL,
	[SubscriptionEmailAddress] [varchar](128) NOT NULL,
	[LocaleCode] [char](5) NOT NULL,
	[PasswordChangeDate] [smalldatetime] NOT NULL,
	[LastLoginDate] [smalldatetime] NOT NULL,
	[PasswordExpiryDate] [smalldatetime] NOT NULL,
	[EncryptedPassword] [binary](20) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
	[tmpEmployeeId] [int] NOT NULL,
	[IsEecoAvailable] [int] NOT NULL,
	[ShowEECO] [int] NOT NULL,
	[EECODeviceType] [int] NOT NULL,
	[EECODeviceAddress] [varchar](128) NOT NULL,
	[EmergencyPhone1] [varchar](50) NOT NULL,
	[EmergencyPhone2] [varchar](50) NOT NULL,
	[EmergencySMS] [varchar](50) NOT NULL,
	[EmergencyEmail] [nvarchar](128) NOT NULL,
	[EmergencyEmployeeIdEnteredBy] [int] NOT NULL,
	[EmergencyDateFrom] [smalldatetime] NOT NULL,
	[IsPool] [int] NOT NULL,
	[EmployeeIdAlternate] [int] NULL,
	[MobileVersion] [varchar](15) NOT NULL,
	[ForwardStartDate] [smalldatetime] NOT NULL,
	[ForwardEndDate] [smalldatetime] NOT NULL,
	[UsesMobile] [int] NOT NULL,
	[AppleDeviceToken] [varchar](64) NOT NULL,
	[ShowWelcomePage] [int] NOT NULL,
	[ShowVendorCoi] [int] NOT NULL,
	[ShowTenantCoi] [int] NOT NULL,
	[IsTenantCoiContact] [int] NOT NULL,
	[IsVendorCoiContact] [int] NOT NULL,
	[EmployeeSignature] [varchar](512) NOT NULL,
	[DateUpdatedUtc] [datetime] NOT NULL,
	[DateCreatedUtc] [datetime] NOT NULL,
	[CanViewPortfolioData] [int] NOT NULL,
	[IsPiAvailable] [int] NOT NULL,
	[ShowPI] [int] NOT NULL,
	[CanCreatePIProperty] [int] NOT NULL,
	[PrimaryEmailAddress] [nvarchar](128) NOT NULL,
	[EmployeeTitle] [nvarchar](50) NOT NULL,
	[DeviceNotes] [nvarchar](512) NOT NULL,
	[Employee_CS_CompanyId] [int] NOT NULL,
	[FcmDeviceId] [nvarchar](256) NOT NULL,
	[TenantIdScope] [int] NULL,
	[LearningId] [int] NOT NULL,
	[LearningUserType] [int] NOT NULL,
	[GeoDispatchEnabled] [int] NOT NULL,
	[EmployeeStatus] [varchar](20) NOT NULL,
	[TravellingMethod] [varchar](20) NULL,
	[DateEmployeeStatusUpdated] [datetimeoffset](7) NOT NULL,
	[GPSMode] [nvarchar](20) NOT NULL,
	[CredentialTokenDateExpiryUtc] [datetime] NULL,
	[CredentialToken] [varchar](50) NOT NULL,
	[CanSSOLogin] [int] NOT NULL,
	[CanScanAssetCode] [int] NOT NULL,
	[LearningRoleId] [int] NOT NULL,
	[UsesGen5] [int] NOT NULL,
	[EmployeeCode] [uniqueidentifier] NOT NULL,
	[RequireLmsRoleUpdate] [int] NOT NULL,
	[RequireLmsScopeUpdate] [int] NOT NULL,
	[UsesCms] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY NONCLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85)
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ActiveAndPM] ON [dbo].[Employee]
(
	[IsActiveEmployee] ASC,
	[IsPmAvailable] ASC
)
INCLUDE([EmployeeFirstName],[EmployeeId],[EmployeeLastName],[IsVendor],[PMDeviceAddress],[PMDeviceType],[RoleId],[TRDeviceAddress],[TRDeviceType],[TRDeviceTypeDescription],[Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85)
GO
CREATE NONCLUSTERED INDEX [IX_ActiveAndTR] ON [dbo].[Employee]
(
	[IsActiveEmployee] ASC,
	[IsTrAvailable] ASC,
	[IsPool] ASC,
	[RoleId] ASC
)
INCLUDE([EmployeeFirstName],[EmployeeId],[EmployeeLastName],[IsVendor],[Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85)/
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_CoverEmployee] ON [dbo].[Employee]
(
	[EmployeeId] ASC,
	[PMDeviceType] ASC,
	[EmployeeFirstName] ASC,
	[EmployeeLastName] ASC
)
INCLUDE([Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85)
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Employee_AppleDeviceToken] ON [dbo].[Employee]
(
	[AppleDeviceToken] ASC
)
INCLUDE([Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) 
GO
CREATE NONCLUSTERED INDEX [IX_Employee_CompanyId] ON [dbo].[Employee]
(
	[CompanyId] ASC
)
INCLUDE([EmployeeId],[RoleId],[IsActiveEmployee],[IsTrAvailable],[IsPmAvailable],[IsCallCenter],[IsVendor],[IsMasterAuthor],[IsPropertyAuthor],[IsSubscriptionEnabled],[ShowTR],[ShowPM],[ShowSM],[UsesReports],[UsesSetup],[NotifyMissingValues],[NotifyCallAttention],[EmployeeFirstName],[EmployeeLastName],[UserName],[ExternalEmployeeCode],[PhoneNumber],[TRDeviceType],[TRDeviceAddress],[TRCCEmailAddress],[PMDeviceType],[PMDeviceAddress],[NotifyEmailAddress],[SubscriptionEmailAddress],[LocaleCode],[PasswordChangeDate],[LastLoginDate],[EncryptedPassword],[IsEecoAvailable],[ShowEECO],[EECODeviceType],[EECODeviceAddress],[EmergencyPhone1],[EmergencyPhone2],[EmergencySMS],[EmergencyEmail],[IsPool],[EmployeeIdAlternate],[MobileVersion],[ForwardStartDate],[ForwardEndDate],[UsesMobile],[AppleDeviceToken],[ShowWelcomePage],[ShowVendorCoi],[ShowTenantCoi],[IsTenantCoiContact],[IsVendorCoiContact],[EmployeeSignature],[DateUpdatedUtc],[DateCreatedUtc],[CanViewPortfolioData],[Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
CREATE NONCLUSTERED INDEX [IX_Employee_CompanyIdIsPool] ON [dbo].[Employee]
(
	[CompanyId] ASC,
	[IsPool] ASC
)
INCLUDE([EmployeeId],[RoleId],[IsActiveEmployee],[IsTrAvailable],[IsPmAvailable],[IsCallCenter],[IsVendor],[IsAccountLocked],[IsMasterAuthor],[IsPropertyAuthor],[IsSubscriptionEnabled],[ShowTR],[ShowPM],[ShowSM],[UsesReports],[UsesSetup],[ReceivesNewsletters],[ReceivesAnnouncements],[ReceivesServiceAlerts],[EmployeeHomePage],[NotifyMissingValues],[NotifyCallAttention],[FailedLoginAttempts],[EmployeeFirstName],[EmployeeLastName],[UserName],[ExternalEmployeeCode],[PhoneNumber],[TRDeviceType],[TRDeviceAddress],[TRCCEmailAddress],[PMDeviceType],[PMDeviceAddress],[TRDeviceTypeDescription],[NotifyEmailAddress],[SubscriptionEmailAddress],[LocaleCode],[PasswordChangeDate],[LastLoginDate],[PasswordExpiryDate],[EncryptedPassword],[DateCreated],[DateUpdated],[tmpEmployeeId],[EmergencyPhone1],[EmergencyPhone2],[EmergencySMS],[EmergencyEmail],[AppleDeviceToken],[ShowVendorCoi],[ShowTenantCoi],[IsTenantCoiContact],[IsVendorCoiContact],[EmployeeSignature],[CanViewPortfolioData],[IsPiAvailable],[ShowPI],[CanCreatePIProperty],[PrimaryEmailAddress],[EmployeeTitle],[DeviceNotes],[Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
CREATE NONCLUSTERED INDEX [IX_Employee_EmployeeId] ON [dbo].[Employee]
(
	[EmployeeId] ASC
)
INCLUDE([CompanyId],[RoleId],[IsActiveEmployee],[IsTrAvailable],[IsPmAvailable],[IsCallCenter],[IsVendor],[IsAccountLocked],[IsMasterAuthor],[IsPropertyAuthor],[IsSubscriptionEnabled],[ShowTR],[ShowPM],[ShowSM],[UsesReports],[UsesSetup],[ReceivesNewsletters],[ReceivesAnnouncements],[ReceivesServiceAlerts],[EmployeeHomePage],[NotifyMissingValues],[NotifyCallAttention],[FailedLoginAttempts],[EmployeeFirstName],[EmployeeLastName],[UserName],[ExternalEmployeeCode],[PhoneNumber],[TRDeviceType],[TRDeviceAddress],[TRCCEmailAddress],[PMDeviceType],[PMDeviceAddress],[TRDeviceTypeDescription],[PMDeviceTypeDescription],[NotifyEmailAddress],[SubscriptionEmailAddress],[LocaleCode],[PasswordChangeDate],[LastLoginDate],[PasswordExpiryDate],[EncryptedPassword],[DateCreated],[DateUpdated],[tmpEmployeeId],[IsEecoAvailable],[ShowEECO],[EECODeviceType],[EECODeviceAddress],[EmergencyPhone1],[EmergencyPhone2],[EmergencySMS],[EmergencyEmail],[EmergencyEmployeeIdEnteredBy],[EmergencyDateFrom],[IsPool],[EmployeeIdAlternate],[MobileVersion],[ForwardStartDate],[ForwardEndDate],[UsesMobile],[AppleDeviceToken],[ShowWelcomePage],[ShowVendorCoi],[ShowTenantCoi],[IsTenantCoiContact],[IsVendorCoiContact],[EmployeeSignature],[DateUpdatedUtc],[DateCreatedUtc],[CanViewPortfolioData],[IsPiAvailable],[ShowPI],[CanCreatePIProperty],[PrimaryEmailAddress],[EmployeeTitle],[DeviceNotes],[Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
CREATE NONCLUSTERED INDEX [IX_Employee_EmployeeIdIsActiveEmployee] ON [dbo].[Employee]
(
	[EmployeeId] ASC,
	[IsActiveEmployee] ASC
)
INCLUDE([CompanyId],[RoleId],[IsTrAvailable],[IsPmAvailable],[IsCallCenter],[IsVendor],[IsAccountLocked],[IsMasterAuthor],[IsPropertyAuthor],[IsSubscriptionEnabled],[ShowTR],[ShowPM],[ShowSM],[UsesReports],[UsesSetup],[ReceivesNewsletters],[ReceivesAnnouncements],[ReceivesServiceAlerts],[EmployeeHomePage],[NotifyMissingValues],[NotifyCallAttention],[FailedLoginAttempts],[EmployeeFirstName],[EmployeeLastName],[UserName],[ExternalEmployeeCode],[PhoneNumber],[TRDeviceType],[TRDeviceAddress],[TRCCEmailAddress],[PMDeviceType],[PMDeviceAddress],[TRDeviceTypeDescription],[PMDeviceTypeDescription],[NotifyEmailAddress],[SubscriptionEmailAddress],[LocaleCode],[PasswordChangeDate],[LastLoginDate],[PasswordExpiryDate],[EncryptedPassword],[DateCreated],[DateUpdated],[tmpEmployeeId],[IsEecoAvailable],[ShowEECO],[EECODeviceType],[EECODeviceAddress],[EmergencyPhone1],[EmergencyPhone2],[EmergencySMS],[EmergencyEmail],[EmergencyEmployeeIdEnteredBy],[EmergencyDateFrom],[IsPool],[EmployeeIdAlternate],[MobileVersion],[ForwardStartDate],[ForwardEndDate],[UsesMobile],[AppleDeviceToken],[ShowWelcomePage],[ShowVendorCoi],[ShowTenantCoi],[IsTenantCoiContact],[IsVendorCoiContact],[EmployeeSignature],[DateUpdatedUtc],[DateCreatedUtc],[CanViewPortfolioData],[IsPiAvailable],[ShowPI],[CanCreatePIProperty],[Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
CREATE NONCLUSTERED INDEX [IX_Employee_IsActiveEmployee] ON [dbo].[Employee]
(
	[IsActiveEmployee] ASC
)
INCLUDE([EmployeeId],[AppleDeviceToken],[FcmDeviceId],[Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
CREATE NONCLUSTERED INDEX [IX_Employee_IsActiveEmployeeIsPool] ON [dbo].[Employee]
(
	[IsActiveEmployee] ASC,
	[IsPool] ASC
)
INCLUDE([CompanyId],[EmployeeFirstName],[EmployeeId],[EmployeeLastName],[IsPmAvailable],[IsTrAvailable],[IsVendor],[PMDeviceType],[TRDeviceAddress],[TRDeviceType],[TRDeviceTypeDescription],[Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
CREATE NONCLUSTERED INDEX [IX_Employee_IsActiveEmployeeIsVendorIsPoolEmployeeIdRoleId] ON [dbo].[Employee]
(
	[IsActiveEmployee] ASC,
	[IsVendor] ASC,
	[IsPool] ASC,
	[EmployeeId] ASC,
	[RoleId] ASC
)
INCLUDE([Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
CREATE NONCLUSTERED INDEX [IX_Employee_IsSubscriptionEnabledIsActiveEmployeeEmployeeId] ON [dbo].[Employee]
(
	[IsSubscriptionEnabled] ASC,
	[IsActiveEmployee] ASC,
	[EmployeeId] ASC
)
INCLUDE([CompanyId],[RoleId],[IsTrAvailable],[IsPmAvailable],[IsCallCenter],[IsVendor],[IsAccountLocked],[IsMasterAuthor],[IsPropertyAuthor],[ShowTR],[ShowPM],[ShowSM],[UsesReports],[UsesSetup],[ReceivesNewsletters],[ReceivesAnnouncements],[ReceivesServiceAlerts],[EmployeeHomePage],[NotifyMissingValues],[NotifyCallAttention],[FailedLoginAttempts],[EmployeeFirstName],[EmployeeLastName],[UserName],[ExternalEmployeeCode],[PhoneNumber],[TRDeviceType],[TRDeviceAddress],[TRCCEmailAddress],[PMDeviceType],[PMDeviceAddress],[TRDeviceTypeDescription],[PMDeviceTypeDescription],[NotifyEmailAddress],[SubscriptionEmailAddress],[LocaleCode],[PasswordChangeDate],[LastLoginDate],[PasswordExpiryDate],[EncryptedPassword],[DateCreated],[DateUpdated],[tmpEmployeeId],[IsEecoAvailable],[ShowEECO],[EECODeviceType],[EECODeviceAddress],[EmergencyPhone1],[EmergencyPhone2],[EmergencySMS],[EmergencyEmail],[EmergencyEmployeeIdEnteredBy],[EmergencyDateFrom],[IsPool],[EmployeeIdAlternate],[MobileVersion],[ForwardStartDate],[ForwardEndDate],[UsesMobile],[AppleDeviceToken],[ShowWelcomePage],[ShowVendorCoi],[ShowTenantCoi],[IsTenantCoiContact],[IsVendorCoiContact],[EmployeeSignature],[DateUpdatedUtc],[DateCreatedUtc],[CanViewPortfolioData],[IsPiAvailable],[ShowPI],[CanCreatePIProperty],[PrimaryEmailAddress],[EmployeeTitle],[DeviceNotes],[Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_EmployeeExternalCode] ON [dbo].[Employee]
(
	[ExternalEmployeeCode] ASC,
	[EmployeeId] ASC,
	[IsActiveEmployee] ASC
)
INCLUDE([Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_EmployeeIsActiveEmployeePrimaryEmailAddress] ON [dbo].[Employee]
(
	[IsActiveEmployee] ASC,
	[PrimaryEmailAddress] ASC
)
INCLUDE([EmployeeId],[CompanyId],[Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
CREATE NONCLUSTERED INDEX [IX_EmployeeName] ON [dbo].[Employee]
(
	[EmployeeId] ASC,
	[IsTrAvailable] ASC,
	[IsActiveEmployee] ASC,
	[IsVendor] ASC,
	[RoleId] ASC
)
INCLUDE([Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
CREATE NONCLUSTERED INDEX [IX_EmployeePMDeviceType] ON [dbo].[Employee]
(
	[EmployeeId] ASC,
	[PMDeviceType] ASC,
	[RoleId] ASC
)
INCLUDE([Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
CREATE NONCLUSTERED INDEX [IX_EmployeePoolPM] ON [dbo].[Employee]
(
	[IsActiveEmployee] ASC,
	[IsPmAvailable] ASC,
	[IsPool] ASC
)
INCLUDE([EmployeeFirstName],[EmployeeId],[EmployeeLastName],[IsVendor],[PMDeviceAddress],[PMDeviceType],[RoleId],[TRDeviceAddress],[TRDeviceType],[TRDeviceTypeDescription],[Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
CREATE NONCLUSTERED INDEX [IX_EmployeePoolTR] ON [dbo].[Employee]
(
	[IsActiveEmployee] ASC,
	[IsTrAvailable] ASC,
	[IsPool] ASC
)
INCLUDE([EmployeeFirstName],[EmployeeId],[EmployeeLastName],[IsVendor],[PMDeviceAddress],[PMDeviceType],[RoleId],[TRDeviceAddress],[TRDeviceType],[TRDeviceTypeDescription],[Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_IsActiveEmployeeUserName] ON [dbo].[Employee]
(
	[IsActiveEmployee] ASC,
	[UserName] ASC
)
INCLUDE([Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_UserName] ON [dbo].[Employee]
(
	[UserName] ASC
)
INCLUDE([Employee_CS_CompanyId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [Primary]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmployeeId]  DEFAULT ((0)) FOR [EmployeeId]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_CompanyId]  DEFAULT ((0)) FOR [CompanyId]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_RoleId]  DEFAULT ((0)) FOR [RoleId]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsActiveEmployee]  DEFAULT ((1)) FOR [IsActiveEmployee]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsTrAvailable]  DEFAULT ((0)) FOR [IsTrAvailable]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsPmAvailable]  DEFAULT ((0)) FOR [IsPmAvailable]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsCallCenter]  DEFAULT ((0)) FOR [IsCallCenter]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsVendor]  DEFAULT ((0)) FOR [IsVendor]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsAccountLocked]  DEFAULT ((0)) FOR [IsAccountLocked]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsMasterAuthor]  DEFAULT ((0)) FOR [IsMasterAuthor]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsPropertyAuthor]  DEFAULT ((0)) FOR [IsPropertyAuthor]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsSubscriptionEnabled]  DEFAULT ((0)) FOR [IsSubscriptionEnabled]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ShowTR]  DEFAULT ((0)) FOR [ShowTR]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ShowPM]  DEFAULT ((0)) FOR [ShowPM]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ShowSM]  DEFAULT ((0)) FOR [ShowSM]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_UsesReports]  DEFAULT ((1)) FOR [UsesReports]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_UsesSetup]  DEFAULT ((1)) FOR [UsesSetup]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ReceivesNewsletters]  DEFAULT ((0)) FOR [ReceivesNewsletters]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ReceivesAnnouncements]  DEFAULT ((0)) FOR [ReceivesAnnouncements]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ReceivesServiceAlerts]  DEFAULT ((0)) FOR [ReceivesServiceAlerts]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmployeeHomePage]  DEFAULT ((2)) FOR [EmployeeHomePage]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_NotifyMissingValues]  DEFAULT ((0)) FOR [NotifyMissingValues]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_NotifyCallAttention]  DEFAULT ((0)) FOR [NotifyCallAttention]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_FailedLoginAttempts]  DEFAULT ((0)) FOR [FailedLoginAttempts]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmployeeFirstName]  DEFAULT ('') FOR [EmployeeFirstName]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmployeeLastName]  DEFAULT ('') FOR [EmployeeLastName]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_UserName]  DEFAULT ('') FOR [UserName]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ExternalEmployeeCode]  DEFAULT ('') FOR [ExternalEmployeeCode]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_PhoneNumber]  DEFAULT ('') FOR [PhoneNumber]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_TRDeviceType]  DEFAULT ((0)) FOR [TRDeviceType]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_TRDeviceAddress]  DEFAULT ('') FOR [TRDeviceAddress]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_TRCCEmailAddress]  DEFAULT ('') FOR [TRCCEmailAddress]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_PMDeviceType]  DEFAULT ((0)) FOR [PMDeviceType]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_PMDeviceAddress]  DEFAULT ('') FOR [PMDeviceAddress]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_TRDeviceTypeDescription]  DEFAULT ('') FOR [TRDeviceTypeDescription]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_PMDeviceTypeDescription]  DEFAULT ('') FOR [PMDeviceTypeDescription]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_NotifyEmailAddress]  DEFAULT ('') FOR [NotifyEmailAddress]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_SubscriptionEmailAddress]  DEFAULT ('') FOR [SubscriptionEmailAddress]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_LocaleCode]  DEFAULT ('en-US') FOR [LocaleCode]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_PasswordChangeDate]  DEFAULT ('1900-01-01') FOR [PasswordChangeDate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_LastLoginDate]  DEFAULT ('1900-01-01') FOR [LastLoginDate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_PasswordExpiryDate]  DEFAULT ('1900-01-01') FOR [PasswordExpiryDate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_tmpEmployeeId]  DEFAULT ((-1)) FOR [tmpEmployeeId]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsEecoAvailable]  DEFAULT ((0)) FOR [IsEecoAvailable]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ShowEECO]  DEFAULT ((0)) FOR [ShowEECO]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EECODeviceType]  DEFAULT ((0)) FOR [EECODeviceType]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EECODeviceAddress]  DEFAULT ('') FOR [EECODeviceAddress]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmergencyPhone1]  DEFAULT ('') FOR [EmergencyPhone1]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmergencyPhone2]  DEFAULT ('') FOR [EmergencyPhone2]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmergencySMS]  DEFAULT ('') FOR [EmergencySMS]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmergencyEmail]  DEFAULT ('') FOR [EmergencyEmail]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmergencyEmployeeIdEnteredBy]  DEFAULT ((0)) FOR [EmergencyEmployeeIdEnteredBy]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmergencyDateFrom]  DEFAULT ('1900-01-01') FOR [EmergencyDateFrom]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsPool]  DEFAULT ((0)) FOR [IsPool]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_MobileVersion]  DEFAULT ('') FOR [MobileVersion]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ForwardStartDate]  DEFAULT ('1900-01-01') FOR [ForwardStartDate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ForwardEndDate]  DEFAULT ('1900-01-01') FOR [ForwardEndDate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_UsesMobile]  DEFAULT ((1)) FOR [UsesMobile]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_AppleDeviceToken]  DEFAULT ('') FOR [AppleDeviceToken]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ShowWelcomePage]  DEFAULT ((1)) FOR [ShowWelcomePage]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ShowVendorCoi]  DEFAULT ((0)) FOR [ShowVendorCoi]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ShowTenantCoi]  DEFAULT ((0)) FOR [ShowTenantCoi]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsTenantCoiContact]  DEFAULT ((0)) FOR [IsTenantCoiContact]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsVendorCoiContact]  DEFAULT ((0)) FOR [IsVendorCoiContact]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmployeeSignature]  DEFAULT ('') FOR [EmployeeSignature]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_DateUpdatedUtc]  DEFAULT (getutcdate()) FOR [DateUpdatedUtc]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_DateCreatedUtc]  DEFAULT (getutcdate()) FOR [DateCreatedUtc]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_CanViewPortfolioData]  DEFAULT ((1)) FOR [CanViewPortfolioData]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsPiAvailable]  DEFAULT ((0)) FOR [IsPiAvailable]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ShowPI]  DEFAULT ((0)) FOR [ShowPI]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_CanCreatePIProperty]  DEFAULT ((0)) FOR [CanCreatePIProperty]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_PrimaryEmailAddress]  DEFAULT ('') FOR [PrimaryEmailAddress]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmployeeTitle]  DEFAULT ('') FOR [EmployeeTitle]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_DeviceNotes]  DEFAULT ('') FOR [DeviceNotes]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_CS_CompanyId]  DEFAULT ([dbo].[CompanyScopingDefaultValue]()) FOR [Employee_CS_CompanyId]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_FcmDeviceId]  DEFAULT ('') FOR [FcmDeviceId]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_LearningId]  DEFAULT ((0)) FOR [LearningId]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_LearningUserType]  DEFAULT ((0)) FOR [LearningUserType]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_GeoDispatchEnabled]  DEFAULT ((0)) FOR [GeoDispatchEnabled]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmployeeStatus]  DEFAULT ('Unavailable') FOR [EmployeeStatus]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_DateEmployeeStatusUpdated]  DEFAULT ('1900-01-01') FOR [DateEmployeeStatusUpdated]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_GPSMode]  DEFAULT ('') FOR [GPSMode]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_CredentialToken]  DEFAULT ('') FOR [CredentialToken]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_CanSSOLogin]  DEFAULT ((0)) FOR [CanSSOLogin]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_CanScanAssetCode]  DEFAULT ((0)) FOR [CanScanAssetCode]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_LearningRoleId]  DEFAULT ((0)) FOR [LearningRoleId]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_UsesGen5]  DEFAULT ((0)) FOR [UsesGen5]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmployeeCode]  DEFAULT (newsequentialid()) FOR [EmployeeCode]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_RequireLmsRoleUpdate]  DEFAULT ((1)) FOR [RequireLmsRoleUpdate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_RequireLmsScopeUpdate]  DEFAULT ((1)) FOR [RequireLmsScopeUpdate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_UsesCms]  DEFAULT ((0)) FOR [UsesCms]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [FK_Employee_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Company]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [FK_Employee_Employee] FOREIGN KEY([EmergencyEmployeeIdEnteredBy])
REFERENCES [dbo].[Employee] ([EmployeeId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [FK_Employee_EmployeeAlternate] FOREIGN KEY([EmployeeIdAlternate])
REFERENCES [dbo].[Employee] ([EmployeeId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_EmployeeAlternate]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [FK_Employee_LearningRole] FOREIGN KEY([LearningRoleId])
REFERENCES [dbo].[LearningRole] ([LearningRoleId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_LearningRole]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [FK_Employee_Tenant] FOREIGN KEY([TenantIdScope])
REFERENCES [dbo].[Tenant] ([TenantId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Tenant]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO