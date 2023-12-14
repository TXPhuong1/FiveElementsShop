USE [datn]
GO
/****** Object:  Table [dbo].[account]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[birth_day] [datetime2](7) NULL,
	[code] [varchar](255) NULL,
	[create_date] [datetime2](7) NULL,
	[email] [varchar](255) NULL,
	[is_non_locked] [bit] NOT NULL,
	[password] [varchar](255) NULL,
	[update_date] [datetime2](7) NULL,
	[customer_id] [bigint] NOT NULL,
	[role_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[address_shipping]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address_shipping](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](255) NULL,
	[customer_id] [bigint] NULL,
 CONSTRAINT [PK__address___3213E83F7DD733FF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[billing_address] [varchar](255) NULL,
	[code] [varchar](50) NOT NULL,
	[create_date] [datetime2](7) NULL,
	[invoice_type] [varchar](255) NULL,
	[promotion_price] [float] NOT NULL,
	[status] [varchar](255) NULL,
	[update_date] [datetime2](7) NULL,
	[customer_id] [bigint] NULL,
	[payment_method_id] [bigint] NULL,
	[amount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_bill_detail]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_bill_detail](
	[bill_id] [bigint] NOT NULL,
	[bill_detail_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[bill_id] [bigint] NULL,
	[product_detail_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime2](7) NULL,
	[quantity] [int] NOT NULL,
	[update_date] [datetime2](7) NULL,
	[account_id] [bigint] NULL,
	[product_detail_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone_number] [varchar](255) NULL,
	[email] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime2](7) NULL,
	[file_type] [varchar](255) NULL,
	[link] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[update_date] [datetime2](7) NULL,
	[product_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[information]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[information](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [varchar](255) NULL,
	[create_date] [datetime2](7) NULL,
	[name] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
	[update_date] [datetime2](7) NULL,
	[account_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_method]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_method](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[clothing_type] [varchar](255) NULL,
	[code] [varchar](255) NULL,
	[create_date] [datetime2](7) NULL,
	[delete_flag] [bit] NOT NULL,
	[describe] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[price] [float] NOT NULL,
	[status] [int] NOT NULL,
	[updated_date] [datetime2](7) NULL,
	[brand_id] [bigint] NULL,
	[category_id] [bigint] NULL,
	[material_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_detail]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_detail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[color_id] [bigint] NULL,
	[product_id] [bigint] NULL,
	[size_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime2](7) NULL,
	[name] [varchar](50) NOT NULL,
	[update_date] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 11/5/2023 9:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (1, NULL, N'KH01', NULL, N'abc@gmail.com', 1, N'$2a$10$CcaM8/VIeTNaitpd0N43zuIvJC4cv1OVkVQMsgIsocifmRaQM14xe', NULL, 1, 3)
INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (12, NULL, N'KH02', NULL, N'abc2@gmail.com', 1, N'$2a$10$CcaM8/VIeTNaitpd0N43zuIvJC4cv1OVkVQMsgIsocifmRaQM14xe
', NULL, 2, 3)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[address_shipping] ON 

INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (1, N'52/25, Mỹ Ðình 2,', 1)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (2, N'10, Xuân Thủy, Cầu Giấy', 1)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (3, N'15, Xuân Thủy, Cầu Giấy', 2)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (4, N'23, Càu Diễn', 2)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (5, N'13, Thị trấn Trâu Quỳ, Huyện Gia Lâm, Thành phố Hà Nội', 1)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (6, N'12, Thị trấn Trâu Quỳ, Huyện Gia Lâm, Thành phố Hà Nội', 1)
SET IDENTITY_INSERT [dbo].[address_shipping] OFF
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([id], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [status], [update_date], [customer_id], [payment_method_id], [amount]) VALUES (1, N'12, C?u Di?n', N'ABC', CAST(N'2022-02-12T00:00:00.0000000' AS DateTime2), N'ONLINE', 100, N'CHO_XAC_NHAN', NULL, 1, 1, 122321)
INSERT [dbo].[bill] ([id], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [status], [update_date], [customer_id], [payment_method_id], [amount]) VALUES (2, N'Ðình T?', N'HD0001', CAST(N'2023-11-05T07:51:29.5353910' AS DateTime2), N'OFFLINE', 0, N'HUY', CAST(N'2023-11-05T07:51:29.5353910' AS DateTime2), 1, NULL, NULL)
INSERT [dbo].[bill] ([id], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [status], [update_date], [customer_id], [payment_method_id], [amount]) VALUES (3, NULL, N'HD0001', CAST(N'2023-11-05T20:42:55.0130323' AS DateTime2), N'OFFLINE', 0, N'KHOI_TAO', CAST(N'2023-11-05T20:42:55.0130323' AS DateTime2), 1, 1, 373000)
INSERT [dbo].[bill] ([id], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [status], [update_date], [customer_id], [payment_method_id], [amount]) VALUES (4, NULL, N'HD0001', CAST(N'2023-11-05T21:10:42.9997151' AS DateTime2), N'OFFLINE', 0, N'KHOI_TAO', CAST(N'2023-11-05T21:10:42.9997151' AS DateTime2), 1, 3, 373000)
SET IDENTITY_INSERT [dbo].[bill] OFF
GO
INSERT [dbo].[bill_bill_detail] ([bill_id], [bill_detail_id]) VALUES (2, 3)
INSERT [dbo].[bill_bill_detail] ([bill_id], [bill_detail_id]) VALUES (2, 4)
GO
SET IDENTITY_INSERT [dbo].[bill_detail] ON 

INSERT [dbo].[bill_detail] ([id], [quantity], [bill_id], [product_detail_id]) VALUES (1, 12, 1, 1)
INSERT [dbo].[bill_detail] ([id], [quantity], [bill_id], [product_detail_id]) VALUES (2, 1, 1, 2)
INSERT [dbo].[bill_detail] ([id], [quantity], [bill_id], [product_detail_id]) VALUES (3, 3, 2, 2)
INSERT [dbo].[bill_detail] ([id], [quantity], [bill_id], [product_detail_id]) VALUES (4, 1, 2, 3)
INSERT [dbo].[bill_detail] ([id], [quantity], [bill_id], [product_detail_id]) VALUES (5, 1, 3, 4)
INSERT [dbo].[bill_detail] ([id], [quantity], [bill_id], [product_detail_id]) VALUES (6, 1, 4, 5)
SET IDENTITY_INSERT [dbo].[bill_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([id], [code], [name], [status]) VALUES (1, N'B1', N'Coolmate', 0)
INSERT [dbo].[brand] ([id], [code], [name], [status]) VALUES (2, N'B2', N'Uniqlo', 0)
INSERT [dbo].[brand] ([id], [code], [name], [status]) VALUES (3, N'B3', N'Dior', 0)
INSERT [dbo].[brand] ([id], [code], [name], [status]) VALUES (4, N'B4', N'Gucci', 0)
SET IDENTITY_INSERT [dbo].[brand] OFF
GO
SET IDENTITY_INSERT [dbo].[cart] ON 

INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (1, CAST(N'2023-11-04T18:08:46.7822843' AS DateTime2), 4, CAST(N'2023-11-04T18:08:48.2110687' AS DateTime2), 12, 2)
SET IDENTITY_INSERT [dbo].[cart] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [code], [name], [status]) VALUES (1, N'CA1', N'Women', 0)
INSERT [dbo].[category] ([id], [code], [name], [status]) VALUES (2, N'CA2', N'Men', 0)
INSERT [dbo].[category] ([id], [code], [name], [status]) VALUES (3, N'CA3', N'Bags', 0)
INSERT [dbo].[category] ([id], [code], [name], [status]) VALUES (4, N'CA4', N'Unisex', 0)
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[color] ON 

INSERT [dbo].[color] ([id], [code], [name]) VALUES (1, N'C1', N'Đen')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (2, N'C2', N'Trắng')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (3, N'C3', N'Xám')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (4, N'C4', N'Đỏ')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (5, N'C5', N'Vàng')
SET IDENTITY_INSERT [dbo].[color] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([id], [name], [phone_number], [email]) VALUES (1, N'Nguyen Van A', N'012345678', NULL)
INSERT [dbo].[customer] ([id], [name], [phone_number], [email]) VALUES (2, N'Nguyen Van B', N'012345679', NULL)
INSERT [dbo].[customer] ([id], [name], [phone_number], [email]) VALUES (3, N'Nguyen Van C', N'012345677', NULL)
INSERT [dbo].[customer] ([id], [name], [phone_number], [email]) VALUES (4, N'Nguyen Van D', N'023182133', NULL)
INSERT [dbo].[customer] ([id], [name], [phone_number], [email]) VALUES (5, N'cxvdsf', NULL, NULL)
INSERT [dbo].[customer] ([id], [name], [phone_number], [email]) VALUES (6, N'123', NULL, NULL)
INSERT [dbo].[customer] ([id], [name], [phone_number], [email]) VALUES (7, N'13', NULL, NULL)
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
SET IDENTITY_INSERT [dbo].[image] ON 

INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (1, CAST(N'2023-11-04T17:04:44.4791386' AS DateTime2), N'image/jpeg', N'uploads/1699092284476_xanh_navy.jpg', N'1699092284476_xanh_navy.jpg', CAST(N'2023-11-04T17:04:44.4791386' AS DateTime2), 1)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (2, CAST(N'2023-11-04T17:04:44.4801432' AS DateTime2), N'image/jpeg', N'uploads/1699092284480_trang_18.jpg', N'1699092284480_trang_18.jpg', CAST(N'2023-11-04T17:04:44.4801432' AS DateTime2), 1)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (3, CAST(N'2023-11-04T17:04:44.4811484' AS DateTime2), N'image/webp', N'uploads/1699092284481_denn3-(2)_copys_62.webp', N'1699092284481_denn3-(2)_copys_62.webp', CAST(N'2023-11-04T17:04:44.4811484' AS DateTime2), 1)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (4, CAST(N'2023-11-05T08:09:38.7508125' AS DateTime2), N'image/webp', N'uploads/1699146578750_quan-vai-nu-10f23pfow003_brown_6__1_1_jpg.webp', N'1699146578750_quan-vai-nu-10f23pfow003_brown_6__1_1_jpg.webp', CAST(N'2023-11-05T08:09:38.7508125' AS DateTime2), 2)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (5, CAST(N'2023-11-05T08:09:38.7571131' AS DateTime2), N'image/webp', N'uploads/1699146578750_quan-vai-nu-10f23pfow003_brown_4__1_1_jpg.webp', N'1699146578750_quan-vai-nu-10f23pfow003_brown_4__1_1_jpg.webp', CAST(N'2023-11-05T08:09:38.7571131' AS DateTime2), 2)
SET IDENTITY_INSERT [dbo].[image] OFF
GO
SET IDENTITY_INSERT [dbo].[material] ON 

INSERT [dbo].[material] ([id], [code], [name], [status]) VALUES (1, N'MA1', N'Cotton', 0)
INSERT [dbo].[material] ([id], [code], [name], [status]) VALUES (2, N'MA2', N'Thô', 0)
INSERT [dbo].[material] ([id], [code], [name], [status]) VALUES (3, N'MA3', N'Nỉ', 0)
INSERT [dbo].[material] ([id], [code], [name], [status]) VALUES (4, N'MA4', N'Len', 0)
SET IDENTITY_INSERT [dbo].[material] OFF
GO
SET IDENTITY_INSERT [dbo].[payment_method] ON 

INSERT [dbo].[payment_method] ([id], [name], [status]) VALUES (1, N'TIEN_MAT', 1)
INSERT [dbo].[payment_method] ([id], [name], [status]) VALUES (3, N'CHUYEN_KHOAN', 1)
INSERT [dbo].[payment_method] ([id], [name], [status]) VALUES (4, N'THE', 1)
SET IDENTITY_INSERT [dbo].[payment_method] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [clothing_type], [code], [create_date], [delete_flag], [describe], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (1, NULL, N'SP01', CAST(N'2023-11-04T17:04:44.4811484' AS DateTime2), 0, N'', N'Áo thun nam tay dài hình thêu', 20000, 1, CAST(N'2023-11-04T17:04:44.4811484' AS DateTime2), 1, 2, 1)
INSERT [dbo].[product] ([id], [clothing_type], [code], [create_date], [delete_flag], [describe], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (2, NULL, N'10F23PFOW003', CAST(N'2023-11-05T08:09:38.7571131' AS DateTime2), 0, N'Form
Relax
Chất liệu
Polyester
Thiết kế
Trơn
Giới tính
Nữ
Nhóm sản phẩm
Quần Vải', N'Quần Vải Nữ Ống Rộng Sọc Dài Xếp Ly Trơn', 638000, 1, CAST(N'2023-11-05T08:09:38.7571131' AS DateTime2), 2, 2, 3)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[product_detail] ON 

INSERT [dbo].[product_detail] ([id], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (1, 373000, 123, 1, 1, 1)
INSERT [dbo].[product_detail] ([id], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (2, 373000, 2220, 1, 1, 2)
INSERT [dbo].[product_detail] ([id], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (3, 374000, 20, 1, 1, 3)
INSERT [dbo].[product_detail] ([id], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (4, 373000, 111, 2, 1, 1)
INSERT [dbo].[product_detail] ([id], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (5, 373000, 10, 2, 1, 2)
INSERT [dbo].[product_detail] ([id], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (6, 375000, 0, 2, 1, 3)
INSERT [dbo].[product_detail] ([id], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (7, 638000, 22, 5, 2, 1)
INSERT [dbo].[product_detail] ([id], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (8, 638000, 26, 5, 2, 2)
INSERT [dbo].[product_detail] ([id], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (9, 639000, 11, 5, 2, 3)
SET IDENTITY_INSERT [dbo].[product_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([id], [create_date], [name], [update_date]) VALUES (1, NULL, N'ROLE_ADMIN', NULL)
INSERT [dbo].[role] ([id], [create_date], [name], [update_date]) VALUES (2, NULL, N'ROLE_EMPLOYEE', NULL)
INSERT [dbo].[role] ([id], [create_date], [name], [update_date]) VALUES (3, NULL, N'ROLE_USER', NULL)
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[size] ON 

INSERT [dbo].[size] ([id], [code], [name]) VALUES (1, N'S', N'S')
INSERT [dbo].[size] ([id], [code], [name]) VALUES (2, N'M', N'M')
INSERT [dbo].[size] ([id], [code], [name]) VALUES (3, N'L', N'L')
INSERT [dbo].[size] ([id], [code], [name]) VALUES (4, N'XL', N'Xl')
INSERT [dbo].[size] ([id], [code], [name]) VALUES (5, N'2XL', N'2XL')
INSERT [dbo].[size] ([id], [code], [name]) VALUES (6, N'3XL', N'3XL')
INSERT [dbo].[size] ([id], [code], [name]) VALUES (7, N'27', N'27')
INSERT [dbo].[size] ([id], [code], [name]) VALUES (8, N'28', N'28')
INSERT [dbo].[size] ([id], [code], [name]) VALUES (9, N'29', N'29')
SET IDENTITY_INSERT [dbo].[size] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_k9qlqijt38kmryafdhhq04lon]    Script Date: 11/5/2023 9:14:27 PM ******/
ALTER TABLE [dbo].[account] ADD  CONSTRAINT [UK_k9qlqijt38kmryafdhhq04lon] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UK_2m4vyecyq7lfdvuminm73refn]    Script Date: 11/5/2023 9:14:27 PM ******/
ALTER TABLE [dbo].[bill_bill_detail] ADD  CONSTRAINT [UK_2m4vyecyq7lfdvuminm73refn] UNIQUE NONCLUSTERED 
(
	[bill_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FKd4vb66o896tay3yy52oqxr9w0] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FKd4vb66o896tay3yy52oqxr9w0]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FKnnwpo0lfq4xai1rs6887sx02k] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FKnnwpo0lfq4xai1rs6887sx02k]
