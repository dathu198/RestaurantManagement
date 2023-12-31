USE [master]
GO
/****** Object:  Database [QuanLyQuanCafe]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  Table [dbo].[AccountType]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  Table [dbo].[Bill]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  Table [dbo].[BillInfo]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  Table [dbo].[Food]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  Table [dbo].[FoodCategory]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  Table [dbo].[TableFood]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_GetAccountByUserName]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_GetListBillByDate]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_GetListBillByDateAndPage]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_GetNumBillByDate]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_GetTableList]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_InsertBill]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_InsertBillInfo]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_SwitchTable]    Script Date: 9/16/2023 5:36:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_UpdateAccount]    Script Date: 9/16/2023 5:36:48 PM ******/
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


USE [QuanLyQuanCafe]
GO
INSERT [dbo].[Account] ( [UserName], [DisplayName], [Password], [Type], [status]) VALUES (N'admin', N'Lâm Quốc Đạt', N'33354741122871651676713774147412831195', 0, 1)
INSERT [dbo].[TableFood] ([name], [status], [status_active]) VALUES (N'Bàn 1', N'Trống', 1)
INSERT [dbo].[AccountType] ( [accountCode], [accountName]) VALUES ( 0, N'Quản trị')
INSERT [dbo].[AccountType] ([accountCode], [accountName]) VALUES (1, N'Nhân viên')
GO


