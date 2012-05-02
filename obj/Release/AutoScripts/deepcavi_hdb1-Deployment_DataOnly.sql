INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'hdbiking', N'hdbiking', N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', NULL)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
GO
SET IDENTITY_INSERT [deepcavi_fra].[MB_Users] ON 

GO
INSERT [deepcavi_fra].[MB_Users] ([MBUS_ID], [MBUS_UserName], [MBUS_Email], [MBUS_Password], [MBUS_FirstName], [MBUS_FamilyName], [MBUS_InsertDate], [MBUS_UpdateDate], [MBUS_MBCO_ID], [MBUS_Notes], [MBUS_MBRO_ID]) VALUES (1, N'asdf', N'asdf', N'asdf', NULL, NULL, CAST(0x00009ED40173BDB8 AS DateTime), CAST(0x00009ED40173BDB8 AS DateTime), 15, NULL, N'user')
GO
SET IDENTITY_INSERT [deepcavi_fra].[MB_Users] OFF
GO
INSERT [deepcavi_fra].[MB_UserDetails] ([MBUD_ID], [MBUD_ApplicationId], [MBUD_Users_UserId], [MBUD_FirstName], [MBUD_LastName], [MBUD_FullName], [MBUD_DisplayName], [MBUD_PublicEmail], [MBUD_AIM], [MBUD_GTalk], [MBUD_ICQ], [MBUD_LiveMessenger], [MBUD_Skype], [MBUD_Jabber], [MBUD_Yahoo], [MBUD_MobilePhone1], [MBUD_MobilePhone1Provider], [MBUD_MobilePhone2], [MBUD_MobilePhone2Provider], [MBUD_MobilePhone3], [MBUD_MobilePhone3Provider], [MBUD_WorkPhone]) VALUES (N'04e2263e-f9b1-4b75-b2ef-079d9cd91dc4', N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'38aa9ba3-320d-43a7-8220-18d67c4c5e14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [deepcavi_fra].[MB_UserDetails] ([MBUD_ID], [MBUD_ApplicationId], [MBUD_Users_UserId], [MBUD_FirstName], [MBUD_LastName], [MBUD_FullName], [MBUD_DisplayName], [MBUD_PublicEmail], [MBUD_AIM], [MBUD_GTalk], [MBUD_ICQ], [MBUD_LiveMessenger], [MBUD_Skype], [MBUD_Jabber], [MBUD_Yahoo], [MBUD_MobilePhone1], [MBUD_MobilePhone1Provider], [MBUD_MobilePhone2], [MBUD_MobilePhone2Provider], [MBUD_MobilePhone3], [MBUD_MobilePhone3Provider], [MBUD_WorkPhone]) VALUES (N'90c4e94c-a7f9-4991-853f-1bf0c062aa6e', N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'1fb83571-df80-449e-a614-0334864f5b56', N'gabri', N'va', N'prova', NULL, N'prova@lasdf', N'safdji', N'ji', N'joi', N'nj', N'd', N'', N'o', N'', N'po', N'', N'', N'', N'', N'sdf')
GO
INSERT [deepcavi_fra].[MB_UserDetails] ([MBUD_ID], [MBUD_ApplicationId], [MBUD_Users_UserId], [MBUD_FirstName], [MBUD_LastName], [MBUD_FullName], [MBUD_DisplayName], [MBUD_PublicEmail], [MBUD_AIM], [MBUD_GTalk], [MBUD_ICQ], [MBUD_LiveMessenger], [MBUD_Skype], [MBUD_Jabber], [MBUD_Yahoo], [MBUD_MobilePhone1], [MBUD_MobilePhone1Provider], [MBUD_MobilePhone2], [MBUD_MobilePhone2Provider], [MBUD_MobilePhone3], [MBUD_MobilePhone3Provider], [MBUD_WorkPhone]) VALUES (N'15abd9ad-5036-4982-adf4-1cd2ba6e92fc', N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'51fd3bc0-879f-4bf6-be92-f5199166721e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [deepcavi_fra].[MB_UserDetails] ([MBUD_ID], [MBUD_ApplicationId], [MBUD_Users_UserId], [MBUD_FirstName], [MBUD_LastName], [MBUD_FullName], [MBUD_DisplayName], [MBUD_PublicEmail], [MBUD_AIM], [MBUD_GTalk], [MBUD_ICQ], [MBUD_LiveMessenger], [MBUD_Skype], [MBUD_Jabber], [MBUD_Yahoo], [MBUD_MobilePhone1], [MBUD_MobilePhone1Provider], [MBUD_MobilePhone2], [MBUD_MobilePhone2Provider], [MBUD_MobilePhone3], [MBUD_MobilePhone3Provider], [MBUD_WorkPhone]) VALUES (N'7922a4c1-485e-4ed5-ae77-257570b53c89', N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'a501edb8-31ba-4a82-9100-bece2a32d9e3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [deepcavi_fra].[MB_UserDetails] ([MBUD_ID], [MBUD_ApplicationId], [MBUD_Users_UserId], [MBUD_FirstName], [MBUD_LastName], [MBUD_FullName], [MBUD_DisplayName], [MBUD_PublicEmail], [MBUD_AIM], [MBUD_GTalk], [MBUD_ICQ], [MBUD_LiveMessenger], [MBUD_Skype], [MBUD_Jabber], [MBUD_Yahoo], [MBUD_MobilePhone1], [MBUD_MobilePhone1Provider], [MBUD_MobilePhone2], [MBUD_MobilePhone2Provider], [MBUD_MobilePhone3], [MBUD_MobilePhone3Provider], [MBUD_WorkPhone]) VALUES (N'757a9420-3245-4a03-b845-459896e07341', N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'b9cb6781-d5a5-4ec6-a173-7f5178941bfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [deepcavi_fra].[MB_UserDetails] ([MBUD_ID], [MBUD_ApplicationId], [MBUD_Users_UserId], [MBUD_FirstName], [MBUD_LastName], [MBUD_FullName], [MBUD_DisplayName], [MBUD_PublicEmail], [MBUD_AIM], [MBUD_GTalk], [MBUD_ICQ], [MBUD_LiveMessenger], [MBUD_Skype], [MBUD_Jabber], [MBUD_Yahoo], [MBUD_MobilePhone1], [MBUD_MobilePhone1Provider], [MBUD_MobilePhone2], [MBUD_MobilePhone2Provider], [MBUD_MobilePhone3], [MBUD_MobilePhone3Provider], [MBUD_WorkPhone]) VALUES (N'aeab1c90-2085-4a86-bcaf-7350eb8b2607', N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'0518e2fb-6590-4d70-b3ac-12b43603e3b3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [deepcavi_fra].[MB_UserDetails] ([MBUD_ID], [MBUD_ApplicationId], [MBUD_Users_UserId], [MBUD_FirstName], [MBUD_LastName], [MBUD_FullName], [MBUD_DisplayName], [MBUD_PublicEmail], [MBUD_AIM], [MBUD_GTalk], [MBUD_ICQ], [MBUD_LiveMessenger], [MBUD_Skype], [MBUD_Jabber], [MBUD_Yahoo], [MBUD_MobilePhone1], [MBUD_MobilePhone1Provider], [MBUD_MobilePhone2], [MBUD_MobilePhone2Provider], [MBUD_MobilePhone3], [MBUD_MobilePhone3Provider], [MBUD_WorkPhone]) VALUES (N'c0ac194b-a496-441e-a7f1-763e71b46b15', N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'8a0692ce-7880-492a-bbe8-889049e319f0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [deepcavi_fra].[MB_UserDetails] ([MBUD_ID], [MBUD_ApplicationId], [MBUD_Users_UserId], [MBUD_FirstName], [MBUD_LastName], [MBUD_FullName], [MBUD_DisplayName], [MBUD_PublicEmail], [MBUD_AIM], [MBUD_GTalk], [MBUD_ICQ], [MBUD_LiveMessenger], [MBUD_Skype], [MBUD_Jabber], [MBUD_Yahoo], [MBUD_MobilePhone1], [MBUD_MobilePhone1Provider], [MBUD_MobilePhone2], [MBUD_MobilePhone2Provider], [MBUD_MobilePhone3], [MBUD_MobilePhone3Provider], [MBUD_WorkPhone]) VALUES (N'3c93fb42-cd67-4a25-bcbd-b8e5ae251dac', N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7782edf3-b0de-4aa9-87ee-4e882605f750', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO
INSERT [deepcavi_fra].[MB_UserDetails] ([MBUD_ID], [MBUD_ApplicationId], [MBUD_Users_UserId], [MBUD_FirstName], [MBUD_LastName], [MBUD_FullName], [MBUD_DisplayName], [MBUD_PublicEmail], [MBUD_AIM], [MBUD_GTalk], [MBUD_ICQ], [MBUD_LiveMessenger], [MBUD_Skype], [MBUD_Jabber], [MBUD_Yahoo], [MBUD_MobilePhone1], [MBUD_MobilePhone1Provider], [MBUD_MobilePhone2], [MBUD_MobilePhone2Provider], [MBUD_MobilePhone3], [MBUD_MobilePhone3Provider], [MBUD_WorkPhone]) VALUES (N'4c38248f-132c-42a6-be0f-cf277857b4b8', N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'71ffa7d1-b0b7-4b15-8376-77d89f658921', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO
INSERT [deepcavi_fra].[MB_UserDetails] ([MBUD_ID], [MBUD_ApplicationId], [MBUD_Users_UserId], [MBUD_FirstName], [MBUD_LastName], [MBUD_FullName], [MBUD_DisplayName], [MBUD_PublicEmail], [MBUD_AIM], [MBUD_GTalk], [MBUD_ICQ], [MBUD_LiveMessenger], [MBUD_Skype], [MBUD_Jabber], [MBUD_Yahoo], [MBUD_MobilePhone1], [MBUD_MobilePhone1Provider], [MBUD_MobilePhone2], [MBUD_MobilePhone2Provider], [MBUD_MobilePhone3], [MBUD_MobilePhone3Provider], [MBUD_WorkPhone]) VALUES (N'16cbb4b4-b977-4ce9-973d-d0d07cb277a6', N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', N'Francesco', N'', N'', N'Francesco - Admin', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO
INSERT [deepcavi_fra].[MB_UserDetails] ([MBUD_ID], [MBUD_ApplicationId], [MBUD_Users_UserId], [MBUD_FirstName], [MBUD_LastName], [MBUD_FullName], [MBUD_DisplayName], [MBUD_PublicEmail], [MBUD_AIM], [MBUD_GTalk], [MBUD_ICQ], [MBUD_LiveMessenger], [MBUD_Skype], [MBUD_Jabber], [MBUD_Yahoo], [MBUD_MobilePhone1], [MBUD_MobilePhone1Provider], [MBUD_MobilePhone2], [MBUD_MobilePhone2Provider], [MBUD_MobilePhone3], [MBUD_MobilePhone3Provider], [MBUD_WorkPhone]) VALUES (N'c0ff64d9-f683-4722-b74f-fa384e718da8', N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7f51e994-df52-4e77-826c-5e204554a9d4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [deepcavi_fra].[MB_Roles] ([MBRO_ID], [MBRO_ROLE]) VALUES (N'deepcaving', N'admin')
GO
INSERT [deepcavi_fra].[MB_Roles] ([MBRO_ID], [MBRO_ROLE]) VALUES (N'user', N'user')
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'012ec324-abd8-e011-a194-003048c2ac19', N'8c564d72-c8b6-4217-ba4f-c2c7e2c17ac5', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 1, N'Curmatura - Santa - Paltinis PART 1 of 3', N'r', N'v', N'27650420', CAST(0x0700BE04EF020000 AS Time), CAST(0x00009F5600C8AEDE AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'c9d4ad5c-abd8-e011-a194-003048c2ac19', N'8c564d72-c8b6-4217-ba4f-c2c7e2c17ac5', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 2, N'Curmatura - Santa - Paltinis - PART 2 of 6 - VIO POV HD', N'r', N'y', N'HsM_EEmj7bw', CAST(0x0700397B12020000 AS Time), CAST(0x00009F5600C91CCE AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'6fc95173-abd8-e011-a194-003048c2ac19', N'8c564d72-c8b6-4217-ba4f-c2c7e2c17ac5', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 3, N'Curmatura - Santa - Paltinis - PART 3 of 6 - VIO POV HD', N'r', N'y', N'iA0ROdGxJDA', CAST(0x0700FE220A020000 AS Time), CAST(0x00009F5600C94951 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'8fff53b4-b0da-e011-a194-003048c2ac19', N'5848ad25-2664-465d-a658-081d262fe99a', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 1, N'Geiger MTB Challenge 2011 - from Start to feed point 1 - Classic trail - VIO POV HD', N'r', N'y', N'TsfzE7kZcTo', CAST(0x07001382D4090000 AS Time), CAST(0x00009F59001FB9C0 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'c9d7bbf8-b0da-e011-a194-003048c2ac19', N'5848ad25-2664-465d-a658-081d262fe99a', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 2, N'Geiger MTB Challenge 2011 - from feed point 1 to Mt Magura PART 1 - Classic trail - VIO POV HD', N'r', N'y', N'BIOgtm14Hzw', CAST(0x0700948FD9020000 AS Time), CAST(0x00009F590020403E AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'334e1956-b1da-e011-a194-003048c2ac19', N'5848ad25-2664-465d-a658-081d262fe99a', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 3, N'Geiger MTB Challenge 2011 - from feed point 1 to Mt Magura PART 2 - Classic trail - VIO POV HD', N'r', N'v', N'28485497', CAST(0x070043BBFC040000 AS Time), CAST(0x00009F590020F7CE AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'efa03935-b2da-e011-a194-003048c2ac19', N'5848ad25-2664-465d-a658-081d262fe99a', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 4, N'Geiger MTB Challenge 2011 - from Mt Magura to antenna', N'r', N'v', N'28027473', CAST(0x0700DA06C2070000 AS Time), CAST(0x00009F590022AE7D AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'5fb13478-b2da-e011-a194-003048c2ac19', N'5848ad25-2664-465d-a658-081d262fe99a', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 5, N'Geiger MTB Challenge 2011 - from antenna to finish - Classic trail - VIO POV HD', N'r', N'y', N'SzbbiJEHjv0', CAST(0x07002BAE6D040000 AS Time), CAST(0x00009F590023322E AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'458b8ec6-44e0-e011-a194-003048c2ac19', N'2fabb6a4-185f-4d64-bdea-842f816ad497', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 1, N'Predeal Trophy 2011 - PART 1 of 7', N'r', N'y', N'sCLIe5nOCAY', CAST(0x0780D1D1FE050000 AS Time), CAST(0x00009F600046DF85 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'39309ad1-44e0-e011-a194-003048c2ac19', N'2fabb6a4-185f-4d64-bdea-842f816ad497', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 2, N'Predeal Trophy 2011 - PART 2 of 7', N'r', N'y', N'YJfGl_CPXmk', CAST(0x0700CF6E75060000 AS Time), CAST(0x00009F600046F53D AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'4e29da82-45e0-e011-a194-003048c2ac19', N'2fabb6a4-185f-4d64-bdea-842f816ad497', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 3, N'Predeal Trophy 2011 - PART 3 of 7', N'r', N'y', N'SkD1MDkQGws', CAST(0x07000863F4040000 AS Time), CAST(0x00009F60004851BA AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'00c4bd03-f7e1-e011-a194-003048c2ac19', N'2fabb6a4-185f-4d64-bdea-842f816ad497', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 4, N'Predeal Trophy 2011 - PART 4 of 7', N'r', N'y', N'_dx5ib95G0Y', CAST(0x07805A42F8030000 AS Time), CAST(0x00009F6200859B2B AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'7491602e-f7e1-e011-a194-003048c2ac19', N'2fabb6a4-185f-4d64-bdea-842f816ad497', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 5, N'Predeal Trophy 2011 - PART 5 of 7', N'r', N'y', N'svJXOOus63c', CAST(0x078059BD64040000 AS Time), CAST(0x00009F620085EEFE AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'14b10e57-f7e1-e011-a194-003048c2ac19', N'2fabb6a4-185f-4d64-bdea-842f816ad497', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 6, N'Predeal Trophy 2011 - PART 6 of 7', N'r', N'y', N'AfgQoqVkYYg', CAST(0x0780B29AD3040000 AS Time), CAST(0x00009F6200863EF9 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'5407c672-f7e1-e011-a194-003048c2ac19', N'2fabb6a4-185f-4d64-bdea-842f816ad497', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 7, N'Predeal Trophy 2011 - PART 7 of 7', N'r', N'y', N'kxw7kQ-5Mc8', CAST(0x070040787D010000 AS Time), CAST(0x00009F6200867577 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'6662cddb-f2ea-e011-a194-003048c2ac19', N'a88f25a2-514a-4f45-9a49-e8c8e525ca6f', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 1, N'Tusnad MTB marathon 2011 - PART 1 of 5', N'r', N'y', N'I5QAfRkqX2I', CAST(0x07000D8369060000 AS Time), CAST(0x00009F6D0130B28C AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'26ac3be6-f2ea-e011-a194-003048c2ac19', N'a88f25a2-514a-4f45-9a49-e8c8e525ca6f', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 2, N'Tusnad MTB marathon 2011 - PART 2 of 5', N'r', N'y', N'rUdLb064Dww', CAST(0x0780C89D3B060000 AS Time), CAST(0x00009F6D0130C70F AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'522af351-f3ea-e011-a194-003048c2ac19', N'a88f25a2-514a-4f45-9a49-e8c8e525ca6f', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 3, N'Tusnad MTB marathon 2011 - PART 3 of 5', N'r', N'y', N'saZTFc7QFU4', CAST(0x078003F643060000 AS Time), CAST(0x00009F6D01319AD6 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'c485e573-f3ea-e011-a194-003048c2ac19', N'a88f25a2-514a-4f45-9a49-e8c8e525ca6f', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 4, N'Tusnad MTB maraton 2011 - PART 4 of 5', N'r', N'y', N'oy7VP6v2xX8', CAST(0x07806A7326030000 AS Time), CAST(0x00009F6D0131DD94 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'6a7a898a-f3ea-e011-a194-003048c2ac19', N'a88f25a2-514a-4f45-9a49-e8c8e525ca6f', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 5, N'Tusnad MTB marathon 2011 - PART 5 of 5 - VIO POV HD', N'r', N'y', N'8Q8s2dOu8uc', CAST(0x07009F2726040000 AS Time), CAST(0x00009F6D01320A17 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'70381c13-5aeb-e011-a194-003048c2ac19', N'2439dbe2-f661-438f-88d5-ba8a00959494', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 1, N'TransAlpin Bike - Ranca 2011 - from Start to antenna - Classic trail - VIO POV HD', N'r', N'y', N'ED253UAVzl0', CAST(0x0780A2E211020000 AS Time), CAST(0x00009F6E00701EE3 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'6630ce2c-5aeb-e011-a194-003048c2ac19', N'2439dbe2-f661-438f-88d5-ba8a00959494', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 2, N'TransAlpin Bike - Ranca 2011 - from Antenna for 15min - Classic trail - VIO POV HD', N'r', N'y', N'qNiM1_rx9n0', CAST(0x07801B4F0E020000 AS Time), CAST(0x00009F6E00705168 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'16929e59-45ec-e011-a194-003048c2ac19', N'c6c87476-53b5-4092-9e5a-0b71ecbc0fef', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 1, N'Sub Arini Park - Part 1 of 3 - VIO POV HD', N'r', N'y', N'qF47SV81e0Q', CAST(0x0700157ED4010000 AS Time), CAST(0x00009F6F00B32EE3 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'1e796a76-45ec-e011-a194-003048c2ac19', N'c6c87476-53b5-4092-9e5a-0b71ecbc0fef', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 2, N'Sub Arini Park - part 2 of 3 - VIO POV HD', N'r', N'y', N'pA_6boTmZFw', CAST(0x07004BE398010000 AS Time), CAST(0x00009F6F00B36781 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'7ed71b8e-45ec-e011-a194-003048c2ac19', N'c6c87476-53b5-4092-9e5a-0b71ecbc0fef', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', 3, N'Sub Arini Park - part 3 of 3 - VIO POV HD', N'r', N'y', N'J2eMR0pLGfI', CAST(0x078066D844010000 AS Time), CAST(0x00009F6F00B39616 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'2c6bea22-b4ec-e011-a194-003048c2ac19', N'c491cfb0-6a21-42f4-ae41-7a35af310dd1', N'c6c87476-53b5-4092-9e5a-0b71ecbc0fef', 1, N'Paltinis - Curmatura', N'r', N'v', N'27570184', CAST(0x0780853CA1030000 AS Time), CAST(0x00009F7000017D77 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'8a6776c2-b5ec-e011-a194-003048c2ac19', N'94fb8a70-bdb4-487a-bff8-152ffc640d19', N'c6c87476-53b5-4092-9e5a-0b71ecbc0fef', 1, N'Curmatura - Rasinari - Sibiu', N'r', N'v', N'27570029', CAST(0x07004184A4040000 AS Time), CAST(0x00009F700004AE76 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'd8745607-b8ec-e011-a194-003048c2ac19', N'b9ebe203-3a55-4f38-a9f8-18165de733be', N'c6c87476-53b5-4092-9e5a-0b71ecbc0fef', 1, N'Paltinis Santa Curmatura PART 1 of 2 - VIO POV HD', N'r', N'y', N'56YunAkbs5A', CAST(0x078048800F020000 AS Time), CAST(0x00009F7000092482 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (N'a0fff230-b8ec-e011-a194-003048c2ac19', N'b9ebe203-3a55-4f38-a9f8-18165de733be', N'c6c87476-53b5-4092-9e5a-0b71ecbc0fef', 2, N'Paltinis - Santa - Curmatura - part 2 of 2', N'r', N'v', N'26822869', CAST(0x070049D971020000 AS Time), CAST(0x00009F7000097652 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009F4600000000 AS DateTime), N'5848ad25-2664-465d-a658-081d262fe99a', N'Geiger_MTB_Challenge_2011', N'Geiger MTB Challenge 2011 - Classic trail', N'<p>Geiger MTB Challenge is the most important mountain bike competition of Romania. It addresses both athletes and MTB lovers which can test their performances through a unique, constantly varying, cycling circuit.<p/>', CAST(0x00009F4600000000 AS DateTime), N'http://www.gpsies.com/mapOnly.do?fileId=fuijnepeqeffjcyl', NULL, N'charts/fu/map/fuijnepeqeffjcyl_map.png', 1, CAST(51.10 AS Decimal(18, 2)), 1520, N'Trail', NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009EF100000000 AS DateTime), N'c6c87476-53b5-4092-9e5a-0b71ecbc0fef', N'Sub_Arini_Park', N'Sub Arini park - Sibiu', N'<p>This park is the biggest in Sibiu and one of the oldest parks of Romania: it has been established in 1856. Currently the park has 22 hectares where grow over 68 wood species, 30 native and 38 exotic. Some are original from Japan, China, Himalayas, Asia Minor, North America, Central America, Algeria or the Alps. Among these include American red oak, mahogany, fir, white Himalayan poplar, Austrian black pine, pine of the Caucasus, Eronimus Radicans - Japan, the Virginia juniper, Douglas Green Tsuga, etc.. The oldest trees (copies of alder, black poplar, linden, oak) are over 150 years. Of great scientific value and decorations are exotic species, both in the Far East (ginkgo, tree of life, magnolia), as well as those in North America (pungent spruce, pine strobe tuie, California cypress, oak and red oak pool, black walnut, tulip tree, carob of Canada, American maple and sugar maple, Glad, catalpa). The park gives hospitality to aprx. 95 species of birds.</p>', CAST(0x00009EF100000000 AS DateTime), N'http://www.gpsies.com/mapOnly.do?fileId=gyscmhmtnnatpirx', NULL, N'charts/gy/map/gyscmhmtnnatpirx_map.png', 1, CAST(10.20 AS Decimal(18, 2)), 30, N'Asphalt', NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009F3700000000 AS DateTime), N'94fb8a70-bdb4-487a-bff8-152ffc640d19', N'Curmatura-Rasinari-Sibiu', N'Curmatura - Rasinari - Sibiu', N'<p>33 minutes pushing on the pedals on the way down from Curmatura to Sibiu. Beautiful surroundings!<p/>', CAST(0x00009F3700000000 AS DateTime), N'http://www.gpsies.com/mapOnly.do?fileId=zixlexuzhopjmyrl', NULL, N'charts/zi/map/zixlexuzhopjmyrl_map.png', 1, CAST(15.63 AS Decimal(18, 2)), 1, N'Asphalt', NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009F1900000000 AS DateTime), N'b9ebe203-3a55-4f38-a9f8-18165de733be', N'Paltinis-Santa-Curmatura', N'Paltinis - Santa - Curmatura', N'<p>A quite long downhill in the nature, seeing the vegetation changing progressively while going down.</p>', CAST(0x00009F1900000000 AS DateTime), N'http://www.gpsies.com/mapOnly.do?fileId=lycyxtyyxcckowqe', NULL, N'charts/ly/map/lycyxtyyxcckowqe_map.png', 1, CAST(16.77 AS Decimal(18, 2)), 49, N'Trail', NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009F3800000000 AS DateTime), N'0ec376a1-e3da-4006-b31b-1c9cec31f28e', N'Sura_Mica-Ocna', NULL, NULL, CAST(0x00009F3800000000 AS DateTime), N'http://www.gpsies.com/mapOnly.do?fileId=yoavxxadvooruvao', NULL, N'charts/yo/map/yoavxxadvooruvao_map.png', 0, CAST(15.20 AS Decimal(18, 2)), 147, N'Trail', NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009EDB00DB22D4 AS DateTime), N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', N'Talmacel-Sebesu_de_sus', NULL, NULL, CAST(0x00009EDB00DB22D4 AS DateTime), NULL, NULL, N'', 0, NULL, NULL, NULL, NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009EDB00DB22D4 AS DateTime), N'4edad9b3-ade3-4a69-8ae6-69862bb5d0ea', N'Sebesu_de_sus-Talmacel', NULL, NULL, CAST(0x00009EDB00DB22D4 AS DateTime), NULL, NULL, N'', 0, NULL, NULL, NULL, NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009F3700000000 AS DateTime), N'c491cfb0-6a21-42f4-ae41-7a35af310dd1', N'Paltinis-Curmatura', N'Paltinis - Curmatura', N'<p>A crazy asphalt downhill!!! It''s the best you can find in the Sibiu county. A huge number of cyclists come here every week-end to enjoy this road in the Cindrel mountains, climbing up and going down. While going down, I couldn''t stop smiling because of the pleasure of seeing such beautiful places while enjoying speed and wind. I''m going to provide the uphill too on this site soon.</p>', CAST(0x00009F3700000000 AS DateTime), N'http://www.gpsies.com/mapOnly.do?fileId=vcuegswfdosenefh', NULL, N'charts/vc/map/vcuegswfdosenefh_map.png', 1, CAST(14.92 AS Decimal(18, 2)), 17, N'Asphalt', NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009F5300000000 AS DateTime), N'2fabb6a4-185f-4d64-bdea-842f816ad497', N'Predeal_Trophy_2011', N'Predeal Trophy 2011 - MTB competition - Long trail', N'<p>Predeal is one of the most important tourist destinations of Romania. It is situated in the Prahova Valley, in the south area of Brasov County. The town is situated on a mountainous ground. The mountains that flank on Predeal are Piatra Mare to north, Bucegi to south-west and Postavarul to north-west. The woods around Predeal have a rich and diversified fauna. It can be noticed the high number of wild boars, tree martens, bears, foxes, wolves, carpathian deers, squirrels, rabbits, badgers or heather cocks. Predeal is the perfect place for winter sports and for mountain hiking, trekking, mountain biking, mushrooms finding (and eating...), relaxing and oxigenating your body with pure mountain air.<br /><br />Concerning the videos of the mountain bike trail, The first video is made during the competition. The batteries of the action cam stopped working (I didn''t notice they have been used before..) and I had to come back after ten days to go on filming until the end. So, all videos except the first have not been made during the competition, but they''re so clear!!!<br/><br/>The trail is the most beautiful I''ve rode this summer (anyway, I''ve been only at a few), very technical, with a huge variety of ground conditions.<br/></p><p>Official site of the competition: <a href="http://www.predeal-trophy.ro/" onclick="window.open(''http://www.predeal-trophy.ro/'', ''_blank''); return false;">Predeal Trophy</a></p>', CAST(0x00009F5300000000 AS DateTime), N'http://www.gpsies.com/mapOnly.do?fileId=dpithicdgoctetbv', NULL, N'charts/dp/map/dpithicdgoctetbv_map.png', 1, CAST(38.34 AS Decimal(18, 2)), 1459, N'Trail', NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (NULL, N'd39b360f-7452-4fd1-bcee-a927ef7ebbd5', N'Prova_forum', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009EF200000000 AS DateTime), N'd565c143-2cb9-41b1-8522-aeee0d5ad704', N'Lazaret-Cabana_Prejba', NULL, N'', CAST(0x00009EF200000000 AS DateTime), N'http://www.gpsies.com/mapOnly.do?fileId=udxxfavfuikuvjvz', NULL, N'charts/ud/map/udxxfavfuikuvjvz_map.png', 0, CAST(28.93 AS Decimal(18, 2)), 1396, N'Trail', NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009F3F00000000 AS DateTime), N'2439dbe2-f661-438f-88d5-ba8a00959494', N'TransAlpin_Bike_2011', N'TransAlpin Bike 2011 - Rânca</br>Mountain bike marathon - Classic Trail', N'<p>First edition, this competition takes place in the village of Rânca, which is situated 62 km from Târgu Jiu, 97 km from Râmnicu Valcea, 272 km from Bucharest. For a short part it goes through the Transalpina mountain road (DN67C), the highest mountain road of Romania. It has been asphalted in late 2010.<br /><br />The Transalpina or DN67C located in the Parâng Mountains group, in the Southern Carpathians of Romania, is one of the most spectacular roads of the Carpathian Mountains. It connects Novaci, south of Parâng Mountains, to Sebes in the north.<br/>It is said that the road was built under King Carol II and rebuilt during World War II by German troops and it is called The King''s Road by the locals. Also a story has it that Nicolae Ceausescu had the Transfagarasan Road (DN7C) built during the communist regime just to surpass the Transalpina.<br/>The road has its highest point at Urdele Pass, where the elevation is 2,145m above sea level. Given the high altitude, the road is closed during the cold months of the year. Works began in 2007 in order to transform this spectacular road into a modern highway (148 km), allowing a rapid transit between Oltenia and Transylvania.<br/>Rânca, a newly developed resort, is located towards the south end of the Transalpina road (source Wikipedia).</p><p>Official blog: <a href="http://transalpinbike.blogspot.com/" onclick="window.open(''http://transalpinbike.blogspot.com/'', ''_blank''); return false;">Transalpin Bike</a></p>', CAST(0x00009F3F00000000 AS DateTime), N'http://www.gpsies.com/mapOnly.do?fileId=kvqqsqhaxrdcfvip', NULL, N'charts/kv/map/kvqqsqhaxrdcfvip_map.png', 1, CAST(34.88 AS Decimal(18, 2)), 1085, N'Trail', N'<h2>A few pictures before and after the race</h2> <p>Thanks to Costel, who took his camera on the trip, we now have many pictures that help us remember this great experience. Here are only a few; the whole picture gallery is on my Facebook account: look for HD Biking on Facebook and join me! :) </p> <br /><div class="fb-like" data-href="http://www.hdbiking.net/" data-send="true" data-width="450" data-show-faces="true"></div><div class=''yoxview''>     <table>         <tr>              <td valign=''top''>                 <a href=''Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0359.jpg''>                 <img id=''MainContent_ExtraContent11_Image1'' src=''Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0359.jpg'' alt=''Oasa Lake'' style=''border-style: none;'' />                 </a>                 <p style=''font-family: Courier; margin-top: 0px; margin-left: 10px''>                     Oasa Lake</p>             </td>             <td>                  <a href=''Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0370.jpg''>                 <img id=''MainContent_ExtraContent11_Image2'' src=''Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0370.jpg'' alt=''Oasa Lake'' style=''border-style: none;'' />                 </a>                 <p style=''font-family: Courier; margin-top: 0px; margin-left: 10px''>                     Oasa Lake</p>             </td>         </tr>         <tr>              <td>                 <a href=''Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0438.jpg''>                 <img id=''MainContent_ExtraContent11_Image3'' src=''Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0438.jpg'' alt=''Near the highest point reached on asphalt'' style=''border-style: none;'' />                 </a>                 <p style=''font-family: Courier; margin-top: 0px; margin-left: 10px''>                     Near the highest point reached on asphalt</p>             </td>             <td>                  <a href=''Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0451.jpg''>                 <img id=''MainContent_ExtraContent11_Image4'' src=''Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0451.jpg'' alt=''The weather changes so fast here!!!'' style=''border-style: none;'' />                 </a>                 <p style=''font-family: Courier; margin-top: 0px; margin-left: 10px''>                     The weather changes so fast here!!!</p>             </td>         </tr>         <tr>              <td>                 <a href=''Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0516.jpg''>                 <img id=''MainContent_ExtraContent11_Image5'' src=''Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0516.jpg'' alt=''Dinner before sleeping in the tents'' style=''border-style: none;'' />                 </a>                 <p style=''font-family: Courier; margin-top: 0px; margin-left: 10px''>                     Dinner before sleeping in the tents</p>             </td>             <td>                  <a href=''Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0569.jpg''>                 <img id=''MainContent_ExtraContent11_Image6'' src=''Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0569.jpg'' alt=''A true shepherd'' style=''border-style: none;'' />                 </a>                 <p style=''font-family: Courier; margin-top: 0px; margin-left: 10px''>                     A true shepherd</p>             </td>         </tr>         <tr>              <td>                 <a href=''Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0578.jpg''>                 <img id=''MainContent_ExtraContent11_Image7'' src=''Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0578.jpg'' alt=''Free horses'' style=''border-style: none;'' />                 </a>                 <p style=''font-family: Courier; margin-top: 0px; margin-left: 10px''>                     Free horses</p>             </td>             <td>                  <a href=''Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0602.jpg''>                 <img id=''MainContent_ExtraContent11_Image8'' src=''Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0602.jpg'' alt=''Lunch after competition'' style=''border-style: none;'' />                 </a>                 <p style=''font-family: Courier; margin-top: 0px; margin-left: 10px''>                     Lunch after competition</p>             </td>         </tr>     </table>  </div>')
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009F1900000000 AS DateTime), N'8c564d72-c8b6-4217-ba4f-c2c7e2c17ac5', N'Curmatura-Santa-Paltinis', N'Curmatura - Santa - Paltinis', N'<p>A quite long uphill, not very technical. You''ll enjoy the progressive change of vegetation while going up and up. A mountain creek will accompany you for most of the trail. A great experience out of the crowd!</p>', CAST(0x00009F1900000000 AS DateTime), N'http://www.gpsies.com/mapOnly.do?fileId=cbsqlhrfxrlmjjqb', NULL, N'charts/cb/map/cbsqlhrfxrlmjjqb_map.png', 1, CAST(16.77 AS Decimal(18, 2)), 980, N'Trail', NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009F3800000000 AS DateTime), N'55e0817e-c1eb-4540-b844-d02224e18c37', N'Ocna-Sura_Mica', NULL, NULL, CAST(0x00009F3800000000 AS DateTime), N'http://www.gpsies.com/mapOnly.do?fileId=hoepcxrpfcgedrmz', NULL, N'charts/ho/map/hoepcxrpfcgedrmz_map.png', 0, CAST(15.46 AS Decimal(18, 2)), 202, N'Trail', NULL)
GO
INSERT [deepcavi_fra].[TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_VerticalClimbM], [TRAN_Category], [TRAN_CodeAfterMap]) VALUES (CAST(0x00009F5B00000000 AS DateTime), N'a88f25a2-514a-4f45-9a49-e8c8e525ca6f', N'Tusnad_MTB_Marathon_2011', N'Tusnad MTB Marathon 2011 - Long Trail', N'<p>In my opinion the Baile Tusnad town is the perfect place for relaxing your body and mind. Far from the crowd, situated in a beautiful woody zone, having access to thermal baths and mineral waters. The air is so good! At the same time you can find many mountain trails, both ideal for trekking and mountain biking. One of the best attractions here is the St. Anne Lake, the only crater lake in Romania. The Magyar community is very hospitable and will make your staying a real pleasure. The cuisine is both Romanian and Hungarian (don''t miss the goulash!!!)<br /></p><p>Town''s site: <a href="http://www.tusnadfurdo.ro/en/" onclick="window.open(''http://www.tusnadfurdo.ro/en/'', ''_blank''); return false;">Baile Tusnad</a>, competition''s site: <a href="http://www.aktivity.ro/maraton/" onclick="window.open(''http://www.aktivity.ro/maraton/'', ''_blank''); return false;">Tusnad MTB Marathon</a></p>', CAST(0x00009F5B00000000 AS DateTime), N'http://www.gpsies.com/mapOnly.do?fileId=icpfexijmpzmlgmn', NULL, N'charts/ic/map/icpfexijmpzmlgmn_map.png', 1, CAST(45.04 AS Decimal(18, 2)), 1466, N'Trail', NULL)
GO
SET IDENTITY_INSERT [deepcavi_fra].[TR_ListPic] ON 

GO
INSERT [deepcavi_fra].[TR_ListPic] ([TRLP_ID], [TRLP_Nr], [TRLP_TRAN_Name], [TRLP_PicName1], [TRLP_PicName2], [TRLP_PicName3], [TRLP_PicName4], [TRLP_PicName5], [TRLP_PicName6], [TRLP_PicName7], [TRLP_PicName8], [TRLP_PicName9], [TRLP_PicName10]) VALUES (N'faa4cafa-d47e-461a-a043-53c3e18fda63', 11, N'TransAlpin_Bike_2011', N'1.bmp', N'2.bmp', N'3.bmp', N'4.bmp', N'5.bmp', N'6.bmp', N'7.bmp', N'8.bmp', N'', N'')
GO
INSERT [deepcavi_fra].[TR_ListPic] ([TRLP_ID], [TRLP_Nr], [TRLP_TRAN_Name], [TRLP_PicName1], [TRLP_PicName2], [TRLP_PicName3], [TRLP_PicName4], [TRLP_PicName5], [TRLP_PicName6], [TRLP_PicName7], [TRLP_PicName8], [TRLP_PicName9], [TRLP_PicName10]) VALUES (N'58802312-965f-4080-a00c-68134ea32ce5', 5, N'Paltinis-Curmatura', N'1.bmp', N'2.bmp', N'3.bmp', N'4.bmp', N'', N'', N'', N'', N'', N'')
GO
INSERT [deepcavi_fra].[TR_ListPic] ([TRLP_ID], [TRLP_Nr], [TRLP_TRAN_Name], [TRLP_PicName1], [TRLP_PicName2], [TRLP_PicName3], [TRLP_PicName4], [TRLP_PicName5], [TRLP_PicName6], [TRLP_PicName7], [TRLP_PicName8], [TRLP_PicName9], [TRLP_PicName10]) VALUES (N'b56ba198-fc03-4598-935b-72f0d2742661', 7, N'Predeal_Trophy_2011', N'1.bmp', N'2.bmp', N'3.bmp', N'4.bmp', N'5.bmp', N'6.bmp', N'7.bmp', N'8.bmp', N'', N'')
GO
INSERT [deepcavi_fra].[TR_ListPic] ([TRLP_ID], [TRLP_Nr], [TRLP_TRAN_Name], [TRLP_PicName1], [TRLP_PicName2], [TRLP_PicName3], [TRLP_PicName4], [TRLP_PicName5], [TRLP_PicName6], [TRLP_PicName7], [TRLP_PicName8], [TRLP_PicName9], [TRLP_PicName10]) VALUES (N'fb9001ea-cac8-4a8f-845c-7d2b42143123', 12, N'Tusnad_MTB_Marathon_2011', N'1.bmp', N'2.bmp', N'3.bmp', N'4.bmp', N'5.bmp', N'6.bmp', N'7.bmp', N'8.bmp', N'', N'')
GO
INSERT [deepcavi_fra].[TR_ListPic] ([TRLP_ID], [TRLP_Nr], [TRLP_TRAN_Name], [TRLP_PicName1], [TRLP_PicName2], [TRLP_PicName3], [TRLP_PicName4], [TRLP_PicName5], [TRLP_PicName6], [TRLP_PicName7], [TRLP_PicName8], [TRLP_PicName9], [TRLP_PicName10]) VALUES (N'0737a3a3-c84a-466b-aec0-83523a07776c', 1, N'Curmatura-Rasinari-Sibiu', N'1.bmp', N'2.bmp', N'3.bmp', N'4.bmp', N'5.bmp', N'6.bmp', N'', N'', N'', N'')
GO
INSERT [deepcavi_fra].[TR_ListPic] ([TRLP_ID], [TRLP_Nr], [TRLP_TRAN_Name], [TRLP_PicName1], [TRLP_PicName2], [TRLP_PicName3], [TRLP_PicName4], [TRLP_PicName5], [TRLP_PicName6], [TRLP_PicName7], [TRLP_PicName8], [TRLP_PicName9], [TRLP_PicName10]) VALUES (N'7a87b58a-3559-4cf9-8ef8-92a7d65de06c', 4, N'Lazaret-Cabana_Prejba', N'1.bmp', N'2.bmp', N'3.bmp', N'4.bmp', N'5.bmp', N'6.bmp', N'7.bmp', N'', N'', N'')
GO
INSERT [deepcavi_fra].[TR_ListPic] ([TRLP_ID], [TRLP_Nr], [TRLP_TRAN_Name], [TRLP_PicName1], [TRLP_PicName2], [TRLP_PicName3], [TRLP_PicName4], [TRLP_PicName5], [TRLP_PicName6], [TRLP_PicName7], [TRLP_PicName8], [TRLP_PicName9], [TRLP_PicName10]) VALUES (N'3678d355-b1e4-4f64-834d-a39f4eea1d3c', 9, N'Sub_Arini_Park', N'1.bmp', N'2.bmp', N'3.bmp', N'4.bmp', N'5.bmp', N'6.bmp', N'', N'', N'', N'')
GO
INSERT [deepcavi_fra].[TR_ListPic] ([TRLP_ID], [TRLP_Nr], [TRLP_TRAN_Name], [TRLP_PicName1], [TRLP_PicName2], [TRLP_PicName3], [TRLP_PicName4], [TRLP_PicName5], [TRLP_PicName6], [TRLP_PicName7], [TRLP_PicName8], [TRLP_PicName9], [TRLP_PicName10]) VALUES (N'a8ede44b-1997-46d7-aa1b-beb4f4ad9a41', 6, N'Paltinis-Santa-Curmatura', N'1.bmp', N'2.bmp', N'3.bmp', N'4.bmp', N'', N'', N'', N'', N'', N'')
GO
INSERT [deepcavi_fra].[TR_ListPic] ([TRLP_ID], [TRLP_Nr], [TRLP_TRAN_Name], [TRLP_PicName1], [TRLP_PicName2], [TRLP_PicName3], [TRLP_PicName4], [TRLP_PicName5], [TRLP_PicName6], [TRLP_PicName7], [TRLP_PicName8], [TRLP_PicName9], [TRLP_PicName10]) VALUES (N'af767102-e69e-4ae2-8618-d048c0037b9d', 3, N'Geiger_MTB_Challenge_2011', N'1.bmp', N'2.bmp', N'3.bmp', N'4.bmp', N'5.bmp', N'6.bmp', N'7.bmp', N'8.bmp', N'', N'')
GO
INSERT [deepcavi_fra].[TR_ListPic] ([TRLP_ID], [TRLP_Nr], [TRLP_TRAN_Name], [TRLP_PicName1], [TRLP_PicName2], [TRLP_PicName3], [TRLP_PicName4], [TRLP_PicName5], [TRLP_PicName6], [TRLP_PicName7], [TRLP_PicName8], [TRLP_PicName9], [TRLP_PicName10]) VALUES (N'4bfc79d2-4f36-4b8c-b37f-de0570299ede', 2, N'Curmatura-Santa-Paltinis', N'1.bmp', N'2.bmp', N'3.bmp', N'4.bmp', N'5.bmp', N'6.bmp', N'', N'', N'', N'')
GO
INSERT [deepcavi_fra].[TR_ListPic] ([TRLP_ID], [TRLP_Nr], [TRLP_TRAN_Name], [TRLP_PicName1], [TRLP_PicName2], [TRLP_PicName3], [TRLP_PicName4], [TRLP_PicName5], [TRLP_PicName6], [TRLP_PicName7], [TRLP_PicName8], [TRLP_PicName9], [TRLP_PicName10]) VALUES (N'058ed72c-2882-4239-a327-efaf609261a7', 10, N'Talmacel-Sebesu_de_sus', N'1.bmp', N'2.bmp', N'3.bmp', N'4.bmp', N'', N'', N'', N'', N'', N'')
GO
INSERT [deepcavi_fra].[TR_ListPic] ([TRLP_ID], [TRLP_Nr], [TRLP_TRAN_Name], [TRLP_PicName1], [TRLP_PicName2], [TRLP_PicName3], [TRLP_PicName4], [TRLP_PicName5], [TRLP_PicName6], [TRLP_PicName7], [TRLP_PicName8], [TRLP_PicName9], [TRLP_PicName10]) VALUES (N'87ce5ee1-57ef-4dad-868e-ff21025ba43b', 8, N'Sebesu_de_sus-Talmacel', N'1.bmp', N'2.bmp', N'3.bmp', N'4.bmp', N'', N'', N'', N'', N'', N'')
GO
SET IDENTITY_INSERT [deepcavi_fra].[TR_ListPic] OFF
GO
SET IDENTITY_INSERT [deepcavi_fra].[TR_ListDefault] ON 

GO
INSERT [deepcavi_fra].[TR_ListDefault] ([TRLD_ID], [TRLD_RowID], [TRLD_TRAN_ID]) VALUES (N'7ebf4735-f421-4527-acb7-0b61224d4753', 3, N'2439dbe2-f661-438f-88d5-ba8a00959494')
GO
INSERT [deepcavi_fra].[TR_ListDefault] ([TRLD_ID], [TRLD_RowID], [TRLD_TRAN_ID]) VALUES (N'72115afa-8f00-4000-bb47-14e8925379de', 5, N'94fb8a70-bdb4-487a-bff8-152ffc640d19')
GO
INSERT [deepcavi_fra].[TR_ListDefault] ([TRLD_ID], [TRLD_RowID], [TRLD_TRAN_ID]) VALUES (N'e3571b2c-76a8-48dc-b150-1e9e298c7d71', 8, N'c6c87476-53b5-4092-9e5a-0b71ecbc0fef')
GO
INSERT [deepcavi_fra].[TR_ListDefault] ([TRLD_ID], [TRLD_RowID], [TRLD_TRAN_ID]) VALUES (N'5ec97fbd-fe72-43ba-a870-2449500da7e5', 6, N'b9ebe203-3a55-4f38-a9f8-18165de733be')
GO
INSERT [deepcavi_fra].[TR_ListDefault] ([TRLD_ID], [TRLD_RowID], [TRLD_TRAN_ID]) VALUES (N'949a273d-814a-4575-a9d3-64817805bcc1', 2, N'5848ad25-2664-465d-a658-081d262fe99a')
GO
INSERT [deepcavi_fra].[TR_ListDefault] ([TRLD_ID], [TRLD_RowID], [TRLD_TRAN_ID]) VALUES (N'b390d3d4-eb6f-4fec-af00-787a97cc7fd7', 7, N'8c564d72-c8b6-4217-ba4f-c2c7e2c17ac5')
GO
INSERT [deepcavi_fra].[TR_ListDefault] ([TRLD_ID], [TRLD_RowID], [TRLD_TRAN_ID]) VALUES (N'244e7066-2214-4638-9dfc-828b3515ed6f', 4, N'c491cfb0-6a21-42f4-ae41-7a35af310dd1')
GO
INSERT [deepcavi_fra].[TR_ListDefault] ([TRLD_ID], [TRLD_RowID], [TRLD_TRAN_ID]) VALUES (N'01f4869f-0445-4ee7-90a4-eec5286a07d3', 1, N'2fabb6a4-185f-4d64-bdea-842f816ad497')
GO
SET IDENTITY_INSERT [deepcavi_fra].[TR_ListDefault] OFF
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (1)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (2)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (3)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (4)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (5)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (6)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (7)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (8)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (9)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (10)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (1)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (2)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (3)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (4)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (5)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (6)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (7)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (8)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (9)
GO
INSERT [deepcavi_fra].[From1to10] ([n]) VALUES (10)
GO
INSERT [deepcavi_fra].[DF_Page] ([DFPG_ID], [DFPG_TRAN_ID], [DFPG_cellContent]) VALUES (N'e014f321-8beb-4b6f-8ced-6a5257d7a4a2', N'5848ad25-2664-465d-a658-081d262fe99a', N'<%''=<table>	<tr align="left"><td align="left"><div onmouseover="toggleVisibility1(''slideShow1'');"><div id="pic1" class="content1"><img name="imgPic1" id="imgPic1" alt="" src="<% =pStrPicName1 %>" width="200" height="112" /></div></div><div onmouseout="toggleVisibility1(''pic1'');"><div id="slideShow1" class="content1"><asp:ImageButton ID="Image1" runat="server" OnClick="Image1_Click" /> <asp:SlideShowExtender ID="SlideShowExtender1" runat="server" TargetControlID="Image1" SlideShowServiceMethod="GetSlides1" AutoPlay="true" ImageTitleLabelID="imageTitle" ImageDescriptionLabelID="imageDescription" Loop="true" PlayInterval="900" UseContextKey="false" /></div></div</td><td><asp:Panel ID="Panel1" runat="server"><ul style="list-style: none; padding-left: 0;"><li><table border="0" cellpadding="0" cellspacing="0" style="position: absolute"><tr><tr></table></li><li><div class="yoxview"><a href="<% =pStrSrcBikemap1 %>"><img name="Elevation1" id="Img1" alt="" src="<% =pStrSrcBikemap1 %>" width="400" height="112" style="border-style:none;"/></a></div></li></ul></asp:Panel></td></tr></table>''%>')
GO
INSERT [deepcavi_fra].[CO_An] ([COAN_ID], [COAN_TEXT], [COAN_TRAN_ID], [COAN_UserId], [COAN_ID_FROM], [COAN_GetDate], [COAN_Level]) VALUES (N'0ff1e6a6-430a-e111-a194-003048c2ac19', N'Like this. It`s really working.<br>', N'8c564d72-c8b6-4217-ba4f-c2c7e2c17ac5', N'71ffa7d1-b0b7-4b15-8376-77d89f658921', N'00000000-0000-0000-0000-000000000000', CAST(0x00009F9500E59003 AS DateTime), 0)
GO
INSERT [deepcavi_fra].[CO_An] ([COAN_ID], [COAN_TEXT], [COAN_TRAN_ID], [COAN_UserId], [COAN_ID_FROM], [COAN_GetDate], [COAN_Level]) VALUES (N'd24a13a3-6e0d-e111-a194-003048c2ac19', N'This is the trail I''ve liked most in summer 2011', N'2fabb6a4-185f-4d64-bdea-842f816ad497', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', N'00000000-0000-0000-0000-000000000000', CAST(0x00009F9900F1FE28 AS DateTime), 0)
GO
INSERT [deepcavi_fra].[CO_An] ([COAN_ID], [COAN_TEXT], [COAN_TRAN_ID], [COAN_UserId], [COAN_ID_FROM], [COAN_GetDate], [COAN_Level]) VALUES (N'bc68aa9e-fb0d-e111-a194-003048c2ac19', N'It''s a very nice panorama and I think that next time I come in Romania I''ll do it.', N'2fabb6a4-185f-4d64-bdea-842f816ad497', N'51fd3bc0-879f-4bf6-be92-f5199166721e', N'00000000-0000-0000-0000-000000000000', CAST(0x00009F9A007BAB1B AS DateTime), 0)
GO
INSERT [deepcavi_fra].[CO_An] ([COAN_ID], [COAN_TEXT], [COAN_TRAN_ID], [COAN_UserId], [COAN_ID_FROM], [COAN_GetDate], [COAN_Level]) VALUES (N'560c1e82-160e-e111-a194-003048c2ac19', N'<b><FONT color="#ff0066">Great places and good video!!</FONT></b>', N'2fabb6a4-185f-4d64-bdea-842f816ad497', N'7782edf3-b0de-4aa9-87ee-4e882605f750', N'00000000-0000-0000-0000-000000000000', CAST(0x00009F9A00B08887 AS DateTime), 0)
GO
INSERT [deepcavi_fra].[CO_An] ([COAN_ID], [COAN_TEXT], [COAN_TRAN_ID], [COAN_UserId], [COAN_ID_FROM], [COAN_GetDate], [COAN_Level]) VALUES (N'a81bb70d-180e-e111-a194-003048c2ac19', N'amazing!!!', N'a88f25a2-514a-4f45-9a49-e8c8e525ca6f', N'7782edf3-b0de-4aa9-87ee-4e882605f750', N'00000000-0000-0000-0000-000000000000', CAST(0x00009F9A00B3924D AS DateTime), 0)
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'd78eb5ca-91f1-486b-9021-00a5bf620cf7', N'Papua New Guinea', N'Independent State of Papua New Guinea', N'PP', N'Port Moresby')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'6a75b2f5-9fc2-43e5-95b5-0248b1b9d76b', N'United Kingdom', N'United Kingdom of Great Britain and Northern Ireland', N'UK', N'London')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'c82e3a8e-68b0-4989-affb-0254f639b5cf', N'Congo (Republic of)', N'Republic of the Congo', N'CF', N'Brazzaville')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'ae41e6e4-0264-4125-ace0-030281f31ed8', N'Hungary', N'Republic of Hungary', N'HU', N'Budapest')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'e60b237c-4eb7-4ad5-bc85-040226d9ef7e', N'Ukraine', N'(no long-form name)', N'UP', N'Kyiv')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'564afd00-985f-46cc-83ec-0709058ed98c', N'Iraq', N'Republic of Iraq', N'IZ', N'Baghdad')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'579b09aa-ed34-47a9-873c-0b821c9cc511', N'Samoa', N'Independent State of Samoa', N'WS', N'Apia')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'a449afad-e4fa-42da-8504-0bf5fceb6139', N'Israel', N'State of Israel', N'IS', N'Jerusalem')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'6e05c094-573d-4277-a4be-0d01c308defd', N'Uganda', N'Republic of Uganda', N'UG', N'Kampala')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'6391a30b-e1c1-423b-92b3-0e86041d6732', N'Jordan', N'Hashemite Kingdom of Jordan', N'JO', N'Amman')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'8961dd27-649e-4f47-87a6-0ed92361dc12', N'Uzbekistan', N'Republic of Uzbekistan', N'UZ', N'Tashkent')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'b3e009e0-10cf-496f-bdec-10220422c2f5', N'Taiwan', N'(no long-form name)', N'TW', N'Taipei')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'da9f7b45-4a33-4783-bff0-11c35cd36c11', N'Niger', N'Republic of Niger', N'NG', N'Niamey')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'47ef581d-5410-4832-ac74-1234f04eade2', N'Luxembourg', N'Grand Duchy of Luxembourg', N'LU', N'Luxembourg')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7af256df-9797-419b-b73b-12ad7e011c4a', N'Romania', N'(no long-form name)', N'RO', N'Bucharest')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'f241071f-85f9-4484-b457-137c9237c91b', N'Malaysia', N'(no long-form name)', N'MY', N'Kuala Lumpur')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'f7848b3b-4da0-49c9-8da6-1551aaee4f8d', N'Spain', N'Kingdom of Spain', N'SP', N'Madrid')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'c2ec8034-0b61-46d8-9e86-15dbe57b8f48', N'Nicaragua', N'Republic of Nicaragua', N'NU', N'Managua')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'16531086-52e3-4f73-b307-15dd56829efc', N'Finland', N'Republic of Finland', N'FI', N'Helsinki')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'f00abc7b-ebfb-423a-9d0a-1662e6ba9ad5', N'Kazakhstan', N'Republic of Kazakhstan', N'KZ', N'Astana')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'31f0d396-b027-4f8f-a57a-178c8057ae72', N'Switzerland', N'Swiss Confederation', N'SZ', N'Bern')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'84fa5316-ba3f-450e-9603-1b730265ff05', N'Armenia', N'Republic of Armenia', N'AM', N'Yerevan')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'18b233ee-b46d-4a17-bb4d-1baadb400496', N'Sudan', N'Republic of the Sudan', N'SU', N'Khartoum')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'e731cc19-ece0-4078-b1c1-1e0f2aa9c42c', N'Montenegro', N'Montenegro', N'MJ', N'Podgorica')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'c525f14e-a1c6-44f6-ad0d-1e6c16e9e9b4', N'Costa Rica', N'Republic of Costa Rica', N'CS', N'San José')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'e54acc1a-f30f-44af-a908-21d83461c7ca', N'Ecuador', N'Republic of Ecuador', N'EC', N'Quito')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'b31eaaa2-e90c-4840-ae37-2453ae935d90', N'Azerbaijan', N'Republic of Azerbaijan', N'AJ', N'Baku')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'ffb70560-55b1-4709-b660-24b3263238ce', N'Nepal', N'Federal Democratic Republic of Nepal', N'NP', N'Kathmandu')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'b03f83bc-38ad-4d58-bee5-24d4c700b74c', N'Pakistan', N'Islamic Republic of Pakistan', N'PK', N'Islamabad')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'286dc4d4-afe7-46e3-9022-254b001bdc69', N'Barbados', N'(no long-form name)', N'BB', N'Bridgetown')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'277fcab4-f73c-44e9-97df-256e989bde4f', N'Mali', N'Republic of Mali', N'ML', N'Bamako')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'5c9d040c-f02a-46f8-816f-2730a7d09e12', N'Panama', N'Republic of Panama', N'PM', N'Panama')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'544ff5e5-ff80-40a2-a2cb-276398304111', N'Monaco', N'Principality of Monaco', N'MN', N'Monaco')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'596f2b84-d05e-4109-913b-2903ae42e1b1', N'Kyrgyzstan', N'Kyrgyz Republic', N'KG', N'Bishkek')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'afe01626-8a34-493b-bfa3-2a57adf3b250', N'Holy See', N'Holy See', N'VT', N'Vatican City')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'58f4977b-8f6c-48d0-b368-2b2df195804f', N'Bulgaria', N'Republic of Bulgaria', N'BU', N'Sofia')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'f3b577d5-265f-4676-9865-2e702dd47617', N'Guyana', N'Republic of Guyana', N'GY', N'Georgetown')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'1793287c-bf1b-4906-8ae9-337da550174a', N'Palau', N'Republic of Palau', N'PS', N'Melekeok')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'444c4228-2e54-4e70-801f-340523f57190', N'Barbuda', N'(no long-form name)', N'AC', N'Saint John''s')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'e30b7cba-d5c4-4a8e-b4ba-341366c7ec04', N'United States', N'United States of America', N'US', N'Washington, DC')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'266a7a49-73d7-4343-803e-357c795cb5d2', N'Moldova', N'Republic of Moldova', N'MD', N'Chisinau')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'160b7e19-bd83-4b18-bed5-35a26973432e', N'Gabon', N'Gabonese Republic', N'GB', N'Libreville')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'0600c394-0840-4bb3-9c5a-38512667c992', N'Latvia', N'Republic of Latvia', N'LG', N'Riga')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'f411229f-4940-477f-90ff-39f123fb4e66', N'Liechtenstein', N'Principality of Liechtenstein', N'LS', N'Vaduz')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'b55545e2-fe81-435f-bdd8-3a1642e074a1', N'Bahrain', N'Kingdom of Bahrain', N'BA', N'Manama')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'475d6006-3eb0-4ab3-b1cc-3bc122bf3c6d', N'Austria', N'Republic of Austria', N'AU', N'Vienna')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'54b04792-c4e5-4ebe-bbee-3cf200193116', N'Tunisia', N'Tunisian Republic', N'TS', N'Tunis')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'9746d7b4-b537-4909-8bfb-3d9ff5952113', N'Burundi', N'Republic of Burundi', N'BY', N'Bujumbura')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'545895d6-8325-44f1-a320-3e00dc3acdeb', N'Malta', N'Republic of Malta', N'MT', N'Valletta')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'bc91561f-6f47-4f0e-acb8-3f6ed3a744eb', N'Malawi', N'Republic of Malawi', N'MI', N'Lilongwe')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'a6aa77d1-6788-479f-ac35-41152ed4d2a6', N'Tajikistan', N'Republic of Tajikistan', N'TI', N'Dushanbe')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'0798962a-964f-4323-8d9e-43b16ab6b4b4', N'Gambia, The', N'Republic of The Gambia', N'GA', N'Banjul')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'3ae86922-7bd3-430a-be68-4450da59fc65', N'Croatia', N'Republic of Croatia', N'HR', N'Zagreb')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'83523eb1-9e3e-43d5-9874-447b90ae2323', N'Mongolia', N'(no long-form name)', N'MG', N'Ulaanbaatar')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'fb9a6bb3-feeb-4094-9bf7-47434cee4ff8', N'Venezuela', N'Bolivarian Republic of Venezuela', N'VE', N'Caracas')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'f5a0c9af-82ae-49cf-81ba-4aa76bf78f00', N'Estonia', N'Republic of Estonia', N'EN', N'Tallinn')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'177fd92f-2794-4d79-96d2-4b5bc42776b3', N'Italy', N'Italian Republic', N'IT', N'Rome')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'ee37e9e0-c8fb-4024-97d1-4ce1ea174aa0', N'Sierra Leone', N'Republic of Sierra Leone', N'SL', N'Freetown')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'15296c45-509c-4ca3-a2ac-4d71340a4d21', N'Macedonia', N'Republic of Macedonia', N'MK', N'Skopje')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'0729f3bc-e932-4ac8-9d43-4ee50a15f51f', N'Belarus', N'Republic of Belarus', N'BO', N'Minsk')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'a5f21204-7ed5-42fc-acc0-4f2b81e44c04', N'Grenada', N'(no long-form name)', N'GJ', N'Saint George''s')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'155d1d00-3f4e-4d11-bdda-4f4ee9e18a78', N'Uruguay', N'Oriental Republic of Uruguay', N'UY', N'Montevideo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'6902b0d6-af21-4f1f-b654-5054b3c1a330', N'Honduras', N'Republic of Honduras', N'HO', N'Tegucigalpa')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'5681cd4e-9aff-4a6d-9bd8-505bdfe70913', N'Lebanon', N'Lebanese Republic', N'LE', N'Beirut')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'1641a287-5648-4b3e-beb4-548da50bad53', N'India', N'Republic of India', N'IN', N'New Delhi')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'951866eb-66b6-4dcd-9cd1-55da5defb898', N'Netherlands', N'Kingdom of the Netherlands', N'NL', N'Amsterdam')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'fbc6962e-36d7-49d6-85c9-5a5ddacdfcc8', N'Kuwait', N'State of Kuwait', N'KU', N'Kuwait')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'4d49ea6b-5b5d-44d3-8ef2-5d91d45167a9', N'Lithuania', N'Republic of Lithuania', N'LH', N'Vilnius')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'd6caa2f2-2a79-4bd8-bc42-63590ed49d29', N'Chile', N'Republic of Chile', N'CI', N'Santiago')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'ed8bbda1-4f08-4903-8c3d-642dcbf33432', N'Bangladesh', N'People''s Republic of Bangladesh', N'BG', N'Dhaka')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'826c992f-f688-47f5-8cd8-64782f6ae97a', N'Nauru', N'Republic of Nauru', N'NR', N'Yaren District')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'f9e5f49a-1d92-40c0-91d8-649a52d7766f', N'Peru', N'Republic of Peru', N'PE', N'Lima')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'9e97339f-8d86-4721-8543-6588af514f1b', N'Japan', N'(no long-form name)', N'JA', N'Tokyo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7e1c4167-833a-4963-981b-66bb4aeacde9', N'United Arab Emirates', N'United Arab Emirates', N'AE', N'Abu Dhabi')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'dafaaea8-00a0-4b0b-99e9-678eaeb6282b', N'Comoros', N'Union of the Comoros', N'CN', N'Moroni')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'1e2731b0-66fc-4033-b35e-67a47dac3498', N'Eritrea', N'State of Eritrea', N'ER', N'Asmara')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'74c819b8-5f5b-4e9e-81c3-6822cf9ba43b', N'Djibouti', N'Republic of Djibouti', N'DJ', N'Djibouti')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'440c7e3b-0be0-46bb-b111-6836eb8fdab7', N'Paraguay', N'Republic of Paraguay', N'PA', N'Asunción')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'93ead405-1bda-4aac-9a60-68627285eaa6', N'Argentina', N'Argentine Republic', N'AR', N'Buenos Aires')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'f3e0130a-f5d7-4e5a-86aa-6b3ad81c4a1e', N'Ethiopia', N'Federal Democratic Republic of Ethiopia', N'ET', N'Addis Ababa')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'4e82d1d6-02f4-48a3-9e09-6c8b59fb0d4c', N'Côte d''Ivoire', N'Republic of Côte d''Ivoire', N'IV', N'Yamoussoukro')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'6d51a82a-a990-49d2-80b9-6e2301ab257f', N'Cuba', N'Republic of Cuba', N'CU', N'Havana')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'091dc1c1-1c39-480f-83ae-71990c40743b', N'Central African Republic', N'Central African Republic', N'CT', N'Bangui')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'23892b4c-6653-42fd-afdb-724ec3491140', N'San Marino', N'Republic of San Marino', N'SM', N'San Marino')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'394a3a76-fe40-4126-9e09-73be83ea9e5c', N'Egypt', N'Arab Republic of Egypt', N'EG', N'Cairo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'5b2197bc-ed46-4e1f-a1fd-740cfca07df1', N'Namibia', N'Republic of Namibia', N'WA', N'Windhoek')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'f7d56863-559a-4cbe-a555-759fa2d93127', N'Qatar', N'State of Qatar', N'QA', N'Doha')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'15fa50cc-bd7d-4aa7-9f3d-760b98715576', N'Philippines', N'Republic of the Philippines', N'RP', N'Manila')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'6e61c20c-9fda-4dc0-992c-76209c51021b', N'Tonga', N'Kingdom of Tonga', N'TN', N'Nuku''alofa')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'5765bc2d-bedb-4a82-ae16-78f1f1b1a797', N'Libya', N'Great Socialist People''s Libyan Arab Jamahiriya', N'LY', N'Tripoli')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'209ff1a1-b2af-42df-a0f0-79c69c453839', N'Zambia', N'Republic of Zambia', N'ZA', N'Lusaka')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'fb63cc1c-f7dc-4c0c-ab00-7a79242e9321', N'Brunei', N'Brunei Darussalam', N'BX', N'Bandar Seri Begawan')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'91b0dae0-2a15-4514-b32e-7b92fc866d92', N'New Zealand', N'(no long-form name)', N'NZ', N'Wellington')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'c846816d-0fa3-4fec-aa98-7c3166bb075e', N'Mozambique', N'Republic of Mozambique', N'MZ', N'Maputo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'65f6520f-de88-43b6-a4c0-7d80503f9b01', N'Solomon Islands', N'(no long-form name)', N'BP', N'Honiara')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'f29fd2d2-e662-4493-b82d-7dabc3cee35e', N'Vietnam', N'Socialist Republic of Vietnam', N'VM', N'Hanoi')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'ebb74873-fa2c-4b51-a82a-7f8c60c71e30', N'Angola', N'Republic of Angola', N'AO', N'Luanda')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'2e9fd5a5-1f65-4891-a966-8104f2dafb76', N'Australia', N'Commonwealth of Australia', N'AS', N'Canberra')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'5404e0b2-9f73-4389-a199-812e8ceb50e8', N'Maldives', N'Republic of Maldives', N'MV', N'Male')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'f113f65c-7e42-4fea-8762-8142aaf50c47', N'Cameroon', N'Republic of Cameroon', N'CM', N'Yaoundé')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'2140419f-0871-41c5-867d-839eb5fa8e7f', N'Trinidad and Tobago', N'Republic of Trinidad and Tobago', N'TD', N'Port-of-Spain')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'ad81c9a0-ff9a-4267-9dee-8489a8b57619', N'Greece', N'Hellenic Republic', N'GR', N'Athens')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'edadf355-f735-4e54-8b64-8598d1d8b74f', N'Tanzania', N'United Republic of Tanzania', N'TZ', N'Dar es Salaam')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'007c7379-9fdb-4115-a5e6-8651a461eb79', N'Turkey', N'Republic of Turkey', N'TU', N'Ankara')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'8322bbb4-e52f-42f9-9165-87897dc2402f', N'Zimbabwe', N'Republic of Zimbabwe', N'ZI', N'Harare')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'21fd3e27-6895-424c-8ab2-88425e9838a8', N'Algeria', N'People''s Democratic Republic of Algeria', N'AG', N'Algiers')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'60a31e86-6c67-4aaf-adf1-8951dc871a21', N'Germany', N'Federal Republic of Germany', N'GM', N'Berlin')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'3b1c7b8c-2bfe-42b4-9cc4-8b2866cfc796', N'Thailand', N'Kingdom of Thailand', N'TH', N'Bangkok')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'54a3217b-ad74-470f-b25d-8f9f45ce4b46', N'Togo', N'Togolese Republic', N'TO', N'Lomé')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'1a304341-f6fc-4bd4-9a76-9048e3b1b680', N'Slovakia', N'Slovak Republic', N'LO', N'Bratislava')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'08cb995f-4209-4248-8c4f-92ab46113072', N'Singapore', N'Republic of Singapore', N'SN', N'Singapore')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'c86ae396-9b49-4f1b-b329-9313e65116c0', N'Nigeria', N'Federal Republic of Nigeria', N'NI', N'Abuja')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'61522a34-18f1-4219-8594-943bb91f0643', N'Korea, North', N'Democratic People''s Republic of Korea', N'KN', N'Pyongyang')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'e1dff0de-fad2-4e03-aa59-94ae3a4b7e33', N'Indonesia', N'Republic of Indonesia', N'ID', N'Jakarta')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'07222533-0924-4cdd-aab3-96fc53ffbc41', N'Benin', N'Republic of Benin', N'BN', N'Porto-Novo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'a845131f-3a29-449f-91cd-97d3b2526d8b', N'Haiti', N'Republic of Haiti', N'HA', N'Port-au-Prince')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'fc49dee2-f381-49b9-b9cd-9ea2af0f7283', N'Belize', N'(no long-form name)', N'BH', N'Belmopan')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'337b502d-127b-416e-b0e2-9f591b6ba6dd', N'Czech Republic', N'Czech Republic', N'EZ', N'Prague')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'5a147c12-7272-40b3-a774-9f6b0bf6cc6a', N'Kosovo *', N'Republic of Kosovo', N'KV', N'Pristina')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'0a54adc7-d836-4d1a-b290-a081f04e9674', N'Kenya', N'Republic of Kenya', N'KE', N'Nairobi')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'1a4d4e87-091c-4387-8f35-a08daac3a061', N'Burkina Faso', N'Burkina Faso', N'UV', N'Ouagadougou')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'ad6f52d1-ab8b-47f1-b737-a13e6f79791e', N'Turkmenistan', N'(no long-form name)', N'TX', N'Ashgabat')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'1eb9f727-425c-4516-8f30-a364955b8b4f', N'Albania', N'Republic of Albania', N'AL', N'Tirana')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'8e2af5fc-08b6-4e2f-ba22-a387b3d443f6', N'Iran', N'Islamic Republic of Iran', N'IR', N'Tehran')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'31ea59cd-89f2-48de-8192-a3b23627b101', N'Iceland', N'Republic of Iceland', N'IC', N'Reykjavík')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'8a0f0d7d-7cce-46c8-a7b0-a546317f282e', N'Congo (Kinshasa)', N'Democratic Republic of the Congo', N'CG', N'Kinshasa')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'24318ede-f23c-4314-aba2-a577261118bb', N'Equatorial Guinea', N'Republic of Equatorial Guinea', N'EK', N'Malabo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'e563b73b-ae08-4477-b032-a7ea90d70d1a', N'Poland', N'Republic of Poland', N'PL', N'Warsaw')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'be9617cd-ad0f-484c-88b4-a9a3c44c7aba', N'Chad', N'Republic of Chad', N'CD', N'N''Djamena')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'42b0ec2d-c047-45f8-99ce-aaae4406990b', N'Georgia', N'Georgia', N'GG', N'Tbilisi')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'263923f9-ea44-461f-8960-aaf324ef1cef', N'Mexico', N'United Mexican States', N'MX', N'Mexico')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'0a3af115-fbf2-4230-af1d-ad1d19287bfa', N'Oman', N'Sultanate of Oman', N'MU', N'Muscat')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7a3277f2-756c-4558-aab3-b008a7ab4883', N'Denmark', N'Kingdom of Denmark', N'DA', N'Copenhagen')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'224f36d4-e847-4b5b-bb9f-b2f8114dbff0', N'Burma', N'Union of Burma', N'BM', N'Rangoon Nay Pyi Taw (administrative)')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'62f2d523-0fda-4dae-93c2-b35755ee6a4e', N'Saudi Arabia', N'Kingdom of Saudi Arabia', N'SA', N'Riyadh')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'747b9ebb-cd93-4453-af6f-b3b9e948d3bb', N'Madagascar', N'Republic of Madagascar', N'MA', N'Antananarivo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'bf85e374-14ab-447a-b012-b4c118426a73', N'Saint Kitts and Nevis', N'Federation of Saint, Kitts and Nevis', N'SC', N'Basseterre')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'6265c28b-6249-4c04-9120-b7e56bbea6ed', N'Cape Verde', N'Republic of Cape Verde', N'CV', N'Praia')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'12efc6ec-f558-4fa4-b68c-b8021bc0c54b', N'Bosnia', N'(no long-form name)', N'BK', N'Sarajevo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'93e432a0-e174-4b05-90cc-b96ef712a74c', N'Syria', N'Syrian Arab Republic', N'SY', N'Damascus')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'e6ce405a-e8bf-4c09-8a33-bbca32a14350', N'Korea, South', N'Republic of Korea', N'KS', N'Seoul')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'5a67f565-39b6-4da5-b5f6-bde8d3f6c0cc', N'Guinea-Bissau', N'Republic of Guinea-Bissau', N'PU', N'Bissau')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'0b8698ea-e9fa-4b80-841d-be00d086d50c', N'Brazil', N'Federative Republic of Brazil', N'BR', N'Brasília')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'd671ef2b-7477-447e-b477-be8f9a472866', N'Suriname', N'Republic of Suriname', N'NS', N'Paramaribo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'43d3a7b5-c432-45de-a7ac-c383a71f7499', N'Somalia', N'(no long-form name)', N'SO', N'Mogadishu')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'8b640a3a-1138-4f7a-a4a2-c3dc05997355', N'Guatemala', N'Republic of Guatemala', N'GT', N'Guatemala')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'bce7ea95-7cd2-4b21-a045-c3f1bef123ea', N'Swaziland', N'Kingdom of Swaziland', N'WZ', N'Mbabane (administrative)')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'6b57afb4-d9f8-4725-8155-c4382100f124', N'Slovenia', N'Republic of Slovenia', N'SI', N'Ljubljana')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'61a6ed78-1b79-4198-b5e5-c49e87b50f0d', N'Afghanistan', N'Islamic Republic of Afghanistan', N'AF', N'Kabul')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'31a41b96-4f78-49e0-8b70-c6857d4af470', N'Fiji', N'! Republic of Fiji', N'FJ', N'Suva')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'fe2066e2-3429-4261-9dcf-c8907c96ce70', N'Sri Lanka', N'Democratic Socialist Republic of Sri Lanka', N'CE', N'Colombo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7d65acf0-190b-404a-82a1-c9b45c82c6d7', N'Canada', N'(no long-form name)', N'CA', N'Ottawa')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'3fb8ca18-b086-496c-b986-cb691b08098c', N'El Salvador', N'Republic of El Salvador', N'ES', N'San Salvador')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'ef3d60c3-fbf5-4a25-ac47-d00802381481', N'Russia', N'Russian Federation', N'RS', N'Moscow')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'2375a639-da74-4a65-bcce-d12932a2b595', N'China', N'People''s Republic of China', N'CH', N'Beijing')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'5f98d955-5552-4db6-b218-d3443f249258', N'Liberia', N'Republic of Liberia', N'LI', N'Monrovia')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'ccd50fb6-8077-4443-884d-d34dcc504a2d', N'Bhutan', N'Kingdom of Bhutan', N'BT', N'Thimphu')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'c3c85383-d0d3-4023-801e-d3a12685e423', N'Portugal', N'Portuguese Republic', N'PO', N'Lisbon')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7723b12a-3afd-4747-aa08-d64c9e060af9', N'Mauritius', N'Republic of Mauritius', N'MP', N'Port Louis')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'391ada22-2af5-415e-9b6e-d6cbb0c31b35', N'Bahamas', N'Commonwealth', N'BF', N'Nassau')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'a8f3def3-46d2-4cee-b9fb-d73f8233d8a8', N'Ghana', N'Republic of Ghana', N'GH', N'Accra')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'854f487d-62c8-4db1-b0fd-d78e8be57d12', N'Kiribati', N'Republic of Kiribati', N'KR', N'Tarawa')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'f220938c-5a8f-48b3-a152-d844e73f33ee', N'Senegal', N'Republic of Senegal', N'SG', N'Dakar')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'35c50985-5ac1-420b-b84a-da07c5ebf270', N'Marshall Islands', N'Republic of the Marshall Islands', N'RM', N'Majuro')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'4fbeda83-841b-4841-94b7-db7f97a496ef', N'Timor-Leste', N'Democratic Republic of Timor-Leste', N'TT', N'Dili')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'9bf514a3-878a-4423-bd16-dc2effc1d1ce', N'Bolivia', N'Plurinational State of Bolivia', N'BL', N'La Paz (administrative) Sucre (legislative/judiciary)')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'15ccd057-94ef-4225-8f51-dcf8db090e7f', N'Cambodia', N'Kingdom of Cambodia', N'CB', N'Phnom Penh')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'9d0b1f27-cb29-46ab-bc0a-e251623afff9', N'Saint Vincent and the Grenadines', N'(no long-form name)', N'VC', N'Kingstown')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'60aac5b3-74a2-4c49-a1d1-e3b31ae1c7aa', N'Herzegovina', N'(no long-form name)', N'BK', N'Sarajevo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'2fc448a5-e217-4f8a-990b-e478351b3103', N'Lesotho', N'Kingdom of Lesotho', N'LT', N'Maseru')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'b5b6bbe5-5b9f-4539-9ac6-e5594c4920dc', N'South Africa', N'Republic of South Africa', N'SF', N'Pretoria (administrative)')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'422861d8-2434-436b-8c2b-e5a7f39c6073', N'Norway', N'Kingdom of Norway', N'NO', N'Oslo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'ad400898-8b7d-45d1-bfa0-e5c1f2392ef5', N'Seychelles', N'Republic of Seychelles', N'SE', N'Victoria')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'a14920fa-21ed-42f7-af9f-e72dcaa005e9', N'France', N'French Republic', N'FR', N'Paris')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'b4faa0b3-4b51-4da6-b63d-e730d3c7389a', N'Rwanda', N'Republic of Rwanda', N'RW', N'Kigali')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7a6e23f5-3bf2-454f-ae40-e9eebba757ba', N'Botswana', N'Republic of Botswana', N'BC', N'Gaborone')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'84dfc886-f250-4578-8486-eab193545ea0', N'Saint Lucia', N'(no long-form name)', N'ST', N'Castries')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'eca0289e-0f21-418b-bfd3-eb9b72623092', N'Andorra', N'Principality of Andorra', N'AN', N'Andorra la Vella')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'8f181131-5d9f-4a8b-8729-ebaf0f3b2fea', N'Tuvalu', N'(no long-form name)', N'TV', N'Funafuti')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'4c9e4422-2ae2-41a3-8c57-ed0399553ab9', N'Sweden', N'Kingdom of Sweden', N'SW', N'Stockholm')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'dc674d80-45af-4172-a39d-ef38b316d72e', N'Colombia', N'Republic of Colombia', N'CO', N'Bogotá')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'3f8d0dc9-54fe-487f-9165-f064448245d6', N'Serbia', N'Republic of Serbia', N'RI', N'Belgrade')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'b1e7589d-f6e2-40a4-9db0-f23cb5462da6', N'Morocco', N'Kingdom of Morocco', N'MO', N'Rabat')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'de757c2d-cb14-4a46-9311-f2ac4a41a9f8', N'Vanuatu', N'Republic of Vanuatu', N'NH', N'Port-Vila')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'46262455-7e12-4858-bb60-f2ad3b0d1f7c', N'Ireland', N'(no long-form name)', N'EI', N'Dublin')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'09fa8aab-6ed6-49d9-b5d7-f4103328ab63', N'Mauritania', N'Islamic Republic of Mauritania', N'MR', N'Nouakchott')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'96c11660-ccf5-486d-8772-f49c8452477d', N'Sao Tome and Principe', N'Democratic Republic of Sao Tome and Principe', N'TP', N'São Tomé')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'561d5d0a-0eaa-47b1-bc77-f78bfa6f33a3', N'Jamaica', N'(no long-form name)', N'JM', N'Kingston')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'd587b21c-bb81-44a2-a75e-f82fecb43044', N'Laos', N'Lao People''s Democratic Republic', N'LA', N'Vientiane')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'd4d80c6e-d151-46d5-a2e7-f889a764539e', N'Dominican Republic', N'Dominican Republic', N'DR', N'Santo Domingo')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'5442c0e2-ed4b-4ec9-9ed1-fc5056c3bb0a', N'Antigua', N'(no long-form name)', N'AC', N'Saint John''s')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'e50961b6-d4a7-402b-a60c-fcb8bf2b0123', N'Guinea', N'Republic of Guinea', N'GV', N'Conakry')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'0896fcb4-3c01-4cb5-905b-fcea7dc9205b', N'Micronesia', N'Federated States', N'FM', N'Palikir')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'd80e99b8-5074-4ce2-a5aa-fe1725abee66', N'Cyprus', N'Republic of Cyprus', N'CY', N'Nicosia')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'2e7092da-8a01-4cf1-98f1-fe3894d4c18d', N'Belgium', N'Kingdom of Belgium', N'BE', N'Brussels')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'9fd988e3-f2e8-4261-a249-fe4ad04e7359', N'Yemen', N'Republic of Yemen', N'YM', N'Sanaa')
GO
INSERT [deepcavi_fra].[MB_Countries] ([ApplicationId], [MBCO_ID], [MBCO_ShortName], [MBCO_LongName], [MBCO_FipsCode], [MBCO_Capital]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'4033f672-6075-44b4-924c-ffaacb8813cc', N'Dominica', N'Commonwealth of Dominica', N'DO', N'Roseau')
GO
INSERT [deepcavi_fra].[LU_Anag] ([LUAN_ID], [LUAN_Title], [LUAN_Text], [LUAN_ImplemDate], [LUAN_GetDate]) VALUES (N'7dcae6a5-13ce-e011-9f4b-000c2983b46e', N'<a href="VideoPages/TransAlpin_Bike_2011.aspx" title="Transalpin Bike">New page added: Transalpin Bike MTB Marathon 2011</a>', N'First edition of the highest MTB marathon of Romania. Start at 1600m altitude, crossing the TransAlpina road.', CAST(0x00009F3F00000000 AS DateTime), CAST(0x00009F3F00000000 AS DateTime))
GO
INSERT [deepcavi_fra].[LU_Anag] ([LUAN_ID], [LUAN_Title], [LUAN_Text], [LUAN_ImplemDate], [LUAN_GetDate]) VALUES (N'f45d6e04-14ce-e011-9f4b-000c2983b46e', N'<a href="VideoPages/Geiger_MTB_Challenge_2011.aspx" title="Geiger MTB Challenge 2011">New page added: Geiger MTB Challenge 2011</a>', N'The hardest and most important MTB marathon of Romania.', CAST(0x00009F4600000000 AS DateTime), CAST(0x00009F4600000000 AS DateTime))
GO
INSERT [deepcavi_fra].[LU_Anag] ([LUAN_ID], [LUAN_Title], [LUAN_Text], [LUAN_ImplemDate], [LUAN_GetDate]) VALUES (N'9b18de68-47c3-e011-a9de-000c2983b46e', N'<a href="VideoPages/Sub_Arini_park.aspx" title="Sub Arini Park">New track added: Sub Arini Park</a>', N'It''s the biggest green park of Sibiu. It''s good for skating, biking, having relaxing walks or for jogging', CAST(0x00009F3300000000 AS DateTime), CAST(0x00009F3B0050B439 AS DateTime))
GO
INSERT [deepcavi_fra].[LU_Anag] ([LUAN_ID], [LUAN_Title], [LUAN_Text], [LUAN_ImplemDate], [LUAN_GetDate]) VALUES (N'495b8598-6dc3-e011-a9de-000c2983b46e', N'<a href="VideoPages/Curmatura-Santa-Paltinis.aspx" title="Curmatura - Santa - Paltinis">New track added: Curmatura - Santa - Paltinis</a>', N'A long uphill in the wild. The landscapes are beautiful!', CAST(0x00009F3600000000 AS DateTime), CAST(0x00009F3B009BC7F1 AS DateTime))
GO
INSERT [deepcavi_fra].[LU_Anag] ([LUAN_ID], [LUAN_Title], [LUAN_Text], [LUAN_ImplemDate], [LUAN_GetDate]) VALUES (N'57b37afa-39c5-e011-a9de-000c2983b46e', N'<b>New layout for the site</b>', N'The default page now contains the list of available tracks with links to each page ', CAST(0x00009F3E010DEA1D AS DateTime), CAST(0x00009F3E010DEA1D AS DateTime))
GO
INSERT [deepcavi_fra].[LU_Anag] ([LUAN_ID], [LUAN_Title], [LUAN_Text], [LUAN_ImplemDate], [LUAN_GetDate]) VALUES (N'f1b9e418-f1e2-e011-a194-003048c2ac19', N'<a href="VideoPages/Predeal_Trophy_2011.aspx" title="Predeal Trophy 2011">New page added: Predeal Trophy 2011</a>', N'One of the most exiting MTB competition of Romania, crossing beautiful surroundings.', CAST(0x00009F6100000000 AS DateTime), CAST(0x00009F6300E5C7E0 AS DateTime))
GO
INSERT [deepcavi_fra].[LU_Anag] ([LUAN_ID], [LUAN_Title], [LUAN_Text], [LUAN_ImplemDate], [LUAN_GetDate]) VALUES (N'60f707cb-baec-e011-a194-003048c2ac19', N'<a href="VideoPages/Tusnad_MTB_Marathon_2011.aspx" title="Tusnad MTB Marathon 2011">New page added: Tusnad MTB Marathon 2011</a>', N'Really a great place to go to, both partecipating to a MTB competition or not, or just for relaxing.', CAST(0x00009F4C00000000 AS DateTime), CAST(0x00009F70000E93E4 AS DateTime))
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'94e4b723-1c89-4b11-8418-028e491135ef', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 43, CAST(0x00009EDB00DD8D94 AS DateTime), 375, 12, CAST(0x07005A6202000000 AS Time), CAST(11.0 AS Decimal(5, 1)), 41, N'N45 39.394 E24 16.484')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'bfa87e34-815e-4b33-8c53-05af239e9783', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 2, CAST(0x00009EDB00DC1A18 AS DateTime), 387, 38, CAST(0x0700B4C404000000 AS Time), CAST(17.0 AS Decimal(5, 1)), 84, N'N45 39.515 E24 15.894')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'24c3042d-90ae-4135-9892-071bba93debd', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 76, CAST(0x00009EDB00DF1C04 AS DateTime), 372, 47, CAST(0x07804A5D05000000 AS Time), CAST(19.0 AS Decimal(5, 1)), 163, N'N45 39.517 E24 17.592')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'89bbb174-1cdc-47d5-9a08-07bc27f73001', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 6, CAST(0x00009EDB00DC3188 AS DateTime), 383, 0, CAST(0x0780778E06000000 AS Time), CAST(0.0 AS Decimal(5, 1)), 0, N'N45 39.518 E24 15.969')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'68ba9072-77a5-4ad0-8f34-0cea249e8610', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 20, CAST(0x00009EDB00DCBF54 AS DateTime), 376, 35, CAST(0x07804A5D05000000 AS Time), CAST(14.0 AS Decimal(5, 1)), 113, N'N45 39.396 E24 16.092')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'a6b145ef-0e06-45cf-b223-0fdaaa3cfead', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 22, CAST(0x00009EDB00DCD340 AS DateTime), 376, 27, CAST(0x0700B4C404000000 AS Time), CAST(12.0 AS Decimal(5, 1)), 133, N'N45 39.385 E24 16.140')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'488b0522-631c-4ab9-8352-0fe1dac3658c', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 33, CAST(0x00009EDB00DD22F0 AS DateTime), 374, 29, CAST(0x0780778E06000000 AS Time), CAST(9.0 AS Decimal(5, 1)), 74, N'N45 39.341 E24 16.347')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'b08904d3-5f1f-4c25-bdbc-12c3160ce8d9', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 65, CAST(0x00009EDB00DEA6D4 AS DateTime), 374, 64, CAST(0x0780A4BF07000000 AS Time), CAST(18.0 AS Decimal(5, 1)), 107, N'N45 39.648 E24 17.242')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'40adf43a-0c0a-4287-87dd-14b9b167a4b1', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 14, CAST(0x00009EDB00DC896C AS DateTime), 377, 2, CAST(0x0780969800000000 AS Time), CAST(7.0 AS Decimal(5, 1)), 152, N'N45 39.427 E24 16.008')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'5d3282a9-d555-4d8d-ba81-1540fcb5ee16', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 69, CAST(0x00009EDB00DEE298 AS DateTime), 373, 23, CAST(0x07005A6202000000 AS Time), CAST(20.0 AS Decimal(5, 1)), 104, N'N45 39.583 E24 17.418')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'96d91d65-8edf-4e82-adc0-1596c85b99a6', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 7, CAST(0x00009EDB00DC3E6C AS DateTime), 381, 4, CAST(0x078058840C000000 AS Time), CAST(0.7 AS Decimal(5, 1)), 91, N'N45 39.518 E24 15.969')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'93b6a71d-a080-465e-9cb1-1ae7cac4aa28', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 31, CAST(0x00009EDB00DD13B4 AS DateTime), 375, 22, CAST(0x0780F0FA02000000 AS Time), CAST(16.0 AS Decimal(5, 1)), 88, N'N45 39.338 E24 16.304')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'80df8274-06fc-4688-bf57-22bf3c476843', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 28, CAST(0x00009EDB00DCFB18 AS DateTime), 375, 150, CAST(0x0780A4BF07000000 AS Time), CAST(41.0 AS Decimal(5, 1)), 91, N'N45 39.346 E24 16.159')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'00379acd-2c4e-4eba-9c17-24255e4d01fe', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 30, CAST(0x00009EDB00DD0F04 AS DateTime), 376, 19, CAST(0x07005A6202000000 AS Time), CAST(17.0 AS Decimal(5, 1)), 109, N'N45 39.342 E24 16.290')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'98a4d473-61f8-40e7-a0e2-2804cf8f47dd', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 9, CAST(0x00009EDB00DC5A8C AS DateTime), 380, 21, CAST(0x0780C3C901000000 AS Time), CAST(25.0 AS Decimal(5, 1)), 166, N'N45 39.505 E24 15.977')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'ac4785aa-af29-474b-a38c-292b9e6eb361', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 16, CAST(0x00009EDB00DC8F48 AS DateTime), 378, 19, CAST(0x0780778E06000000 AS Time), CAST(6.0 AS Decimal(5, 1)), 152, N'N45 39.422 E24 16.012')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'7717c23c-f1d3-44a3-8b2d-2cd4cd075946', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 71, CAST(0x00009EDB00DEF684 AS DateTime), 374, 47, CAST(0x07804A5D05000000 AS Time), CAST(19.0 AS Decimal(5, 1)), 120, N'N45 39.567 E24 17.487')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'22383ddf-d409-445a-8e93-32ff039b4499', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 37, CAST(0x00009EDB00DD4168 AS DateTime), 373, 21, CAST(0x0700E1F505000000 AS Time), CAST(8.0 AS Decimal(5, 1)), 73, N'N45 39.351 E24 16.385')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'9af93361-fd79-48a3-8fb4-34620d915e8e', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 63, CAST(0x00009EDB00DE8AB4 AS DateTime), 374, 68, CAST(0x07000E2707000000 AS Time), CAST(20.0 AS Decimal(5, 1)), 94, N'N45 39.658 E24 17.141')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'6c56d3e2-3439-46e1-98c0-38ddbd2f65a2', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 42, CAST(0x00009EDB00DD81DC AS DateTime), 374, 32, CAST(0x0700E1F505000000 AS Time), CAST(12.0 AS Decimal(5, 1)), 55, N'N45 39.384 E24 16.464')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'f269f90b-aaf5-437e-bfd9-3d96c6f51c9c', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 74, CAST(0x00009EDB00DF13D0 AS DateTime), 371, 15, CAST(0x0780C3C901000000 AS Time), CAST(19.0 AS Decimal(5, 1)), 132, N'N45 39.531 E24 17.574')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'bbbf2e87-a0aa-4b1f-8fba-484ff2c58b3b', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 79, CAST(0x00009EDB00DF43DC AS DateTime), 370, 3, CAST(0x0780FE210A000000 AS Time), CAST(0.7 AS Decimal(5, 1)), 330, N'N45 39.447 E24 17.609')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'75bb6458-f963-4df1-9100-488601b020f4', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 75, CAST(0x00009EDB00DF1754 AS DateTime), 373, 20, CAST(0x07005A6202000000 AS Time), CAST(18.0 AS Decimal(5, 1)), 144, N'N45 39.526 E24 17.583')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'38261ae2-442a-44d3-a4ef-4925c7df6c2d', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 4, CAST(0x00009EDB00DC24A4 AS DateTime), 384, 12, CAST(0x07002D3101000000 AS Time), CAST(22.0 AS Decimal(5, 1)), 85, N'N45 39.517 E24 15.927')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'6fb7ea48-f748-4eeb-801a-4cf013e6ccda', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 80, CAST(0x00009EDB00DF57C8 AS DateTime), 370, 2, CAST(0x0700C2EB0B000000 AS Time), CAST(0.4 AS Decimal(5, 1)), 202, N'N45 39.449 E24 17.607')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'dabd8c39-33ff-4d67-896c-50a9c28f32ed', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 70, CAST(0x00009EDB00DEE748 AS DateTime), 373, 71, CAST(0x0780A4BF07000000 AS Time), CAST(20.0 AS Decimal(5, 1)), 109, N'N45 39.580 E24 17.435')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'dff49c92-a80b-4608-9edb-5b592fe96c1e', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 3, CAST(0x00009EDB00DC2378 AS DateTime), 383, 6, CAST(0x0780969800000000 AS Time), CAST(21.0 AS Decimal(5, 1)), 85, N'N45 39.517 E24 15.923')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'f3971005-ebf4-41c3-b8f9-5be24e4b6d0d', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 11, CAST(0x00009EDB00DC62C0 AS DateTime), 378, 33, CAST(0x07801D2C04000000 AS Time), CAST(17.0 AS Decimal(5, 1)), 172, N'N45 39.479 E24 15.985')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'2cffb396-0c52-4c51-8486-5ccef89b267e', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 60, CAST(0x00009EDB00DE6660 AS DateTime), 374, 70, CAST(0x0780A4BF07000000 AS Time), CAST(19.0 AS Decimal(5, 1)), 68, N'N45 39.636 E24 17.010')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'fbadea03-f932-4778-8f5a-639d8a5c603d', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 46, CAST(0x00009EDB00DDB1E8 AS DateTime), 375, 48, CAST(0x0780778E06000000 AS Time), CAST(16.0 AS Decimal(5, 1)), 49, N'N45 39.428 E24 16.541')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'727be66a-73d9-46bd-bc7a-6868a36d410f', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 24, CAST(0x00009EDB00DCE27C AS DateTime), 376, 5, CAST(0x07801D2C04000000 AS Time), CAST(2.0 AS Decimal(5, 1)), 101, N'N45 39.346 E24 16.155')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'a8250a89-f30e-4de7-bce1-6a391dc6fc25', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 34, CAST(0x00009EDB00DD2FD4 AS DateTime), 373, 1, CAST(0x0780969800000000 AS Time), CAST(3.0 AS Decimal(5, 1)), 13, N'N45 39.346 E24 16.369')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'c7c55a43-a20a-49ad-b711-6cc1e4731c60', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 10, CAST(0x00009EDB00DC5E10 AS DateTime), 379, 29, CAST(0x07005A6202000000 AS Time), CAST(26.0 AS Decimal(5, 1)), 169, N'N45 39.494 E24 15.981')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'3be75eb9-3062-4679-8008-78532712673d', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 62, CAST(0x00009EDB00DE885C AS DateTime), 374, 12, CAST(0x07002D3101000000 AS Time), CAST(22.0 AS Decimal(5, 1)), 83, N'N45 39.657 E24 17.132')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'cef5cac3-e201-45b9-a974-7fb8d41ff120', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 64, CAST(0x00009EDB00DE98C4 AS DateTime), 374, 64, CAST(0x07000E2707000000 AS Time), CAST(19.0 AS Decimal(5, 1)), 101, N'N45 39.655 E24 17.193')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'657d0381-134d-485a-b662-80e12e81eb27', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 19, CAST(0x00009EDB00DCB270 AS DateTime), 377, 40, CAST(0x0780778E06000000 AS Time), CAST(13.0 AS Decimal(5, 1)), 115, N'N45 39.405 E24 16.064')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'76168ba8-2efd-4940-976d-8320de11d371', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 73, CAST(0x00009EDB00DF06EC AS DateTime), 374, 59, CAST(0x0780778E06000000 AS Time), CAST(19.0 AS Decimal(5, 1)), 126, N'N45 39.550 E24 17.537')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'4d452273-451d-40f4-888c-86bcf4dd2ea2', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 27, CAST(0x00009EDB00DCF8C0 AS DateTime), 375, 0, CAST(0x07002D3101000000 AS Time), CAST(0.0 AS Decimal(5, 1)), 0, N'N45 39.346 E24 16.159')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'80a93c49-ff04-496c-88ed-88beaf73282d', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 17, CAST(0x00009EDB00DC9C2C AS DateTime), 377, 28, CAST(0x07804A5D05000000 AS Time), CAST(11.0 AS Decimal(5, 1)), 92, N'N45 39.413 E24 16.018')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'35a4585f-06ad-46e9-b2d3-8b4c67f61ef3', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 40, CAST(0x00009EDB00DD6814 AS DateTime), 373, 22, CAST(0x0700E1F505000000 AS Time), CAST(8.0 AS Decimal(5, 1)), 62, N'N45 39.369 E24 16.431')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'35cde5fc-064f-4c03-9c23-90cc64d5b2f7', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 57, CAST(0x00009EDB00DE4B6C AS DateTime), 374, 74, CAST(0x07003B5808000000 AS Time), CAST(19.0 AS Decimal(5, 1)), 89, N'N45 39.633 E24 16.915')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'16300731-9536-4155-9921-958ab510db20', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 59, CAST(0x00009EDB00DE6408 AS DateTime), 374, 11, CAST(0x07002D3101000000 AS Time), CAST(20.0 AS Decimal(5, 1)), 78, N'N45 39.634 E24 17.002')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'6383a05b-f552-4b4e-9381-9d367b2a7ce8', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 68, CAST(0x00009EDB00DED488 AS DateTime), 373, 63, CAST(0x07000E2707000000 AS Time), CAST(19.0 AS Decimal(5, 1)), 119, N'N45 39.599 E24 17.375')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'122cd72a-ce2d-4520-8306-9d735d317ecb', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 51, CAST(0x00009EDB00DDF4B4 AS DateTime), 376, 54, CAST(0x0780778E06000000 AS Time), CAST(18.0 AS Decimal(5, 1)), 48, N'N45 39.514 E24 16.690')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'660a2048-06fd-4082-90a9-a0a1b9492b46', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 13, CAST(0x00009EDB00DC7A30 AS DateTime), 377, 39, CAST(0x0780A4BF07000000 AS Time), CAST(11.0 AS Decimal(5, 1)), 156, N'N45 39.446 E24 15.996')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'3f0f6a6d-a898-4d7c-b58a-a0cf7d4903ae', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 1, CAST(0x00009EDB00DC11E4 AS DateTime), 385, 20, CAST(0x07801D2C04000000 AS Time), CAST(10.0 AS Decimal(5, 1)), 81, N'N45 39.513 E24 15.879')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'16cb9f81-96fb-4d95-ada1-a0f6fbbb1a44', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 66, CAST(0x00009EDB00DEB610 AS DateTime), 373, 72, CAST(0x07003B5808000000 AS Time), CAST(19.0 AS Decimal(5, 1)), 120, N'N45 39.638 E24 17.289')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'3f95d28e-167c-42dc-8181-a9403de6a8a5', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 21, CAST(0x00009EDB00DCC9E0 AS DateTime), 376, 32, CAST(0x0700B4C404000000 AS Time), CAST(15.0 AS Decimal(5, 1)), 105, N'N45 39.389 E24 16.116')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'6bb73a09-1ba4-4849-9675-ac66931ecd55', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 77, CAST(0x00009EDB00DF2690 AS DateTime), 372, 65, CAST(0x0780D1F008000000 AS Time), CAST(16.0 AS Decimal(5, 1)), 172, N'N45 39.493 E24 17.602')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'86b207a8-481f-4a76-a2fb-af738fce04af', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 58, CAST(0x00009EDB00DE5BD4 AS DateTime), 374, 39, CAST(0x07801D2C04000000 AS Time), CAST(20.0 AS Decimal(5, 1)), 87, N'N45 39.633 E24 16.972')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'2a769c09-7339-4255-bcfe-b03eba770710', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 29, CAST(0x00009EDB00DD0A54 AS DateTime), 376, 21, CAST(0x07005A6202000000 AS Time), CAST(19.0 AS Decimal(5, 1)), 105, N'N45 39.345 E24 16.274')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'd857fb10-1281-456a-8487-b04fdbcca26f', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 35, CAST(0x00009EDB00DD3100 AS DateTime), 374, 3, CAST(0x0780C3C901000000 AS Time), CAST(4.0 AS Decimal(5, 1)), 6, N'N45 39.346 E24 16.369')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'7590c77d-c587-4226-b870-b2214be3178f', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 8, CAST(0x00009EDB00DC5708 AS DateTime), 382, 24, CAST(0x0780C3C901000000 AS Time), CAST(29.0 AS Decimal(5, 1)), 164, N'N45 39.517 E24 15.972')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'85b802f4-56ee-4218-ab31-b896f6d49c5a', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 50, CAST(0x00009EDB00DDE6A4 AS DateTime), 375, 60, CAST(0x07000E2707000000 AS Time), CAST(18.0 AS Decimal(5, 1)), 55, N'N45 39.495 E24 16.652')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'aa61e571-51c4-4ae0-a8c7-ba423c3cebbf', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 52, CAST(0x00009EDB00DE0198 AS DateTime), 374, 67, CAST(0x07003B5808000000 AS Time), CAST(17.0 AS Decimal(5, 1)), 50, N'N45 39.533 E24 16.721')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'd02016e7-f4f2-4550-9bd1-bc44ec769b57', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 53, CAST(0x00009EDB00DE1200 AS DateTime), 374, 63, CAST(0x0780A4BF07000000 AS Time), CAST(17.0 AS Decimal(5, 1)), 51, N'N45 39.557 E24 16.761')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'03510e32-2a36-4e29-91fe-be05508f742d', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 15, CAST(0x00009EDB00DC8A98 AS DateTime), 376, 8, CAST(0x07005A6202000000 AS Time), CAST(7.0 AS Decimal(5, 1)), 152, N'N45 39.426 E24 16.009')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'536c5f0c-906d-459a-9f57-c1f9fdfddb53', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 56, CAST(0x00009EDB00DE3FB4 AS DateTime), 374, 52, CAST(0x0700E1F505000000 AS Time), CAST(19.0 AS Decimal(5, 1)), 72, N'N45 39.624 E24 16.877')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'0357c6f8-d225-4e35-b907-c3b480b9759b', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 47, CAST(0x00009EDB00DDBECC AS DateTime), 376, 46, CAST(0x0780778E06000000 AS Time), CAST(15.0 AS Decimal(5, 1)), 49, N'N45 39.445 E24 16.569')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'bb254d33-04b9-478f-91ab-c832c40c5140', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 39, CAST(0x00009EDB00DD5A04 AS DateTime), 373, 27, CAST(0x07000E2707000000 AS Time), CAST(8.0 AS Decimal(5, 1)), 52, N'N45 39.360 E24 16.415')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'b57a0243-ef1b-4382-b878-ccdf20cf1daa', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 78, CAST(0x00009EDB00DF3824 AS DateTime), 372, 20, CAST(0x0700E1F505000000 AS Time), CAST(7.0 AS Decimal(5, 1)), 180, N'N45 39.458 E24 17.609')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'59b15eb4-cc86-4dcd-9e75-cd74b04eb6d1', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 72, CAST(0x00009EDB00DF0110 AS DateTime), 375, 27, CAST(0x0780F0FA02000000 AS Time), CAST(19.0 AS Decimal(5, 1)), 109, N'N45 39.554 E24 17.518')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'f859f20e-4d43-4d79-88e2-cdbfaa37c412', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 25, CAST(0x00009EDB00DCEAB0 AS DateTime), 375, 0, CAST(0x07002D3101000000 AS Time), CAST(0.0 AS Decimal(5, 1)), 0, N'N45 39.346 E24 16.159')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'3b49eded-7fd3-4434-a141-ce1e54f5e0a8', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 67, CAST(0x00009EDB00DEC678 AS DateTime), 373, 62, CAST(0x07000E2707000000 AS Time), CAST(18.0 AS Decimal(5, 1)), 126, N'N45 39.619 E24 17.337')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'276383b7-fa5c-4b2b-ada8-d130e854de6e', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 45, CAST(0x00009EDB00DDA3D8 AS DateTime), 376, 45, CAST(0x07000E2707000000 AS Time), CAST(13.0 AS Decimal(5, 1)), 50, N'N45 39.413 E24 16.514')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'771d1756-26e3-41a5-bf28-d18312c86e35', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 49, CAST(0x00009EDB00DDD894 AS DateTime), 375, 52, CAST(0x07000E2707000000 AS Time), CAST(15.0 AS Decimal(5, 1)), 48, N'N45 39.477 E24 16.623')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'7d87a143-b793-48d6-8428-d3549687befa', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 38, CAST(0x00009EDB00DD4D20 AS DateTime), 372, 22, CAST(0x0780778E06000000 AS Time), CAST(7.0 AS Decimal(5, 1)), 60, N'N45 39.354 E24 16.400')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'80eeea24-1a51-41fe-9d6f-d4e18bcf185d', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 26, CAST(0x00009EDB00DCED08 AS DateTime), 376, 0, CAST(0x0700E1F505000000 AS Time), CAST(0.0 AS Decimal(5, 1)), 0, N'N45 39.346 E24 16.159')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'a6500458-7b5a-49ac-aae2-d6393f8952c0', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 5, CAST(0x00009EDB00DC26FC AS DateTime), 383, 41, CAST(0x07804A5D05000000 AS Time), CAST(16.0 AS Decimal(5, 1)), 91, N'N45 39.518 E24 15.937')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'c112aef1-13d4-4233-931b-ddac9e7140c2', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 61, CAST(0x00009EDB00DE759C AS DateTime), 374, 94, CAST(0x0700688909000000 AS Time), CAST(21.0 AS Decimal(5, 1)), 82, N'N45 39.650 E24 17.060')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'5d057f12-a942-44a0-93f0-e0075e56c6d9', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 12, CAST(0x00009EDB00DC6AF4 AS DateTime), 377, 30, CAST(0x0780A4BF07000000 AS Time), CAST(8.0 AS Decimal(5, 1)), 162, N'N45 39.461 E24 15.989')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'82ae0cdd-3d5c-4e4f-9815-e6cf868ed9c0', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 36, CAST(0x00009EDB00DD3484 AS DateTime), 374, 21, CAST(0x0780778E06000000 AS Time), CAST(7.0 AS Decimal(5, 1)), 76, N'N45 39.348 E24 16.369')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'ecee14de-16b0-4222-949a-e6f1fddcee65', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 32, CAST(0x00009EDB00DD1990 AS DateTime), 375, 35, CAST(0x0700B4C404000000 AS Time), CAST(16.0 AS Decimal(5, 1)), 83, N'N45 39.339 E24 16.321')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'd30e9b7b-334d-4bb8-9ad5-ed1c9d946abe', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 23, CAST(0x00009EDB00DCDCA0 AS DateTime), 375, 53, CAST(0x0780F0FA02000000 AS Time), CAST(38.0 AS Decimal(5, 1)), 181, N'N45 39.375 E24 16.156')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'aa5fa671-792c-41ae-951b-eda6d468e470', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 54, CAST(0x00009EDB00DE213C AS DateTime), 375, 76, CAST(0x0780D1F008000000 AS Time), CAST(18.0 AS Decimal(5, 1)), 50, N'N45 39.578 E24 16.799')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'497097d8-16a8-4e6d-b859-f02277be11d6', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 41, CAST(0x00009EDB00DD73CC AS DateTime), 373, 30, CAST(0x07000E2707000000 AS Time), CAST(9.0 AS Decimal(5, 1)), 51, N'N45 39.374 E24 16.446')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'9644d99e-de47-4a65-b190-f3acee4325a3', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 55, CAST(0x00009EDB00DE32D0 AS DateTime), 376, 56, CAST(0x0780778E06000000 AS Time), CAST(18.0 AS Decimal(5, 1)), 49, N'N45 39.604 E24 16.844')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'19700298-a1af-41fd-b9d5-f591ad8ca724', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 18, CAST(0x00009EDB00DCA6B8 AS DateTime), 376, 34, CAST(0x0700E1F505000000 AS Time), CAST(12.0 AS Decimal(5, 1)), 112, N'N45 39.412 E24 16.040')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'9233c8ec-f679-4afa-acb8-f71b55806b6d', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 44, CAST(0x00009EDB00DD9244 AS DateTime), 374, 40, CAST(0x0780D1F008000000 AS Time), CAST(10.0 AS Decimal(5, 1)), 52, N'N45 39.399 E24 16.490')
GO
INSERT [deepcavi_fra].[TR_Map] ([TRMA_ID], [TRMA_TRAN_ID], [TRMA_Index], [TRMA_Time], [TRMA_Altitude], [TRMA_LegLength], [TRMA_LegTime], [TRMA_LegSpeed], [TRMA_LegCourse], [TRMA_Position]) VALUES (N'2f6e7dc7-ce61-4136-aebf-ffa80d118361', N'84d35cf4-c9e9-499e-bd6e-287b3ebcbc75', 48, CAST(0x00009EDB00DDCBB0 AS DateTime), 375, 45, CAST(0x0780778E06000000 AS Time), CAST(15.0 AS Decimal(5, 1)), 51, N'N45 39.461 E24 16.596')
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [Users_MBCO_ID], [GetVideoSubscription], [GetMontlyPartnersEmail]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7782edf3-b0de-4aa9-87ee-4e882605f750', N'Chiara', N'chiara', NULL, 0, CAST(0x00009F9A010F47A8 AS DateTime), N'177fd92f-2794-4d79-96d2-4b5bc42776b3', 0, 0)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [Users_MBCO_ID], [GetVideoSubscription], [GetMontlyPartnersEmail]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'38aa9ba3-320d-43a7-8220-18d67c4c5e14', N'Ciprian', N'ciprian', NULL, 0, CAST(0x00009FB600C2F880 AS DateTime), N'7af256df-9797-419b-b73b-12ad7e011c4a', 1, 1)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [Users_MBCO_ID], [GetVideoSubscription], [GetMontlyPartnersEmail]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'b9cb6781-d5a5-4ec6-a173-7f5178941bfd', N'ddchaos', N'ddchaos', NULL, 0, CAST(0x00009F4A011C8710 AS DateTime), N'7af256df-9797-419b-b73b-12ad7e011c4a', 1, 1)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [Users_MBCO_ID], [GetVideoSubscription], [GetMontlyPartnersEmail]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', N'deepcaving', N'deepcaving', NULL, 0, CAST(0x00009FC7000EDDFE AS DateTime), N'7af256df-9797-419b-b73b-12ad7e011c4a', 0, 0)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [Users_MBCO_ID], [GetVideoSubscription], [GetMontlyPartnersEmail]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7f51e994-df52-4e77-826c-5e204554a9d4', N'gabri50', N'gabri50', NULL, 0, CAST(0x00009FA800CADF11 AS DateTime), N'177fd92f-2794-4d79-96d2-4b5bc42776b3', 1, 1)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [Users_MBCO_ID], [GetVideoSubscription], [GetMontlyPartnersEmail]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'71ffa7d1-b0b7-4b15-8376-77d89f658921', N'lisseanux', N'lisseanux', NULL, 0, CAST(0x00009F9501482ECD AS DateTime), N'7af256df-9797-419b-b73b-12ad7e011c4a', 1, 0)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [Users_MBCO_ID], [GetVideoSubscription], [GetMontlyPartnersEmail]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'1fb83571-df80-449e-a614-0334864f5b56', N'prova', N'prova', NULL, 0, CAST(0x00009F9A0161A34F AS DateTime), N'1eb9f727-425c-4516-8f30-a364955b8b4f', 0, 0)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [Users_MBCO_ID], [GetVideoSubscription], [GetMontlyPartnersEmail]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'51fd3bc0-879f-4bf6-be92-f5199166721e', N'romeo.bonato', N'romeo.bonato', NULL, 0, CAST(0x00009FC400FAA6B0 AS DateTime), N'177fd92f-2794-4d79-96d2-4b5bc42776b3', 1, 1)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [Users_MBCO_ID], [GetVideoSubscription], [GetMontlyPartnersEmail]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'0518e2fb-6590-4d70-b3ac-12b43603e3b3', N'Scottyf3r', N'scottyf3r', NULL, 0, CAST(0x00009F4800713478 AS DateTime), N'7af256df-9797-419b-b73b-12ad7e011c4a', 1, 1)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [Users_MBCO_ID], [GetVideoSubscription], [GetMontlyPartnersEmail]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'8a0692ce-7880-492a-bbe8-889049e319f0', N'Sergio', N'sergio', NULL, 0, CAST(0x00009FA00170A7C8 AS DateTime), N'7af256df-9797-419b-b73b-12ad7e011c4a', 1, 0)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [Users_MBCO_ID], [GetVideoSubscription], [GetMontlyPartnersEmail]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'a501edb8-31ba-4a82-9100-bece2a32d9e3', N'vexy', N'vexy', NULL, 0, CAST(0x00009FAA00962454 AS DateTime), N'7af256df-9797-419b-b73b-12ad7e011c4a', 1, 0)
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'035d8da0-ee28-4233-933d-2a81d963a7aa', N'deep_admin', N'deep_admin', N'deepcaving Francesco admin')
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'e009bcfc-e023-46d5-bcc3-188fe8716ed6', N'Go!1m', N'go!1m', N' paying user 1 month')
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'b2192dcb-2e36-4dd4-8f45-fae1c41ffb70', N'Go!1w', N'go!1w', N' paying user 1 week')
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'c1e34519-cfa4-4b35-9401-e50398df0455', N'Go!1y', N'go!1y', N' paying user 1 year')
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'52ef9d7e-460b-411a-a365-c1c0045a60a6', N'Go!3m', N'go!3m', N' paying user 3 month')
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7980c61a-8671-4329-9894-90d3dadf7969', N'Go!6m', N'go!6m', N'paying user 6 months')
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'5092db6f-7a8f-42b6-a458-de6b65c34952', N'Guest', N'guest', N'guest user')
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'1334fd66-92cf-4d96-b1ca-3810fa48a62e', N'Registered', N'registered', N'registered user')
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'51fd3bc0-879f-4bf6-be92-f5199166721e', N'GKqLi7stwWUEihBOl7pe0SAfGQM=', 1, N'gumWR0m4eFpLruMRSTOQAQ==', NULL, N'baroludorum@gmail.com', N'baroludorum@gmail.com', NULL, NULL, 1, 0, CAST(0x00009F9A00DB7608 AS DateTime), CAST(0x00009FC400FAA6B0 AS DateTime), CAST(0x00009F9A00DB7608 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7782edf3-b0de-4aa9-87ee-4e882605f750', N'hTQnQ/2QVCW0WaJEs7dejZXqqnY=', 1, N'5IR2hfU3pa2wvbPbaqurxg==', NULL, N'capuzzo.chiara@gmail.com', N'capuzzo.chiara@gmail.com', NULL, NULL, 1, 0, CAST(0x00009F9A010F47A8 AS DateTime), CAST(0x00009F9A010F47A8 AS DateTime), CAST(0x00009F9A010F47A8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'8a0692ce-7880-492a-bbe8-889049e319f0', N'U7kZzXuYKm+EuwbszHnc2xfsLog=', 1, N'hy1yvm1yaOQbygCgQPymKQ==', NULL, N'comrace93@yahoo.com', N'comrace93@yahoo.com', NULL, NULL, 1, 0, CAST(0x00009FA00170A7C8 AS DateTime), CAST(0x00009FA00170A7C8 AS DateTime), CAST(0x00009FA00170A7C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'b9cb6781-d5a5-4ec6-a173-7f5178941bfd', N'upBY685Ht1LRRdo1ACmvH0D+oWQ=', 1, N'dlpfpXhg+F2aUMVcuqcWfg==', NULL, N'danarad69@yahoo.com', N'danarad69@yahoo.com', NULL, NULL, 1, 0, CAST(0x00009F4A011C8710 AS DateTime), CAST(0x00009F4A011C8710 AS DateTime), CAST(0x00009F4A011C8710 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', N'ARLepF3vEKNR0LW1cvnja3PxJR8=', 1, N'nrhSOjGnBiAs97nzIgsKmg==', NULL, N'deepcaving@hotmail.com', N'deepcaving@hotmail.com', NULL, NULL, 1, 0, CAST(0x00009ED80088FC5C AS DateTime), CAST(0x00009FC7000EDDFE AS DateTime), CAST(0x00009F800089D683 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'38aa9ba3-320d-43a7-8220-18d67c4c5e14', N'9qdx3ysQ3QwuRQkRwFldAcMaafY=', 1, N'YbX2Ta5ZjnHhSpCwefGvXg==', NULL, N'designextrem@gmail.com', N'designextrem@gmail.com', NULL, NULL, 1, 0, CAST(0x00009FB600C2F880 AS DateTime), CAST(0x00009FB600C2F880 AS DateTime), CAST(0x00009FB600C2F880 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'7f51e994-df52-4e77-826c-5e204554a9d4', N'iSVxKH5jA2s/eRMZL/oukLu42zY=', 1, N'CGpOwdcrSimERgMzEyEKug==', NULL, N'gabri.capuzzo@gmail.com', N'gabri.capuzzo@gmail.com', NULL, NULL, 1, 0, CAST(0x00009F310102CAC8 AS DateTime), CAST(0x00009FA800CADF11 AS DateTime), CAST(0x00009F310102CAC8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'1fb83571-df80-449e-a614-0334864f5b56', N'SbgIT1TS2Rn6vPGaizCd9Dn7cso=', 1, N'HYWqAKAxRs5Bm1/5n0tEiw==', NULL, N'prova', N'prova', NULL, NULL, 1, 0, CAST(0x00009F85009C98AC AS DateTime), CAST(0x00009F9A0161A34F AS DateTime), CAST(0x00009F85009C98AC AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'a501edb8-31ba-4a82-9100-bece2a32d9e3', N'KYTmJg+o86APuECfLJw6FmH8fhQ=', 1, N'm5/iHir3j0xeck9QJ0LmGw==', NULL, N'roby_18us@yahoo.com', N'roby_18us@yahoo.com', NULL, NULL, 1, 0, CAST(0x00009FAA00962454 AS DateTime), CAST(0x00009FAA00962454 AS DateTime), CAST(0x00009FAA00962454 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'0518e2fb-6590-4d70-b3ac-12b43603e3b3', N'C7IhwHHMxM3kRiRfJohQ3l8OCg4=', 1, N'ixQ56lyfYdx3vJ6/VZ/NIw==', NULL, N'scottyf3r@yahoo.com', N'scottyf3r@yahoo.com', NULL, NULL, 1, 0, CAST(0x00009F4800713478 AS DateTime), CAST(0x00009F4800713478 AS DateTime), CAST(0x00009F4800713478 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'9ed0a2bd-1cba-49c6-9c5c-aa6ea5de47b2', N'71ffa7d1-b0b7-4b15-8376-77d89f658921', N'LtiJak8qU548tv9cYF7HKu4khKY=', 1, N'sCzRZK97tQFVFHfLQlGZIw==', NULL, N'sergiu_dudan@yahoo.com', N'sergiu_dudan@yahoo.com', NULL, NULL, 1, 0, CAST(0x00009F950145F488 AS DateTime), CAST(0x00009F9501482ECD AS DateTime), CAST(0x00009F950145F488 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'854311d3-c839-4d7a-bed3-a70b9f2c36a9', N'035d8da0-ee28-4233-933d-2a81d963a7aa')
GO
INSERT [deepcavi_fra].[MB_Questions] ([MBQU_QuestionID], [MBQU_UserID], [MBQU_LOUserName], [MBQU_LOUserEmail], [MBQU_Question], [MBQU_QuestionDate], [MBQU_IsEmailSent], [MBQU_Answer], [MBQU_AnswerDate], [MBQU_IsSolved], [MBQU_SolvedTime_Days]) VALUES (N'735d63c5-4733-4223-a736-c44698b4c986', N'8a0692ce-7880-492a-bbe8-889049e319f0', NULL, NULL, N'Buna ziua ! 
Cum as putea sa fac rost de unul din videoclipuri ? Apar in cel de la Ranca si am nevoie de videoclip pentru al folosi intr-un film pe care vreau sa-l fac.

Astept mesajul dvs la comrace93@yahoo.com', CAST(0x00009FA0010E534F AS DateTime), NULL, NULL, NULL, 0, NULL)
GO
