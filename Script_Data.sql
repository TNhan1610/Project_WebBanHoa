CREATE DATABASE HoaTuoiDB
GO
USE [HoaTuoiDB]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hoa](
	[MaHoa] [int] IDENTITY(1,1) NOT NULL,
	[TenHoa] [nvarchar](50) NOT NULL,
	[Gia] [float] NOT NULL,
	[Hinh] [varchar](50) NOT NULL,
	[MaLoai] [int] NULL,
	[NgayDang] [datetime] NULL,
	[SoLuotXem] [int] NULL,
 CONSTRAINT [PK_Hoa] PRIMARY KEY CLUSTERED 
(
	[MaHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Hoa] ON 

INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (1, N'Pink Lyly ', 350000, N'1.png', 1, CAST(0x00009E4A00000000 AS DateTime), 111)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (2, N'Christmas Plant', 300000, N'hoagio001.png', 2, CAST(0x00009E4A00000000 AS DateTime), 123)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (3, N'Everlasting ', 350000, N'2.png', 1, CAST(0x00009E4A00000000 AS DateTime), 100)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (4, N'Chung vui', 350000, N'3.png', 1, CAST(0x00009E4B00000000 AS DateTime), 999)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (5, N'Chia sẽ', 259000, N'4.png', 1, CAST(0x00009E4B00000000 AS DateTime), 1)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (6, N'Mặt trời bé con', 249000, N'5.png', 1, CAST(0x00009E4B00000000 AS DateTime), 2)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (7, N'Ánh vàng', 200000, N'6.png', 1, CAST(0x00009E4B00000000 AS DateTime), 9)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (8, N'I miss you', 249000, N'7.png', 1, CAST(0x00009E4B00000000 AS DateTime), 108)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (9, N'Ngày ấy', 279000, N'hoagio002.png', 2, CAST(0x00009E4D00000000 AS DateTime), 119)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (10, N'Hồng thắm', 179000, N'hoagio003.png', 2, CAST(0x00009E4E00000000 AS DateTime), 109)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (11, N'Yêu kiều', 300000, N'hoagio004.png', 2, CAST(0x00009E4E00000000 AS DateTime), 99)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (12, N'Rộn rã', 400000, N'hoagio005.png', 2, CAST(0x00009E4E00000000 AS DateTime), 79)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (13, N'Spring Tulip III', 499000, N'binh001.png', 3, CAST(0x00009E5500000000 AS DateTime), 998)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (14, N'Dân giã', 190000, N'vp001.png', 4, CAST(0x00009E5500000000 AS DateTime), 234)
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (15, N'Hoa cưới', 233000, N'hc001.png', 6, CAST(0x00009E5500000000 AS DateTime), 111)
SET IDENTITY_INSERT [dbo].[Hoa] OFF
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [GhiChu]) VALUES (1, N'Hoa tươi bó', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [GhiChu]) VALUES (2, N'Hoa tươi giỏ', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [GhiChu]) VALUES (3, N'Hoa tươi bình', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [GhiChu]) VALUES (4, N'Hoa văn phòng', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [GhiChu]) VALUES (5, N'Hoa chúc mừng', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [GhiChu]) VALUES (6, N'Hoa cưới', NULL)
SET IDENTITY_INSERT [dbo].[Loai] OFF
ALTER TABLE [dbo].[Hoa]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_DanhMuc] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
GO
ALTER TABLE [dbo].[Hoa] CHECK CONSTRAINT [FK_Hoa_DanhMuc]
GO
