USE [datn]
GO
/****** Object:  Table [dbo].[account]    Script Date: 12/15/2023 9:50:17 PM ******/
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
/****** Object:  Table [dbo].[address_shipping]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address_shipping](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[customer_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[amount] [float] NULL,
	[billing_address] [nvarchar](255) NULL,
	[code] [varchar](50) NOT NULL,
	[create_date] [datetime2](7) NULL,
	[invoice_type] [varchar](255) NULL,
	[promotion_price] [float] NOT NULL,
	[return_status] [bit] NULL,
	[status] [varchar](255) NULL,
	[update_date] [datetime2](7) NULL,
	[customer_id] [bigint] NULL,
	[discount_code_id] [bigint] NULL,
	[payment_method_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[moment_price] [float] NULL,
	[quantity] [int] NULL,
	[return_quantity] [int] NULL,
	[bill_id] [bigint] NULL,
	[product_detail_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_return]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_return](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[is_cancel] [bit] NOT NULL,
	[percent_fee_exchange] [int] NULL,
	[return_date] [datetime2](7) NULL,
	[return_money] [float] NULL,
	[return_reason] [nvarchar](255) NULL,
	[return_status] [int] NOT NULL,
	[bill_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
	[delete_flag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 12/15/2023 9:50:17 PM ******/
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
/****** Object:  Table [dbo].[category]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
	[delete_flag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[delete_flag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[phone_number] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discount_code]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount_code](
	[id] [bigint] NOT NULL,
	[code] [nvarchar](255) NULL,
	[delete_flag] [bit] NOT NULL,
	[detail] [nvarchar](255) NULL,
	[discount_amount] [float] NULL,
	[end_date] [datetime2](7) NULL,
	[maximum_amount] [int] NULL,
	[maximum_usage] [int] NULL,
	[minimum_amount_in_cart] [float] NULL,
	[percentage] [int] NULL,
	[start_date] [datetime2](7) NULL,
	[status] [int] NOT NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [PK__discount__3213E83F23371E16] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 12/15/2023 9:50:17 PM ******/
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
/****** Object:  Table [dbo].[material]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
	[delete_flag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[amount] [varchar](255) NULL,
	[order_id] [varchar](255) NULL,
	[order_status] [varchar](255) NULL,
	[payment_date] [datetime2](7) NULL,
	[status_exchange] [int] NULL,
	[bill_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_method]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_method](
	[id] [bigint] NOT NULL,
	[name] [varchar](255) NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[create_date] [datetime2](7) NULL,
	[delete_flag] [bit] NOT NULL,
	[describe] [nvarchar](255) NULL,
	[gender] [int] NOT NULL,
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
/****** Object:  Table [dbo].[product_detail]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_detail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[barcode] [varchar](255) NULL,
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
/****** Object:  Table [dbo].[product_discount]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_discount](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[closed] [bit] NOT NULL,
	[discounted_amount] [float] NULL,
	[end_date] [datetime2](7) NULL,
	[start_date] [datetime2](7) NULL,
	[product_detail_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[return_detail]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[return_detail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[moment_price_refund] [float] NULL,
	[quantity_return] [int] NULL,
	[return_id] [bigint] NULL,
	[product_detail_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 12/15/2023 9:50:17 PM ******/
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
/****** Object:  Table [dbo].[size]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[delete_flag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[verification_code]    Script Date: 12/15/2023 9:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verification_code](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[expiry_time] [datetime2](7) NULL,
	[account_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (3, CAST(N'2002-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, N'abc@gmail.com', 1, N'$2a$10$CcaM8/VIeTNaitpd0N43zuIvJC4cv1OVkVQMsgIsocifmRaQM14xe', CAST(N'2002-12-12T00:00:00.0000000' AS DateTime2), 4, 3)
INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (4, NULL, N'TK0004', NULL, N'Huy@gmail.com', 1, N'$2a$10$Ro2M2xmFAxSrQ.cC5XsFUe9sboYpBcwqUt9.xVeyKaWFqjwJ1UAhG', NULL, 5, 3)
INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (5, NULL, N'TK0005', NULL, N'admin@gmail.com', 1, N'$2a$10$Yv./46kS8OoWUdZsFvxFYOchNqGJ/ZNGf55sPrSFXwksHKrnZ5eIG', NULL, 6, 1)
INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (12, NULL, N'TK0006', NULL, N'nhanvien@gmail.com', 1, N'$2a$10$Yv./46kS8OoWUdZsFvxFYOchNqGJ/ZNGf55sPrSFXwksHKrnZ5eIG', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), 8, 2)
INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (13, NULL, N'TK0013', NULL, N'sangnnph28386@fpt.edu.vn', 1, N'$2a$10$VE7ki07ZmZtaQSz22HEPI.XrN8/xUy4S73.LILmPWHxaCMdTPhQIu', NULL, 9, 1)
INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (14, NULL, N'TK0014', CAST(N'2023-12-14T21:02:52.4441863' AS DateTime2), N'Kevynsang1@gmail.com', 1, N'$2a$10$9SxA3no.KGRx6n12yjN1PunEEIvsdSqJQB23gYCe/2D/38U9rq8m.', NULL, 11, 3)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[address_shipping] ON 

INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (1, N'So  1, Xã Đông Hiệp, Huyện Cờ Đỏ, Thành phố Cần Thơ', 1)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (2, N'So  1, Xã Hòa Bắc, Huyện Hòa Vang, Thành phố Đà Nẵng', 4)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (3, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', 4)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (4, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', 9)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (5, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', 9)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (6, N'số 101, Xã Bắc Hồng, Huyện Đông Anh, Hà Nội', 11)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (7, N'số 101, Xã Đại Yên, Huyện Chương Mỹ, Hà Nội', 11)
SET IDENTITY_INSERT [dbo].[address_shipping] OFF
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (1, 2050000, N'', N'HD001', CAST(N'2022-12-05T00:07:26.0407552' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T00:07:26.0407552' AS DateTime2), 1, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (2, 2950000, N'', N'HD002', CAST(N'2022-11-05T00:07:40.7191845' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T00:07:40.7191845' AS DateTime2), 1, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (3, 2430000, N'', N'HD003', CAST(N'2023-01-05T00:08:16.1920567' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T00:08:16.1920567' AS DateTime2), 2, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (4, 5890000, N'', N'HD004', CAST(N'2023-02-05T18:03:14.2491331' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:03:14.2491331' AS DateTime2), 3, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (5, 1850000, N'', N'HD005', CAST(N'2023-03-05T18:03:33.2350189' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:03:33.2350189' AS DateTime2), 3, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (6, 5890000, N'', N'HD005', CAST(N'2023-04-05T18:03:33.2417583' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:03:33.2417583' AS DateTime2), 3, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (7, 1850000, N'', N'HD006', CAST(N'2023-05-05T18:03:38.9069166' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:03:38.9069166' AS DateTime2), 3, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (8, 5890000, N'', N'HD006', CAST(N'2023-06-05T18:03:38.9069166' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:03:38.9069166' AS DateTime2), 3, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (9, 4490000, N'', N'HD007', CAST(N'2023-07-05T18:04:36.1735651' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:04:36.1735651' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (10, 2840000, N'', N'HD008', CAST(N'2023-08-05T18:05:34.4242106' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:05:34.4242106' AS DateTime2), 2, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (11, 7600000, N'So  1, Xã Đông Hiệp, Huyện Cờ Đỏ, Thành phố Cần Thơ', N'HD009', CAST(N'2023-09-05T18:11:34.0953644' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:11:34.0953644' AS DateTime2), 1, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (12, 5600000, N'So  1, Xã Hòa Bắc, Huyện Hòa Vang, Thành phố Đà Nẵng', N'HD010', CAST(N'2023-09-06T23:18:36.0267091' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T23:18:36.0267091' AS DateTime2), 4, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (13, 2920000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD011', CAST(N'2023-10-05T23:19:16.3744272' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T23:19:16.3744272' AS DateTime2), 4, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (14, 4600000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD012', CAST(N'2023-10-06T23:19:49.2210924' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-05T23:19:49.2210924' AS DateTime2), 4, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (15, 6000000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD013', CAST(N'2023-11-05T23:24:20.4668319' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-05T23:24:20.4668319' AS DateTime2), 4, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (16, 10500000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD014', CAST(N'2023-11-07T23:31:12.0874149' AS DateTime2), N'ONLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-05T23:31:12.0874149' AS DateTime2), 4, 1, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (17, 5400800, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD015', CAST(N'2023-12-02T23:37:27.5328109' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-05T23:37:27.5328109' AS DateTime2), 4, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (18, 8300000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD016', CAST(N'2023-12-03T23:50:54.5965628' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-05T23:50:54.5965628' AS DateTime2), 4, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (19, 9360000, N'So  1, Xã Hòa Bắc, Huyện Hòa Vang, Thành phố Đà Nẵng', N'HD017', CAST(N'2023-12-05T23:51:55.3350579' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-05T23:51:55.3350579' AS DateTime2), 4, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (20, 1680000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD018', CAST(N'2023-12-06T00:29:26.5939326' AS DateTime2), N'ONLINE', 0, 0, N'CHO_LAY_HANG', CAST(N'2023-12-06T00:29:26.5939326' AS DateTime2), 4, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (21, 1700000, N'', N'HD019', CAST(N'2023-12-06T06:52:55.0076061' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T06:52:55.0076061' AS DateTime2), 1, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (22, 959200, N'', N'HD020', CAST(N'2023-12-06T13:40:02.8598207' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-06T13:40:02.8598207' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (23, 900000, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', N'HD021', CAST(N'2023-12-06T13:45:26.6063156' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-06T13:45:26.6063156' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (24, 3280000, N'', N'HD022', CAST(N'2023-12-06T13:52:07.2312187' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-06T13:52:07.2312187' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (25, 1360000, N'', N'HD023', CAST(N'2023-12-06T14:21:10.2232849' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-06T14:21:10.2232849' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (26, 475200, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', N'HD024', CAST(N'2023-12-06T14:46:22.3577981' AS DateTime2), N'ONLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T14:46:22.3577981' AS DateTime2), 9, 1, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (27, 1780000, N'', N'HD025', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (28, 1780000, N'', N'HD025', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (29, 1780000, N'', N'HD025', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (30, 1780000, N'', N'HD025', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (31, 1780000, N'', N'HD025', CAST(N'2023-12-06T18:16:05.9868106' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:05.9868106' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (32, 1780000, N'', N'HD025', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (33, 1780000, N'', N'HD026', CAST(N'2023-12-06T18:16:06.0679578' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:06.0679578' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (34, 1780000, N'', N'HD026', CAST(N'2023-12-06T18:16:06.0541227' AS DateTime2), N'OFFLINE', 300000, 1, N'TRA_HANG', CAST(N'2023-12-06T18:16:06.0541227' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (35, 2570000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD027', CAST(N'2023-12-06T18:18:22.1016501' AS DateTime2), N'ONLINE', 300000, 1, N'TRA_HANG', CAST(N'2023-12-06T18:18:22.1016501' AS DateTime2), 9, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (36, 5065600, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD028', CAST(N'2023-12-09T18:19:03.7632334' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-09T18:19:03.7643308' AS DateTime2), 9, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (37, 3091200, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD029', CAST(N'2023-12-09T20:19:54.2954644' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-09T20:19:54.2954644' AS DateTime2), 9, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (38, 3282000, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', N'HD030', CAST(N'2023-12-09T20:20:48.8840019' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-09T20:20:48.8840019' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (39, 1545600, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD031', CAST(N'2023-12-10T22:00:32.4429285' AS DateTime2), N'ONLINE', 0, 0, N'HUY', CAST(N'2023-12-10T22:00:32.4429285' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (40, 2240000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD032', CAST(N'2023-12-11T21:16:40.1147292' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-11T21:16:40.1147292' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (41, 450000, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', N'HD033', CAST(N'2023-12-12T21:34:20.3142494' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-12T21:34:20.3142494' AS DateTime2), 9, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (42, 560000, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', N'HD034', CAST(N'2023-12-14T20:12:06.1210182' AS DateTime2), N'ONLINE', 0, 0, N'HUY', CAST(N'2023-12-14T20:12:41.2492371' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (43, 560000, N'số 101, Xã Đại Yên, Huyện Chương Mỹ, Hà Nội', N'HD035', CAST(N'2023-12-14T21:04:14.8575641' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-14T21:06:34.2987157' AS DateTime2), 11, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (44, 3174000, N'', N'HD036', CAST(N'2023-12-14T21:07:44.7674140' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-14T21:07:44.7674140' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (45, 3174000, N'', N'HD036', CAST(N'2023-12-14T21:07:44.7674140' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-14T21:07:44.7674140' AS DateTime2), 11, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (46, 560000, N'', N'HD037', CAST(N'2023-12-14T21:08:17.7832706' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-14T21:08:17.7832706' AS DateTime2), 11, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (47, 3174000, N'', N'HD037', CAST(N'2023-12-14T21:08:17.7842707' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-14T21:08:17.7842707' AS DateTime2), 11, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (48, 3174000, N'', N'HD037', CAST(N'2023-12-14T21:08:17.7853059' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-14T21:08:17.7853059' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (49, 1384000, N'', N'HD038', CAST(N'2023-12-14T21:09:10.2568611' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-14T21:09:10.2568611' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (50, 2540000, N'', N'HD039', CAST(N'2023-12-14T21:09:24.6558963' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-14T21:09:24.6558963' AS DateTime2), 11, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (51, 3580000, N'', N'HD040', CAST(N'2023-12-14T21:11:00.5413808' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-14T21:11:00.5413808' AS DateTime2), 2, 2, 3)
SET IDENTITY_INSERT [dbo].[bill] OFF
GO
SET IDENTITY_INSERT [dbo].[bill_detail] ON 

INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (1, 500000, 3, NULL, 1, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (2, 550000, 1, NULL, 1, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (3, 500000, 1, NULL, 2, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (4, 450000, 1, NULL, 2, 19)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (5, 560000, 1, NULL, 2, 17)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (6, 560000, 1, NULL, 2, 21)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (7, 880000, 1, NULL, 2, 25)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (8, 760000, 1, NULL, 3, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (9, 890000, 1, NULL, 3, 43)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (10, 780000, 1, NULL, 3, 66)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (11, 760000, 1, NULL, 4, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (12, 890000, 4, NULL, 4, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (13, 810000, 1, NULL, 4, 51)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (14, 760000, 1, NULL, 4, 67)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (15, 500000, 1, NULL, 5, 14)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (16, 450000, 2, NULL, 5, 13)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (17, 450000, 1, NULL, 5, 15)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (18, 760000, 1, NULL, 6, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (19, 890000, 4, NULL, 6, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (20, 810000, 1, NULL, 6, 51)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (21, 760000, 1, NULL, 6, 67)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (22, 500000, 1, NULL, 7, 14)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (23, 450000, 2, NULL, 7, 13)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (24, 450000, 1, NULL, 7, 15)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (25, 760000, 1, NULL, 8, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (26, 890000, 4, NULL, 8, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (27, 810000, 1, NULL, 8, 51)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (28, 760000, 1, NULL, 8, 67)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (29, 760000, 3, NULL, 9, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (30, 900000, 1, NULL, 9, 46)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (31, 640000, 1, NULL, 9, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (32, 670000, 1, NULL, 9, 69)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (33, 550000, 1, NULL, 10, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (34, 500000, 1, NULL, 10, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (35, 450000, 1, NULL, 10, 13)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (36, 670000, 2, NULL, 10, 11)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (37, 560000, 3, NULL, 11, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (38, 560000, 5, NULL, 11, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (39, 780000, 4, NULL, 11, 31)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (40, 560000, 4, NULL, 12, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (41, 700000, 4, NULL, 12, 36)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (42, 560000, 1, NULL, 12, 54)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (43, 560000, 2, NULL, 13, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (44, 900000, 2, NULL, 13, 32)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (45, 900000, 2, 1, 14, 32)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (46, 560000, 5, 0, 14, 54)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (47, 450000, 4, 2, 15, 7)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (48, 700000, 6, 1, 15, 36)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (49, 560000, 5, NULL, 16, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (50, 800000, 4, NULL, 16, 28)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (51, 450000, 10, NULL, 16, 63)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (52, 475200, 4, 0, 17, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (53, 700000, 5, 2, 17, 36)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (54, 450000, 10, 1, 18, 63)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (55, 760000, 5, 0, 18, 70)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (56, 780000, 8, 1, 19, 49)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (57, 780000, 4, 0, 19, 26)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (58, 560000, 3, NULL, 20, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (59, 890000, 1, NULL, 21, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (60, 810000, 1, NULL, 21, 51)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (61, 484000, 1, 1, 22, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (62, 475200, 1, 0, 22, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (63, 900000, 1, NULL, 23, 32)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (64, 760000, 2, NULL, 24, 64)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (65, 760000, 1, NULL, 24, 55)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (66, 500000, 1, NULL, 24, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (67, 500000, 1, NULL, 24, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (68, 800000, 1, NULL, 25, 28)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (69, 560000, 1, NULL, 25, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (70, 475200, 1, NULL, 26, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (71, 500000, 1, NULL, 27, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (72, 640000, 2, NULL, 27, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (73, 500000, 1, NULL, 28, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (74, 640000, 2, NULL, 28, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (75, 500000, 1, NULL, 29, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (76, 640000, 2, NULL, 29, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (77, 500000, 1, NULL, 30, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (78, 640000, 2, NULL, 30, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (79, 500000, 1, NULL, 31, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (80, 640000, 2, NULL, 31, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (81, 500000, 1, NULL, 32, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (82, 640000, 2, NULL, 32, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (83, 500000, 1, NULL, 33, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (84, 640000, 2, NULL, 33, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (85, 500000, 1, 1, 34, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (86, 640000, 2, 0, 34, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (87, 650000, 1, 1, 35, 5)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (88, 640000, 3, 0, 35, 6)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (89, 405000, 4, NULL, 36, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (90, 560000, 2, NULL, 36, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (91, 670000, 2, NULL, 36, 11)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (92, 492800, 2, NULL, 36, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (93, 560000, 2, 2, 37, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (94, 492800, 4, 0, 37, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (95, 306000, 2, NULL, 38, 13)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (96, 890000, 3, NULL, 38, 65)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (97, 560000, 1, NULL, 39, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (98, 492800, 2, NULL, 39, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (99, 560000, 2, NULL, 40, 8)
GO
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (100, 560000, 2, NULL, 40, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (101, 450000, 1, NULL, 41, 7)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (102, 560000, 1, NULL, 42, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (103, 560000, 1, NULL, 43, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (104, 484000, 1, NULL, 44, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (105, 560000, 4, NULL, 44, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (106, 450000, 1, NULL, 44, 9)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (107, 484000, 1, NULL, 45, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (108, 560000, 4, NULL, 45, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (109, 450000, 1, NULL, 45, 9)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (110, 560000, 1, NULL, 46, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (111, 484000, 1, NULL, 47, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (112, 560000, 4, NULL, 47, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (113, 450000, 1, NULL, 47, 9)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (114, 484000, 1, NULL, 48, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (115, 560000, 4, NULL, 48, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (116, 450000, 1, NULL, 48, 9)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (117, 450000, 2, NULL, 49, 1)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (118, 484000, 1, NULL, 49, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (119, 890000, 2, NULL, 50, 43)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (120, 760000, 1, NULL, 50, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (121, 780000, 2, NULL, 51, 31)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (122, 760000, 2, NULL, 51, 64)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (123, 500000, 1, NULL, 51, 3)
SET IDENTITY_INSERT [dbo].[bill_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[bill_return] ON 

INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (1, N'DT001', 0, 0, CAST(N'2023-12-05T23:39:13.4551022' AS DateTime2), -1040000, N'', 3, 15)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (2, N'DT002', 0, 0, CAST(N'2023-12-05T23:39:54.3171733' AS DateTime2), -600000, N'', 3, 17)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (3, N'DT003', 0, 0, CAST(N'2023-12-05T23:44:38.9790030' AS DateTime2), 900000, N'', 3, 14)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (4, N'DT004', 0, 0, CAST(N'2023-12-06T18:20:40.5659675' AS DateTime2), 650000, N'', 3, 35)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (5, N'DT005', 0, 0, CAST(N'2023-12-06T18:21:40.1688332' AS DateTime2), 0, N'', 3, 22)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (6, N'DT006', 0, 0, CAST(N'2023-12-06T21:04:47.3003227' AS DateTime2), 0, N'', 3, 18)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (7, N'DT007', 0, 0, CAST(N'2023-12-10T21:48:36.0019840' AS DateTime2), 0, N'', 3, 19)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (8, N'DT008', 0, 0, CAST(N'2023-12-10T21:54:43.5229639' AS DateTime2), 500000, N'', 3, 34)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (9, N'DT009', 0, 0, CAST(N'2023-12-14T20:15:40.3009471' AS DateTime2), 0, N'Đổi màu', 3, 37)
SET IDENTITY_INSERT [dbo].[bill_return] OFF
GO
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (1, N'LV', N'LuisVuton', 0, NULL)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (2, N'NK', N'Necken', 0, NULL)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (3, N'SM', N'SLIMFIT', 0, NULL)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (4, N'SY', N'SynSex', 0, NULL)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (5, N'NH10', N'Dress', 0, NULL)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (6, N'NH100', N'JM', 0, NULL)
SET IDENTITY_INSERT [dbo].[brand] OFF
GO
SET IDENTITY_INSERT [dbo].[cart] ON 

INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (26, CAST(N'2023-12-06T17:04:01.5340864' AS DateTime2), 1, CAST(N'2023-12-06T17:04:01.5340864' AS DateTime2), 3, 7)
INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (27, CAST(N'2023-12-06T17:04:09.0579582' AS DateTime2), 1, CAST(N'2023-12-06T17:04:09.0579582' AS DateTime2), 3, 50)
INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (28, CAST(N'2023-12-06T17:04:17.4566334' AS DateTime2), 1, CAST(N'2023-12-06T17:04:17.4566334' AS DateTime2), 3, 74)
INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (29, CAST(N'2023-12-06T17:04:26.2894678' AS DateTime2), 1, CAST(N'2023-12-06T17:04:26.2894678' AS DateTime2), 3, 54)
INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (30, CAST(N'2023-12-06T17:04:35.6164486' AS DateTime2), 1, CAST(N'2023-12-06T17:04:35.6164486' AS DateTime2), 3, 40)
SET IDENTITY_INSERT [dbo].[cart] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (1, N'TL1', N'Áo Len', 1, NULL)
INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (2, N'TL2', N'Áo Polo', 1, NULL)
INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (3, N'TL3', N'Áo Hobbies', 0, NULL)
INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (4, N'TL4', N'Váy dài', 0, NULL)
INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (5, N'TL5', N'Váy ngắn', 0, NULL)
INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (6, N'TL6', N'Quần Bò', 0, NULL)
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[color] ON 

INSERT [dbo].[color] ([id], [code], [name], [delete_flag]) VALUES (1, N'M1', N'Màu đỏ', NULL)
INSERT [dbo].[color] ([id], [code], [name], [delete_flag]) VALUES (2, N'M2', N'Màu Xanh', NULL)
INSERT [dbo].[color] ([id], [code], [name], [delete_flag]) VALUES (3, N'M3', N'Màu đen', 0)
INSERT [dbo].[color] ([id], [code], [name], [delete_flag]) VALUES (4, N'M4', N'Màu trắng', NULL)
INSERT [dbo].[color] ([id], [code], [name], [delete_flag]) VALUES (5, N'M5', N'Màu Hồng', NULL)
SET IDENTITY_INSERT [dbo].[color] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (1, N'KH0001', NULL, N'Nguyễn Sáng 123', N'09999999')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (2, N'KH0002', NULL, N'Mai Hoàng Phương Anh', N'0332228003')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (3, N'KH0003', NULL, N'Trương Xuân Phương', N'054329854')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (4, N'KH0004', NULL, N'Nguyen Trung Van', N'087658787')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (5, N'KH0005', NULL, N'Lê Công Huy', N'093428744')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (6, N'KH0006', NULL, N'Nguyen Van Huan', N'054897345')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (7, N'KH0007', NULL, N'Nguyễn Văn Huy', N'095438543')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (8, N'KH0008', NULL, N'Hoàng CHi', N'094387243')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (9, N'KH0009', NULL, N'Nguyễn Ngọc Sáng', N'0862008304')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (10, N'KH0010', NULL, N'Nguyên van A', N'098432435')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (11, N'KH0011', NULL, N'Nguyễn Hồng Ngọc', N'0862008303')
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
INSERT [dbo].[discount_code] ([id], [code], [delete_flag], [detail], [discount_amount], [end_date], [maximum_amount], [maximum_usage], [minimum_amount_in_cart], [percentage], [start_date], [status], [type]) VALUES (1, N'Sinh nhật 1 tuổi', 0, NULL, NULL, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 300000, 114, 350000, 100, CAST(N'2023-12-05T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[discount_code] ([id], [code], [delete_flag], [detail], [discount_amount], [end_date], [maximum_amount], [maximum_usage], [minimum_amount_in_cart], [percentage], [start_date], [status], [type]) VALUES (2, N'Noel', 0, NULL, NULL, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 300000, 99, 350000, 10, CAST(N'2023-12-06T00:00:00.0000000' AS DateTime2), 1, 1)
GO
SET IDENTITY_INSERT [dbo].[image] ON 

INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (1, CAST(N'2023-12-04T22:56:56.0825068' AS DateTime2), N'image/png', N'uploads/1701705416077_IMG_3145.PNG', N'1701705416077_IMG_3145.PNG', CAST(N'2023-12-04T22:56:56.0825068' AS DateTime2), 1)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (2, CAST(N'2023-12-04T22:56:56.0855070' AS DateTime2), N'image/png', N'uploads/1701705416083_IMG_3146.PNG', N'1701705416083_IMG_3146.PNG', CAST(N'2023-12-04T22:56:56.0855070' AS DateTime2), 1)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (3, CAST(N'2023-12-04T23:05:00.9932664' AS DateTime2), N'image/png', N'uploads/1701705900989_IMG_3147.PNG', N'1701705900989_IMG_3147.PNG', CAST(N'2023-12-04T23:05:00.9932664' AS DateTime2), 2)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (4, CAST(N'2023-12-04T23:05:00.9952488' AS DateTime2), N'image/png', N'uploads/1701705900994_IMG_3148.PNG', N'1701705900994_IMG_3148.PNG', CAST(N'2023-12-04T23:05:00.9952488' AS DateTime2), 2)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (5, CAST(N'2023-12-04T23:05:00.9972655' AS DateTime2), N'image/png', N'uploads/1701705900996_IMG_3149.PNG', N'1701705900996_IMG_3149.PNG', CAST(N'2023-12-04T23:05:00.9972655' AS DateTime2), 2)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (6, CAST(N'2023-12-04T23:05:00.9988457' AS DateTime2), N'image/png', N'uploads/1701705900997_IMG_3150.PNG', N'1701705900997_IMG_3150.PNG', CAST(N'2023-12-04T23:05:00.9988457' AS DateTime2), 2)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (7, CAST(N'2023-12-04T23:14:01.6431279' AS DateTime2), N'image/png', N'uploads/1701706441641_IMG_3151.PNG', N'1701706441641_IMG_3151.PNG', CAST(N'2023-12-04T23:14:01.6431279' AS DateTime2), 3)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (8, CAST(N'2023-12-04T23:14:01.6451376' AS DateTime2), N'image/png', N'uploads/1701706441644_IMG_3152.PNG', N'1701706441644_IMG_3152.PNG', CAST(N'2023-12-04T23:14:01.6451376' AS DateTime2), 3)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (9, CAST(N'2023-12-04T23:16:52.8235050' AS DateTime2), N'image/png', N'uploads/1701706612822_IMG_3153.PNG', N'1701706612822_IMG_3153.PNG', CAST(N'2023-12-04T23:16:52.8235050' AS DateTime2), 4)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (10, CAST(N'2023-12-04T23:16:52.8245042' AS DateTime2), N'image/png', N'uploads/1701706612823_IMG_3154.PNG', N'1701706612823_IMG_3154.PNG', CAST(N'2023-12-04T23:16:52.8245042' AS DateTime2), 4)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (11, CAST(N'2023-12-04T23:19:51.9868994' AS DateTime2), N'image/png', N'uploads/1701706791984_IMG_3157.PNG', N'1701706791984_IMG_3157.PNG', CAST(N'2023-12-04T23:19:51.9868994' AS DateTime2), 5)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (12, CAST(N'2023-12-04T23:19:51.9878991' AS DateTime2), N'image/png', N'uploads/1701706791986_IMG_3158.PNG', N'1701706791986_IMG_3158.PNG', CAST(N'2023-12-04T23:19:51.9878991' AS DateTime2), 5)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (13, CAST(N'2023-12-04T23:22:32.9996664' AS DateTime2), N'image/png', N'uploads/1701706952997_IMG_3175.PNG', N'1701706952997_IMG_3175.PNG', CAST(N'2023-12-04T23:22:32.9996664' AS DateTime2), 6)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (14, CAST(N'2023-12-04T23:22:33.0016595' AS DateTime2), N'image/png', N'uploads/1701706952999_IMG_3176.PNG', N'1701706952999_IMG_3176.PNG', CAST(N'2023-12-04T23:22:33.0016595' AS DateTime2), 6)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (15, CAST(N'2023-12-04T23:24:57.5106092' AS DateTime2), N'image/png', N'uploads/1701707097508_IMG_3167.PNG', N'1701707097508_IMG_3167.PNG', CAST(N'2023-12-04T23:24:57.5106092' AS DateTime2), 7)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (16, CAST(N'2023-12-04T23:24:57.5131671' AS DateTime2), N'image/png', N'uploads/1701707097510_IMG_3168.PNG', N'1701707097510_IMG_3168.PNG', CAST(N'2023-12-04T23:24:57.5131671' AS DateTime2), 7)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (17, CAST(N'2023-12-04T23:26:24.5298629' AS DateTime2), N'image/png', N'uploads/1701707184528_IMG_3169.PNG', N'1701707184528_IMG_3169.PNG', CAST(N'2023-12-04T23:26:24.5298629' AS DateTime2), 8)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (18, CAST(N'2023-12-04T23:26:24.5323676' AS DateTime2), N'image/png', N'uploads/1701707184529_IMG_3170.PNG', N'1701707184529_IMG_3170.PNG', CAST(N'2023-12-04T23:26:24.5323676' AS DateTime2), 8)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (19, CAST(N'2023-12-04T23:30:26.5699323' AS DateTime2), N'image/png', N'uploads/1701707426568_IMG_3179.PNG', N'1701707426568_IMG_3179.PNG', CAST(N'2023-12-04T23:30:26.5699323' AS DateTime2), 9)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (20, CAST(N'2023-12-04T23:30:26.5715915' AS DateTime2), N'image/png', N'uploads/1701707426569_IMG_3180.PNG', N'1701707426569_IMG_3180.PNG', CAST(N'2023-12-04T23:30:26.5715915' AS DateTime2), 9)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (21, CAST(N'2023-12-04T23:33:14.8762270' AS DateTime2), N'image/png', N'uploads/1701707594875_IMG_3182.PNG', N'1701707594875_IMG_3182.PNG', CAST(N'2023-12-04T23:33:14.8762270' AS DateTime2), 10)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (22, CAST(N'2023-12-04T23:33:14.8782284' AS DateTime2), N'image/png', N'uploads/1701707594876_IMG_3183.PNG', N'1701707594876_IMG_3183.PNG', CAST(N'2023-12-04T23:33:14.8782284' AS DateTime2), 10)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (25, CAST(N'2023-12-04T23:36:46.2710172' AS DateTime2), N'image/png', N'uploads/1701707806269_IMG_3177.PNG', N'1701707806269_IMG_3177.PNG', CAST(N'2023-12-04T23:36:46.2710172' AS DateTime2), 11)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (26, CAST(N'2023-12-04T23:36:46.2730152' AS DateTime2), N'image/png', N'uploads/1701707806272_IMG_3178.PNG', N'1701707806272_IMG_3178.PNG', CAST(N'2023-12-04T23:36:46.2730152' AS DateTime2), 11)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (27, CAST(N'2023-12-04T23:40:31.4258486' AS DateTime2), N'image/jpeg', N'uploads/1701708031424_1(1).jpg', N'1701708031424_1(1).jpg', CAST(N'2023-12-04T23:40:31.4258486' AS DateTime2), 12)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (28, CAST(N'2023-12-04T23:40:31.4268224' AS DateTime2), N'image/jpeg', N'uploads/1701708031425_1.jpg', N'1701708031425_1.jpg', CAST(N'2023-12-04T23:40:31.4268224' AS DateTime2), 12)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (29, CAST(N'2023-12-04T23:42:51.0686326' AS DateTime2), N'image/jpeg', N'uploads/1701708171067_4(1).jpg', N'1701708171067_4(1).jpg', CAST(N'2023-12-04T23:42:51.0686326' AS DateTime2), 13)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (30, CAST(N'2023-12-04T23:42:51.0696437' AS DateTime2), N'image/jpeg', N'uploads/1701708171069_4.jpg', N'1701708171069_4.jpg', CAST(N'2023-12-04T23:42:51.0696437' AS DateTime2), 13)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (31, CAST(N'2023-12-04T23:45:35.8651952' AS DateTime2), N'image/jpeg', N'uploads/1701708335864_2(2).jpg', N'1701708335864_2(2).jpg', CAST(N'2023-12-04T23:45:35.8651952' AS DateTime2), 14)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (32, CAST(N'2023-12-04T23:45:35.8661936' AS DateTime2), N'image/jpeg', N'uploads/1701708335866_2.jpg', N'1701708335866_2.jpg', CAST(N'2023-12-04T23:45:35.8661936' AS DateTime2), 14)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (33, CAST(N'2023-12-04T23:47:37.3520790' AS DateTime2), N'image/jpeg', N'uploads/1701708457351_14(1).jpg', N'1701708457351_14(1).jpg', CAST(N'2023-12-04T23:47:37.3520790' AS DateTime2), 15)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (34, CAST(N'2023-12-04T23:47:37.3530781' AS DateTime2), N'image/jpeg', N'uploads/1701708457353_14.jpg', N'1701708457353_14.jpg', CAST(N'2023-12-04T23:47:37.3530781' AS DateTime2), 15)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (35, CAST(N'2023-12-04T23:50:41.0008674' AS DateTime2), N'image/jpeg', N'uploads/1701708640999_19(1).jpg', N'1701708640999_19(1).jpg', CAST(N'2023-12-04T23:50:41.0008674' AS DateTime2), 16)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (36, CAST(N'2023-12-04T23:50:41.0018675' AS DateTime2), N'image/jpeg', N'uploads/1701708641000_19.jpg', N'1701708641000_19.jpg', CAST(N'2023-12-04T23:50:41.0018675' AS DateTime2), 16)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (39, CAST(N'2023-12-04T23:53:01.7229650' AS DateTime2), N'image/jpeg', N'uploads/1701708781721_20(1).jpg', N'1701708781721_20(1).jpg', CAST(N'2023-12-04T23:53:01.7229650' AS DateTime2), 17)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (40, CAST(N'2023-12-04T23:53:01.7239632' AS DateTime2), N'image/jpeg', N'uploads/1701708781722_20.jpg', N'1701708781722_20.jpg', CAST(N'2023-12-04T23:53:01.7239632' AS DateTime2), 17)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (41, CAST(N'2023-12-05T13:01:01.1391759' AS DateTime2), N'image/png', N'uploads/1701756061137_IMG_3151.PNG', N'1701756061137_IMG_3151.PNG', CAST(N'2023-12-05T13:01:01.1391759' AS DateTime2), 18)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (42, CAST(N'2023-12-05T13:01:01.1391759' AS DateTime2), N'image/png', N'uploads/1701756061139_IMG_3152.PNG', N'1701756061139_IMG_3152.PNG', CAST(N'2023-12-05T13:01:01.1391759' AS DateTime2), 18)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (43, CAST(N'2023-12-06T00:05:17.5216170' AS DateTime2), N'image/jpeg', N'uploads/1701795917521_20231109_B2lasGKno5.jpeg', N'1701795917521_20231109_B2lasGKno5.jpeg', CAST(N'2023-12-06T00:05:17.5216170' AS DateTime2), 19)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (44, CAST(N'2023-12-06T00:05:17.5274101' AS DateTime2), N'image/jpeg', N'uploads/1701795917521_20231109_PtEJJ35tmT.jpeg', N'1701795917521_20231109_PtEJJ35tmT.jpeg', CAST(N'2023-12-06T00:05:17.5274101' AS DateTime2), 19)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (45, CAST(N'2023-12-06T00:07:12.0950171' AS DateTime2), N'image/jpeg', N'uploads/1701796032095_20231108_CNjQIKw2p6.jpeg', N'1701796032095_20231108_CNjQIKw2p6.jpeg', CAST(N'2023-12-06T00:07:12.0950171' AS DateTime2), 20)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (46, CAST(N'2023-12-06T00:07:12.0950171' AS DateTime2), N'image/jpeg', N'uploads/1701796032095_20231108_E0AJvtq3aZ.jpeg', N'1701796032095_20231108_E0AJvtq3aZ.jpeg', CAST(N'2023-12-06T00:07:12.0950171' AS DateTime2), 20)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (47, CAST(N'2023-12-06T14:13:27.6139359' AS DateTime2), N'image/png', N'uploads/1701846807611_?nh ch?p màn hình 2023-12-06 140111.png', N'1701846807611_Ảnh chụp màn hình 2023-12-06 140111.png', CAST(N'2023-12-06T14:13:27.6139359' AS DateTime2), 21)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (49, CAST(N'2023-12-06T14:26:13.8024718' AS DateTime2), N'image/png', N'uploads/1701847573801_?nh ch?p màn hình 2023-12-06 140111.png', N'1701847573801_Ảnh chụp màn hình 2023-12-06 140111.png', CAST(N'2023-12-06T14:26:13.8024718' AS DateTime2), 22)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (50, CAST(N'2023-12-06T14:29:16.6284159' AS DateTime2), N'image/jpeg', N'uploads/1701847756627_images (1).jpg', N'1701847756627_images (1).jpg', CAST(N'2023-12-06T14:29:16.6284159' AS DateTime2), 23)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (51, CAST(N'2023-12-06T14:29:16.6294164' AS DateTime2), N'image/jpeg', N'uploads/1701847756628_images.jpg', N'1701847756628_images.jpg', CAST(N'2023-12-06T14:29:16.6294164' AS DateTime2), 23)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (52, CAST(N'2023-12-06T18:10:16.8303891' AS DateTime2), N'image/jpeg', N'uploads/1701861016827_images (1).jpg', N'1701861016827_images (1).jpg', CAST(N'2023-12-06T18:10:16.8303891' AS DateTime2), 24)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (53, CAST(N'2023-12-06T18:10:16.8313887' AS DateTime2), N'image/jpeg', N'uploads/1701861016830_images.jpg', N'1701861016830_images.jpg', CAST(N'2023-12-06T18:10:16.8313887' AS DateTime2), 24)
SET IDENTITY_INSERT [dbo].[image] OFF
GO
SET IDENTITY_INSERT [dbo].[material] ON 

INSERT [dbo].[material] ([id], [code], [name], [status], [delete_flag]) VALUES (1, N'CT1', N'Sợi Tằm Bông', 1, NULL)
INSERT [dbo].[material] ([id], [code], [name], [status], [delete_flag]) VALUES (2, N'CT2', N'Kotton', 1, NULL)
INSERT [dbo].[material] ([id], [code], [name], [status], [delete_flag]) VALUES (3, N'CL3', N'Lông cừu', 0, NULL)
INSERT [dbo].[material] ([id], [code], [name], [status], [delete_flag]) VALUES (4, N'CL4', N'Len', 0, NULL)
INSERT [dbo].[material] ([id], [code], [name], [status], [delete_flag]) VALUES (5, N'CL5', N'Vải bò', 0, NULL)
SET IDENTITY_INSERT [dbo].[material] OFF
GO
SET IDENTITY_INSERT [dbo].[payment] ON 

INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (1, N'2050000.0', N'HdzCq1Gg', N'1', CAST(N'2023-12-05T00:07:26.0534457' AS DateTime2), 0, 1)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (2, N'2950000.0', N'VOPnE8OB', N'1', CAST(N'2023-12-05T00:07:40.7317714' AS DateTime2), 0, 2)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (3, N'2430000.0', N'xyHiKrDx', N'1', CAST(N'2023-12-05T00:08:16.1989757' AS DateTime2), 0, 3)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (4, N'5890000.0', N'NJsKkt5s', N'1', CAST(N'2023-12-05T18:03:14.3464582' AS DateTime2), 0, 4)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (5, N'1850000.0', N'itZ7HM2l', N'1', CAST(N'2023-12-05T18:03:33.2555720' AS DateTime2), 0, 5)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (6, N'5890000.0', N'cUhFlsXF', N'1', CAST(N'2023-12-05T18:03:33.2630280' AS DateTime2), 0, 6)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (7, N'1850000.0', N'ZaL9quyS', N'1', CAST(N'2023-12-05T18:03:38.9201566' AS DateTime2), 0, 7)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (8, N'5890000.0', N'wirpVZys', N'1', CAST(N'2023-12-05T18:03:38.9267403' AS DateTime2), 0, 8)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (9, N'4490000.0', N'sV8ZGvUH', N'1', CAST(N'2023-12-05T18:04:36.1812741' AS DateTime2), 0, 9)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (10, N'2840000.0', N'0IAdMlfV', N'1', CAST(N'2023-12-05T18:05:34.4277632' AS DateTime2), 0, 10)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (11, N'7600000', N'51846376', N'1', CAST(N'2023-12-05T18:11:33.9841863' AS DateTime2), 1, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (12, N'5600000.0', N'im7NATUB', N'1', CAST(N'2023-12-05T23:18:36.0750475' AS DateTime2), 0, 12)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (13, N'2920000.0', N'qArBI69H', N'1', CAST(N'2023-12-05T23:19:16.3886846' AS DateTime2), 0, 13)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (14, N'4600000.0', N'SKqOjN5T', N'1', CAST(N'2023-12-05T23:19:49.2291983' AS DateTime2), 1, 14)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (15, N'6000000.0', N'b5spx76M', N'1', CAST(N'2023-12-05T23:24:20.4823196' AS DateTime2), 0, 15)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (16, N'1.05E7', N'TzZ2HgG7', N'1', CAST(N'2023-12-05T23:31:12.1136054' AS DateTime2), 0, 16)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (17, N'5400800', N'17833772', N'1', CAST(N'2023-12-05T23:37:27.4335089' AS DateTime2), 1, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (18, N'8300000', N'53960492', N'1', CAST(N'2023-12-05T23:50:54.4534860' AS DateTime2), 1, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (19, N'9360000', N'27984000', N'1', CAST(N'2023-12-05T23:51:55.2068675' AS DateTime2), 1, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (20, N'1680000.0', N'tONPfbzX', N'1', CAST(N'2023-12-06T00:29:26.6009020' AS DateTime2), 0, 20)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (21, N'1700000.0', N'uAAu9JC8', N'1', CAST(N'2023-12-06T06:52:55.0322488' AS DateTime2), 0, 21)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (22, N'959200.0', N'E4th9Ytq', N'1', CAST(N'2023-12-06T13:40:02.8920710' AS DateTime2), 0, 22)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (23, N'900000', N'52501893', N'1', CAST(N'2023-12-06T13:45:26.4082754' AS DateTime2), 1, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (24, N'3280000.0', N'k9ngc2n8', N'1', CAST(N'2023-12-06T13:52:07.2632190' AS DateTime2), 0, 24)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (25, N'1360000.0', N'pr250yBK', N'1', CAST(N'2023-12-06T14:21:10.2352273' AS DateTime2), 0, 25)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (26, N'475200.0', N'21BOAmRp', N'1', CAST(N'2023-12-06T14:46:22.3818637' AS DateTime2), 0, 26)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (27, N'3360000', N'70681970', N'0', NULL, 0, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (28, N'3360000', N'86729710', N'0', NULL, 0, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (29, N'1780000.0', N'49his0kG', N'1', CAST(N'2023-12-06T18:16:06.0210048' AS DateTime2), 0, 27)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (30, N'1780000.0', N'5htx3Bsl', N'1', CAST(N'2023-12-06T18:16:06.0400653' AS DateTime2), 0, 28)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (31, N'1780000.0', N'U31nPaZS', N'1', CAST(N'2023-12-06T18:16:06.0550942' AS DateTime2), 0, 29)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (32, N'1780000.0', N'xodvj88h', N'1', CAST(N'2023-12-06T18:16:06.0719622' AS DateTime2), 0, 30)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (33, N'1780000.0', N'U04T3nuU', N'1', CAST(N'2023-12-06T18:16:06.0839808' AS DateTime2), 0, 31)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (34, N'1780000.0', N'7b5b3MTD', N'1', CAST(N'2023-12-06T18:16:06.0938009' AS DateTime2), 0, 32)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (35, N'1780000.0', N'qu5OEc9J', N'1', CAST(N'2023-12-06T18:16:06.1098451' AS DateTime2), 0, 33)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (36, N'1780000.0', N'2JNOGaOp', N'1', CAST(N'2023-12-06T18:16:06.1221373' AS DateTime2), 1, 34)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (37, N'2270000', N'98760463', N'0', NULL, 0, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (38, N'2270000', N'31949607', N'1', CAST(N'2023-12-06T18:18:21.9227823' AS DateTime2), 1, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (39, N'5065600.0', N'CV4KxDG3', N'1', CAST(N'2023-12-09T18:19:03.8046487' AS DateTime2), 0, 36)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (40, N'3091200.0', N'SDxRmxBa', N'1', CAST(N'2023-12-09T20:19:54.3154656' AS DateTime2), 0, 37)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (41, N'3282000', N'68966262', N'1', CAST(N'2023-12-09T20:20:48.7320509' AS DateTime2), 1, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (42, N'1545600', N'01436293', N'1', CAST(N'2023-12-10T22:00:32.2446275' AS DateTime2), 0, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (43, N'2240000', N'46177453', N'1', CAST(N'2023-12-11T21:16:40.0032121' AS DateTime2), 0, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (44, N'450000.0', N'iJL77rFM', N'1', CAST(N'2023-12-12T21:34:20.3327523' AS DateTime2), 0, 41)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (45, N'560000', N'14061601', N'1', CAST(N'2023-12-14T20:12:05.9621404' AS DateTime2), 1, 42)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (46, N'560000', N'54883134', N'1', CAST(N'2023-12-14T21:04:14.7545454' AS DateTime2), 0, 43)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (47, N'3174000.0', N'IBx7Drum', N'1', CAST(N'2023-12-14T21:07:44.7946050' AS DateTime2), 0, 44)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (48, N'3174000.0', N'p5ilBzTy', N'1', CAST(N'2023-12-14T21:07:44.8174247' AS DateTime2), 0, 45)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (49, N'560000.0', N'm2ekn1VV', N'1', CAST(N'2023-12-14T21:08:17.7872931' AS DateTime2), 0, 46)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (50, N'3174000.0', N'jH6MDO2s', N'1', CAST(N'2023-12-14T21:08:17.7968419' AS DateTime2), 0, 47)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (51, N'3174000.0', N'8GPSUiRL', N'1', CAST(N'2023-12-14T21:08:17.8096661' AS DateTime2), 0, 48)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (52, N'1384000.0', N'4UUuCTfS', N'1', CAST(N'2023-12-14T21:09:10.2714824' AS DateTime2), 0, 49)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (53, N'2540000.0', N'tPOt2hKY', N'1', CAST(N'2023-12-14T21:09:24.6692766' AS DateTime2), 0, 50)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (54, N'3580000.0', N'LnAfBNIT', N'1', CAST(N'2023-12-14T21:11:00.5715875' AS DateTime2), 0, 51)
SET IDENTITY_INSERT [dbo].[payment] OFF
GO
INSERT [dbo].[payment_method] ([id], [name], [status]) VALUES (1, N'TIEN_MAT', 1)
INSERT [dbo].[payment_method] ([id], [name], [status]) VALUES (3, N'CHUYEN_KHOAN', 1)
INSERT [dbo].[payment_method] ([id], [name], [status]) VALUES (4, N'THE', 1)
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (1, N'SP0001', CAST(N'2023-12-04T22:56:56.2352783' AS DateTime2), 0, N'', 3, N'Áo Len Hàn Basic', 450000, 1, CAST(N'2023-12-04T22:56:56.2352783' AS DateTime2), 1, 1, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (2, N'SP0002', CAST(N'2023-12-04T23:05:01.0862855' AS DateTime2), 0, N'', 1, N'Áo polo form đẹp', 540000, 1, CAST(N'2023-12-04T23:05:01.0862855' AS DateTime2), 2, 2, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (3, N'SP0003', CAST(N'2023-12-04T23:14:01.6694339' AS DateTime2), 0, N'', 1, N'Áo Polo In Họa Tiết Form Regular PO117', 450000, 1, CAST(N'2023-12-04T23:14:01.6694339' AS DateTime2), 2, 2, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (4, N'SP0004', CAST(N'2023-12-04T23:16:52.8434426' AS DateTime2), 0, N'', 1, N'Áo polo kẻ sọc họa tiết đẹp', 560000, 1, CAST(N'2023-12-04T23:16:52.8434426' AS DateTime2), 2, 1, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (5, N'SP0005', CAST(N'2023-12-04T23:19:52.0109812' AS DateTime2), 0, N'', 1, N'ÁO POLO RÃ PHỐI THÊU C‘EST LA VIE FORM SLIMFIT PO115', 450000, 1, CAST(N'2023-12-04T23:19:52.0109812' AS DateTime2), 3, 2, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (6, N'SP0006', CAST(N'2023-12-04T23:22:33.0394385' AS DateTime2), 0, N'', 1, N'Áo polo họa tiết siêu đẹp', 450000, 1, CAST(N'2023-12-04T23:22:33.0394385' AS DateTime2), 1, 1, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (7, N'SP0007', CAST(N'2023-12-04T23:24:57.5382884' AS DateTime2), 0, N'', 3, N'Áo len bông form rộng', 450000, 1, CAST(N'2023-12-04T23:24:57.5382884' AS DateTime2), 1, 1, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (8, N'SP0008', CAST(N'2023-12-04T23:26:24.5595940' AS DateTime2), 0, N'', 1, N'Áo len ba lỗi dáng chuẩn', 770000, 1, CAST(N'2023-12-04T23:26:24.5595940' AS DateTime2), 1, 1, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (9, N'SP0009', CAST(N'2023-12-14T21:14:50.0693214' AS DateTime2), 0, N'', 3, N'Áo Hobbie form rộng hóa tiết Hàn Quốc', 780000, 1, CAST(N'2023-12-14T21:14:50.0693214' AS DateTime2), 3, 3, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (10, N'SP0010', CAST(N'2023-12-14T21:15:08.9023387' AS DateTime2), 0, N'', 3, N'Áo Hobbie unisix form rộng', 700000, 1, CAST(N'2023-12-14T21:15:08.9023387' AS DateTime2), 4, 3, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (11, N'SP0011', CAST(N'2023-12-04T23:36:46.2920642' AS DateTime2), 0, N'', 3, N'Áo swater basic hàn', 780000, 1, CAST(N'2023-12-04T23:36:46.2920642' AS DateTime2), 1, 3, 3)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (12, N'SP0012', CAST(N'2023-12-04T23:40:31.4449558' AS DateTime2), 0, N'', 1, N'Váy dài công chúa siêu dễ thương', 760000, 1, CAST(N'2023-12-04T23:40:31.4449558' AS DateTime2), 4, 4, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (13, N'SP0013', CAST(N'2023-12-04T23:42:51.0783756' AS DateTime2), 0, N'', 1, N'Váy sinh nhật bánh bèo', 760000, 1, CAST(N'2023-12-04T23:42:51.0783756' AS DateTime2), 3, 4, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (14, N'SP0014', CAST(N'2023-12-04T23:45:35.8832857' AS DateTime2), 0, N'', 2, N'Váy ngắn dã hội mùa xuân', 780000, 1, CAST(N'2023-12-04T23:45:35.8832857' AS DateTime2), 3, 5, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (15, N'SP0015', CAST(N'2023-12-04T23:47:37.3698756' AS DateTime2), 0, N'', 2, N'Đầm Công Sở Tay Lỡ Đính Nút Dễ Thương', 560000, 1, CAST(N'2023-12-04T23:47:37.3698756' AS DateTime2), 4, 4, 3)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (16, N'SP0016', CAST(N'2023-12-04T23:51:38.0865079' AS DateTime2), 0, N'', 2, N'Váy bánh bèo đi tiệc', 450000, 1, CAST(N'2023-12-04T23:51:38.0865079' AS DateTime2), 4, 4, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (17, N'SP0017', CAST(N'2023-12-04T23:53:01.7362789' AS DateTime2), 0, N'', 2, N'Váy tiên nữ dự tiệc siêu đẹp', 640000, 1, CAST(N'2023-12-04T23:53:01.7362789' AS DateTime2), 1, 4, 3)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (18, N'SP0018', CAST(N'2023-12-05T13:01:01.2678181' AS DateTime2), 1, N'', 1, N'Áo kẻ', 100000, 1, CAST(N'2023-12-05T13:01:01.2678181' AS DateTime2), 1, 2, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (19, N'SP0019', CAST(N'2023-12-06T00:05:17.6580886' AS DateTime2), 0, N'', 1, N'Quần bò đùi giáng hàn', 450000, 1, CAST(N'2023-12-06T00:05:17.6580886' AS DateTime2), 1, 6, 5)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (20, N'SP0020', CAST(N'2023-12-06T00:10:19.8146114' AS DateTime2), 0, N'', 1, N'QUẦN JEAN NAM - TOTODAY - STRAIGHT', 670000, 1, CAST(N'2023-12-06T00:10:19.8146114' AS DateTime2), 1, 6, 5)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (21, N'SP0021', CAST(N'2023-12-06T14:13:27.7302493' AS DateTime2), 1, N'', 2, N'Váy Hàn đẹp', 500000, 1, CAST(N'2023-12-06T14:13:27.7302493' AS DateTime2), 5, 5, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (22, N'SP0022', CAST(N'2023-12-06T14:26:13.8154711' AS DateTime2), 1, N'', 1, N'Quần Kaki bò nam siêu đẹp', 560000, 1, CAST(N'2023-12-06T14:26:13.8154711' AS DateTime2), 1, 6, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (23, N'SP0023', CAST(N'2023-12-06T14:29:16.6384345' AS DateTime2), 1, N'', 2, N'Váy siêu đẹp trung', 600000, 1, CAST(N'2023-12-06T14:29:16.6384345' AS DateTime2), 3, 5, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (24, N'SP0024', CAST(N'2023-12-06T18:10:16.8495536' AS DateTime2), 0, N'', 2, N'Váy công chúa', 500000, 1, CAST(N'2023-12-06T18:10:16.8495536' AS DateTime2), 6, 4, 2)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[product_detail] ON 

INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (1, N'950522995873', 450000, 97, 3, 1, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (2, N'818057059244', 550000, 93, 3, 1, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (3, N'255221259599', 500000, 93, 3, 1, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (4, N'602296962379', 540000, 68, 3, 2, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (5, N'332221520568', 650000, 88, 3, 2, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (6, N'560432341599', 640000, 53, 3, 2, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (7, N'994064288939', 450000, 96, 3, 3, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (8, N'406072731055', 560000, 54, 3, 3, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (9, N'420288803302', 450000, 74, 3, 3, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (10, N'194278660180', 560000, 33, 1, 4, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (11, N'323758192911', 670000, 93, 1, 4, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (12, N'898511982932', 560000, 56, 4, 5, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (13, N'540857069659', 450000, 27, 4, 5, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (14, N'823054876622', 500000, 97, 4, 5, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (15, N'463933180202', 450000, 54, 2, 6, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (16, N'891618469558', 700000, 99, 4, 6, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (17, N'281300510387', 560000, 56, 2, 6, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (18, N'669022966101', 600000, 99, 4, 6, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (19, N'748582726527', 450000, 98, 4, 6, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (20, N'116177422811', 500000, 64, 4, 7, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (21, N'329348359263', 560000, 98, 4, 7, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (22, N'270622513523', 560000, 56, 2, 7, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (23, N'892226005733', 450000, 99, 3, 7, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (24, N'274525851680', 800000, 88, 4, 8, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (25, N'389273808719', 880000, 98, 4, 8, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (26, N'474749237562', 780000, 52, 2, 8, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (27, N'638673361445', 770000, 78, 4, 8, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (28, N'168004292866', 800000, 61, 3, 9, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (29, N'337256552447', 800000, 99, 3, 9, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (30, N'258787867221', 880000, 64, 3, 9, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (31, N'250414018777', 780000, 50, 4, 9, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (32, N'374970159729', 900000, 84, 3, 10, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (33, N'716449623586', 990000, 78, 3, 10, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (34, N'903830623200', 800000, 77, 3, 10, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (35, N'260797293125', 900000, 345, 2, 10, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (36, N'324811383257', 700000, 55, 2, 10, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (37, N'723317548403', 890000, 78, 2, 10, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (38, N'969473223158', 800000, 99, 3, 11, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (39, N'924865876408', 800000, 78, 3, 11, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (40, N'436061920869', 880000, 89, 3, 11, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (41, N'382506550141', 780000, 888, 4, 11, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (42, N'205674841627', 900000, 45, 4, 11, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (43, N'804122834732', 890000, 73, 4, 12, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (44, N'117863025454', 760000, 168, 4, 12, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (45, N'367590940502', 890000, 163, 4, 12, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (46, N'571883128797', 900000, 175, 4, 12, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (47, N'918868761119', 1000000, 99, 4, 13, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (48, N'594587320981', 760000, 99, 4, 13, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (49, N'659054482458', 780000, 58, 4, 14, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (50, N'926636036178', 800000, 45, 3, 14, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (51, N'789441277767', 810000, 50, 4, 14, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (52, N'475903651723', 860000, 163, 3, 14, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (53, N'622418593675', 780000, 88, 3, 15, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (54, N'951855043089', 560000, 537, 3, 15, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (55, N'224830587417', 760000, 153, 3, 15, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (56, N'875696032903', 890000, 145, 3, 15, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (63, N'472237712458', 450000, 10, 2, 16, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (64, N'219485939510', 760000, 26, 2, 16, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (65, N'730751335505', 890000, 26, 2, 16, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (66, N'741490641794', 780000, 33, 5, 16, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (67, N'999221942650', 760000, 26, 5, 16, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (68, N'403693665490', 780000, 40, 5, 16, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (69, N'330822487451', 670000, 563, 4, 17, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (70, N'404497340990', 760000, 73, 4, 17, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (71, N'102522486505', 640000, 649, 4, 17, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (72, N'959674343295', 100000, 1, 3, 18, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (73, N'546765391238', 780000, 99, 2, 19, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (74, N'384869378337', 670000, 88, 2, 19, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (75, N'374276230827', 450000, 87, 2, 19, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (79, N'378127061471', 900000, 876, 2, 20, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (80, N'798463249625', 780000, 67, 2, 20, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (81, N'481334413830', 670000, 76, 2, 20, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (82, N'606175973230', 500000, 50, 4, 21, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (83, N'794006814378', 500000, 50, 3, 21, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (84, N'146933743059', 560000, 34, 1, 22, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (85, N'926932208221', 600000, 34, 1, 23, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (86, N'624272327953', 500000, 10, 4, 24, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (87, N'969588190261', 500000, 10, 2, 24, 1)
SET IDENTITY_INSERT [dbo].[product_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[product_discount] ON 

INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (1, 0, 396000, CAST(N'2023-12-06T07:00:00.0000000' AS DateTime2), CAST(N'2023-11-26T07:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (2, 0, 484000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-05T07:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (3, 0, 405000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-06T07:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (4, 0, 487500, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-06T07:00:00.0000000' AS DateTime2), 5)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (5, 0, 440000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-06T07:00:00.0000000' AS DateTime2), 14)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (6, 0, 306000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-06T07:00:00.0000000' AS DateTime2), 13)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (7, 0, 492800, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-06T07:00:00.0000000' AS DateTime2), 12)
SET IDENTITY_INSERT [dbo].[product_discount] OFF
GO
SET IDENTITY_INSERT [dbo].[return_detail] ON 

INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (1, NULL, 1, 1, 8)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (2, NULL, 1, 2, 34)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (3, NULL, 1, 5, 2)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (4, NULL, 1, 6, 65)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (5, NULL, 2, 7, 52)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (6, NULL, 2, 9, 11)
SET IDENTITY_INSERT [dbo].[return_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([id], [create_date], [name], [update_date]) VALUES (1, NULL, N'ROLE_ADMIN', NULL)
INSERT [dbo].[role] ([id], [create_date], [name], [update_date]) VALUES (2, NULL, N'ROLE_EMPLOYEE', NULL)
INSERT [dbo].[role] ([id], [create_date], [name], [update_date]) VALUES (3, NULL, N'ROLE_USER', NULL)
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[size] ON 

INSERT [dbo].[size] ([id], [code], [name], [delete_flag]) VALUES (1, N'KC1', N'M', NULL)
INSERT [dbo].[size] ([id], [code], [name], [delete_flag]) VALUES (2, N'KC2', N'XL', NULL)
INSERT [dbo].[size] ([id], [code], [name], [delete_flag]) VALUES (3, N'KC3', N'S', NULL)
INSERT [dbo].[size] ([id], [code], [name], [delete_flag]) VALUES (4, N'KC4', N'XXL', NULL)
SET IDENTITY_INSERT [dbo].[size] OFF
GO
SET IDENTITY_INSERT [dbo].[verification_code] ON 

INSERT [dbo].[verification_code] ([id], [code], [expiry_time], [account_id]) VALUES (1, N'720819', CAST(N'2023-12-14T20:22:15.5485788' AS DateTime2), 13)
SET IDENTITY_INSERT [dbo].[verification_code] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_k9qlqijt38kmryafdhhq04lon]    Script Date: 12/15/2023 9:50:17 PM ******/
ALTER TABLE [dbo].[account] ADD  CONSTRAINT [UK_k9qlqijt38kmryafdhhq04lon] UNIQUE NONCLUSTERED 
(
	[code] ASC
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
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FKqjtxrp32iyvl31q2cr3l3refa] FOREIGN KEY([discount_code_id])
REFERENCES [dbo].[discount_code] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FKqjtxrp32iyvl31q2cr3l3refa]
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
ALTER TABLE [dbo].[bill_return]  WITH CHECK ADD  CONSTRAINT [FKmt15w62mdy6k5x6i1a3297egn] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[bill_return] CHECK CONSTRAINT [FKmt15w62mdy6k5x6i1a3297egn]
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
ALTER TABLE [dbo].[payment]  WITH CHECK ADD  CONSTRAINT [FKhdc173udjyonn4mt1lgt1x2ce] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[payment] CHECK CONSTRAINT [FKhdc173udjyonn4mt1lgt1x2ce]
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
ALTER TABLE [dbo].[product_discount]  WITH CHECK ADD  CONSTRAINT [FK7v5t5uc0v7ww6ro8pxoustui6] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[product_detail] ([id])
GO
ALTER TABLE [dbo].[product_discount] CHECK CONSTRAINT [FK7v5t5uc0v7ww6ro8pxoustui6]
GO
ALTER TABLE [dbo].[return_detail]  WITH CHECK ADD  CONSTRAINT [FK1d0fsi5xn9qokf0vmd0ni28n] FOREIGN KEY([return_id])
REFERENCES [dbo].[bill_return] ([id])
GO
ALTER TABLE [dbo].[return_detail] CHECK CONSTRAINT [FK1d0fsi5xn9qokf0vmd0ni28n]
GO
ALTER TABLE [dbo].[return_detail]  WITH CHECK ADD  CONSTRAINT [FKkgwtlbgm9ho0njhx5nsq0s589] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[product_detail] ([id])
GO
ALTER TABLE [dbo].[return_detail] CHECK CONSTRAINT [FKkgwtlbgm9ho0njhx5nsq0s589]
GO
ALTER TABLE [dbo].[verification_code]  WITH CHECK ADD  CONSTRAINT [FKn1v88epjv0xug2pr7nwamcboh] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[verification_code] CHECK CONSTRAINT [FKn1v88epjv0xug2pr7nwamcboh]
GO
