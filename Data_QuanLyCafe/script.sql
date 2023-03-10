USE [master]
GO
/****** Object:  Database [QuanLyQuanCafe]    Script Date: 2/20/2023 3:17:58 PM ******/
CREATE DATABASE [QuanLyQuanCafe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyQuanCafe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HUYDG\MSSQL\DATA\QuanLyQuanCafe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyQuanCafe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HUYDG\MSSQL\DATA\QuanLyQuanCafe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_CLOSE OFF 
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
ALTER DATABASE [QuanLyQuanCafe] SET RECOVERY FULL 
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
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyQuanCafe', N'ON'
GO
ALTER DATABASE [QuanLyQuanCafe] SET QUERY_STORE = OFF
GO
USE [QuanLyQuanCafe]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[ChiTietHoaDonID] [int] IDENTITY(1,1) NOT NULL,
	[ID_HoaDon] [int] NOT NULL,
	[ID_SanPham] [int] NOT NULL,
	[TongSanPham] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ChiTietHoaDonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[HoaDonID] [int] IDENTITY(1,1) NOT NULL,
	[DateCheckIn] [date] NOT NULL,
	[DateCheckOut] [date] NULL,
	[SoBanDaDung] [int] NOT NULL,
	[ID_KhachHang] [int] NOT NULL,
	[ID_NhanVien] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK__HoaDon__6956CE69001F22F3] PRIMARY KEY CLUSTERED 
(
	[HoaDonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[KhachHangID] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nvarchar](15) NOT NULL,
	[DiemTichLuy] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KhachHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHangThanThiet]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHangThanThiet](
	[KhachHangID] [int] IDENTITY(1,1) NOT NULL,
	[MucGiamGia] [float] NOT NULL,
	[ID_KhachHang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KhachHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[KhuyenMaiID] [int] IDENTITY(1,1) NOT NULL,
	[PhanTram] [float] NOT NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[KhuyenMaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[LoaiSanPhamID] [int] IDENTITY(1,1) NOT NULL,
	[LoaiSanPham] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[LoaiSanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[NhanVienID] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[SoDienThoai] [nvarchar](15) NOT NULL,
	[NgayVaoLam] [date] NOT NULL,
	[ChuVu] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NhanVienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[SanPhamID] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[DonViTinh] [nvarchar](20) NOT NULL,
	[DonGia] [float] NOT NULL,
	[ID_LoaiSanPham] [int] NOT NULL,
	[Size] [nchar](10) NULL,
	[ID_KhuyenMai] [int] NULL,
 CONSTRAINT [PK__SanPham__05180FF42DFE9FEA] PRIMARY KEY CLUSTERED 
(
	[SanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Username] [nvarchar](100) NOT NULL,
	[PassWord] [nvarchar](1000) NOT NULL,
	[ID_NhanVien] [int] NOT NULL,
	[ChuVu] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinBan]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinBan](
	[BanID] [int] IDENTITY(1,1) NOT NULL,
	[SoBan] [nvarchar](50) NOT NULL,
	[TrangThai] [nvarchar](100) NULL,
 CONSTRAINT [PK__ThongTin__991CE7659B8566F1] PRIMARY KEY CLUSTERED 
(
	[BanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonID], [ID_HoaDon], [ID_SanPham], [TongSanPham]) VALUES (1, 7, 10, 2)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonID], [ID_HoaDon], [ID_SanPham], [TongSanPham]) VALUES (2, 7, 6, 1)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonID], [ID_HoaDon], [ID_SanPham], [TongSanPham]) VALUES (3, 7, 2, 3)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonID], [ID_HoaDon], [ID_SanPham], [TongSanPham]) VALUES (4, 8, 11, 2)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonID], [ID_HoaDon], [ID_SanPham], [TongSanPham]) VALUES (5, 8, 8, 1)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonID], [ID_HoaDon], [ID_SanPham], [TongSanPham]) VALUES (6, 8, 2, 3)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonID], [ID_HoaDon], [ID_SanPham], [TongSanPham]) VALUES (7, 7, 10, 2)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonID], [ID_HoaDon], [ID_SanPham], [TongSanPham]) VALUES (8, 7, 6, 1)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonID], [ID_HoaDon], [ID_SanPham], [TongSanPham]) VALUES (9, 7, 2, 3)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonID], [ID_HoaDon], [ID_SanPham], [TongSanPham]) VALUES (10, 8, 11, 2)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonID], [ID_HoaDon], [ID_SanPham], [TongSanPham]) VALUES (11, 8, 8, 1)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonID], [ID_HoaDon], [ID_SanPham], [TongSanPham]) VALUES (12, 8, 2, 3)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([HoaDonID], [DateCheckIn], [DateCheckOut], [SoBanDaDung], [ID_KhachHang], [ID_NhanVien], [TrangThai]) VALUES (5, CAST(N'2023-02-20' AS Date), NULL, 22, 1, 12, 0)
