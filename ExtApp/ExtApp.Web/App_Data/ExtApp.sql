USE [master]
GO
/****** Object:  Database [ExtApp]    Script Date: 04/06/2017 07:49:47 ******/
CREATE DATABASE [ExtApp] ON  PRIMARY 
( NAME = N'ExtApp', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ExtApp.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ExtApp_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ExtApp_log.ldf' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ExtApp] SET COMPATIBILITY_LEVEL = 80
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
ALTER DATABASE [ExtApp] SET HONOR_BROKER_PRIORITY OFF
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
/****** Object:  Table [dbo].[AppLoginSession]    Script Date: 04/06/2017 07:49:48 ******/
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
/****** Object:  Table [dbo].[AppLog]    Script Date: 04/06/2017 07:49:48 ******/
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
/****** Object:  Table [dbo].[AppDept]    Script Date: 04/06/2017 07:49:48 ******/
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
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3021, 3014, N'001004', N'综合部', 1, CAST(0x0000A73A007F6C50 AS DateTime), 4, NULL, NULL, 1, 1)
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3024, 3020, N'001003001', N'会计', 1, CAST(0x0000A73C008256CC AS DateTime), 1, NULL, NULL, 1, 1)
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3025, 3020, N'001003002', N'出纳', 1, CAST(0x0000A73C0082698C AS DateTime), 2, NULL, NULL, 1, 1)
INSERT [dbo].[AppDept] ([ID], [PID], [Code], [Name], [Status], [AddTime], [Sort], [Comment], [HeadID], [AddUserID], [Type]) VALUES (3026, 3017, N'001002003', N'测试部', 1, CAST(0x0000A741007BA0D4 AS DateTime), 3, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[AppDept] OFF
/****** Object:  Table [dbo].[AppDatabaseBackup]    Script Date: 04/06/2017 07:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppDatabaseBackup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[FileName] [nvarchar](255) NULL,
	[AddTime] [datetime] NULL,
	[IsCurrent] [bit] NULL,
	[AddUserID] [int] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppDatabaseBackup] ON
INSERT [dbo].[AppDatabaseBackup] ([ID], [Name], [FileName], [AddTime], [IsCurrent], [AddUserID], [Comment]) VALUES (1, N'数据库2017-04-06备份', N'ExtApp20170406073943.bak', CAST(0x0000A74D007E43D4 AS DateTime), 0, 1, NULL)
SET IDENTITY_INSERT [dbo].[AppDatabaseBackup] OFF
/****** Object:  Table [dbo].[AppUser]    Script Date: 04/06/2017 07:49:48 ******/
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
/****** Object:  Table [dbo].[AppRole]    Script Date: 04/06/2017 07:49:48 ******/
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
/****** Object:  Table [dbo].[AppDeptRoleMenu]    Script Date: 04/06/2017 07:49:48 ******/
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
/****** Object:  Table [dbo].[AppMenu]    Script Date: 04/06/2017 07:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppMenu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](255) NOT NULL,
	[PID] [int] NULL,
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
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (1, N'系统管理', N'001', NULL, 0, NULL, 1, N'Computer', 1, 10, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (2, N'权限管理', N'001001', 1, 0, NULL, 1, N'Userkey', 1, 30, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (3, N'菜单管理', N'001001001', 2, 1, N'App.view.authority.menu.List', 1, N'Applicationsidetree', 1, 20, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (4, N'在线办公', N'002', NULL, 0, NULL, 0, NULL, 1, 20, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (5, N'组织机构管理', N'001002', 1, 1, N'App.view.personnel.dept.List', 1, N'Building', 1, 10, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (6, N'用户管理', N'001003', 1, 1, N'App.view.personnel.user.List', 1, N'User', 1, 20, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (7, N'角色管理', N'001001002', 2, 1, N'App.view.authority.role.List', 1, N'Group', 1, 10, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (8, N'数据字典', N'001004', 1, 0, N'App.view.core.dic.List', 1, N'Book', 1, 40, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (9, N'系统配置', N'001005', 1, 1, N'App.view.core.config.List', 1, N'Wrench', 1, 50, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (10, N'系统日志', N'001006', 1, 1, N'App.view.core.logs.List', 1, N'Page', 1, 60, NULL)
INSERT [dbo].[AppMenu] ([ID], [Name], [Code], [PID], [UrlType], [Url], [IconType], [Icon], [Status], [Sort], [Comment]) VALUES (4006, N'数据库备份', N'001007', 1, 1, N'App.view.core.databaseBackup.List', 1, N'Database', 1, 70, NULL)
SET IDENTITY_INSERT [dbo].[AppMenu] OFF
/****** Object:  Table [dbo].[AppConfigSection]    Script Date: 04/06/2017 07:49:48 ******/
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
INSERT [dbo].[AppConfigSection] ([ID], [Name], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (1003, N'数据库配置', NULL, 1, NULL, NULL, 7, NULL)
SET IDENTITY_INSERT [dbo].[AppConfigSection] OFF
/****** Object:  Table [dbo].[AppDic]    Script Date: 04/06/2017 07:49:48 ******/
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
	[Sort] [int] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppDic] ON
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Sort], [Comment]) VALUES (1, N'LogType', 0, N'日志类型', 1, 1, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Sort], [Comment]) VALUES (2, N'LogSource', 0, N'日志来源', 1, 2, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Sort], [Comment]) VALUES (3, N'LogLevel', 0, N'日志等级', 1, 3, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Sort], [Comment]) VALUES (4, N'Sex', 0, N'性别', 1, 4, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Sort], [Comment]) VALUES (5, N'FrameStyle', 0, N'框架样式', 1, 5, NULL)
INSERT [dbo].[AppDic] ([ID], [Code], [Type], [Name], [Status], [Sort], [Comment]) VALUES (6, N'ExtJsTheme', 0, N'ExtJs主题', 1, 6, NULL)
SET IDENTITY_INSERT [dbo].[AppDic] OFF
/****** Object:  Table [dbo].[AppDicItem]    Script Date: 04/06/2017 07:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppDicItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DicID] [int] NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Status] [int] NULL,
	[Sort] [int] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppDicItem] ON
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (1, 3, N'Fatel', N'崩溃', 1, 1, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (2, 3, N'Error', N'错误', 1, 2, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (3, 3, N'Warn', N'警告', 1, 3, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (4, 3, N'Info', N'消息', 1, 4, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (5, 3, N'Debug', N'调试', 1, 5, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (6, 1, N'System', N'系统事件', 1, 1, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (7, 1, N'User', N'用户事件', 1, 2, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (8, 2, N'WebApp', N'Web应用', 1, 1, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (9, 2, N'MobileApp', N'移动应用', 1, 2, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (10, 2, N'DesktopApp', N'桌面客户端', 1, 3, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (11, 4, N'Man', N'男', 1, 1, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (12, 4, N'Woman', N'女', 1, 2, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (13, 5, N'Accordion', N'折叠面板', 1, 1, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (14, 5, N'Desktop', N'桌面样式', 1, 2, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (15, 5, N'Navigation', N'导航样式', 1, 3, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (16, 6, N'Classic', N'Classic主题', 1, 1, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (17, 6, N'Aria', N'Aria主题', 1, 2, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (18, 6, N'Crisp', N'Crisp主题', 1, 3, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (19, 6, N'Gray', N'Gray主题', 1, 4, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (20, 6, N'Neptune', N'Neptune主题', 1, 5, NULL)
INSERT [dbo].[AppDicItem] ([ID], [DicID], [Code], [Name], [Status], [Sort], [Comment]) VALUES (21, 6, N'Triton', N'Triton主题', 1, 6, NULL)
SET IDENTITY_INSERT [dbo].[AppDicItem] OFF
/****** Object:  Table [dbo].[AppConfig]    Script Date: 04/06/2017 07:49:48 ******/
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
INSERT [dbo].[AppConfig] ([ID], [Name], [ConfigKey], [ConfigValue], [Layer], [Status], [Memo], [SectionID], [Sort], [Comment]) VALUES (2, N'数据库名称', N'DatabaseName', N'E:\GITHUB\EXTAPP\EXTAPP\EXTAPP.WEB\APP_DATA\EXTAPP.MDF', NULL, 1, NULL, 1003, 0, N'连接数据库的名称，数据库备份还原使用。')
SET IDENTITY_INSERT [dbo].[AppConfig] OFF
/****** Object:  ForeignKey [FK__AppLoginS__UserI__403A8C7D]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppLoginSession]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[AppUser] ([ID])
GO
/****** Object:  ForeignKey [FK__AppLog__UserID__3E52440B]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppLog]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[AppUser] ([ID])
GO
/****** Object:  ForeignKey [FK__AppLog__UserID__3F466844]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppLog]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[AppUser] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDept__AddUser__30F848ED]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDept]  WITH CHECK ADD FOREIGN KEY([AddUserID])
REFERENCES [dbo].[AppUser] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDept__AddUser__33D4B598]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDept]  WITH CHECK ADD FOREIGN KEY([AddUserID])
REFERENCES [dbo].[AppUser] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDept__HeadID__31EC6D26]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDept]  WITH CHECK ADD FOREIGN KEY([HeadID])
REFERENCES [dbo].[AppUser] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDept__PID__32E0915F]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDept]  WITH CHECK ADD FOREIGN KEY([PID])
REFERENCES [dbo].[AppDept] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDept__PID__34C8D9D1]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDept]  WITH CHECK ADD FOREIGN KEY([PID])
REFERENCES [dbo].[AppDept] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDataba__AddUs__2F10007B]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDatabaseBackup]  WITH CHECK ADD FOREIGN KEY([AddUserID])
REFERENCES [dbo].[AppDatabaseBackup] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDataba__AddUs__300424B4]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDatabaseBackup]  WITH CHECK ADD FOREIGN KEY([AddUserID])
REFERENCES [dbo].[AppUser] ([ID])
GO
/****** Object:  ForeignKey [FK__AppUser__DeptID__4316F928]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppUser]  WITH CHECK ADD FOREIGN KEY([DeptID])
REFERENCES [dbo].[AppDept] ([ID])
GO
/****** Object:  ForeignKey [FK__AppUser__DeptID__45F365D3]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppUser]  WITH CHECK ADD FOREIGN KEY([DeptID])
REFERENCES [dbo].[AppDept] ([ID])
GO
/****** Object:  ForeignKey [FK__AppUser__RoleID__440B1D61]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppUser]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[AppRole] ([ID])
GO
/****** Object:  ForeignKey [FK__AppUser__RoleID__44FF419A]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppUser]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[AppRole] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDeptRo__DeptI__35BCFE0A]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDeptRoleMenu]  WITH CHECK ADD FOREIGN KEY([DeptID])
REFERENCES [dbo].[AppDept] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDeptRo__DeptI__3B75D760]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDeptRoleMenu]  WITH CHECK ADD FOREIGN KEY([DeptID])
REFERENCES [dbo].[AppDept] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDeptRo__MenuI__36B12243]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDeptRoleMenu]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[AppMenu] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDeptRo__MenuI__37A5467C]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDeptRoleMenu]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[AppMenu] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDeptRo__MenuI__398D8EEE]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDeptRoleMenu]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[AppMenu] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDeptRo__RoleI__38996AB5]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDeptRoleMenu]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[AppRole] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDeptRo__RoleI__3A81B327]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDeptRoleMenu]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[AppRole] ([ID])
GO
/****** Object:  ForeignKey [FK__AppMenu__PID__412EB0B6]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppMenu]  WITH CHECK ADD FOREIGN KEY([PID])
REFERENCES [dbo].[AppMenu] ([ID])
GO
/****** Object:  ForeignKey [FK__AppMenu__PID__4222D4EF]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppMenu]  WITH CHECK ADD FOREIGN KEY([PID])
REFERENCES [dbo].[AppMenu] ([ID])
GO
/****** Object:  ForeignKey [FK__AppConfig__Secti__2D27B809]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppConfigSection]  WITH CHECK ADD FOREIGN KEY([SectionID])
REFERENCES [dbo].[AppConfigSection] ([ID])
GO
/****** Object:  ForeignKey [FK__AppConfig__Secti__2E1BDC42]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppConfigSection]  WITH CHECK ADD FOREIGN KEY([SectionID])
REFERENCES [dbo].[AppConfigSection] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDicIte__DicID__3C69FB99]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDicItem]  WITH CHECK ADD FOREIGN KEY([DicID])
REFERENCES [dbo].[AppDic] ([ID])
GO
/****** Object:  ForeignKey [FK__AppDicIte__DicID__3D5E1FD2]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppDicItem]  WITH CHECK ADD FOREIGN KEY([DicID])
REFERENCES [dbo].[AppDic] ([ID])
GO
/****** Object:  ForeignKey [FK__AppConfig__Secti__2B3F6F97]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppConfig]  WITH CHECK ADD FOREIGN KEY([SectionID])
REFERENCES [dbo].[AppConfigSection] ([ID])
GO
/****** Object:  ForeignKey [FK__AppConfig__Secti__2C3393D0]    Script Date: 04/06/2017 07:49:48 ******/
ALTER TABLE [dbo].[AppConfig]  WITH CHECK ADD FOREIGN KEY([SectionID])
REFERENCES [dbo].[AppConfigSection] ([ID])
GO
