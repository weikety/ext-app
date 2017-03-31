USE [master]
GO
/****** Object:  Database [ExtApp]    Script Date: 04/01/2017 07:43:18 ******/
CREATE DATABASE [ExtApp] ON  PRIMARY 
( NAME = N'ExtApp', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ExtApp.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ExtApp_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ExtApp_log.ldf' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'ExtApp', @new_cmptlevel=80
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ExtApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ExtApp] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ExtApp] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ExtApp] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ExtApp] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ExtApp] SET ARITHABORT OFF
GO
ALTER DATABASE [ExtApp] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ExtApp] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ExtApp] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ExtApp] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ExtApp] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ExtApp] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ExtApp] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ExtApp] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ExtApp] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ExtApp] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ExtApp] SET  ENABLE_BROKER
GO
ALTER DATABASE [ExtApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ExtApp] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ExtApp] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ExtApp] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ExtApp] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ExtApp] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ExtApp] SET  READ_WRITE
GO
ALTER DATABASE [ExtApp] SET RECOVERY FULL
GO
ALTER DATABASE [ExtApp] SET  MULTI_USER
GO
ALTER DATABASE [ExtApp] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ExtApp] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'ExtApp', N'ON'
GO
USE [ExtApp]
GO
/****** Object:  Table [dbo].[AppLoginSession]    Script Date: 04/01/2017 07:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppLoginSession](
	[Guid] [nvarchar](255) NOT NULL,
	[UserID] [int] NULL,
	[LoginTime] [datetime] NULL,
	[LoginIP] [nvarchar](255) NULL,
	[Expire] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Guid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'02ee37c5-285e-440c-b9e8-2ec8fb7bfa86', 1, CAST(0x0000A69A00C81B58 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'0357d8ff-2329-4d94-823c-6ac5c353f2df', 1, CAST(0x0000A69B015D680C AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'0e18276f-2bd1-41a1-a070-f14d480ed1f1', 1, CAST(0x0000A69B015A9ADC AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'0f3d02cf-5def-48d3-a531-8f321df12890', 1, CAST(0x0000A69A008B2B58 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'195a7b28-3fd3-4dfd-af23-cdd59db98516', 1, CAST(0x0000A6A000D28A0C AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'19c4b9fe-59ea-4f90-a258-61ee16a08908', 1, CAST(0x0000A69E007F24D4 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'1c7deb4e-10a9-4eca-af8d-745ddaff3981', 1, CAST(0x0000A69B016992E4 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'1ed34557-b70c-448c-ab18-e60a1c13005b', 1, CAST(0x0000A69B008A0660 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'1fca8def-16aa-47e7-9f67-1165823afdc9', 1, CAST(0x0000A6A5008485C8 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'20e77cbd-8b8a-448f-a49e-a19ac1175c04', 1, CAST(0x0000A6A800E07DEC AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'27e79b4b-665d-4376-b706-085363e209c1', 1, CAST(0x0000A699014BF3B0 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'2b82f96f-939d-44a1-804e-c048222376f5', 1, CAST(0x0000A6A800C6C3FC AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'2e42812c-f302-4320-8d42-0785df76e0b1', 1, CAST(0x0000A69A00CEB8B4 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'2f3dfa76-65ee-4744-a486-fdde27958896', 1, CAST(0x0000A6A200C7FF38 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'3cd834da-619d-4c8f-89e4-bf0071372246', 1, CAST(0x0000A69E0089BEE4 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'3e68b768-d150-4f91-876e-b4d4642b83d2', 1, CAST(0x0000A69D00CD986C AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'3f2c3a19-c69c-4bc8-8ce4-f568c4bf9a31', 1, CAST(0x0000A6A40082E36C AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'410a2b5b-3a36-4a27-b2ac-80817c9f9638', 1, CAST(0x0000A6A000B6E770 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'5a367d20-17a1-4dc5-9956-132a4451571d', 1, CAST(0x0000A69900C5691C AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'5cb88cb5-f907-4551-9b44-b70e4744d088', 1, CAST(0x0000A6980147B0AC AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'71e8f024-c8a1-46fd-b571-dbf2d86ae28b', 1, CAST(0x0000A6A500C9A518 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'783e97f1-a0c1-4505-8505-b3d176a30a0b', 1, CAST(0x0000A699011B67F4 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'7a0d6758-3cbd-4a2b-9dc3-da544abde1b2', 1, CAST(0x0000A6A800C8BAB8 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'7bf849e8-0a5d-432e-81dd-1ee9d24045e2', 1, CAST(0x0000A69B015B01FC AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'7c5ad1d3-ecb9-4b73-88cb-bdd5a2ceaefa', 1, CAST(0x0000A69A00C80640 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'8154ab0e-bcdf-4f14-8d02-d9ad5eafec6e', 1, CAST(0x0000A69B014E9EE4 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'8424af31-23a0-42f5-b31e-f9d6af34cc4c', 1, CAST(0x0000A6A000F62868 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'8e5476c1-ec42-43dc-bdb2-a3d9b5405033', 1, CAST(0x0000A6A000F6C1EC AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'983e4deb-dc41-41bb-8975-bad1e979fdd9', 1, CAST(0x0000A69C00C86C34 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'a3da809a-f816-4bb3-bf64-2cbd38181f09', 1, CAST(0x0000A6A800CE0EC8 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'a6bc0ab7-1dc8-4b28-a035-828738618ceb', 1, CAST(0x0000A69C00CBAD68 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'a776572c-3c0f-4a4e-9a54-9dfe446c1a5e', 1, CAST(0x0000A6990167E4D0 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'af4cecc5-e509-4c72-bf72-285395bb4e7c', 1, CAST(0x0000A69C00CB7528 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'b416d3f3-4439-47ec-b61e-9a454b1d2324', 1, CAST(0x0000A6A000D280AC AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'be92d417-1ebd-482f-8b55-f63433ce208f', 1, CAST(0x0000A6A800DE4C98 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'c5af8573-3765-4ab1-8850-bb753774b666', 1, CAST(0x0000A6A80102AFD4 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'ca3cc407-e2c7-4bc8-926b-1a38ce7d96b6', 1, CAST(0x0000A69E00C35C1C AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'dc099704-1c53-4a82-b51e-e6fefc198d13', 1, CAST(0x0000A6A000B4F8E8 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'e5efb487-965c-4200-96f8-6337165dcb6b', 1, CAST(0x0000A69D007E5EC8 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'ead5d07e-cb1a-43d5-865b-b730ebed823c', 1, CAST(0x0000A6A800C91F80 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'f72cb10c-1b77-4f0f-b8a0-d221a33d817e', 1, CAST(0x0000A69B015D0344 AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'fb1cc49d-34ee-45fb-80ab-031a70471b28', 1, CAST(0x0000A6A500819B4C AS DateTime), N'localhost', 7200)
INSERT [dbo].[AppLoginSession] ([Guid], [UserID], [LoginTime], [LoginIP], [Expire]) VALUES (N'fecc05ec-36a3-470f-9e32-40fbaa30db26', 1, CAST(0x0000A69B016023A8 AS DateTime), N'localhost', 7200)
/****** Object:  Table [dbo].[AppLog]    Script Date: 04/01/2017 07:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NULL,
	[Source] [int] NULL,
	[Level] [int] NULL,
	[UserID] [int] NULL,
	[AddTime] [datetime] NULL,
	[IP] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NULL,
	[Content] [nvarchar](255) NULL,
	[Status] [int] NULL,
	[Memo] [nvarchar](255) NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppLog] ON
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1, 0, 2, 3, NULL, CAST(0x0000A6A9016DBC20 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (2, 1, 2, 3, NULL, CAST(0x0000A6A9016DCC88 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (3, 0, 2, 3, NULL, CAST(0x0000A6A90170D900 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4, 1, 2, 3, NULL, CAST(0x0000A6A901711AA0 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1002, 0, 2, 3, NULL, CAST(0x0000A6AA0082D1D8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1003, 1, 2, 3, NULL, CAST(0x0000A6AA0082DB38 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1004, 0, 2, 3, NULL, CAST(0x0000A6AA00842B8C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1005, 1, 2, 3, 1, CAST(0x0000A6AA00843294 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1006, 1, 2, 3, 1, CAST(0x0000A6AA00846F84 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1007, 0, 2, 3, NULL, CAST(0x0000A6AA008514C0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1008, 0, 2, 3, NULL, CAST(0x0000A6AB00835E78 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1009, 1, 2, 3, 1, CAST(0x0000A6AB00836EE0 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1010, 0, 2, 3, NULL, CAST(0x0000A6AB00C610B0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1011, 1, 2, 3, 1, CAST(0x0000A6AB00C61A10 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1012, 0, 2, 3, NULL, CAST(0x0000A6AC007F227C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1013, 1, 2, 3, 1, CAST(0x0000A6AC007F560C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1014, 0, 2, 3, NULL, CAST(0x0000A6AC00809850 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1015, 0, 2, 3, NULL, CAST(0x0000A6AC008189B8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1016, 0, 2, 3, NULL, CAST(0x0000A6AC00C5F364 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1017, 1, 2, 3, 1, CAST(0x0000A6AC00C5FDF0 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1018, 0, 2, 3, NULL, CAST(0x0000A6AC00CAC434 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1019, 0, 2, 3, NULL, CAST(0x0000A6AC00CE6DB4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1020, 0, 2, 3, NULL, CAST(0x0000A6AD016B54E4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1021, 1, 2, 3, 1, CAST(0x0000A6AD016B61C8 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1022, 0, 2, 3, NULL, CAST(0x0000A6AF016E8DE4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1023, 1, 2, 3, 1, CAST(0x0000A6AF016E999C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1024, 0, 2, 3, NULL, CAST(0x0000A6B00142BCB4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1025, 1, 2, 3, 1, CAST(0x0000A6B00142F878 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1026, 0, 2, 3, NULL, CAST(0x0000A6B001441C44 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1027, 0, 2, 3, NULL, CAST(0x0000A6B0014552D0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1028, 0, 2, 3, NULL, CAST(0x0000A6B00145AE38 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1029, 0, 2, 3, NULL, CAST(0x0000A6B0014A1EF0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1030, 0, 2, 3, NULL, CAST(0x0000A6B0014AAA64 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1031, 0, 2, 3, NULL, CAST(0x0000A6B0014B42BC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1032, 0, 0, 3, NULL, CAST(0x0000A6B0014C0670 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1033, 0, 0, 3, NULL, CAST(0x0000A6B0015E24B8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1034, 0, 0, 3, NULL, CAST(0x0000A6B1015C2F28 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1035, 1, 0, 3, 1, CAST(0x0000A6B1015C3F90 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1036, 0, 0, 3, NULL, CAST(0x0000A6B1016DBC20 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1037, 0, 0, 3, NULL, CAST(0x0000A6B201515A80 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1038, 1, 0, 3, 1, CAST(0x0000A6B201516AE8 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1039, 1, 0, 3, NULL, CAST(0x0000A6B20166A28C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1040, 0, 0, 3, NULL, CAST(0x0000A6B3017B6500 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1041, 1, 0, 3, 1, CAST(0x0000A6B3017B662C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1042, 0, 0, 3, NULL, CAST(0x0000A6B3017E0A58 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1043, 0, 0, 3, NULL, CAST(0x0000A6B401573680 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1044, 1, 0, 3, 1, CAST(0x0000A6B4015737AC AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1045, 0, 0, 3, NULL, CAST(0x0000A6B4015CED00 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1046, 0, 0, 3, NULL, CAST(0x0000A6B501505B08 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1047, 1, 0, 3, 1, CAST(0x0000A6B501505B08 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1048, 0, 0, 3, NULL, CAST(0x0000A6B50150EFDC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1049, 0, 0, 3, NULL, CAST(0x0000A6B501546BA8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1050, 1, 0, 3, 1, CAST(0x0000A6B501546CD4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1051, 0, 0, 3, NULL, CAST(0x0000A6B501558614 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (1052, 0, 0, 3, NULL, CAST(0x0000A6B501714E30 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (2051, 0, 0, 3, NULL, CAST(0x0000A6B50173CA84 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (2052, 1, 0, 3, 1, CAST(0x0000A6B50173CBB0 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (2053, 0, 0, 3, NULL, CAST(0x0000A6B50181C8F0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (2054, 1, 0, 3, 1, CAST(0x0000A6B501829E38 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (2055, 0, 0, 3, NULL, CAST(0x0000A6B50188376C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (3055, 0, 0, 3, NULL, CAST(0x0000A6B60097D5EC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (3056, 1, 0, 3, 1, CAST(0x0000A6B60097D718 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (3057, 0, 0, 3, NULL, CAST(0x0000A6B60098A1D4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (3058, 0, 0, 3, NULL, CAST(0x0000A6B600A92F54 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (3059, 0, 0, 3, NULL, CAST(0x0000A6B800C98448 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (3060, 0, 0, 3, NULL, CAST(0x0000A6B800CB370C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (3061, 0, 0, 3, NULL, CAST(0x0000A6B800CB57DC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (3062, 0, 0, 3, NULL, CAST(0x0000A6B800CBB920 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (3063, 0, 0, 3, NULL, CAST(0x0000A6B800CCFA38 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (3064, 1, 0, 3, 1, CAST(0x0000A6B800CD026C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4060, 0, 0, 3, NULL, CAST(0x0000A6B9007E19A4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4061, 1, 0, 3, 1, CAST(0x0000A6B9007F1B74 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4062, 0, 0, 3, NULL, CAST(0x0000A6B900CBD66C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4063, 1, 0, 3, 1, CAST(0x0000A6B900CBFF70 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4064, 1, 0, 3, 1, CAST(0x0000A6B900CC261C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4065, 0, 0, 3, NULL, CAST(0x0000A6B900CCC450 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4066, 1, 0, 3, 1, CAST(0x0000A6B900CCCC84 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4067, 0, 0, 3, NULL, CAST(0x0000A6B900CDDB38 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4068, 0, 0, 3, NULL, CAST(0x0000A6B900CE1CD8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4069, 0, 0, 3, NULL, CAST(0x0000A6B900CE6454 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4070, 0, 0, 3, NULL, CAST(0x0000A6BA007F32E4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4071, 1, 0, 3, 1, CAST(0x0000A6BA007F4220 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4072, 0, 0, 3, NULL, CAST(0x0000A6BA00871BE4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4073, 0, 0, 3, NULL, CAST(0x0000A6BA00C4FE78 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4074, 1, 0, 3, 1, CAST(0x0000A6BA00C507D8 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4075, 0, 0, 3, NULL, CAST(0x0000A6BA00CA5990 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4076, 0, 0, 3, NULL, CAST(0x0000A6BA00CC8E68 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4077, 0, 0, 3, NULL, CAST(0x0000A6BA00D6DFD0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4078, 0, 0, 3, NULL, CAST(0x0000A6BA01623B34 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4079, 1, 0, 3, 1, CAST(0x0000A6BA01627E00 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4080, 0, 0, 3, NULL, CAST(0x0000A6BB0177C288 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (4081, 1, 0, 3, 1, CAST(0x0000A6BB0177C3B4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5080, 0, 0, 3, NULL, CAST(0x0000A6BC00AB15A8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5081, 1, 0, 3, 1, CAST(0x0000A6BC00AB192C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5082, 0, 0, 3, NULL, CAST(0x0000A6BC00AB4104 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5083, 1, 0, 3, 1, CAST(0x0000A6BC00AB59A0 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5084, 0, 0, 3, NULL, CAST(0x0000A6BC00B0F658 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5085, 0, 0, 3, NULL, CAST(0x0000A6BC00BBD6B8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5086, 0, 0, 3, NULL, CAST(0x0000A6BC0118E6F0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5087, 1, 0, 3, 1, CAST(0x0000A6BC0118F17C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5088, 0, 0, 3, NULL, CAST(0x0000A6BC011B2780 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5089, 0, 0, 3, NULL, CAST(0x0000A6BC011DA3D4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5090, 0, 0, 3, NULL, CAST(0x0000A6BC016763E8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5091, 1, 0, 3, 1, CAST(0x0000A6BC01676514 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5092, 1, 0, 3, 1, CAST(0x0000A6BC0167B974 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5093, 0, 0, 3, NULL, CAST(0x0000A6BC016A9964 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5094, 0, 0, 3, NULL, CAST(0x0000A6BC016DF0DC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5095, 0, 0, 3, NULL, CAST(0x0000A6BC016EC3CC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5096, 0, 0, 3, NULL, CAST(0x0000A6BC0171D3C8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (5097, 0, 0, 3, NULL, CAST(0x0000A6BC017A00C0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6097, 0, 0, 3, NULL, CAST(0x0000A6BE0082AB2C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6098, 1, 0, 3, 1, CAST(0x0000A6BE0082B5B8 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6099, 0, 0, 3, NULL, CAST(0x0000A6BE00C55530 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6100, 1, 0, 3, 1, CAST(0x0000A6BE00C55E90 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6101, 0, 0, 3, NULL, CAST(0x0000A6BE00C6DB6C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6102, 0, 0, 3, NULL, CAST(0x0000A6BF0080FE44 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6103, 1, 0, 3, 1, CAST(0x0000A6BF0081135C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6104, 0, 0, 3, NULL, CAST(0x0000A6BF00C4A7C0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6105, 1, 0, 3, 1, CAST(0x0000A6BF00C51264 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6106, 0, 0, 3, NULL, CAST(0x0000A6C0007FBC00 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6107, 1, 0, 3, NULL, CAST(0x0000A6C0007FC560 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6108, 0, 0, 3, NULL, CAST(0x0000A6C000CA4B80 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6109, 1, 0, 3, 1, CAST(0x0000A6C000CCD710 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6110, 1, 0, 3, 1, CAST(0x0000A6C000D72878 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6111, 0, 0, 3, NULL, CAST(0x0000A6C100818D3C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6112, 1, 0, 3, 1, CAST(0x0000A6C1008198F4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6113, 0, 0, 3, NULL, CAST(0x0000A6C1008CC328 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6114, 1, 0, 3, 1, CAST(0x0000A6C1008CC328 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6115, 0, 0, 3, NULL, CAST(0x0000A6C100C9B1FC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6116, 1, 0, 3, 1, CAST(0x0000A6C100C9BB5C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6117, 1, 0, 3, 1, CAST(0x0000A6C100D01BC8 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (6118, 0, 0, 3, NULL, CAST(0x0000A6C100D07730 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7118, 0, 0, 3, NULL, CAST(0x0000A6C200C9B454 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7119, 1, 0, 3, 1, CAST(0x0000A6C200CA40F4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7120, 0, 0, 3, NULL, CAST(0x0000A6C200CBF868 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7121, 0, 0, 3, NULL, CAST(0x0000A6C200CF7D94 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7122, 0, 0, 3, NULL, CAST(0x0000A6C600C942A8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7123, 0, 0, 3, NULL, CAST(0x0000A6C7008123C4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7124, 1, 0, 3, 1, CAST(0x0000A6C700812E50 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7125, 0, 0, 3, NULL, CAST(0x0000A6C700C6B4C0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7126, 1, 0, 3, NULL, CAST(0x0000A6C700C6C780 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7127, 0, 0, 3, NULL, CAST(0x0000A6C700C950B8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7128, 1, 0, 3, NULL, CAST(0x0000A6C700C950B8 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7129, 0, 0, 3, NULL, CAST(0x0000A6C80082C9A4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7130, 1, 0, 3, 1, CAST(0x0000A6C80082D55C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7131, 1, 0, 3, 1, CAST(0x0000A6C80083D150 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7132, 0, 0, 3, NULL, CAST(0x0000A6DA00C6B13C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7133, 1, 0, 3, NULL, CAST(0x0000A6DA00C6C3FC AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7134, 0, 0, 3, NULL, CAST(0x0000A6F800C43038 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7135, 1, 0, 3, 1, CAST(0x0000A6F800C43D1C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7136, 0, 0, 3, NULL, CAST(0x0000A70500CB4774 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7137, 1, 0, 3, 1, CAST(0x0000A70500CB5584 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7138, 0, 0, 3, NULL, CAST(0x0000A71500CFD44C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7139, 0, 0, 3, NULL, CAST(0x0000A71500D000D4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7140, 1, 0, 3, 1, CAST(0x0000A71500D000D4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7141, 0, 0, 3, NULL, CAST(0x0000A71A008256CC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7142, 1, 0, 3, 1, CAST(0x0000A71A00826158 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7143, 0, 0, 3, NULL, CAST(0x0000A72400825474 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7144, 1, 0, 3, NULL, CAST(0x0000A7240082602C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7145, 0, 0, 3, NULL, CAST(0x0000A72700C3A014 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7146, 1, 0, 3, NULL, CAST(0x0000A72700C3B2D4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7147, 0, 0, 3, NULL, CAST(0x0000A72700C5FF1C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7148, 0, 0, 3, NULL, CAST(0x0000A729007E73E0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7149, 0, 0, 3, NULL, CAST(0x0000A72B007E1170 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7150, 1, 0, 3, 1, CAST(0x0000A72B007E19A4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7151, 0, 0, 3, NULL, CAST(0x0000A72B008345DC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7152, 0, 0, 3, NULL, CAST(0x0000A72C007CEFFC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7153, 1, 0, 3, NULL, CAST(0x0000A72C007CFA88 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7154, 0, 0, 3, NULL, CAST(0x0000A72D0096CE40 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7155, 1, 0, 3, NULL, CAST(0x0000A72D0096D2F0 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7156, 0, 0, 3, NULL, CAST(0x0000A72E007DA5A0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7157, 1, 0, 3, 1, CAST(0x0000A72E007DB734 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7158, 1, 0, 3, 1, CAST(0x0000A72E007DCC4C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7159, 1, 0, 3, 1, CAST(0x0000A72E007EBEE0 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7160, 0, 0, 3, NULL, CAST(0x0000A72E0080CAB4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7161, 1, 0, 3, 1, CAST(0x0000A72E0080CAB4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7162, 0, 0, 3, NULL, CAST(0x0000A72E008160B4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7163, 1, 0, 3, 1, CAST(0x0000A72E00819ED0 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7164, 0, 0, 3, NULL, CAST(0x0000A72E00822210 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7165, 0, 0, 3, NULL, CAST(0x0000A72F0082CF80 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7166, 0, 0, 3, NULL, CAST(0x0000A72F0082F3D4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7167, 0, 0, 3, NULL, CAST(0x0000A72F00C47304 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7168, 0, 0, 3, NULL, CAST(0x0000A72F00C90234 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7169, 0, 0, 3, NULL, CAST(0x0000A730007D40D8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7170, 0, 0, 3, NULL, CAST(0x0000A73000C3BFB8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7171, 0, 0, 3, NULL, CAST(0x0000A73000C76488 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7172, 0, 0, 3, NULL, CAST(0x0000A73000D5CA14 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7173, 0, 0, 3, NULL, CAST(0x0000A731007BB844 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7174, 0, 0, 3, NULL, CAST(0x0000A731007D9790 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7175, 0, 0, 3, NULL, CAST(0x0000A73100808B6C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7176, 0, 0, 3, NULL, CAST(0x0000A73100C57F60 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7177, 0, 0, 3, NULL, CAST(0x0000A73100C63888 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7178, 0, 0, 3, NULL, CAST(0x0000A731014C3EB0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7179, 0, 0, 3, NULL, CAST(0x0000A732007CEC78 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7180, 0, 0, 3, NULL, CAST(0x0000A73200D53D74 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7181, 0, 0, 3, NULL, CAST(0x0000A73200D5B9AC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7182, 0, 0, 3, NULL, CAST(0x0000A7330080D1BC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7183, 0, 0, 3, NULL, CAST(0x0000A73300C832C8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7184, 0, 0, 3, NULL, CAST(0x0000A735007BD914 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7185, 0, 0, 3, NULL, CAST(0x0000A73500814818 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7186, 0, 0, 3, NULL, CAST(0x0000A736007D8E30 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7187, 0, 0, 3, NULL, CAST(0x0000A737007DA6CC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7188, 0, 0, 3, NULL, CAST(0x0000A737008256CC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7189, 0, 0, 3, NULL, CAST(0x0000A73700C89664 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7190, 0, 0, 3, NULL, CAST(0x0000A73700C8F0A0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7191, 0, 0, 3, NULL, CAST(0x0000A738007BBCF4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7192, 0, 0, 3, NULL, CAST(0x0000A738007D8AAC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7193, 0, 0, 3, NULL, CAST(0x0000A738007FB2A0 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7194, 0, 0, 3, NULL, CAST(0x0000A73800811230 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7195, 0, 0, 3, NULL, CAST(0x0000A73800825B7C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7196, 0, 0, 3, NULL, CAST(0x0000A73800C8B734 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7197, 0, 0, 3, NULL, CAST(0x0000A73800C94884 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7198, 0, 0, 3, NULL, CAST(0x0000A73800C9C00C AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7199, 0, 0, 3, NULL, CAST(0x0000A73800CA6FD4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7200, 0, 0, 3, NULL, CAST(0x0000A73800CC1488 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7201, 0, 0, 3, NULL, CAST(0x0000A73800CC3684 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7202, 0, 0, 3, NULL, CAST(0x0000A73800CDE5C4 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7203, 0, 0, 3, NULL, CAST(0x0000A739007C6CBC AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7204, 0, 0, 3, NULL, CAST(0x0000A739007E3DF8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7205, 0, 0, 3, NULL, CAST(0x0000A73900806BC8 AS DateTime), N'127.0.0.1', N'系统启动', N'', 0, N'', NULL)
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7206, 1, 0, 3, NULL, CAST(0x0000A73B009E32D4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7207, 1, 0, 3, NULL, CAST(0x0000A73B009E4468 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7208, 1, 0, 3, NULL, CAST(0x0000A73B009EB86C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7209, 1, 0, 3, NULL, CAST(0x0000A73B009EE620 AS DateTime), N'::1', N'用户admin登录失败！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7210, 1, 0, 3, NULL, CAST(0x0000A73B009F2C70 AS DateTime), N'::1', N'用户admin登录失败！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7211, 1, 0, 3, NULL, CAST(0x0000A73B009F2EC8 AS DateTime), N'::1', N'用户admin登录失败！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7212, 1, 0, 3, NULL, CAST(0x0000A73B009F2FF4 AS DateTime), N'::1', N'用户admin登录失败！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7213, 1, 0, 3, 1, CAST(0x0000A73B009F36FC AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7214, 1, 0, 3, 1, CAST(0x0000A73B00A25AE4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7215, 1, 0, 3, NULL, CAST(0x0000A73B00A26444 AS DateTime), N'::1', N'用户65656登录失败！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7216, 1, 0, 3, 1, CAST(0x0000A73C007C6A64 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7217, 1, 0, 3, 1, CAST(0x0000A73E00C88BD8 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7218, 1, 0, 3, NULL, CAST(0x0000A73F007C14D8 AS DateTime), N'::1', N'用户admin登录失败！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7219, 1, 0, 3, 1, CAST(0x0000A73F007C1AB4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7220, 1, 0, 3, 1, CAST(0x0000A73F007CDAE4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7221, 1, 0, 3, 1, CAST(0x0000A73F00CB20C8 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7222, 1, 0, 3, 1, CAST(0x0000A740007EA2C0 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7223, 1, 0, 3, 1, CAST(0x0000A740007F560C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7224, 1, 0, 3, 1, CAST(0x0000A74000C4917C AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7225, 1, 0, 3, 1, CAST(0x0000A74000C980C4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7226, 1, 0, 3, 1, CAST(0x0000A741007B6AEC AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7227, 1, 0, 3, 1, CAST(0x0000A74100C49D34 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7228, 1, 0, 3, NULL, CAST(0x0000A743007D84D0 AS DateTime), N'::1', N'用户admin登录失败！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7229, 1, 0, 3, NULL, CAST(0x0000A743007DE86C AS DateTime), N'::1', N'用户admin登录失败！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7230, 1, 0, 3, 1, CAST(0x0000A743007E2C64 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7231, 1, 0, 3, NULL, CAST(0x0000A74300C374B8 AS DateTime), N'::1', N'用户admin登录失败！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7232, 1, 0, 3, NULL, CAST(0x0000A74300C37968 AS DateTime), N'::1', N'用户admin登录失败！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7233, 1, 0, 3, NULL, CAST(0x0000A74300C3D854 AS DateTime), N'::1', N'用户admin登录失败！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7234, 1, 0, 3, 1, CAST(0x0000A74300C3E790 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7235, 1, 0, 3, 1, CAST(0x0000A744007F62F0 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7236, 1, 0, 3, 1, CAST(0x0000A74400C5E680 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7237, 1, 0, 3, 1, CAST(0x0000A746007BE274 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7238, 1, 0, 3, 1, CAST(0x0000A74600C5E0A4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7239, 1, 0, 3, 1, CAST(0x0000A747007AF814 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7240, 1, 0, 3, 1, CAST(0x0000A74700CA4CAC AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
INSERT [dbo].[AppLog] ([ID], [Type], [Source], [Level], [UserID], [AddTime], [IP], [Title], [Content], [Status], [Memo], [Comment]) VALUES (7241, 1, 0, 3, 1, CAST(0x0000A748007A0DB4 AS DateTime), N'::1', N'用户admin登录成功！', N'', 0, NULL, N'')
SET IDENTITY_INSERT [dbo].[AppLog] OFF
/****** Object:  Table [dbo].[AppDept]    Script Date: 04/01/2017 07:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppDept](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Status] [int] NULL,
	[AddTime] [datetime] NULL,
	[Sort] [int] NULL,
	[Comment] [nvarchar](255) NULL,
	[HeadID] [int] NULL,
	[AddUserID] [int] NULL,
	[Type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppDept] ON
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3014, NULL, N'001', N'董事会', 1, CAST(0x0000A739007CCE00 AS DateTime), 1, NULL, NULL, NULL, 1)
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3015, 3014, N'001001', N'总经理办', 1, CAST(0x0000A739007E6378 AS DateTime), 1, NULL, NULL, NULL, 1)
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3017, 3014, N'001002', N'研发部', 1, CAST(0x0000A73A007EBB5C AS DateTime), 2, NULL, NULL, 1, 1)
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3018, 3017, N'001002001', N'项目部', 1, CAST(0x0000A73A007F3FC8 AS DateTime), 1, NULL, NULL, 1, 1)
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3019, 3017, N'001002002', N'产品部', 1, CAST(0x0000A73A007F4B80 AS DateTime), 2, NULL, NULL, 1, 1)
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3020, 3014, N'001003', N'财务部', 1, CAST(0x0000A73A007F5F6C AS DateTime), 3, NULL, NULL, 1, 1)
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3021, 3014, N'001004', N'综合部', 0, CAST(0x0000A73A007F6C50 AS DateTime), 4, NULL, NULL, 1, 1)
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3024, 3020, N'001003001', N'会计', 1, CAST(0x0000A73C008256CC AS DateTime), 1, NULL, NULL, 1, 1)
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3025, 3020, N'001003002', N'出纳', 1, CAST(0x0000A73C0082698C AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3026, 3017, N'001002003', N'测试部', 1, CAST(0x0000A741007BA0D4 AS DateTime), 3, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[AppDept] OFF
/****** Object:  Table [dbo].[AppUser]    Script Date: 04/01/2017 07:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Sex] [int] NULL,
	[RoleID] [int] NULL,
	[DeptID] [int] NULL,
	[Status] [int] NULL,
	[Duty] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[FaceUrl] [nvarchar](255) NULL,
	[AddTime] [datetime] NULL,
	[Sort] [int] NULL,
	[Comment] [nvarchar](255) NULL,
	[Birthday] [datetime] NULL,
	[Address] [nvarchar](255) NULL,
	[isAdmin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppUser] ON
INSERT [dbo].[AppUser] ([ID], [Username], [Password], [Name], [Sex], [RoleID], [DeptID], [Status], [Duty], [Phone], [Email], [FaceUrl], [AddTime], [Sort], [Comment], [Birthday], [Address], [isAdmin]) VALUES (1, N'admin', N'OhpHH5gn55nuplWK0h2esw==', N'管理员', 1, 5, 3014, 1, N'系统维护', N'10086', N'930372551@qq.com', NULL, NULL, 1, NULL, CAST(0x0000806800000000 AS DateTime), N'重工', 0)
SET IDENTITY_INSERT [dbo].[AppUser] OFF
/****** Object:  Table [dbo].[AppRole]    Script Date: 04/01/2017 07:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Status] [int] NULL,
	[Memo] [nvarchar](255) NULL,
	[Code] [nvarchar](255) NULL,
	[Layer] [int] NULL,
	[Sort] [int] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppRole] ON
INSERT [dbo].[AppRole] ([ID], [Name], [Status], [Memo], [Code], [Layer], [Sort], [Comment]) VALUES (5, N'超级管理员', 0, NULL, N'cjgly', 10, 0, NULL)
INSERT [dbo].[AppRole] ([ID], [Name], [Status], [Memo], [Code], [Layer], [Sort], [Comment]) VALUES (6, N'总经理', 0, NULL, N'zjl', 20, NULL, NULL)
INSERT [dbo].[AppRole] ([ID], [Name], [Status], [Memo], [Code], [Layer], [Sort], [Comment]) VALUES (7, N'测试', -1, NULL, N'cs', 30, NULL, NULL)
INSERT [dbo].[AppRole] ([ID], [Name], [Status], [Memo], [Code], [Layer], [Sort], [Comment]) VALUES (1002, N'副总经理', 0, NULL, N'fzjl', 30, NULL, NULL)
INSERT [dbo].[AppRole] ([ID], [Name], [Status], [Memo], [Code], [Layer], [Sort], [Comment]) VALUES (1003, N'部门主管', 0, NULL, N'bmzg', 40, NULL, NULL)
INSERT [dbo].[AppRole] ([ID], [Name], [Status], [Memo], [Code], [Layer], [Sort], [Comment]) VALUES (1004, N'项目经理', 0, NULL, N'xmjl', 50, NULL, NULL)
INSERT [dbo].[AppRole] ([ID], [Name], [Status], [Memo], [Code], [Layer], [Sort], [Comment]) VALUES (1005, N'普通职工', 0, NULL, N'ptzg', 60, NULL, NULL)
INSERT [dbo].[AppRole] ([ID], [Name], [Status], [Memo], [Code], [Layer], [Sort], [Comment]) VALUES (2002, N'教师', 0, NULL, N'js', 70, NULL, NULL)
INSERT [dbo].[AppRole] ([ID], [Name], [Status], [Memo], [Code], [Layer], [Sort], [Comment]) VALUES (2003, N'学生', 0, NULL, N'xs', 80, NULL, NULL)
INSERT [dbo].[AppRole] ([ID], [Name], [Status], [Memo], [Code], [Layer], [Sort], [Comment]) VALUES (2004, N'测试', 0, NULL, N'test', 90, NULL, NULL)
INSERT [dbo].[AppRole] ([ID], [Name], [Status], [Memo], [Code], [Layer], [Sort], [Comment]) VALUES (2005, N'测试122222', -1, N'33333', N'cs12', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AppRole] OFF
/****** Object:  Table [dbo].[AppDeptRoleMenu]    Script Date: 04/01/2017 07:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppDeptRoleMenu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [int] NULL,
	[Memo] [nvarchar](255) NULL,
	[DeptID] [int] NULL,
	[RoleID] [int] NULL,
	[MenuID] [int] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppMenu]    Script Date: 04/01/2017 07:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppMenu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](255) NOT NULL,
	[PID] [int] NOT NULL,
	[UrlType] [int] NULL,
	[Url] [nvarchar](255) NULL,
	[IconType] [int] NULL,
	[Icon] [nvarchar](255) NULL,
	[Status] [int] NULL,
	[Sort] [int] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppMenu] ON
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (1, N'系统管理', N'001', 0, 0, NULL, 1, N'Computer', 0, 5, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (2, N'权限管理', N'001001', 1, 0, NULL, 1, N'Userkey', 0, 30, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (3, N'菜单管理', N'001001001', 2, 1, N'App.view.authority.menu.List', 1, N'Applicationsidetree', 0, 20, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (4, N'在线办公', N'002', 0, 0, NULL, 0, NULL, 0, 10, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (5, N'组织机构管理', N'001002', 1, 1, N'App.view.personnel.dept.List', 1, N'Building', 0, 10, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (6, N'用户管理', N'001003', 1, 1, N'App.view.personnel.user.List', 1, N'User', 0, 20, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (7, N'角色管理', N'001001002', 2, 1, N'App.view.authority.role.List', 1, N'Group', 0, 10, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (8, N'数据字典', N'001004', 1, 0, N'App.view.core.dic.List', 1, N'Book', 0, 40, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (9, N'系统配置', N'001005', 1, 1, N'App.view.core.config.List', 1, N'Wrench', 0, 50, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (10, N'系统日志', N'001006', 1, 1, N'App.view.core.logs.List', 1, N'Page', 0, 60, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (1002, N'通知公告', N'002001', 4, 0, NULL, 0, NULL, 0, 10, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (1003, N'工作日志', N'002002', 4, 0, NULL, 0, NULL, 0, 20, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (1004, N'邮件收发', N'002003', 4, 0, NULL, 0, NULL, 0, 30, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (1005, N'发送通知公告', N'002001001', 1002, 0, NULL, 0, NULL, 0, 10, NULL)
SET IDENTITY_INSERT [dbo].[AppMenu] OFF
/****** Object:  Table [dbo].[AppConfigSection]    Script Date: 04/01/2017 07:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppConfigSection](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Layer] [int] NULL,
	[Status] [int] NULL,
	[Memo] [nvarchar](255) NULL,
	[SectionID] [int] NULL,
	[Sort] [int] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppConfigSection] ON
INSERT [dbo].[AppConfigSection] ([ID], [Name], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (1, N'组织机构配置', 1, 0, N'', NULL, NULL, NULL)
INSERT [dbo].[AppConfigSection] ([ID], [Name], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (2, N'用户配置', 2, 0, N'', NULL, NULL, NULL)
INSERT [dbo].[AppConfigSection] ([ID], [Name], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (3, N'权限配置', 3, 0, N'', NULL, NULL, NULL)
INSERT [dbo].[AppConfigSection] ([ID], [Name], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (4, N'角色配置', 1, 0, N'', 3, NULL, NULL)
INSERT [dbo].[AppConfigSection] ([ID], [Name], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (5, N'系统菜单配置', 2, 0, N'', 3, NULL, NULL)
INSERT [dbo].[AppConfigSection] ([ID], [Name], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (6, N'数据字典配置', 4, 0, N'', NULL, NULL, NULL)
INSERT [dbo].[AppConfigSection] ([ID], [Name], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (7, N'系统日志配置', 5, 0, N'', NULL, NULL, NULL)
INSERT [dbo].[AppConfigSection] ([ID], [Name], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (8, N'文件配置', 6, 0, N'', NULL, NULL, NULL)
INSERT [dbo].[AppConfigSection] ([ID], [Name], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (9, N'上传配置', 1, 0, N'', 8, NULL, NULL)
INSERT [dbo].[AppConfigSection] ([ID], [Name], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (10, N'下载配置', 2, 0, N'', 8, NULL, NULL)
INSERT [dbo].[AppConfigSection] ([ID], [Name], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (1002, N'测试', NULL, 1, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[AppConfigSection] OFF
/****** Object:  Table [dbo].[AppDic]    Script Date: 04/01/2017 07:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppDic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](255) NULL,
	[Type] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Status] [int] NULL,
	[Memo] [nvarchar](255) NULL,
	[Sort] [int] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppDic] ON
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (1, N'LogType', 0, N'日志类型', 0, N'', NULL, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (2, N'LogSource', 0, N'日志来源', 0, N'', NULL, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (3, N'LogLevel', 0, N'日志等级', 0, N'', NULL, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (4, N'Sex', 0, N'性别', 0, N'', NULL, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (5, N'FrameStyle', 0, N'框架样式', 0, N'', NULL, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (6, N'ExtJsTheme', 0, N'ExtJs主题', 0, N'', NULL, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (7, N'test1', 1, N'测试一', 0, N'', NULL, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (8, N'test2', 1, N'测试2', 0, N'', NULL, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (9, N'test3', 1, N'测试3', -1, N'', NULL, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (1005, N'44', 0, N'44', 1, NULL, 0, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (1006, N'54', 1, N'54', 1, NULL, 54, N'54')
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (1007, N'43', 0, N'43', 1, NULL, 0, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (1008, N'54545', 1, N'54545', 1, NULL, 45454, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Memo], [Sort], [Comment]) VALUES (1010, N'Test1', 0, N'测试天天', 1, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[AppDic] OFF
/****** Object:  Table [dbo].[AppDicItem]    Script Date: 04/01/2017 07:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppDicItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DicID] [int] NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Layer] [int] NULL,
	[Status] [int] NULL,
	[Memo] [nvarchar](255) NULL,
	[Sort] [int] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppDicItem] ON
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (1, 3, N'Fatel', N'崩溃', 1, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (2, 3, N'Error', N'错误', 2, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (3, 3, N'Warn', N'警告', 3, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (4, 3, N'Info', N'消息', 4, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (5, 3, N'Debug', N'调试', 5, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (6, 1, N'System', N'系统事件', 1, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (7, 1, N'User', N'用户事件', 2, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (8, 2, N'WebApp', N'Web应用', 1, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (9, 2, N'MobileApp', N'移动应用', 2, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (10, 2, N'DesktopApp', N'桌面客户端', 3, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (11, 4, N'Man', N'男', 1, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (12, 4, N'Woman', N'女', 2, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (13, 5, N'Accordion', N'折叠面板', 1, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (14, 5, N'Desktop', N'桌面样式', 2, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (15, 5, N'Navigation', N'导航样式', 3, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (16, 6, N'Classic', N'Classic主题', 1, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (17, 6, N'Aria', N'Aria主题', 2, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (18, 6, N'Crisp', N'Crisp主题', 3, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (19, 6, N'Gray', N'Gray主题', 4, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (20, 6, N'Neptune', N'Neptune主题', 5, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (21, 6, N'Triton', N'Triton主题', 6, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (22, 7, N'2222', N'测试子项11', 1, -1, N'test', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (23, 7, N'545', N'545', 555, -1, N'545', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (24, 7, N'456', N'123', 789, 0, N'1111111111111', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (25, 8, N'333', N'测试333', 33, 0, N'', NULL, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (1008, NULL, N'钱钱钱', N'钱钱钱', NULL, 1, NULL, 0, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (1009, NULL, N'嗡嗡嗡', N'嗡嗡嗡', NULL, 1, NULL, 0, N'嗡嗡嗡')
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (1010, NULL, N'呃呃呃', N'呃呃呃', NULL, 1, NULL, 1, N'鹅鹅鹅')
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (1011, NULL, N'呃呃呃', N'呃呃呃', NULL, 1, NULL, 1, N'鹅鹅鹅')
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (1012, 1010, N'任溶溶', N'任溶溶', NULL, 1, NULL, 0, N'任溶溶')
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Layer], [Status], [Memo], [Sort], [Comment]) VALUES (1013, 1010, N'鹅鹅鹅', N'鹅鹅鹅', NULL, 1, NULL, 111, N'谔谔谔谔')
SET IDENTITY_INSERT [dbo].[AppDicItem] OFF
/****** Object:  Table [dbo].[AppConfig]    Script Date: 04/01/2017 07:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppConfig](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[ConfigKey] [nvarchar](255) NULL,
	[ConfigValue] [nvarchar](255) NULL,
	[Layer] [int] NULL,
	[Status] [int] NULL,
	[Memo] [nvarchar](255) NULL,
	[SectionID] [int] NULL,
	[Sort] [int] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppConfig] ON
INSERT [dbo].[AppConfig] ([ID], [Name], [ConfigKey], [ConfigValue], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (1, N'用户初始密码', N'UserInitPwd', N'123', 1, 0, N'用户初始化密码', 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AppConfig] OFF
/****** Object:  ForeignKey [FK__AppLoginS__UserI__31EC6D26]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppLoginSession]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[AppUser] ([ID])
GO
/****** Object:  ForeignKey [FK__AppLog__UserID__30F848ED]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppLog]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[AppUser] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDept__AddUser__2A4B4B5E]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppDept]  WITH CHECK ADD FOREIGN KEY([AddUserID])
REFERENCES [dbo].[AppUser] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDept__HeadID__29572725]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppDept]  WITH CHECK ADD FOREIGN KEY([HeadID])
REFERENCES [dbo].[AppUser] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDept__PID__2B3F6F97]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppDept]  WITH CHECK ADD FOREIGN KEY([PID])
REFERENCES [dbo].[AppDept] ([ID])
GO
/****** Object:  ForeignKey [FK__AppUser__DeptID__33D4B598]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppUser]  WITH CHECK ADD FOREIGN KEY([DeptID])
REFERENCES [dbo].[AppDept] ([ID])
GO
/****** Object:  ForeignKey [FK__AppUser__RoleID__32E0915F]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppUser]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[AppRole] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDeptRo__DeptI__2F10007B]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppDeptRoleMenu]  WITH CHECK ADD FOREIGN KEY([DeptID])
REFERENCES [dbo].[AppDept] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDeptRo__MenuI__2C3393D0]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppDeptRoleMenu]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[AppMenu] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDeptRo__MenuI__2D27B809]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppDeptRoleMenu]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[AppMenu] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDeptRo__RoleI__2E1BDC42]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppDeptRoleMenu]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[AppRole] ([ID])
GO
/****** Object:  ForeignKey [FK__AppConfig__Secti__286302EC]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppConfigSection]  WITH CHECK ADD FOREIGN KEY([SectionID])
REFERENCES [dbo].[AppConfigSection] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDicIte__DicID__300424B4]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppDicItem]  WITH CHECK ADD FOREIGN KEY([DicID])
REFERENCES [dbo].[AppDic] ([ID])
GO
/****** Object:  ForeignKey [FK__AppConfig__Secti__276EDEB3]    Script Date: 04/01/2017 07:43:19 ******/
ALTER TABLE [dbo].[AppConfig]  WITH CHECK ADD FOREIGN KEY([SectionID])
REFERENCES [dbo].[AppConfigSection] ([ID])
GO
