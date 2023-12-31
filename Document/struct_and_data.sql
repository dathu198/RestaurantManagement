USE [master]
GO
/****** Object:  Database [QuanLyQuanCafe]    Script Date: 9/16/2023 3:15:06 PM ******/
CREATE DATABASE [QuanLyQuanCafe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyQuanCafe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyQuanCafe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyQuanCafe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyQuanCafe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyQuanCafe] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyQuanCafe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyQuanCafe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyQuanCafe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyQuanCafe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyQuanCafe] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyQuanCafe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyQuanCafe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyQuanCafe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyQuanCafe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyQuanCafe] SET QUERY_STORE = OFF
GO
USE [QuanLyQuanCafe]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Type] [int] NOT NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountType]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accountCode] [int] NULL,
	[accountName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CheckInDate] [date] NOT NULL,
	[CheckOutDate] [date] NULL,
	[idTable] [int] NOT NULL,
	[satus] [int] NOT NULL,
	[discount] [int] NULL,
	[totalPrice] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillInfo]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idBill] [int] NOT NULL,
	[idFood] [int] NOT NULL,
	[count] [int] NOT NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[idCategory] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodCategory]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableFood]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableFood](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[status] [nvarchar](100) NOT NULL,
	[status_active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [UserName], [DisplayName], [Password], [Type], [status]) VALUES (1, N'admin', N'Lâm Quốc Đạt', N'33354741122871651676713774147412831195', 0, 1)
INSERT [dbo].[Account] ([id], [UserName], [DisplayName], [Password], [Type], [status]) VALUES (2, N'anhthu', N'Thư khùng', N'3724923114850596956133245243127987711', 1, 0)
INSERT [dbo].[Account] ([id], [UserName], [DisplayName], [Password], [Type], [status]) VALUES (4, N'admin2', N'Lâm Quốc Đạt2', N'2251022057731868917119086224872421513662', 1, 1)
INSERT [dbo].[Account] ([id], [UserName], [DisplayName], [Password], [Type], [status]) VALUES (5, N'lqd', N'Lâm Quốc Đạt1', N'2251022057731868917119086224872421513662', 1, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountType] ON 

INSERT [dbo].[AccountType] ([id], [accountCode], [accountName]) VALUES (1, 0, N'Quản trị')
INSERT [dbo].[AccountType] ([id], [accountCode], [accountName]) VALUES (2, 1, N'Nhân viên')
SET IDENTITY_INSERT [dbo].[AccountType] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (53, CAST(N'2023-08-24' AS Date), CAST(N'2023-08-24' AS Date), 12, 1, 10, 1620000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (54, CAST(N'2023-08-24' AS Date), CAST(N'2023-08-24' AS Date), 13, 1, 20, 72000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (55, CAST(N'2023-08-25' AS Date), CAST(N'2023-08-27' AS Date), 12, 1, 0, 1250000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (56, CAST(N'2023-08-29' AS Date), CAST(N'2023-08-30' AS Date), 12, 1, 0, 100000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (57, CAST(N'2023-08-29' AS Date), CAST(N'2023-08-29' AS Date), 13, 1, 0, 20000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (58, CAST(N'2023-08-30' AS Date), CAST(N'2023-08-30' AS Date), 13, 1, 10, 288000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (59, CAST(N'2023-08-30' AS Date), CAST(N'2023-09-01' AS Date), 12, 1, 0, 100000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (60, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-01' AS Date), 12, 1, 0, 100000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (61, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-01' AS Date), 12, 1, 0, 220000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (62, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-01' AS Date), 12, 1, 0, 100000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (63, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-01' AS Date), 12, 1, 0, 100000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (64, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-01' AS Date), 12, 1, 0, 100000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (65, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-01' AS Date), 12, 1, 0, 100000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (66, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-01' AS Date), 13, 1, 0, 100000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (67, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-01' AS Date), 13, 1, 0, 50000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (68, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-01' AS Date), 15, 1, 10, 27000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (69, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 12, 1, 0, 440000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (70, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 22, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (71, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 20, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (72, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 25, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (73, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 13, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (74, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 14, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (75, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 15, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (76, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 16, 1, 0, 60000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (77, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 17, 1, 0, 60000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (78, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 18, 1, 0, 60000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (79, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 19, 1, 0, 60000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (80, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 20, 1, 0, 15000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (81, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-02' AS Date), 21, 1, 0, 15000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (82, CAST(N'2023-09-03' AS Date), CAST(N'2023-09-03' AS Date), 12, 1, 10, 418500)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (83, CAST(N'2023-09-03' AS Date), CAST(N'2023-09-04' AS Date), 12, 1, 0, -140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (84, CAST(N'2023-09-03' AS Date), CAST(N'2023-09-04' AS Date), 13, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (85, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-04' AS Date), 12, 1, 0, 30000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (86, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-04' AS Date), 12, 1, 0, 700000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (87, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-04' AS Date), 13, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (88, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-04' AS Date), 13, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (89, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-04' AS Date), 14, 1, 0, 700000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (90, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-04' AS Date), 35, 1, 10, 261000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (91, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-04' AS Date), 23, 1, 0, 262000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (92, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-04' AS Date), 12, 1, 0, 150000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (93, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-04' AS Date), 13, 1, 0, 150000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (94, CAST(N'2023-09-04' AS Date), NULL, 22, 0, 0, NULL)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (95, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-12' AS Date), 12, 1, 0, 14600000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (96, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-12' AS Date), 15, 1, 2, 137200)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (97, CAST(N'2023-09-12' AS Date), CAST(N'2023-09-12' AS Date), 12, 1, 1, 138600)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (98, CAST(N'2023-09-12' AS Date), CAST(N'2023-09-12' AS Date), 12, 1, 2, 147000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (99, CAST(N'2023-09-12' AS Date), CAST(N'2023-09-12' AS Date), 13, 1, 0, 0)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (100, CAST(N'2023-09-12' AS Date), CAST(N'2023-09-12' AS Date), 12, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (101, CAST(N'2023-09-12' AS Date), NULL, 14, 0, 0, NULL)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (102, CAST(N'2023-09-12' AS Date), CAST(N'2023-09-12' AS Date), 12, 1, 100, 0)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (103, CAST(N'2023-09-12' AS Date), CAST(N'2023-09-12' AS Date), 12, 1, 5, 133000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (104, CAST(N'2023-09-12' AS Date), CAST(N'2023-09-12' AS Date), 12, 1, 10, 126000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (105, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-13' AS Date), 17, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (106, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-13' AS Date), 17, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (107, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-13' AS Date), 17, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (108, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-13' AS Date), 17, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (109, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-13' AS Date), 17, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (110, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-13' AS Date), 17, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (111, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-13' AS Date), 17, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (112, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-13' AS Date), 17, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (113, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-13' AS Date), 17, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (114, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-13' AS Date), 17, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (115, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-13' AS Date), 17, 1, 0, 140000)
INSERT [dbo].[Bill] ([id], [CheckInDate], [CheckOutDate], [idTable], [satus], [discount], [totalPrice]) VALUES (116, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-13' AS Date), 17, 1, 0, 140000)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[BillInfo] ON 

INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (57, 53, 2, 4, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (59, 54, 11, 3, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (61, 55, 2, 3, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (63, 57, 11, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (70, 61, 11, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (74, 64, 17, 1, 0)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (75, 65, 17, 1, 0)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (76, 66, 17, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (77, 67, 18, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (78, 68, 11, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (79, 68, 21, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (80, 69, 35, 2, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (81, 69, 36, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (82, 69, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (83, 70, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (84, 71, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (85, 72, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (86, 73, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (87, 74, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (88, 75, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (89, 76, 35, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (90, 77, 35, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (91, 78, 35, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (92, 79, 35, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (93, 80, 26, 2, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (94, 81, 26, 2, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (95, 82, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (96, 82, 32, 3, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (97, 82, 34, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (100, 83, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (101, 84, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (105, 85, 26, 2, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (115, 87, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (121, 86, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (123, 89, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (124, 90, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (125, 90, 29, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (126, 88, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (127, 91, 19, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (128, 91, 6, 3, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (129, 92, 6, 3, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (131, 93, 6, 3, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (133, 95, 32, 3, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (134, 95, 30, 103, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (135, 97, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (136, 96, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (137, 98, 29, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (138, 102, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (139, 100, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (140, 103, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (141, 104, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (142, 105, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (143, 106, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (144, 107, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (145, 108, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (146, 109, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (147, 110, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (148, 111, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (149, 112, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (150, 113, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (151, 114, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (152, 115, 30, 1, NULL)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count], [status]) VALUES (153, 116, 30, 1, NULL)
SET IDENTITY_INSERT [dbo].[BillInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (2, N'Lẩu hải sản', 2, 150000, 0)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (6, N'Cà phê', 4, 50000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (8, N'Dú dê nướng chao', 2, 50000, 0)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (11, N'NumberOne', 4, 20000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (17, N'Cá nục sốt cà', 1, 100000, 0)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (18, N'Dú dê nướng chao 222', 2, 50000, 0)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (19, N'Cà phê', 4, 12000, 0)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (20, N'Cà phê sữa', 4, 12000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (21, N'Trà đường', 4, 10000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (22, N'Cà phê đen đá', 4, 12000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (23, N'Cà phê muối', 4, 20000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (24, N'Rau má', 4, 15000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (25, N'Trà tắc', 4, 10000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (26, N'Bạc xĩu', 4, 15000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (27, N'Sting', 4, 15000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (28, N'Bò cụng', 4, 15000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (29, N'Lẩu Thái', 7, 150000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (30, N'Lẩu Cua đồng', 7, 140000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (31, N'Dú heo nướng', 9, 45000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (32, N'Chân gà nướng rút xương', 9, 60000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (33, N'Mì xào hải sản', 8, 90000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (34, N'Mực xào chua ngọt', 8, 125000, 1)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (35, N'Chân gà nướng rút xương', 8, 60000, 0)
INSERT [dbo].[Food] ([id], [name], [idCategory], [Price], [status]) VALUES (36, N'Ghẹ hấp bia', 10, 180000, 0)
SET IDENTITY_INSERT [dbo].[Food] OFF
GO
SET IDENTITY_INSERT [dbo].[FoodCategory] ON 

INSERT [dbo].[FoodCategory] ([id], [name], [status]) VALUES (1, N'Hải sản', 0)
INSERT [dbo].[FoodCategory] ([id], [name], [status]) VALUES (2, N'Nông sản', 0)
INSERT [dbo].[FoodCategory] ([id], [name], [status]) VALUES (4, N'Nước', 1)
INSERT [dbo].[FoodCategory] ([id], [name], [status]) VALUES (6, N'Hải sản', 0)
INSERT [dbo].[FoodCategory] ([id], [name], [status]) VALUES (7, N'Lẩu', 1)
INSERT [dbo].[FoodCategory] ([id], [name], [status]) VALUES (8, N'Món xào', 1)
INSERT [dbo].[FoodCategory] ([id], [name], [status]) VALUES (9, N'Món nướng', 1)
INSERT [dbo].[FoodCategory] ([id], [name], [status]) VALUES (10, N'Hấp', 0)
SET IDENTITY_INSERT [dbo].[FoodCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[TableFood] ON 

INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (12, N'Bàn 1', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (13, N'Bàn 2', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (14, N'Bàn 3', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (15, N'Bàn 4', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (16, N'Bàn 5', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (17, N'Bàn 6', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (18, N'Bàn 7', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (19, N'Bàn 8', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (20, N'Bàn 9', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (21, N'Bàn 10', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (22, N'Bàn 11', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (23, N'Bàn 12', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (24, N'Bàn 13', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (25, N'Bàn 14', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (26, N'Bàn 15', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (27, N'Bàn 16', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (30, N'Bàn 19 - VIP', N'Trống', 0)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (33, N'Bàn 17', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (34, N'Bàn 18', N'Trống', 1)
INSERT [dbo].[TableFood] ([id], [name], [status], [status_active]) VALUES (35, N'Bàn 19', N'Trống', 1)
SET IDENTITY_INSERT [dbo].[TableFood] OFF
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT (getdate()) FOR [CheckInDate]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT ((0)) FOR [satus]
GO
ALTER TABLE [dbo].[BillInfo] ADD  DEFAULT ((0)) FOR [count]
GO
ALTER TABLE [dbo].[Food] ADD  DEFAULT (N'Chua dat ten') FOR [name]
GO
ALTER TABLE [dbo].[Food] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[FoodCategory] ADD  DEFAULT (N'Chua da ten') FOR [name]
GO
ALTER TABLE [dbo].[TableFood] ADD  DEFAULT (N'Chua co ten') FOR [name]
GO
ALTER TABLE [dbo].[TableFood] ADD  CONSTRAINT [DF__TableFood__statu__37A5467C]  DEFAULT (N'Trống') FOR [status]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([idTable])
REFERENCES [dbo].[TableFood] ([id])
GO
ALTER TABLE [dbo].[BillInfo]  WITH CHECK ADD FOREIGN KEY([idBill])
REFERENCES [dbo].[Bill] ([id])
GO
ALTER TABLE [dbo].[BillInfo]  WITH CHECK ADD FOREIGN KEY([idFood])
REFERENCES [dbo].[Food] ([id])
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD FOREIGN KEY([idCategory])
REFERENCES [dbo].[FoodCategory] ([id])
GO
/****** Object:  StoredProcedure [dbo].[USP_GetAccountByUserName]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetAccountByUserName]
@userName nvarchar(100)
AS
BEGIN
	SELECT * FROM	dbo.Account WHERE UserName = @userName
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetListBillByDate]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetListBillByDate]
@checkIn date, @checkOut date
AS
BEGIN
 SELECT 
 t.name,
 FORMAT(b.totalPrice, 'N0', 'vi-VN') AS totalPrice,
 CONVERT(varchar, b.CheckInDate, 103) AS CheckInDate,
 CONVERT(varchar, b.CheckOutDate, 103) AS CheckOutDate,
 b.discount
 FROM  
 dbo.Bill AS b,
 dbo.TableFood AS t
 WHERE CheckInDate >= @checkIn 
 AND CheckOutDate <= @checkOut
 AND b.satus = 1
 AND t.id = b.idTable
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetListBillByDateAndPage]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[USP_GetListBillByDateAndPage]
@checkIn date, @checkOut date, @page int
AS
BEGIN
 DECLARE @pageRows INT = 20
 DECLARE @selectRows INT = @pageRows
 DECLARE @exceptRows INT = (@page - 1) * @pageRows
 ;WITH BillShow AS 
 (SELECT 
 b.id,
 t.name,
 FORMAT(b.totalPrice, 'N0', 'vi-VN') AS totalPrice,
 CONVERT(varchar, b.CheckInDate, 103) AS CheckInDate,
 CONVERT(varchar, b.CheckOutDate, 103) AS CheckOutDate,
 b.discount
 FROM  
 dbo.Bill AS b,
 dbo.TableFood AS t
 WHERE CheckInDate >= @checkIn 
 AND CheckOutDate <= @checkOut
 AND b.satus = 1
 AND t.id = b.idTable)

 SELECT TOP (@pageRows) * FROM BillShow WHERE id NOT IN (SELECT TOP (@exceptRows) id FROM BillShow)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetNumBillByDate]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetNumBillByDate]
@checkIn date, @checkOut date
AS
BEGIN
 SELECT 
 COUNT (*)
 FROM  
 dbo.Bill AS b,
 dbo.TableFood AS t
 WHERE CheckInDate >= @checkIn 
 AND CheckOutDate <= @checkOut
 AND b.satus = 1
 AND t.id = b.idTable
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetTableList]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_GetTableList]
 AS 
 SELECT
                            id,
                            ROW_NUMBER() OVER (ORDER BY 
                            CASE 
                            WHEN ISNUMERIC(SUBSTRING(name, 5, LEN(name))) = 1 THEN CAST(SUBSTRING(name, 5, LEN(name)) AS INT)
                            ELSE 999999 -- Một số lớn để đảm bảo sắp xếp các giá trị không phải số cuối cùng
                            END, 
                            name) AS STT,
                            name as TableName,
                            status
                            FROM dbo.TableFood
							WHERE status_active = 1
                            ORDER BY
                            CASE 
                            WHEN ISNUMERIC(SUBSTRING(name, 5, LEN(name))) = 1 THEN CAST(SUBSTRING(name, 5, LEN(name)) AS INT)
                            ELSE 999999
                            END, 
                            name
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBill]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_InsertBill]
@idTable INT
AS
BEGIN
INSERT INTO dbo.Bill
           (CheckInDate
           ,CheckOutDate
           ,idTable
           ,satus
	   , discount)
     VALUES(GETDATE()
           , NULL
           , @idTable
           , 0
           , 0)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBillInfo]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_InsertBillInfo]
@idBill INT, @idFood INT, @count INT
AS
BEGIN
	DECLARE @isExitsBillInfo INT;
	DECLARE @foodCount INT = 1;

	SELECT @isExitsBillInfo = id, @foodCount = b.count 
	FROM dbo.BillInfo AS b
	WHERE idBill = @idBill AND idFood = @idFood

	IF (@isExitsBillInfo > 0)
	BEGIN
	DECLARE @newCount INT = @foodCount + @count
	IF (@newCount > 0)
		UPDATE dbo.BillInfo SET count = @foodCount + @count WHERE idFood = @idFood
	ELSE
		DELETE dbo.BillInfo WHERE idBill = @idBill AND idFood = @idFood
	END
	ELSE 
	BEGIN
		INSERT INTO dbo.BillInfo
           (idBill
           ,idFood
           ,count)
		 VALUES
           (
		   @idBill,
           @idFood,
           @count
		   )
    END
END
GO
/****** Object:  StoredProcedure [dbo].[USP_SwitchTable]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_SwitchTable]
@idTable1 int, @idTable2 int
AS BEGIN

	DECLARE @idFirstBill int

	DECLARE @idSecondBill int	

	DECLARE @isFirstTableEmty int = 1

	DECLARE @isSecondTableEmty int = 1

	SELECT @idSecondBill = id FROM dbo.Bill WHERE idTable = @idTable2 AND satus = 0
	SELECT @idFirstBill = id FROM dbo.Bill WHERE idTable = @idTable1 AND satus = 0

	IF(@idFirstBill IS NULL)
	BEGIN

	INSERT INTO dbo.Bill
           (CheckInDate
           ,CheckOutDate
           ,idTable
           ,satus
           ,discount)
     VALUES
           (GETDATE()
           ,NULL
           ,@idTable1
           ,0
           ,0)
	SELECT @idFirstBill = MAX(id) FROM dbo.Bill WHERE idTable = @idTable1 AND satus = 0	

	END

	SELECT @isFirstTableEmty = COUNT(*) FROM dbo.BillInfo WHERE idBill = @idFirstBill

	IF(@idSecondBill IS NULL)
	BEGIN

	INSERT INTO dbo.Bill
           (CheckInDate
           ,CheckOutDate
           ,idTable
           ,satus
           ,discount)
     VALUES
           (GETDATE()
           ,NULL
           ,@idTable2
           ,0
           ,0)
	SELECT @idSecondBill = MAX(id) FROM dbo.Bill WHERE idTable = @idTable2 AND satus = 0

	END

	SELECT @isSecondTableEmty = COUNT(*) FROM dbo.BillInfo WHERE idBill = @idSecondBill

	SELECT id INTO IDBillInfoTable FROM dbo.BillInfo WHERE idBill = @idSecondBill

	UPDATE dbo.BillInfo SET idBill = @idSecondBill WHERE idBill = @idFirstBill

	UPDATE dbo.BillInfo SET idBill = @idFirstBill WHERE id IN (SELECT * FROM IDBillInfoTable)

	DROP TABLE IDBillInfoTable

	IF(@isFirstTableEmty = 0)
		UPDATE dbo.TableFood SET status = N'Trống' WHERE id = @idTable2

	IF(@isSecondTableEmty = 0)
		UPDATE dbo.TableFood SET status = N'Trống' WHERE id = @idTable1
END 
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateAccount]    Script Date: 9/16/2023 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_UpdateAccount]
@userName NVARCHAR(100), @displayName NVARCHAR(100), @passWord NVARCHAR(100), @newPassword NVARCHAR(100)
AS
BEGIN
	DECLARE @isRightPass INT = 0
	SELECT @isRightPass = COUNT(*) FROM dbo.Account WHERE UserName = @userName AND Password = @passWord

	IF(@isRightPass = 1)
		BEGIN
			IF(@newPassword = NULL OR @newPassword = '')
				BEGIN
					UPDATE dbo.Account SET DisplayName = @displayName WHERE UserName = @userName
				END
			ELSE
				UPDATE dbo.Account SET DisplayName = @displayName, Password = @newPassword WHERE UserName = @userName
		END
END
GO
USE [master]
GO
ALTER DATABASE [QuanLyQuanCafe] SET  READ_WRITE 
GO
