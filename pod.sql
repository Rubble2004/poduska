USE [master]
GO
/****** Object:  Database [RemontPhone]    Script Date: 13.12.2023 18:50:11 ******/
CREATE DATABASE [RemontPhone]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RemontPhone', FILENAME = N'D:\SQLSERV\MSSQL16.MSSQLSERVER\MSSQL\DATA\RemontPhone.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RemontPhone_log', FILENAME = N'D:\SQLSERV\MSSQL16.MSSQLSERVER\MSSQL\DATA\RemontPhone_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [RemontPhone] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RemontPhone].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RemontPhone] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RemontPhone] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RemontPhone] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RemontPhone] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RemontPhone] SET ARITHABORT OFF 
GO
ALTER DATABASE [RemontPhone] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RemontPhone] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RemontPhone] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RemontPhone] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RemontPhone] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RemontPhone] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RemontPhone] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RemontPhone] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RemontPhone] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RemontPhone] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RemontPhone] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RemontPhone] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RemontPhone] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RemontPhone] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RemontPhone] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RemontPhone] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RemontPhone] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RemontPhone] SET RECOVERY FULL 
GO
ALTER DATABASE [RemontPhone] SET  MULTI_USER 
GO
ALTER DATABASE [RemontPhone] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RemontPhone] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RemontPhone] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RemontPhone] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RemontPhone] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RemontPhone] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RemontPhone', N'ON'
GO
ALTER DATABASE [RemontPhone] SET QUERY_STORE = ON
GO
ALTER DATABASE [RemontPhone] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [RemontPhone]
GO
/****** Object:  Table [dbo].[LoginHistory]    Script Date: 13.12.2023 18:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NULL,
	[LoginData] [datetime] NULL,
	[typevhod] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoginHistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[merch]    Script Date: 13.12.2023 18:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merch](
	[id] [int] NOT NULL,
	[photo] [nvarchar](50) NULL,
	[name] [nvarchar](50) NOT NULL,
	[dexcription] [text] NOT NULL,
	[manufacture] [nvarchar](50) NOT NULL,
	[prise] [int] NOT NULL,
	[discount] [int] NULL,
 CONSTRAINT [PK_merch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderer]    Script Date: 13.12.2023 18:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderer](
	[id] [int] NOT NULL,
	[id_users] [int] NOT NULL,
	[id_status] [int] NOT NULL,
	[id_point] [int] NOT NULL,
	[order_data] [date] NOT NULL,
	[code] [int] NOT NULL,
	[cost] [int] NOT NULL,
	[discount] [int] NULL,
	[total_cost] [int] NULL,
	[delivery_days] [int] NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[point]    Script Date: 13.12.2023 18:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[point](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[photo] [nvarchar](50) NULL,
 CONSTRAINT [PK_point] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sostav]    Script Date: 13.12.2023 18:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sostav](
	[id] [int] NOT NULL,
	[id_orders] [int] NOT NULL,
	[id_merch] [int] NOT NULL,
	[count] [int] NULL,
	[quantity] [int] NULL,
	[total_cost] [int] NULL,
	[discount] [int] NULL,
 CONSTRAINT [PK_sostav] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 13.12.2023 18:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] NOT NULL,
	[status_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_user]    Script Date: 13.12.2023 18:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_user](
	[id] [int] NOT NULL,
	[roll] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_type_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 13.12.2023 18:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[photo] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[id_type] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoginHistory] ON 

INSERT [dbo].[LoginHistory] ([id], [id_user], [LoginData], [typevhod]) VALUES (1, 1, CAST(N'2023-12-05T23:37:29.920' AS DateTime), NULL)
INSERT [dbo].[LoginHistory] ([id], [id_user], [LoginData], [typevhod]) VALUES (2, 1, CAST(N'2023-12-13T18:06:25.033' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_user], [LoginData], [typevhod]) VALUES (3, 1, CAST(N'2023-12-13T18:08:08.127' AS DateTime), N'Успешно')
SET IDENTITY_INSERT [dbo].[LoginHistory] OFF
GO
INSERT [dbo].[merch] ([id], [photo], [name], [dexcription], [manufacture], [prise], [discount]) VALUES (1, N'/photo/1.jpeg', N'Подушка №1', N'Крутая подушка', N'Текстиль Профи-М', 10000, 50)
INSERT [dbo].[merch] ([id], [photo], [name], [dexcription], [manufacture], [prise], [discount]) VALUES (2, N'/photo/2.jpg', N'подушка№2', N'Крутая подушка', N'Текстиль Профи-М', 20000, 20)
INSERT [dbo].[merch] ([id], [photo], [name], [dexcription], [manufacture], [prise], [discount]) VALUES (3, N'/photo/3.jpg', N'Подушка№3', N'Крутая Подушка', N'Текстиль Профи-М', 30000, 10)
INSERT [dbo].[merch] ([id], [photo], [name], [dexcription], [manufacture], [prise], [discount]) VALUES (4, N'/photo/4.jpg', N'Подушка №4', N'Крутая подушка', N'Текстиль Профи-М', 40000, 99)
GO
INSERT [dbo].[orderer] ([id], [id_users], [id_status], [id_point], [order_data], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (0, 3, 1, 1, CAST(N'2023-12-13' AS Date), 191, 10000, 5000, 5000, 6)
GO
INSERT [dbo].[point] ([id], [name], [photo]) VALUES (1, N'1 точка', NULL)
INSERT [dbo].[point] ([id], [name], [photo]) VALUES (2, N'2 точка', NULL)
INSERT [dbo].[point] ([id], [name], [photo]) VALUES (3, N'3 точка', NULL)
GO
INSERT [dbo].[sostav] ([id], [id_orders], [id_merch], [count], [quantity], [total_cost], [discount]) VALUES (0, 0, 1, 1, 1, 10000, 50)
GO
INSERT [dbo].[status] ([id], [status_name]) VALUES (1, N'Новый')
INSERT [dbo].[status] ([id], [status_name]) VALUES (2, N'В работе')
INSERT [dbo].[status] ([id], [status_name]) VALUES (3, N'Завершенный')
GO
INSERT [dbo].[type_user] ([id], [roll]) VALUES (1, N'Администратор')
INSERT [dbo].[type_user] ([id], [roll]) VALUES (2, N'Менеджер')
INSERT [dbo].[type_user] ([id], [roll]) VALUES (3, N'Клиент')
GO
INSERT [dbo].[users] ([id], [login], [password], [photo], [name], [id_type]) VALUES (1, N'admin', N'12345', N'/Res/admin.png', N'Дмитрий ', 1)
INSERT [dbo].[users] ([id], [login], [password], [photo], [name], [id_type]) VALUES (2, N'manager', N'12345', N'/Res/manager.png', N'Алексйей', 2)
INSERT [dbo].[users] ([id], [login], [password], [photo], [name], [id_type]) VALUES (3, N'client', N'12345', N'/Res/cleint.png', N'Евкакий', 3)
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_LoginHistory_users] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[LoginHistory] CHECK CONSTRAINT [FK_LoginHistory_users]
GO
ALTER TABLE [dbo].[orderer]  WITH CHECK ADD  CONSTRAINT [FK_order_point] FOREIGN KEY([id_point])
REFERENCES [dbo].[point] ([id])
GO
ALTER TABLE [dbo].[orderer] CHECK CONSTRAINT [FK_order_point]
GO
ALTER TABLE [dbo].[orderer]  WITH CHECK ADD  CONSTRAINT [FK_order_status] FOREIGN KEY([id_status])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[orderer] CHECK CONSTRAINT [FK_order_status]
GO
ALTER TABLE [dbo].[orderer]  WITH CHECK ADD  CONSTRAINT [FK_order_users] FOREIGN KEY([id_users])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[orderer] CHECK CONSTRAINT [FK_order_users]
GO
ALTER TABLE [dbo].[sostav]  WITH CHECK ADD  CONSTRAINT [FK_sostav_merch] FOREIGN KEY([id_merch])
REFERENCES [dbo].[merch] ([id])
GO
ALTER TABLE [dbo].[sostav] CHECK CONSTRAINT [FK_sostav_merch]
GO
ALTER TABLE [dbo].[sostav]  WITH CHECK ADD  CONSTRAINT [FK_sostav_order] FOREIGN KEY([id_orders])
REFERENCES [dbo].[orderer] ([id])
GO
ALTER TABLE [dbo].[sostav] CHECK CONSTRAINT [FK_sostav_order]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_type_user] FOREIGN KEY([id_type])
REFERENCES [dbo].[type_user] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_type_user]
GO
USE [master]
GO
ALTER DATABASE [RemontPhone] SET  READ_WRITE 
GO
