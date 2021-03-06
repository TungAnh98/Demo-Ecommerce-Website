USE [master]
GO
/****** Object:  Database [PRN292_Project]    Script Date: 7/26/2018 9:54:04 AM ******/
CREATE DATABASE [PRN292_Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRN292_Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\PRN292_Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRN292_Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\PRN292_Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PRN292_Project] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRN292_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRN292_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRN292_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRN292_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRN292_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRN292_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRN292_Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRN292_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRN292_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRN292_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRN292_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRN292_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRN292_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRN292_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRN292_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRN292_Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRN292_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRN292_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRN292_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRN292_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRN292_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRN292_Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRN292_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRN292_Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRN292_Project] SET  MULTI_USER 
GO
ALTER DATABASE [PRN292_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRN292_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRN292_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRN292_Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRN292_Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRN292_Project] SET QUERY_STORE = OFF
GO
USE [PRN292_Project]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [PRN292_Project]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/26/2018 9:54:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/26/2018 9:54:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maker]    Script Date: 7/26/2018 9:54:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maker](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Website] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Maker] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/26/2018 9:54:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[DeliveredDate] [date] NOT NULL,
	[DueDate] [date] NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Pay]    Script Date: 7/26/2018 9:54:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Pay](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[PaymentMethodID] [int] NOT NULL,
	[PaymentStatus] [bit] NOT NULL,
	[AccountNumber] [nchar](15) NULL,
 CONSTRAINT [PK_Order_Pay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/26/2018 9:54:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 7/26/2018 9:54:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentMethod] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/26/2018 9:54:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[DateImported] [date] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[TotalSold] [int] NOT NULL,
	[TotalLeft] [int] NOT NULL,
	[Image] [nvarchar](350) NOT NULL,
	[SubCategoryID] [int] NOT NULL,
	[MakerID] [int] NOT NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 7/26/2018 9:54:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/26/2018 9:54:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Phone] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Category]) VALUES (1, N'Guitar')
INSERT [dbo].[Category] ([ID], [Category]) VALUES (2, N'Phụ kiện')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Maker] ON 

INSERT [dbo].[Maker] ([ID], [Name], [Description], [Website]) VALUES (3, N'Alice', N'Nothing', N'www.guitar.alice.net')
INSERT [dbo].[Maker] ([ID], [Name], [Description], [Website]) VALUES (4, N'Elixir', N'Famous brand', N'abc.xyz')
SET IDENTITY_INSERT [dbo].[Maker] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [DeliveredDate], [DueDate], [Total]) VALUES (4, 1, CAST(N'2018-07-20' AS Date), CAST(N'2018-07-30' AS Date), CAST(N'2018-07-20' AS Date), 30000)
INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [DeliveredDate], [DueDate], [Total]) VALUES (5, 2, CAST(N'2018-10-10' AS Date), CAST(N'2018-11-11' AS Date), CAST(N'2018-10-10' AS Date), 40000000)
INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [DeliveredDate], [DueDate], [Total]) VALUES (6, 1, CAST(N'2010-10-10' AS Date), CAST(N'2011-11-11' AS Date), CAST(N'2012-11-11' AS Date), 25000000)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[Order_Pay] ON 

INSERT [dbo].[Order_Pay] ([ID], [OrderID], [PaymentMethodID], [PaymentStatus], [AccountNumber]) VALUES (2, 4, 1, 1, N'               ')
INSERT [dbo].[Order_Pay] ([ID], [OrderID], [PaymentMethodID], [PaymentStatus], [AccountNumber]) VALUES (3, 5, 2, 0, N'987654321      ')
INSERT [dbo].[Order_Pay] ([ID], [OrderID], [PaymentMethodID], [PaymentStatus], [AccountNumber]) VALUES (4, 6, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Order_Pay] OFF
SET IDENTITY_INSERT [dbo].[PaymentMethod] ON 

