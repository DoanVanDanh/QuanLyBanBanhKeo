USE [NhapXuatKho]
GO
/****** Object:  Table [dbo].[CHIETKHAU]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHIETKHAU](
	[MaCK] [varchar](10) NOT NULL,
	[GiaTri] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[MaDH] [varchar](20) NULL,
	[MaMH] [varchar](10) NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETPHIEU]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETPHIEU](
	[MaPN] [varchar](20) NULL,
	[MaMH] [varchar](10) NULL,
	[SoLuong] [int] NULL,
	[HSD] [date] NULL,
	[MaVT] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DIACHI]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIACHI](
	[MaDC] [varchar](10) NOT NULL,
	[Duong] [nvarchar](50) NULL,
	[PhuongXa] [nvarchar](50) NULL,
	[QuanHuyen] [nvarchar](50) NULL,
	[TinhThanh] [nvarchar](50) NULL,
 CONSTRAINT [PK__DIACHI__2725866412D3D2EC] PRIMARY KEY CLUSTERED 
(
	[MaDC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DIACHINHANHANG]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIACHINHANHANG](
	[MaDCN] [varchar](10) NULL,
	[MaKH] [varchar](10) NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[SoDT] [nvarchar](20) NULL,
	[MaDC] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DMHANG]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DMHANG](
	[MaDM] [varchar](10) NOT NULL,
	[TenDM] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDH] [varchar](20) NOT NULL,
	[MaKH] [varchar](10) NULL,
	[MaPTTT] [varchar](10) NULL,
	[Ngay] [date] NULL,
	[TrangThaiXL] [nvarchar](50) NULL,
 CONSTRAINT [PK__DONHANG__2725866157215F25] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[SoDT] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHO]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHO](
	[MaKho] [varchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MATHANG]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATHANG](
	[MaMH] [varchar](10) NOT NULL,
	[TenMH] [nvarchar](50) NULL,
	[AnhDaiDien] [varchar](200) NULL,
	[MaDM] [varchar](10) NULL,
	[MaTH] [varchar](10) NULL,
	[DVT] [nvarchar](10) NULL,
	[NgayHHSD] [date] NULL,
	[GiaNhap] [bigint] NULL,
	[GiaXuat] [bigint] NULL,
	[MoTa] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MATHANGKHUYENMAI]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATHANGKHUYENMAI](
	[MaMH] [varchar](10) NULL,
	[GiaTriKM] [float] NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [varchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[AnhDaiDien] [varchar](200) NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDT] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [varchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[AnhDaiDien] [varchar](200) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDT] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [varchar](20) NOT NULL,
	[Ngay] [date] NULL,
	[MaNCC] [varchar](10) NULL,
	[MaNV] [varchar](10) NULL,
	[MaTT] [varchar](10) NULL,
	[MaKho] [varchar](10) NULL,
	[TrangThaiXL] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHUONGXA]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHUONGXA](
	[MaPX] [varchar](3) NOT NULL,
	[MaQH] [varchar](2) NULL,
	[Ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTTHANHTOAN]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTTHANHTOAN](
	[MaPTTT] [varchar](10) NOT NULL,
	[TenPTTT] [nvarchar](100) NULL,
	[AnhDaiDien] [varchar](200) NULL,
 CONSTRAINT [PK__THANHTOA__27250079048A89DE] PRIMARY KEY CLUSTERED 
(
	[MaPTTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QUANHUYEN]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QUANHUYEN](
	[MaQH] [varchar](2) NOT NULL,
	[MATThanh] [varchar](10) NULL,
	[Ten] [nvarchar](50) NULL,
 CONSTRAINT [PK__QUANHUYE__2725F8564D5E90E6] PRIMARY KEY CLUSTERED 
(
	[MaQH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAIKHOANKH]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOANKH](
	[Email] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THUONGHIEU]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THUONGHIEU](
	[MaTH] [varchar](10) NOT NULL,
	[TenTH] [nvarchar](50) NULL,
	[AnhDaiDien] [varchar](200) NULL,
	[TruSo] [nvarchar](50) NULL,
	[Website] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TINHTHANH]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TINHTHANH](
	[MaTThanh] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NULL,
 CONSTRAINT [PK__TINHTHAN__E87F0CFC4FD09C1D] PRIMARY KEY CLUSTERED 
(
	[MaTThanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VITRILUUTRU]    Script Date: 6/7/2017 11:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VITRILUUTRU](
	[MaVT] [varchar](10) NOT NULL,
	[MoTa] [nvarchar](20) NULL,
	[KhaNangChua] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETDON__MaDH__4E53A1AA] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DONHANG] ([MaDH])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK__CHITIETDON__MaDH__4E53A1AA]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MATHANG] ([MaMH])
GO
ALTER TABLE [dbo].[CHITIETPHIEU]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MATHANG] ([MaMH])
GO
ALTER TABLE [dbo].[CHITIETPHIEU]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PHIEUNHAP] ([MaPN])
GO
ALTER TABLE [dbo].[CHITIETPHIEU]  WITH CHECK ADD FOREIGN KEY([MaVT])
REFERENCES [dbo].[VITRILUUTRU] ([MaVT])
GO
ALTER TABLE [dbo].[DIACHINHANHANG]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETDIA__MaDC__3F115E1A] FOREIGN KEY([MaDC])
REFERENCES [dbo].[DIACHI] ([MaDC])
GO
ALTER TABLE [dbo].[DIACHINHANHANG] CHECK CONSTRAINT [FK__CHITIETDIA__MaDC__3F115E1A]
GO
ALTER TABLE [dbo].[DIACHINHANHANG]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETDIA__MaKH__3E1D39E1] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DIACHINHANHANG] CHECK CONSTRAINT [FK__CHITIETDIA__MaKH__3E1D39E1]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK__DONHANG__MaKH__4B7734FF] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK__DONHANG__MaKH__4B7734FF]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK__DONHANG__MaTT__4C6B5938] FOREIGN KEY([MaPTTT])
REFERENCES [dbo].[PTTHANHTOAN] ([MaPTTT])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK__DONHANG__MaTT__4C6B5938]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[TAIKHOANKH] ([Email])
GO
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DMHANG] ([MaDM])
GO
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD FOREIGN KEY([MaTH])
REFERENCES [dbo].[THUONGHIEU] ([MaTH])
GO
ALTER TABLE [dbo].[MATHANGKHUYENMAI]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MATHANG] ([MaMH])
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[TAIKHOANKH] ([Email])
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaKho])
REFERENCES [dbo].[KHO] ([MaKho])
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK__PHIEUNHAP__MaTT__43D61337] FOREIGN KEY([MaTT])
REFERENCES [dbo].[PTTHANHTOAN] ([MaPTTT])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK__PHIEUNHAP__MaTT__43D61337]
GO
ALTER TABLE [dbo].[PHUONGXA]  WITH CHECK ADD  CONSTRAINT [FK__PHUONGXA__MaQH__5AB9788F] FOREIGN KEY([MaQH])
REFERENCES [dbo].[QUANHUYEN] ([MaQH])
GO
ALTER TABLE [dbo].[PHUONGXA] CHECK CONSTRAINT [FK__PHUONGXA__MaQH__5AB9788F]
GO
ALTER TABLE [dbo].[QUANHUYEN]  WITH CHECK ADD  CONSTRAINT [FK__QUANHUYEN__MATTh__57DD0BE4] FOREIGN KEY([MATThanh])
REFERENCES [dbo].[TINHTHANH] ([MaTThanh])
GO
ALTER TABLE [dbo].[QUANHUYEN] CHECK CONSTRAINT [FK__QUANHUYEN__MATTh__57DD0BE4]
GO
