USE [PopedomDB]
GO
/****** Object:  Table [dbo].[RoleInfo]    Script Date: 12/22/2011 11:55:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleInfo](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RoleInfo] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RoleInfo] ON
INSERT [dbo].[RoleInfo] ([RoleID], [RoleName]) VALUES (1, N'管理员')
INSERT [dbo].[RoleInfo] ([RoleID], [RoleName]) VALUES (2, N'总经理')
INSERT [dbo].[RoleInfo] ([RoleID], [RoleName]) VALUES (3, N'人事经理')
INSERT [dbo].[RoleInfo] ([RoleID], [RoleName]) VALUES (5, N'业务经理')
INSERT [dbo].[RoleInfo] ([RoleID], [RoleName]) VALUES (6, N'员工')
INSERT [dbo].[RoleInfo] ([RoleID], [RoleName]) VALUES (12, N'数据')
INSERT [dbo].[RoleInfo] ([RoleID], [RoleName]) VALUES (13, N'sdfsdf')
SET IDENTITY_INSERT [dbo].[RoleInfo] OFF
/****** Object:  Table [dbo].[PopedomInfo]    Script Date: 12/22/2011 11:55:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PopedomInfo](
	[PopedomId] [int] IDENTITY(1,1) NOT NULL,
	[PopedomName] [varchar](50) NOT NULL,
	[ParentID] [int] NULL,
	[Url] [varchar](50) NULL,
 CONSTRAINT [PK_PopedomInfo] PRIMARY KEY CLUSTERED 
(
	[PopedomId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PopedomInfo] ON
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (1, N'用户管理', 0, NULL)
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (2, N'角色管理', 0, NULL)
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (3, N'添加用户', 1, N'~/AddUser.htm')
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (9, N'查看用户', 1, N'~/UserList.aspx')
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (10, N'增加角色', 2, N'~/AddRole.aspx')
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (13, N'查看角色', 2, N'~/SelectRole.aspx')
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (15, N'个人信息管理', 0, NULL)
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (16, N'查看个人信息', 15, N'~/UserInfomation.aspx')
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (19, N'修改个人信息', 15, N'~/UpdateUser.aspx')
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (21, N'权限管理', 0, NULL)
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (22, N'删除用户', 1, N'~/DeleteUser.aspx')
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (23, N'修改用户角色', 1, N'~/UpdateRole.aspx')
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (24, N'查看角色权限', 21, N'~/SelectPopedom.aspx')
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (25, N'分配角色权限', 21, N'~/FenPeiPopedom.aspx')
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (26, N'修改角色的名字', 2, N'~/UpdateRoleInfo.aspx')
INSERT [dbo].[PopedomInfo] ([PopedomId], [PopedomName], [ParentID], [Url]) VALUES (27, N'删除角色', 2, N'~/DeleteRole.aspx')
SET IDENTITY_INSERT [dbo].[PopedomInfo] OFF
/****** Object:  Table [dbo].[UserInfo]    Script Date: 12/22/2011 11:55:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[UserPass] [varchar](50) NOT NULL,
	[Sex] [char](2) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[TrueName] [varchar](50) NULL,
	[Time] [datetime] NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserPass], [Sex], [Phone], [Address], [TrueName], [Time]) VALUES (1, N'admin', N'000000', N'男', N'12568956987', N'洛阳', N'大力帮被', CAST(0x00009F5900000000 AS DateTime))
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserPass], [Sex], [Phone], [Address], [TrueName], [Time]) VALUES (2, N'sanxing', N'000000', N'女', N'15425698745', N'郑州', N'喜洋洋', CAST(0x00009EFD00000000 AS DateTime))
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserPass], [Sex], [Phone], [Address], [TrueName], [Time]) VALUES (3, N'喜洋洋', N'000000', N'女', N'12569875896', N'上海', N'5555555', CAST(0x00009F3900000000 AS DateTime))
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserPass], [Sex], [Phone], [Address], [TrueName], [Time]) VALUES (4, N'灰太狼', N'000000', N'女', N'12569875896', N'上海', N'5555555', CAST(0x00009F3900000000 AS DateTime))
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserPass], [Sex], [Phone], [Address], [TrueName], [Time]) VALUES (5, N'xiaoying', N'000000', N'女', N'12569875896', N'上海', N'5555555', CAST(0x00009F3900000000 AS DateTime))
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserPass], [Sex], [Phone], [Address], [TrueName], [Time]) VALUES (6, N'shamo', N'000000', N'女', N'12569875896', N'上海', N'5555555', CAST(0x00009F3900000000 AS DateTime))
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserPass], [Sex], [Phone], [Address], [TrueName], [Time]) VALUES (7, N'jinzita', N'000000', N'女', N'12569875896', N'上海', N'5555555', CAST(0x00009F3900000000 AS DateTime))
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserPass], [Sex], [Phone], [Address], [TrueName], [Time]) VALUES (8, N'aaaaaa', N'aaaaaa', N'男', N'23423432434', N'234234', N'234234', CAST(0x00009FB700EE34EF AS DateTime))
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserPass], [Sex], [Phone], [Address], [TrueName], [Time]) VALUES (9, N'ssssss', N'ssssss', N'男', N'32423434343', N'23423423', N'234423423', CAST(0x00009FB700F09BE0 AS DateTime))
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserPass], [Sex], [Phone], [Address], [TrueName], [Time]) VALUES (22, N'sdfsdfsd', N'aaaaaa', N'男', N'42332432', N'423423432', N'234234324', CAST(0x00009FB700F6EB86 AS DateTime))
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
/****** Object:  Table [dbo].[UserInfoRole]    Script Date: 12/22/2011 11:55:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfoRole](
	[UserRoleId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserInfoRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserInfoRole] ON
INSERT [dbo].[UserInfoRole] ([UserRoleId], [UserId], [RoleId]) VALUES (1, 1, 1)
INSERT [dbo].[UserInfoRole] ([UserRoleId], [UserId], [RoleId]) VALUES (3, 2, 2)
INSERT [dbo].[UserInfoRole] ([UserRoleId], [UserId], [RoleId]) VALUES (4, 3, 2)
INSERT [dbo].[UserInfoRole] ([UserRoleId], [UserId], [RoleId]) VALUES (6, 4, 3)
INSERT [dbo].[UserInfoRole] ([UserRoleId], [UserId], [RoleId]) VALUES (8, 5, 6)
INSERT [dbo].[UserInfoRole] ([UserRoleId], [UserId], [RoleId]) VALUES (9, 6, 13)
INSERT [dbo].[UserInfoRole] ([UserRoleId], [UserId], [RoleId]) VALUES (10, 7, 3)
INSERT [dbo].[UserInfoRole] ([UserRoleId], [UserId], [RoleId]) VALUES (12, 9, 6)
INSERT [dbo].[UserInfoRole] ([UserRoleId], [UserId], [RoleId]) VALUES (13, 8, 5)
INSERT [dbo].[UserInfoRole] ([UserRoleId], [UserId], [RoleId]) VALUES (26, 22, 2)
SET IDENTITY_INSERT [dbo].[UserInfoRole] OFF
/****** Object:  Table [dbo].[RolePoperdomInfo]    Script Date: 12/22/2011 11:55:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePoperdomInfo](
	[RolePoerdomID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[PopedomId] [int] NOT NULL,
 CONSTRAINT [PK_UserPoperdomInfo] PRIMARY KEY CLUSTERED 
(
	[RolePoerdomID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RolePoperdomInfo] ON
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (12, 3, 23)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (52, 5, 23)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (53, 1, 3)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (54, 1, 9)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (55, 1, 10)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (56, 1, 13)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (57, 1, 16)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (58, 1, 22)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (59, 1, 23)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (60, 1, 24)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (61, 1, 25)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (62, 1, 26)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (63, 1, 27)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (68, 2, 3)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (69, 2, 16)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (70, 2, 23)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (71, 2, 24)
INSERT [dbo].[RolePoperdomInfo] ([RolePoerdomID], [RoleID], [PopedomId]) VALUES (73, 13, 3)
SET IDENTITY_INSERT [dbo].[RolePoperdomInfo] OFF
/****** Object:  ForeignKey [FK_RolePoperdomInfo_PopedomInfo]    Script Date: 12/22/2011 11:55:52 ******/
ALTER TABLE [dbo].[RolePoperdomInfo]  WITH CHECK ADD  CONSTRAINT [FK_RolePoperdomInfo_PopedomInfo] FOREIGN KEY([PopedomId])
REFERENCES [dbo].[PopedomInfo] ([PopedomId])
GO
ALTER TABLE [dbo].[RolePoperdomInfo] CHECK CONSTRAINT [FK_RolePoperdomInfo_PopedomInfo]
GO
/****** Object:  ForeignKey [FK_RolePoperdomInfo_RoleInfo]    Script Date: 12/22/2011 11:55:52 ******/
ALTER TABLE [dbo].[RolePoperdomInfo]  WITH CHECK ADD  CONSTRAINT [FK_RolePoperdomInfo_RoleInfo] FOREIGN KEY([RoleID])
REFERENCES [dbo].[RoleInfo] ([RoleID])
GO
ALTER TABLE [dbo].[RolePoperdomInfo] CHECK CONSTRAINT [FK_RolePoperdomInfo_RoleInfo]
GO
/****** Object:  ForeignKey [FK_UserInfoRole_RoleInfo]    Script Date: 12/22/2011 11:55:52 ******/
ALTER TABLE [dbo].[UserInfoRole]  WITH CHECK ADD  CONSTRAINT [FK_UserInfoRole_RoleInfo] FOREIGN KEY([RoleId])
REFERENCES [dbo].[RoleInfo] ([RoleID])
GO
ALTER TABLE [dbo].[UserInfoRole] CHECK CONSTRAINT [FK_UserInfoRole_RoleInfo]
GO
/****** Object:  ForeignKey [FK_UserInfoRole_UserInfo]    Script Date: 12/22/2011 11:55:52 ******/
ALTER TABLE [dbo].[UserInfoRole]  WITH CHECK ADD  CONSTRAINT [FK_UserInfoRole_UserInfo] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[UserInfoRole] CHECK CONSTRAINT [FK_UserInfoRole_UserInfo]
GO