GO
ALTER TABLE [dbo].[address_shipping]  WITH CHECK ADD  CONSTRAINT [FKq133otkfjvualo1uhtdimlsj0] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[address_shipping] CHECK CONSTRAINT [FKq133otkfjvualo1uhtdimlsj0]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FKcdveik90g4pvk7m249scu73pg] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FKcdveik90g4pvk7m249scu73pg]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FKmn36kcnhdokvrm6ueo3raqi9k] FOREIGN KEY([payment_method_id])
REFERENCES [dbo].[payment_method] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FKmn36kcnhdokvrm6ueo3raqi9k]
GO
ALTER TABLE [dbo].[bill_bill_detail]  WITH CHECK ADD  CONSTRAINT [FKc0rffue3hnqwt6ynvnmn4yc4m] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[bill_bill_detail] CHECK CONSTRAINT [FKc0rffue3hnqwt6ynvnmn4yc4m]
GO
ALTER TABLE [dbo].[bill_bill_detail]  WITH CHECK ADD  CONSTRAINT [FKp3dhryav19eowqx9rwyqr2fjs] FOREIGN KEY([bill_detail_id])
REFERENCES [dbo].[bill_detail] ([id])
GO
ALTER TABLE [dbo].[bill_bill_detail] CHECK CONSTRAINT [FKp3dhryav19eowqx9rwyqr2fjs]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK5wgs68xq0wq0ebia10snilq9v] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[product_detail] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK5wgs68xq0wq0ebia10snilq9v]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FKeolgwyayei3o80bb7rj7t207q] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FKeolgwyayei3o80bb7rj7t207q]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK4pljlvncf45mr98etwpubxvbt] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK4pljlvncf45mr98etwpubxvbt]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK874r4t3ct18p0rfjwdkn4p0xe] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[product_detail] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK874r4t3ct18p0rfjwdkn4p0xe]
GO
ALTER TABLE [dbo].[image]  WITH CHECK ADD  CONSTRAINT [FKgpextbyee3uk9u6o2381m7ft1] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[image] CHECK CONSTRAINT [FKgpextbyee3uk9u6o2381m7ft1]
GO
ALTER TABLE [dbo].[information]  WITH CHECK ADD  CONSTRAINT [FK8yb2817ttjxsabnggx07klkl] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[information] CHECK CONSTRAINT [FK8yb2817ttjxsabnggx07klkl]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK1mtsbur82frn64de7balymq9s] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK1mtsbur82frn64de7balymq9s]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FKs6cydsualtsrprvlf2bb3lcam] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKs6cydsualtsrprvlf2bb3lcam]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FKw04fq456sc4tk26tnbhvr59o] FOREIGN KEY([material_id])
REFERENCES [dbo].[material] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKw04fq456sc4tk26tnbhvr59o]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK99vj2np1gk1robp8n6htiweii] FOREIGN KEY([color_id])
REFERENCES [dbo].[color] ([id])
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK99vj2np1gk1robp8n6htiweii]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FKcum8u2vfvebmmc4xo8de3k35s] FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([id])
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FKcum8u2vfvebmmc4xo8de3k35s]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FKilxoi77ctyin6jn9robktb16c] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FKilxoi77ctyin6jn9robktb16c]
GO
