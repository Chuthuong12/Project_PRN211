
CREATE DATABASE [QLdienthoai]
 
USE [QLdienthoai]
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[Madon] [int] NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Donhang](
	[Madon] [int] NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[MaNguoidung] [int] NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Hangsanxuat](
	[Mahang] [int] IDENTITY(1,1) NOT NULL,
	[Tenhang] [nchar](10) NULL,
 CONSTRAINT [PK_Hangsanxuat] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Hedieuhanh](
	[Mahdh] [int] IDENTITY(1,1) NOT NULL,
	[Tenhdh] [nchar](10) NULL,
 CONSTRAINT [PK_Hedieuhanh] PRIMARY KEY CLUSTERED 
(
	[Mahdh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
CREATE TABLE [dbo].[Nguoidung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Sanpham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[Mota] [ntext] NULL,
	[Thesim] [int] NULL,
	[Bonhotrong] [int] NULL,
	[Sanphammoi] [bit] NULL,
	[Ram] [int] NULL,
	[Anhbia] [nvarchar](10) NULL,
	[Mahang] [int] NULL,
	[Mahdh] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hangsanxuat] ON 

INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (1, N'Sam Sung  ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (2, N'Apple     ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (3, N'Xiaomi    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (4, N'Vsmart    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (5, N'Bphone    ')
SET IDENTITY_INSERT [dbo].[Hangsanxuat] OFF
GO
SET IDENTITY_INSERT [dbo].[Hedieuhanh] ON 

INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (1, N'Android   ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (2, N'IOS       ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (3, N'VOS       ')
SET IDENTITY_INSERT [dbo].[Hedieuhanh] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (14, N'Nguyen van Cuong', N'Admin@gmail.com', N'0812883636', N'12345678', 2, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (15, N'Nguyen van Cuong', N'cuongtest@gmail.com', N'0812883636', N'12345678', NULL, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (16, N'Cường 123', N'Khach@gmail.com', N'0812883636', N'12345678', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Member')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (2, N'Apple Iphone 3', CAST(2000000 AS Decimal(18, 0)), 9, N'Apple Iphone 3', 1, 8, 0, 8, N'ip3.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (5, N'Apple Iphone 4', CAST(2000000 AS Decimal(18, 0)), 10, N'Apple Iphone 4', 1, 8, 0, 1, N'ip4.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (6, N'Apple Iphone 5', CAST(2000000 AS Decimal(18, 0)), 10, N'Apple Iphone 5', 1, 8, 0, 1, N'ip5.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (7, N'Apple Iphone 6', CAST(2000000 AS Decimal(18, 0)), 2, N'Apple Iphone 6', 1, 8, 0, 1, N'ip6.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (8, N'SamSung GalaxyS1', CAST(1000000 AS Decimal(18, 0)), 1, N'SamSung GalaxyS1', 2, 8, 0, 2, N'ss1.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (9, N'SamSung GalaxyS2', CAST(1000000 AS Decimal(18, 0)), 1, N'SamSung GalaxyS2', 1, 8, 0, 1, N'ss2.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (10, N'SamSung GalaxyS3', CAST(2000000 AS Decimal(18, 0)), 1, N'SamSung GalaxyS3', 1, 8, 0, 2, N'ss3.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (11, N'SamSung GalaxyS4', CAST(2000000 AS Decimal(18, 0)), 2, N'SamSung GalaxyS4', 2, 8, 0, 2, N'ss4.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (13, N'Xiaomi mi4', CAST(200000 AS Decimal(18, 0)), 10, N'Xiaomi mi4', 2, 8, 0, 4, N'mi4.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (14, N'Xiaomi mi5', CAST(2000000 AS Decimal(18, 0)), 10, N'Xiaomi mi5', 2, 16, 0, 6, N'mi5.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (15, N'Xiaomi mi6', CAST(20000 AS Decimal(18, 0)), 10, N'Xiaomi mi6', 2, 8, 0, 6, N'mi6.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (16, N'Xiaomi mi7', CAST(200000 AS Decimal(18, 0)), 10, N'Mi7', 2, 8, 0, 2, N'mi7.jpg', 3, 1)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
ALTER TABLE [dbo].[Nguoidung] ADD  CONSTRAINT [DF_Nguoidung_IDQuyen]  DEFAULT ((0)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([Madon])
REFERENCES [dbo].[Donhang] ([Madon])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([Masp])
REFERENCES [dbo].[Sanpham] ([Masp])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[Nguoidung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Nguoidung] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Nguoidung]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hangsanxuat] FOREIGN KEY([Mahang])
REFERENCES [dbo].[Hangsanxuat] ([Mahang])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hangsanxuat]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hedieuhanh] FOREIGN KEY([Mahdh])
REFERENCES [dbo].[Hedieuhanh] ([Mahdh])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hedieuhanh]
GO
USE [master]
GO
ALTER DATABASE [QLdienthoai] SET  READ_WRITE 
GO