INSERT [dbo].[HoaDon] ([HoaDonID], [DateCheckIn], [DateCheckOut], [SoBanDaDung], [ID_KhachHang], [ID_NhanVien], [TrangThai]) VALUES (6, CAST(N'2023-02-20' AS Date), NULL, 23, 2, 12, 0)
INSERT [dbo].[HoaDon] ([HoaDonID], [DateCheckIn], [DateCheckOut], [SoBanDaDung], [ID_KhachHang], [ID_NhanVien], [TrangThai]) VALUES (7, CAST(N'2023-02-20' AS Date), CAST(N'2023-02-20' AS Date), 24, 3, 12, 1)
INSERT [dbo].[HoaDon] ([HoaDonID], [DateCheckIn], [DateCheckOut], [SoBanDaDung], [ID_KhachHang], [ID_NhanVien], [TrangThai]) VALUES (8, CAST(N'2023-02-20' AS Date), CAST(N'2023-02-20' AS Date), 25, 4, 13, 1)
INSERT [dbo].[HoaDon] ([HoaDonID], [DateCheckIn], [DateCheckOut], [SoBanDaDung], [ID_KhachHang], [ID_NhanVien], [TrangThai]) VALUES (9, CAST(N'2023-02-20' AS Date), NULL, 22, 1, 12, 0)
INSERT [dbo].[HoaDon] ([HoaDonID], [DateCheckIn], [DateCheckOut], [SoBanDaDung], [ID_KhachHang], [ID_NhanVien], [TrangThai]) VALUES (10, CAST(N'2023-02-20' AS Date), NULL, 23, 2, 12, 0)
INSERT [dbo].[HoaDon] ([HoaDonID], [DateCheckIn], [DateCheckOut], [SoBanDaDung], [ID_KhachHang], [ID_NhanVien], [TrangThai]) VALUES (11, CAST(N'2023-02-20' AS Date), CAST(N'2023-02-20' AS Date), 24, 3, 12, 1)
INSERT [dbo].[HoaDon] ([HoaDonID], [DateCheckIn], [DateCheckOut], [SoBanDaDung], [ID_KhachHang], [ID_NhanVien], [TrangThai]) VALUES (12, CAST(N'2023-02-20' AS Date), CAST(N'2023-02-20' AS Date), 25, 4, 13, 1)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([KhachHangID], [HoVaTen], [SoDienThoai], [DiemTichLuy]) VALUES (1, N'Ngô Thị Kim Tài', N'0349658954', 15)
INSERT [dbo].[KhachHang] ([KhachHangID], [HoVaTen], [SoDienThoai], [DiemTichLuy]) VALUES (2, N'Cao Nguyên Thụy', N'0346598745', 12)
INSERT [dbo].[KhachHang] ([KhachHangID], [HoVaTen], [SoDienThoai], [DiemTichLuy]) VALUES (3, N'Lê Quang Tới', N'0346598562', 10)
INSERT [dbo].[KhachHang] ([KhachHangID], [HoVaTen], [SoDienThoai], [DiemTichLuy]) VALUES (4, N'Phạm Gia Tiến', N'0356498567', 13)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([LoaiSanPhamID], [LoaiSanPham]) VALUES (1, N'Cà phê')
INSERT [dbo].[LoaiSanPham] ([LoaiSanPhamID], [LoaiSanPham]) VALUES (2, N'Trà sữa')
INSERT [dbo].[LoaiSanPham] ([LoaiSanPhamID], [LoaiSanPham]) VALUES (3, N'Trà trái cây')
INSERT [dbo].[LoaiSanPham] ([LoaiSanPhamID], [LoaiSanPham]) VALUES (4, N'Đá xay')
INSERT [dbo].[LoaiSanPham] ([LoaiSanPhamID], [LoaiSanPham]) VALUES (5, N'Món ăn vặt')
INSERT [dbo].[LoaiSanPham] ([LoaiSanPhamID], [LoaiSanPham]) VALUES (6, N'Sinh tố')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([NhanVienID], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [NgayVaoLam], [ChuVu]) VALUES (2, N'Ðoàn Gia Huy', CAST(N'2002-03-01' AS Date), N'Nam', N'0349452398', CAST(N'2020-02-17' AS Date), N'Admin')
INSERT [dbo].[NhanVien] ([NhanVienID], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [NgayVaoLam], [ChuVu]) VALUES (12, N'Ngô Minh Thành', CAST(N'2002-01-14' AS Date), N'Nam', N'0349452654', CAST(N'2020-02-18' AS Date), N'Nhân Viên')
INSERT [dbo].[NhanVien] ([NhanVienID], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [NgayVaoLam], [ChuVu]) VALUES (13, N'Trần Đức Hiếu', CAST(N'2002-05-06' AS Date), N'Nam', N'0145895645', CAST(N'2020-02-16' AS Date), N'Nhân Viên')
INSERT [dbo].[NhanVien] ([NhanVienID], [HoVaTen], [NgaySinh], [GioiTinh], [SoDienThoai], [NgayVaoLam], [ChuVu]) VALUES (14, N'Ðoàn Gia Huy', CAST(N'2002-03-01' AS Date), N'Nam', N'0349452398', CAST(N'2020-02-17' AS Date), N'Admin')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (1, N'Cà phê đá', N'ly', 15000, 1, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (2, N'Cà phê sữa đá/nóng', N'ly', 20000, 1, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (3, N'Bạc xỉu', N'ly', 25000, 1, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (4, N'Trà sữa trân châu', N'ly', 25000, 2, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (6, N'Trà sữa socola', N'ly', 25000, 2, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (7, N'Trà sữa matcha', N'ly', 30000, 2, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (8, N'Trà sữa bạc hà', N'ly', 30000, 2, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (9, N'Trà sữa SP TEAM', N'ly', 35000, 2, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (10, N'Trà đào', N'ly', 25000, 3, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (11, N'Trà vải', N'ly', 25000, 3, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (12, N'Trà dâu', N'ly', 30000, 3, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (13, N'Trà tắc', N'ly', 20000, 3, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (14, N'Trà dâu tằm', N'ly', 35000, 3, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (15, N'Trà chanh sữa', N'ly', 25000, 3, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (16, N'Socola đá xay', N'ly', 30000, 4, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (17, N'Matcha đá xay', N'ly', 40000, 4, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (18, N'Oreo đá xay', N'ly', 30000, 4, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (19, N'Dâu tây đá xay', N'ly', 40000, 4, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (20, N'Sinh tố bơ', N'ly', 45000, 6, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (21, N'Sinh tố mãng cầu', N'ly', 40000, 6, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (22, N'Sinh tố dâu', N'ly', 45000, 6, N'M         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (23, N'Bánh tráng trộn', N'dĩa', 15000, 5, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (24, N'Khoai tây chiên', N'dĩa', 20000, 5, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (25, N'Cá viên chiên', N'dĩa', 25000, 5, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (26, N'Cà phê đá', N'ly', 15000, 1, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (27, N'Cà phê sữa đá/nóng', N'ly', 20000, 1, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (28, N'Bạc xỉu', N'ly', 25000, 1, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (29, N'Trà sữa trân châu', N'ly', 25000, 2, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (30, N'Trà sữa socola', N'ly', 25000, 2, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (31, N'Trà sữa matcha', N'ly', 30000, 2, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (32, N'Trà sữa bạc hà', N'ly', 30000, 2, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (33, N'Trà sữa SP TEAM', N'ly', 35000, 2, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (34, N'Trà đào', N'ly', 25000, 3, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (35, N'Trà vải', N'ly', 25000, 3, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (36, N'Trà dâu', N'ly', 30000, 3, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (37, N'Trà tắc', N'ly', 20000, 3, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (38, N'Trà dâu tằm', N'ly', 35000, 3, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (39, N'Trà chanh sữa', N'ly', 25000, 3, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (40, N'Socola đá xay', N'ly', 30000, 4, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (41, N'Matcha đá xay', N'ly', 40000, 4, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (42, N'Oreo đá xay', N'ly', 30000, 4, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (43, N'Dâu tây đá xay', N'ly', 40000, 4, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (44, N'Sinh tố bơ', N'ly', 45000, 6, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (45, N'Sinh tố mãng cầu', N'ly', 40000, 6, N'L         ', NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [TenSanPham], [DonViTinh], [DonGia], [ID_LoaiSanPham], [Size], [ID_KhuyenMai]) VALUES (46, N'Sinh tố dâu', N'ly', 45000, 6, N'L         ', NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[TaiKhoan] ([Username], [PassWord], [ID_NhanVien], [ChuVu]) VALUES (N'HIEU', N'789', 13, 1)
INSERT [dbo].[TaiKhoan] ([Username], [PassWord], [ID_NhanVien], [ChuVu]) VALUES (N'HUY', N'123', 2, 0)
INSERT [dbo].[TaiKhoan] ([Username], [PassWord], [ID_NhanVien], [ChuVu]) VALUES (N'THANH', N'456', 12, 1)
GO
SET IDENTITY_INSERT [dbo].[ThongTinBan] ON 

INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (22, N'Bàn 1', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (23, N'Bàn 2', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (24, N'Bàn 3', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (25, N'Bàn 4', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (26, N'Bàn 5', N'Có người')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (27, N'Bàn 6', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (28, N'Bàn 7', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (29, N'Bàn 8', N'Có người')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (30, N'Bàn 9', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (31, N'Bàn 10', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (32, N'Bàn 11', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (33, N'Bàn 12', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (34, N'Bàn 13', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (35, N'Bàn 14', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (36, N'Bàn 15', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (37, N'Bàn 16', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (38, N'Bàn 17', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (39, N'Bàn 18', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (40, N'Bàn 19', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (41, N'Bàn 20', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (42, N'Bàn 1', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (43, N'Bàn 2', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (44, N'Bàn 3', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (45, N'Bàn 4', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (46, N'Bàn 5', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (47, N'Bàn 6', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (48, N'Bàn 7', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (49, N'Bàn 8', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (50, N'Bàn 9', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (51, N'Bàn 10', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (52, N'Bàn 11', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (53, N'Bàn 12', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (54, N'Bàn 13', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (55, N'Bàn 14', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (56, N'Bàn 15', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (57, N'Bàn 16', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (58, N'Bàn 17', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (59, N'Bàn 18', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (60, N'Bàn 19', N'Trống')
INSERT [dbo].[ThongTinBan] ([BanID], [SoBan], [TrangThai]) VALUES (61, N'Bàn 20', N'Trống')
SET IDENTITY_INSERT [dbo].[ThongTinBan] OFF
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT ((0)) FOR [TongSanPham]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__DateChec__398D8EEE]  DEFAULT (getdate()) FOR [DateCheckIn]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__TrangTha__3A81B327]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT ((0)) FOR [ChuVu]
GO
ALTER TABLE [dbo].[ThongTinBan] ADD  CONSTRAINT [DF__ThongTinB__Trang__2C3393D0]  DEFAULT (N'Trống') FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHo__ID_Sa__4222D4EF] FOREIGN KEY([ID_SanPham])
REFERENCES [dbo].[SanPham] ([SanPhamID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK__ChiTietHo__ID_Sa__4222D4EF]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHo__TongS__412EB0B6] FOREIGN KEY([ID_HoaDon])
REFERENCES [dbo].[HoaDon] ([HoaDonID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK__ChiTietHo__TongS__412EB0B6]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__ID_Khach__3C69FB99] FOREIGN KEY([ID_KhachHang])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__ID_Khach__3C69FB99]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__ID_NhanV__3D5E1FD2] FOREIGN KEY([ID_NhanVien])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__ID_NhanV__3D5E1FD2]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__TrangTha__3B75D760] FOREIGN KEY([SoBanDaDung])
REFERENCES [dbo].[ThongTinBan] ([BanID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__TrangTha__3B75D760]
GO
ALTER TABLE [dbo].[KhachHangThanThiet]  WITH CHECK ADD FOREIGN KEY([ID_KhachHang])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__ID_Khuy__286302EC] FOREIGN KEY([ID_LoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([LoaiSanPhamID])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__ID_Khuy__286302EC]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__ID_Khuy__29572725] FOREIGN KEY([ID_KhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([KhuyenMaiID])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__ID_Khuy__29572725]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([ID_NhanVien])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
/****** Object:  StoredProcedure [dbo].[USP_GetTable]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetTable]
AS SELECT * FROM dbo.ThongTinBan
GO
/****** Object:  StoredProcedure [dbo].[USP_GetTaiKhoanByUsername]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetTaiKhoanByUsername]
@username nvarchar(100)
AS
BEGIN
	SELECT * FROM dbo.TaiKhoan WHERE Username = @username
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 2/20/2023 3:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_Login]
@username nvarchar(100), @password nvarchar(1000)
AS
BEGIN
	SELECT * FROM dbo.TaiKhoan WHERE Username = @username AND PassWord = @password
END
GO
USE [master]
GO
ALTER DATABASE [QuanLyQuanCafe] SET  READ_WRITE 
GO