INSERT [dbo].[PaymentMethod] ([ID], [PaymentMethod]) VALUES (1, N'Cash On Delivery')
INSERT [dbo].[PaymentMethod] ([ID], [PaymentMethod]) VALUES (2, N'Credit Card')
INSERT [dbo].[PaymentMethod] ([ID], [PaymentMethod]) VALUES (3, N'Bank Transfer')
SET IDENTITY_INSERT [dbo].[PaymentMethod] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (1, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 1000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (2, N'Guitar Classic Station CL-370', CAST(N'2018-01-01' AS Date), N'Toàn bộ gỗ nguyên miếng (full solid), sử dụng càng lâu âm thanh càng hay, đó là đặc điểm "ăn tiền" của gỗ nguyên miếng.CL-370 là dòng đàn chuyên dùng cho các bạn chơi solo cổ điển, thích âm thanh trầm ấm của guitar classic. CL-370 âm thanh vang sáng, tiếng ấm vừa đủ, treb thanh.Sản phẩm được bảo hành 1 năm, bảo trì trọn đời.', 10, 1, N'https://guitar.station.vn/wp-content/uploads/2018/03/dan-guitar-classic-cong-cuom.jpg', 1, 4, 1000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (3, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 1000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (4, N'Guitar Classic Station CL-370', CAST(N'2018-01-01' AS Date), N'Toàn bộ gỗ nguyên miếng (full solid), sử dụng càng lâu âm thanh càng hay, đó là đặc điểm "ăn tiền" của gỗ nguyên miếng.CL-370 là dòng đàn chuyên dùng cho các bạn chơi solo cổ điển, thích âm thanh trầm ấm của guitar classic. CL-370 âm thanh vang sáng, tiếng ấm vừa đủ, treb thanh.Sản phẩm được bảo hành 1 năm, bảo trì trọn đời.', 10, 1, N'https://guitar.station.vn/wp-content/uploads/2018/03/dan-guitar-classic-cong-cuom.jpg', 1, 4, 1000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (5, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (6, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (7, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (8, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (9, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (10, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (11, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (12, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (13, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 1000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (14, N'Guitar Classic Station CL-370', CAST(N'2018-01-01' AS Date), N'Toàn bộ gỗ nguyên miếng (full solid), sử dụng càng lâu âm thanh càng hay, đó là đặc điểm "ăn tiền" của gỗ nguyên miếng.CL-370 là dòng đàn chuyên dùng cho các bạn chơi solo cổ điển, thích âm thanh trầm ấm của guitar classic. CL-370 âm thanh vang sáng, tiếng ấm vừa đủ, treb thanh.Sản phẩm được bảo hành 1 năm, bảo trì trọn đời.', 10, 1, N'https://guitar.station.vn/wp-content/uploads/2018/03/dan-guitar-classic-cong-cuom.jpg', 1, 4, 1000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (15, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (16, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (17, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (18, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (19, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (20, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (21, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (22, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.
Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.
Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.
Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 2000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (23, N'Capo Đàn Ukulele Giá Rẻ', CAST(N'2018-07-15' AS Date), N'Sắt nguyên chất ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/03/capo-dan-ukulele-gia-re-360x360.jpg', 6, 3, 100000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (25, N'Capo Đàn Ukulele Giá Rẻ', CAST(N'2018-07-15' AS Date), N'Sắt nguyên chất ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/03/capo-dan-ukulele-gia-re-360x360.jpg', 6, 3, 100000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (26, N'Capo Đàn Ukulele Giá Rẻ', CAST(N'2018-07-15' AS Date), N'Sắt nguyên chất ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/03/capo-dan-ukulele-gia-re-360x360.jpg', 6, 3, 100000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (27, N'Capo Đàn Ukulele Giá Rẻ', CAST(N'2018-07-15' AS Date), N'Sắt nguyên chất ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/03/capo-dan-ukulele-gia-re-360x360.jpg', 6, 3, 100000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (34, N'Dây Đàn Acoustic Màu Sắc', CAST(N'2018-07-15' AS Date), N'Thép nguyên chất ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/03/day-acoustic-mau-5.jpg', 7, 3, 100000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (35, N'Dây Đàn Acoustic Màu Sắc', CAST(N'2018-07-15' AS Date), N'Thép nguyên chất ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/03/day-acoustic-mau-5.jpg', 7, 3, 100000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (36, N'Dây Đàn Acoustic Màu Sắc', CAST(N'2018-07-15' AS Date), N'Thép nguyên chất ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/03/day-acoustic-mau-5.jpg', 7, 3, 100000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (37, N'Combo 4 Pick Gảy Alice Các Loại', CAST(N'2018-07-15' AS Date), N'Nhôm nguyên chất ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/02/pick-alice-4.jpg-360x360.jpg', 8, 3, 100000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (38, N'Combo 4 Pick Gảy Alice Các Loại', CAST(N'2018-07-15' AS Date), N'Nhôm nguyên chất ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/02/pick-alice-4.jpg-360x360.jpg', 8, 3, 100000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (39, N'Combo 4 Pick Gảy Alice Các Loại', CAST(N'2018-07-15' AS Date), N'Nhôm nguyên chất ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/02/pick-alice-4.jpg-360x360.jpg', 8, 3, 100000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (40, N'Combo 4 Pick Gảy Alice Các Loại', CAST(N'2018-07-15' AS Date), N'Nhôm nguyên chất ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/02/pick-alice-4.jpg-360x360.jpg', 8, 3, 100000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (41, N'Combo 4 Pick Gảy Alice Các Loại', CAST(N'2018-07-15' AS Date), N'Nhôm nguyên chất ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/02/pick-alice-4.jpg-360x360.jpg', 8, 3, 100000)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (1, 1, N'Classic')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (2, 1, N'Accoustic')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (3, 1, N'Ukulele')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (4, 1, N'Ghita điện')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (5, 1, N'Ghita bass')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (6, 2, N'Dây')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (7, 2, N'Capo')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (8, 2, N'Equalizer/ Pickup')
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [Password], [IsAdmin], [Address], [Phone], [Email]) VALUES (1, N'mien', N'mien', 1, N'Hanoi', N'0123456789', N'hongmienft98@gmail.com')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IsAdmin], [Address], [Phone], [Email]) VALUES (2, N'tunganh', N'tunganh', 0, N'Hanoi', N'122333', N'tunganhabc.xyz')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IsAdmin], [Address], [Phone], [Email]) VALUES (3, N'sonhlt', N'sonhlt', 0, N'Hanoi', N'321456', N'sonhlt@gmail.com')
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order_Pay]  WITH CHECK ADD  CONSTRAINT [FK_Order_Pay_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[Order_Pay] CHECK CONSTRAINT [FK_Order_Pay_Order]
GO
ALTER TABLE [dbo].[Order_Pay]  WITH CHECK ADD  CONSTRAINT [FK_Order_Pay_PaymentMethod] FOREIGN KEY([PaymentMethodID])
REFERENCES [dbo].[PaymentMethod] ([ID])
GO
ALTER TABLE [dbo].[Order_Pay] CHECK CONSTRAINT [FK_Order_Pay_PaymentMethod]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Maker] FOREIGN KEY([MakerID])
REFERENCES [dbo].[Maker] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Maker]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_SubCategory] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SubCategory] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_SubCategory]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category]
GO
USE [master]
GO
ALTER DATABASE [PRN292_Project] SET  READ_WRITE 
GO
