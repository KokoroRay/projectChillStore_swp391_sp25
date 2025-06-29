CREATE DATABASE [group4_swp_chillStore_Final11]
USE [group4_swp_chillStore_Final11]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[email] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NULL,
	[phone] [nvarchar](20) NULL,
	[address] [nvarchar](255) NULL,
	[gender] [nvarchar](10) NULL,
	[national_id] [nvarchar](20) NULL,
	[start_date] [date] NULL,
	[privileges] [nvarchar](100) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[logo] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carts]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carts](
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[parent_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[display_name] [nvarchar](100) NULL,
	[email] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NULL,
	[phone] [nvarchar](20) NULL,
	[address] [nvarchar](255) NULL,
	[gender] [nvarchar](10) NULL,
	[birth_date] [date] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
	[is_locked] [bit] NOT NULL,
	[provider] [nvarchar](50) NULL,
	[provider_id] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[delivery_tracking]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[delivery_tracking](
	[tracking_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
	[location] [nvarchar](255) NULL,
	[updated_by] [int] NOT NULL,
	[updated_at] [datetime2](7) NULL,
	[notes] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[tracking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[rating] [tinyint] NULL,
	[comment] [nvarchar](1000) NULL,
	[status] [nvarchar](20) NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flyway_schema_history]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flyway_schema_history](
	[installed_rank] [int] NOT NULL,
	[version] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
	[type] [nvarchar](20) NOT NULL,
	[script] [nvarchar](1000) NOT NULL,
	[checksum] [int] NULL,
	[installed_by] [nvarchar](100) NOT NULL,
	[installed_on] [datetime] NOT NULL,
	[execution_time] [int] NOT NULL,
	[success] [bit] NOT NULL,
 CONSTRAINT [flyway_schema_history_pk] PRIMARY KEY CLUSTERED 
(
	[installed_rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maintenance_warranty_history]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maintenance_warranty_history](
	[history_id] [int] IDENTITY(1,1) NOT NULL,
	[request_id] [int] NOT NULL,
	[update_time] [datetime2](7) NULL,
	[notes] [nvarchar](1000) NULL,
	[status] [nvarchar](20) NULL,
	[handled_by] [int] NULL,
	[handled_role] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[history_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maintenance_warranty_requests]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maintenance_warranty_requests](
	[request_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[request_type] [nvarchar](20) NULL,
	[request_date] [datetime2](7) NULL,
	[reason] [nvarchar](500) NULL,
	[status] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[membership_tiers]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[membership_tiers](
	[tier_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[min_points] [int] NOT NULL,
	[discount_pct] [decimal](5, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[memberships]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[memberships](
	[membership_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[tier_id] [int] NOT NULL,
	[points] [int] NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[is_current] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[membership_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_items]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_items](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price_each] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[promo_id] [int] NULL,
	[voucher_id] [int] NULL,
	[discount_amount] [decimal](10, 2) NULL,
	[order_date] [datetime2](7) NULL,
	[total_amount] [decimal](10, 2) NULL,
	[status] [nvarchar](20) NULL,
	[payment_method] [nvarchar](10) NULL,
	[staff_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[description] [nvarchar](500) NULL,
	[price] [decimal](10, 2) NOT NULL,
	[stock_qty] [int] NULL,
	[active] [bit] NULL,
	[category_id] [int] NULL,
	[brand_id] [int] NULL,
	[discount_pct] [decimal](5, 2) NULL,
	[discount_from] [date] NULL,
	[discount_to] [date] NULL,
	[image_url] [nvarchar](255) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotion_brands]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promotion_brands](
	[promo_id] [int] NOT NULL,
	[brand_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[promo_id] ASC,
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotion_categories]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promotion_categories](
	[promo_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[promo_id] ASC,
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotion_products]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promotion_products](
	[promo_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[promo_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotions]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promotions](
	[promo_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[description] [nvarchar](255) NULL,
	[discount_pct] [decimal](5, 2) NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[active] [bit] NULL,
	[created_by] [int] NOT NULL,
	[apply_type] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[promo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[replies]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[replies](
	[reply_id] [int] IDENTITY(1,1) NOT NULL,
	[feedback_id] [int] NOT NULL,
	[staff_id] [int] NOT NULL,
	[content] [nvarchar](1000) NOT NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[reply_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[staff_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[email] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NULL,
	[phone] [nvarchar](20) NULL,
	[address] [nvarchar](255) NULL,
	[gender] [nvarchar](10) NULL,
	[national_id] [nvarchar](20) NULL,
	[start_date] [date] NULL,
	[base_salary] [decimal](10, 2) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_brands]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher_brands](
	[voucher_id] [int] NOT NULL,
	[brand_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC,
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_categories]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher_categories](
	[voucher_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC,
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vouchers]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vouchers](
	[voucher_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[description] [nvarchar](255) NULL,
	[discount_amount] [decimal](10, 2) NULL,
	[discount_pct] [decimal](5, 2) NULL,
	[min_order_amount] [decimal](10, 2) NULL,
	[quantity_available] [int] NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[active] [bit] NULL,
	[created_by] [int] NOT NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[warehouse]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[warehouse](
	[trans_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity_change] [int] NOT NULL,
	[stock_after] [int] NOT NULL,
	[type] [nvarchar](10) NOT NULL,
	[trans_date] [datetime2](7) NULL,
	[admin_id] [int] NULL,
	[notes] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[trans_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wishlists]    Script Date: 6/21/2025 2:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wishlists](
	[wishlist_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[wishlist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admins] ON 

INSERT [dbo].[admins] ([admin_id], [name], [email], [password], [phone], [address], [gender], [national_id], [start_date], [privileges], [created_at], [updated_at]) VALUES (1, N'Huỳnh Lê Công Bien', N'BienHLCCE181207@fpt.edu.vn', N'Bien13022004@', N'0912345678', N'Kien_Giang', NULL, NULL, NULL, NULL, CAST(N'2025-06-15T04:55:27.0329589' AS DateTime2), CAST(N'2025-06-15T04:55:27.0329589' AS DateTime2))
SET IDENTITY_INSERT [dbo].[admins] OFF
GO
SET IDENTITY_INSERT [dbo].[brands] ON 

INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (1, N'Panasomic', N'https://cdnv2.tgdd.vn/mwg-static/common/Category/7b/fe/7bfefb3ef979c2a3a4ed10ee8afaec7f.png', CAST(N'2025-06-07T14:23:55.943' AS DateTime), CAST(N'2025-06-07T14:23:55.943' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (2, N'Daikin', N'https://cdnv2.tgdd.vn/mwg-static/common/Category/2f/53/2f53a117d367a1180788ae6ed2ddec12.png', CAST(N'2025-06-07T14:23:55.943' AS DateTime), CAST(N'2025-06-07T14:23:55.943' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (3, N'Aqua', N'https://cdnv2.tgdd.vn/mwg-static/common/Category/77/70/7770c6499cb79088e8663b61bda39539.png', CAST(N'2025-06-07T14:23:55.943' AS DateTime), CAST(N'2025-06-07T14:23:55.943' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (4, N'LG', N'https://cdnv2.tgdd.vn/mwg-static/common/Category/b2/fc/b2fc6b8befcdfe03c16d0d4dda903092.png', CAST(N'2025-06-07T14:23:55.943' AS DateTime), CAST(N'2025-06-07T14:23:55.943' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (5, N'Casper', N'https://cdnv2.tgdd.vn/mwg-static/common/Category/e6/4b/e64bff8ef49f4af70d2981e842933410.png', CAST(N'2025-06-07T14:23:55.943' AS DateTime), CAST(N'2025-06-07T14:23:55.943' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (6, N'Samsung', N'https://cdnv2.tgdd.vn/mwg-static/common/Category/89/ba/89baf2121494abea518fca0c710475c6.png', CAST(N'2025-06-07T14:23:55.943' AS DateTime), CAST(N'2025-06-07T14:23:55.943' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (7, N'Toshiba', N'https://cdnv2.tgdd.vn/mwg-static/common/Category/a5/82/a5829434d33371eeab59bfb2aaa47a44.png', CAST(N'2025-06-07T14:23:55.943' AS DateTime), CAST(N'2025-06-07T14:23:55.943' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (8, N'Comfee', N'https://cdnv2.tgdd.vn/mwg-static/common/Category/66/d2/66d281367d4b444bc7b837c16162a27b.png', CAST(N'2025-06-07T14:23:55.943' AS DateTime), CAST(N'2025-06-07T14:23:55.943' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (9, N'Daikiosan', N'https://cdnv2.tgdd.vn/mwg-static/common/Category/07/60/0760b7db1e93d1ede77257796e10dc9f.png', CAST(N'2025-06-08T12:30:33.333' AS DateTime), CAST(N'2025-06-08T12:30:33.333' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (10, N'Sunhouse', N'https://cdnv2.tgdd.vn/mwg-static/common/Category/6e/c7/6ec7bcea139ab71154e5bf1edf256227.png', CAST(N'2025-06-08T12:30:33.333' AS DateTime), CAST(N'2025-06-08T12:30:33.333' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (11, N'Kangaroo', N'https://cdn.tgdd.vn/Category/Quicklink/7498/2\060521-042332.png', CAST(N'2025-06-08T12:30:33.333' AS DateTime), CAST(N'2025-06-08T12:30:33.333' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (12, N'Senko', N'https://cdn.tgdd.vn/Category/Quicklink/1992/2\091022-053621.png', CAST(N'2025-06-08T16:19:55.113' AS DateTime), CAST(N'2025-06-08T16:19:55.113' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (13, N'Asia', N'https://cdn.tgdd.vn/Category/Quicklink/1992/2\091022-053715.png', CAST(N'2025-06-08T16:19:55.113' AS DateTime), CAST(N'2025-06-08T16:19:55.113' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (14, N'Mitsubishi', N'https://cdn.tgdd.vn/Category/Quicklink/1992/2\091022-053802.png', CAST(N'2025-06-08T16:19:55.113' AS DateTime), CAST(N'2025-06-08T16:19:55.113' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (15, N'Philips', N'https://cdn.tgdd.vn/Category/Quicklink/2062/2\071022-062724.png', CAST(N'2025-06-08T22:39:31.830' AS DateTime), CAST(N'2025-06-08T22:39:31.830' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (16, N'BlueStone', N'https://cdn.tgdd.vn/Category/Quicklink/2062/2\071022-062726.png', CAST(N'2025-06-08T22:39:31.830' AS DateTime), CAST(N'2025-06-08T22:39:31.830' AS DateTime))
INSERT [dbo].[brands] ([brand_id], [name], [logo], [created_at], [updated_at]) VALUES (17, N'Hafele', N'https://cdnv2.tgdd.vn/mwg-static/common/Category/ea/dc/eadcb4825077ce4ec2b3bf046bd14892.png', CAST(N'2025-06-08T22:39:31.830' AS DateTime), CAST(N'2025-06-08T22:39:31.830' AS DateTime))
SET IDENTITY_INSERT [dbo].[brands] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([category_id], [name], [parent_id]) VALUES (1, N'máy lạnh', NULL)
INSERT [dbo].[categories] ([category_id], [name], [parent_id]) VALUES (2, N'tủ lạnh', 2)
INSERT [dbo].[categories] ([category_id], [name], [parent_id]) VALUES (3, N'quạt điều hòa', 3)
INSERT [dbo].[categories] ([category_id], [name], [parent_id]) VALUES (4, N'quạt mát', 4)
INSERT [dbo].[categories] ([category_id], [name], [parent_id]) VALUES (5, N'máy ép trái cây', 5)
INSERT [dbo].[categories] ([category_id], [name], [parent_id]) VALUES (6, N'máy xay sinh tố', 6)
INSERT [dbo].[categories] ([category_id], [name], [parent_id]) VALUES (7, N'máy làm tóc', 7)
INSERT [dbo].[categories] ([category_id], [name], [parent_id]) VALUES (8, N'bàn chải điện', 8)
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[customers] ON 

INSERT [dbo].[customers] ([customer_id], [name], [display_name], [email], [password], [phone], [address], [gender], [birth_date], [created_at], [updated_at], [is_locked], [provider], [provider_id]) VALUES (1, N'BienHuynh', NULL, N'BienHLCCE181207@fpt.edu.vn', N'$2a$10$XshEB2v3V9bI7XDN/qOa0eZKxtEsfeG.v/R8CWerywacj9ITyhH/C', N'0912345678', N'can tho', NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[customers] ([customer_id], [name], [display_name], [email], [password], [phone], [address], [gender], [birth_date], [created_at], [updated_at], [is_locked], [provider], [provider_id]) VALUES (2, N'tam1234', NULL, N'namnguyen123456cm@gmail.com', N'$2a$10$iq9p0V0oWlFlEQd/sxw6duQXYsGCzWA9NXGofGYCwzgKOURtjEyoy', N'0933561709', N'Đường 200, tổ 8, Khu vực Bình Phó B, Phường Long Tuyền, Quận Bình Thủy', NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[customers] ([customer_id], [name], [display_name], [email], [password], [phone], [address], [gender], [birth_date], [created_at], [updated_at], [is_locked], [provider], [provider_id]) VALUES (3, N'Ha', N'Trương Thị Vũ Hà', N'hattvce181839@fpt.edu.vn', N'$2a$10$znoQPMfEywtnvc7PGFfuU.3nLr1hLoVShqVnkUYkVcuRA.BbIBtdy', N'0912345678', N'Kien_GIang', NULL, CAST(N'2004-02-19' AS Date), CAST(N'2025-06-20T06:43:21.0096221' AS DateTime2), CAST(N'2025-06-20T06:43:21.0096221' AS DateTime2), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[customers] OFF
GO
INSERT [dbo].[flyway_schema_history] ([installed_rank], [version], [description], [type], [script], [checksum], [installed_by], [installed_on], [execution_time], [success]) VALUES (1, N'1', N'<< Flyway Baseline >>', N'BASELINE', N'<< Flyway Baseline >>', NULL, N'sa', CAST(N'2025-06-13T12:00:42.567' AS DateTime), 0, 1)
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([order_id], [customer_id], [promo_id], [voucher_id], [discount_amount], [order_date], [total_amount], [status], [payment_method], [staff_id]) VALUES (3, 1, NULL, NULL, CAST(0.00 AS Decimal(10, 2)), CAST(N'2025-06-21T10:15:00.0000000' AS DateTime2), CAST(5500000.00 AS Decimal(10, 2)), N'Delivered', N'COD', 1)
INSERT [dbo].[orders] ([order_id], [customer_id], [promo_id], [voucher_id], [discount_amount], [order_date], [total_amount], [status], [payment_method], [staff_id]) VALUES (4, 2, NULL, NULL, CAST(0.00 AS Decimal(10, 2)), CAST(N'2025-06-20T14:45:00.0000000' AS DateTime2), CAST(8500000.00 AS Decimal(10, 2)), N'Delivered', N'VNPay', 1)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (4, N'Panasonic Inverter 1 HP CU/CS-PU9AKH-8', N'Máy lạnh 1 chiều, công suất làm lạnh 1 HP phù hợp không gian dưới 15m².
Bộ lọc không khí Hexa X6+ loại bỏ các tác nhân gây hại, khử mùi tốt.
Bộ đôi bảo vệ S-PRO chống ẩm, chống cháy, chống ăn mòn.
Chế độ Dry hút ẩm, khử nồm, ngăn nấm mốc hiệu quả.
Làm lạnh nhanh với đa dạng chế độ.
', CAST(11999000.00 AS Decimal(10, 2)), 60, 1, 1, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T08:27:40.6253832' AS DateTime2), CAST(N'2025-06-07T08:27:40.6253832' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (5, N'Daikin Inverter 1 HP ATKB25YVMV', N'Công suất làm lạnh 1 HP phù hợp không gian có diện tích dưới 15m².
Công nghệ Inverter Plus và chế độ Eco tiết kiệm điện, vận hành êm ái.
Chế độ tự làm sạch dàn lạnh Self Clean diệt khuẩn, bảo vệ sức khỏe.
Lớp phủ chống ăn mòn BlueFin tránh các tác nhân từ môi trường, tăng độ bền.
Một số tiện ích: tự chẩn đoán lỗi, tự khởi động lại khi có điện, hút ẩm Smart Dry,...
', CAST(10390000.00 AS Decimal(10, 2)), 114, 1, 1, 2, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T09:00:00.2690520' AS DateTime2), CAST(N'2025-06-07T09:00:00.2690520' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (6, N'Aqua Inverter 1 HP AQA-RV10QA3', N'Công suất làm lạnh 1 HP phù hợp không gian có diện tích dưới 15m².
Công nghệ Inverter Plus và chế độ Eco tiết kiệm điện, vận hành êm ái.
Chế độ tự làm sạch dàn lạnh Self Clean diệt khuẩn, bảo vệ sức khỏe.
Lớp phủ chống ăn mòn BlueFin tránh các tác nhân từ môi trường, tăng độ bền.
Một số tiện ích: tự chẩn đoán lỗi, tự khởi động lại khi có điện, hút ẩm Smart Dry,...
', CAST(8290000.00 AS Decimal(10, 2)), 78, 1, 1, 3, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T09:05:42.8803043' AS DateTime2), CAST(N'2025-06-07T09:05:42.8803043' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (7, N'LG Inverter 1.5 HP IEC12M1', N'Công suất 1.5 HP làm lạnh hiệu quả, phù hợp cho phòng từ 15 - 20m².
Công nghệ Jet Cool nhanh chóng mang đến hơi lạnh.
Dual Inverter kết hợp Kw Manager và Energy Ctrl giúp tiết kiệm điện tối ưu.
Màng lọc sơ cấp và bộ lọc PM2.5 mang lại không khí trong lành, bảo vệ sức khỏe gia đình.
Màn hình LED hiển thị nhiệt độ rõ nét, dễ dàng quan sát và điều chỉnh.
Điều khiển qua điện thoại tích hợp wifi, tiện lợi trong mọi thao tác.

', CAST(11690000.00 AS Decimal(10, 2)), 83, 1, 1, 4, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T09:08:22.1958331' AS DateTime2), CAST(N'2025-06-07T09:08:22.1958331' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (8, N'Samsung Inverter 1 HP AR10DYHZAWKNSV', N'Công suất làm lạnh 1 HP phù hợp không gian có diện tích dưới 15m².
Công nghệ Inverter Plus và chế độ Eco tiết kiệm điện, vận hành êm ái.
Chế độ tự làm sạch dàn lạnh Self Clean diệt khuẩn, bảo vệ sức khỏe.
Lớp phủ chống ăn mòn BlueFin tránh các tác nhân từ môi trường, tăng độ bền.
Một số tiện ích: tự chẩn đoán lỗi, tự khởi động lại khi có điện, hút ẩm Smart Dry,...
', CAST(7290000.00 AS Decimal(10, 2)), 85, 1, 1, 6, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T09:11:01.0401434' AS DateTime2), CAST(N'2025-06-07T09:11:01.0401434' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (9, N'Toshiba Inverter 1 HP RAS-H10Z2KCVG-V', N'Công suất 1 HP - 9080 BTU, đáp ứng tốt nhu cầu làm lạnh trong những không gian dưới 15m². 
Công nghệ Hybrid Inverter giúp tiết kiệm điện năng hiệu quả.
Chế độ Hi Power làm lạnh phòng nhanh trong thời gian ngắn.
Công nghệ Magic Coil chống bám bẩn, nâng cao hiệu quả hoạt động của máy.
Chức năng tự làm sạch giúp hạn chế nấm mốc, tăng 
', CAST(9290000.00 AS Decimal(10, 2)), 93, 1, 1, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T09:13:57.0705623' AS DateTime2), CAST(N'2025-06-07T09:13:57.0705623' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (14, N'Daikin Inverter 1.5 HP ATKF35ZVMV', N'Công suất 1.5 HP phù hợp cho không gian từ 15 - 20m².
Công nghệ Inverter kết hợp Econo giúp tiết kiệm điện, vận hành êm ái.
Phin lọc Enzyme Blue tích hợp lọc bụi mịn PM2.5, khử mùi, diệt khuẩn mang lại không khí trong lành.
Đảo gió 4 chiều lan tỏa hơi lạnh đồng đều, làm mát hiệu quả.
Kiểm soát độ ẩm lý tưởng, hạn chế tình trạng khô da, mất nước.
Đem lại hơi lạnh nhanh chóng nhờ công nghệ Powerful.
', CAST(12990000.00 AS Decimal(10, 2)), 82, 1, 1, 2, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T09:23:23.1225311' AS DateTime2), CAST(N'2025-06-07T09:23:23.1225311' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (15, N'LG Inverter 1 HP IDC09M1', N'Công suất 1 HP làm lạnh hiệu quả, phù hợp cho phòng dưới 15m².
Đảo gió 4 chiều giúp hơi lạnh lan tỏa đồng đều.
Cánh vẫy kép Dual Vane tối ưu hướng gió, đem lại cảm giác dễ chịu ở mọi nhiệt độ.
Chế độ kiểm soát độ ẩm giúp duy trì luồng không khí ở mức phù hợp.
Kw Manager tiết kiệm năng lượng chủ động, có kế hoạch.
Điều khiển bằng điện thoại, có wifi tiện lợi theo dõi các hoạt động từ xa.
', CAST(12590000.00 AS Decimal(10, 2)), 88, 1, 1, 4, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T09:25:25.4935195' AS DateTime2), CAST(N'2025-06-07T09:25:25.4935195' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (17, N'Panasonic Inverter 1.5 HP CU/CS-U12BKH-8', N'Kết hợp công nghệ Inverter và ECO tích hợp A.I giúp vận hành êm ái, tiết kiệm điện.
Công nghệ Nanoe™ X thế hệ 2 lọc không khí loại bỏ mùi hôi, diệt khuẩn và nấm mốc.
Trang bị Nanoe-G hỗ trợ lọc bụi mịn PM 2.5, mang lại bầu không khí trong lành.
Công nghệ iAuto-X giúp làm lạnh nhanh, tạo cảm giác dễ chịu khi sử dụng.
Chế độ kiểm soát độ ẩm giúp duy trì không gian thoải mái mà không quá lạnh.
', CAST(17790000.00 AS Decimal(10, 2)), 104, 1, 1, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T09:28:18.8042016' AS DateTime2), CAST(N'2025-06-07T09:28:18.8042016' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (18, N'LG Inverter 1 HP V10WIN1', N'Công suất làm lạnh 1 HP phù hợp không gian có diện tích dưới 15m².
Công nghệ Inverter Plus và chế độ Eco tiết kiệm điện, vận hành êm ái.
Chế độ tự làm sạch dàn lạnh Self Clean diệt khuẩn, bảo vệ sức khỏe.
Lớp phủ chống ăn mòn BlueFin tránh các tác nhân từ môi trường, tăng độ bền.
Một số tiện ích: tự chẩn đoán lỗi, tự khởi động lại khi có điện, hút ẩm Smart Dry,...
', CAST(9290000.00 AS Decimal(10, 2)), 89, 1, 1, 4, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T15:30:32.7421411' AS DateTime2), CAST(N'2025-06-07T15:30:32.7421411' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (19, N'LG Inverter 1.5 HP IDC12M1', N'Máy lạnh 1 chiều có phạm vi làm lạnh từ 15 - 20m² với công suất 1.5 HP.
Hơi lạnh lan tỏa đều khắp không gian phòng nhờ đảo gió 4 chiều.
Cánh vẫy kép Dual Vane phân tán luồng không khí lên hoặc xuống xa và nhanh hơn.
Dual Inverter, Kw Manager và Energy Ctrl kiểm soát năng lượng, tiết kiệm điện hiệu quả.
Màng lọc sơ cấp cùng bộ lọc PM2.5 mang lại không khí trong lành.
Điều khiển bằng điện thoại có wifi, dễ dàng theo dõi và thao tác.', CAST(15090000.00 AS Decimal(10, 2)), 41, 1, 1, 4, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T15:34:47.3139673' AS DateTime2), CAST(N'2025-06-07T15:34:47.3139673' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (20, N'Aqua Inverter 1.5 HP AQA-RV13QA3', N'Công suất làm lạnh 1.5 HP phù hợp phòng có diện tích từ 15 - 20m².
Công nghệ Inverter Plus & chế độ Eco tiết kiệm điện, vận hành êm ái.
Không gian được làm lạnh nhanh chóng nhờ chế độ Turbo.
Chế độ tự làm sạch dàn lạnh Self Clean hạn chế nấm mốc sinh sôi.
Màn hình hiển thị nhiệt độ trên dàn lạnh dễ dàng theo dõi.
', CAST(9590000.00 AS Decimal(10, 2)), 53, 1, 1, 3, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T15:37:25.1399723' AS DateTime2), CAST(N'2025-06-07T15:37:25.1399723' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (21, N'Aqua Inverter 1.5 HP AQA-RUV13RB3', N'Máy lạnh 1 chiều 1.5 HP làm mát hiệu quả trong không gian 15 - 20m².
Công nghệ UVC Pro loại bỏ vi khuẩn, virus, lọc sạch không khí, bảo vệ sức khỏe người dùng.
Sự kết hợp giữa Inverter và chế độ Eco giúp máy vận hành ổn định, tiết kiệm điện năng tối ưu.
Chức năng tự làm sạch Self Clean với quy trình 3 bước ngăn ngừa nấm mốc, duy trì không gian trong lành.
Dễ dàng kiểm soát và điều chỉnh nhiệt độ từ xa qua điện thoại nhờ ứng dụng Haismart.
', CAST(10790000.00 AS Decimal(10, 2)), 62, 1, 1, 3, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T15:39:55.7866583' AS DateTime2), CAST(N'2025-06-07T15:39:55.7866583' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (22, N'Comfee Inverter 1 HP CFS-10VGDF', N'Máy lạnh công suất 1 HP phù hợp sử dụng cho phòng có diện tích dưới 15m².
Chế độ Eco+ cùng công nghệ Inverter giúp máy hoạt động ổn định, tiết kiệm điện năng.
Chế độ Active Clean tự vệ sinh dàn lạnh loại bỏ nấm mốc, kéo dài tuổi thọ máy.
Công nghệ lọc kép Dual Filtration giữ không khí trong lành, bảo vệ sức khỏe.
Chế độ Sleep Curve mang lại giấc ngủ ngon hơn nhờ khả năng duy trì nhiệt độ ổn định.
Công nghệ AI Cool điều khiển bằng giọng nói qua ứng dụng SmartHome.', CAST(6290000.00 AS Decimal(10, 2)), 83, 1, 1, 8, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T15:42:13.3610209' AS DateTime2), CAST(N'2025-06-07T15:42:13.3610209' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (23, N'Samsung Inverter 1.5 HP AR13DYHZAWKNSV', N'Công suất làm lạnh 1 HP phù hợp không gian có diện tích dưới 15m².
Công nghệ Inverter Plus và chế độ Eco tiết kiệm điện, vận hành êm ái.
Chế độ tự làm sạch dàn lạnh Self Clean diệt khuẩn, bảo vệ sức khỏe.
Lớp phủ chống ăn mòn BlueFin tránh các tác nhân từ môi trường, tăng độ bền.
Một số tiện ích: tự chẩn đoán lỗi, tự khởi động lại khi có điện, hút ẩm Smart Dry,...
', CAST(9890000.00 AS Decimal(10, 2)), 0, 1, 1, 6, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T15:49:23.3390592' AS DateTime2), CAST(N'2025-06-07T15:49:23.3390592' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (24, N'Samsung Inverter 1 HP Wind-Free AR10CYFAAWKNSV', N'Công suất làm lạnh 1 HP phù hợp không gian có diện tích dưới 15m².
Công nghệ Inverter Plus và chế độ Eco tiết kiệm điện, vận hành êm ái.
Chế độ tự làm sạch dàn lạnh Self Clean diệt khuẩn, bảo vệ sức khỏe.
Lớp phủ chống ăn mòn BlueFin tránh các tác nhân từ môi trường, tăng độ bền.
Một số tiện ích: tự chẩn đoán lỗi, tự khởi động lại khi có điện, hút ẩm Smart Dry,...
', CAST(9290000.00 AS Decimal(10, 2)), 83, 1, 1, 6, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T15:49:55.1564234' AS DateTime2), CAST(N'2025-06-07T15:49:55.1564234' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (25, N'Daikin Inverter 1.5 HP ATKB35YVMV', N'Công suất làm lạnh 1 HP phù hợp không gian có diện tích dưới 15m².
Công nghệ Inverter Plus và chế độ Eco tiết kiệm điện, vận hành êm ái.
Chế độ tự làm sạch dàn lạnh Self Clean diệt khuẩn, bảo vệ sức khỏe.
Lớp phủ chống ăn mòn BlueFin tránh các tác nhân từ môi trường, tăng độ bền.
Một số tiện ích: tự chẩn đoán lỗi, tự khởi động lại khi có điện, hút ẩm Smart Dry,...
', CAST(13290000.00 AS Decimal(10, 2)), 32, 1, 1, 2, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T15:51:57.9298873' AS DateTime2), CAST(N'2025-06-07T15:51:57.9298873' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (26, N'Comfee Inverter 1.5 HP CFS-13VGDF', N'Công suất làm lạnh 1.5 HP phù hợp sử dụng cho phòng có diện tích từ 15 - 20m².
Làm lạnh không gian nhanh chóng bằng công nghệ Hyper Tech.
Bảo vệ sức khỏe cùng công nghệ lọc kép Dual Filtration, giúp loại bỏ vi khuẩn, bụi mịn,...
Mang lại không gian thoáng đãng, khô ráo với chức năng hút ẩm. 
Công nghệ Inverter giúp máy vận hành êm ái, tiết kiệm điện đáng kể.
Kết nối, điều khiển máy lạnh bằng điện thoại qua ứng dụng SmartHome.
', CAST(7790000.00 AS Decimal(10, 2)), 85, 1, 1, 8, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T15:56:33.0928901' AS DateTime2), CAST(N'2025-06-07T15:56:33.0928901' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (27, N'LG Inverter 1 HP IEC09M1', N'Công suất làm lạnh 1 HP phù hợp phòng có diện tích dưới 15m².
Công nghệ Jet Cool mang đến hơi lạnh nhanh chóng.
Dual Inverter, Kw Manager & Energy Ctrl kiểm soát năng lượng, tiết kiệm điện.
Màng lọc sơ cấp và bộ lọc PM 2.5 cho không khí trong lành, an toàn sức khỏe.
Màn hình LED hiển thị nhiệt độ, dễ dàng quan sát và điều chỉnh.
Điều khiển bằng điện thoại, có wifi tiện lợi, tối ưu hóa việc thao tác.
', CAST(9890000.00 AS Decimal(10, 2)), 97, 1, 1, 4, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T15:59:01.2382032' AS DateTime2), CAST(N'2025-06-07T15:59:01.2382032' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (28, N'Casper Inverter 1 HP GC-09IB36', N'Công suất làm lạnh 1 HP thích hợp phòng có diện tích dưới 15m².
Công nghệ Turbo mang lại khả năng làm lạnh nhanh chóng.
Tiết kiệm điện hiệu quả, vận hành êm ái nhờ công nghệ Inverter.
Màn hình hiển thị nhiệt độ trên dàn lạnh, dễ dàng quan sát.
Thiết kế thông minh EasyCare dễ dàng lắp đặt.
Cơ chế bảo vệ an toàn kép phát hiện rò rỉ thông minh.
', CAST(6690000.00 AS Decimal(10, 2)), 115, 1, 1, 5, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T16:00:51.0044613' AS DateTime2), CAST(N'2025-06-07T16:00:51.0044613' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (29, N'Panasonic Inverter 1.5 HP CU/CS-PU12AKH-8', N'Công suất làm lạnh 1 HP phù hợp không gian có diện tích dưới 15m².
Công nghệ Inverter Plus và chế độ Eco tiết kiệm điện, vận hành êm ái.
Chế độ tự làm sạch dàn lạnh Self Clean diệt khuẩn, bảo vệ sức khỏe.
Lớp phủ chống ăn mòn BlueFin tránh các tác nhân từ môi trường, tăng độ bền.
Một số tiện ích: tự chẩn đoán lỗi, tự khởi động lại khi có điện, hút ẩm Smart Dry,...
', CAST(14590000.00 AS Decimal(10, 2)), 234, 1, 1, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2002/333227/TimerThumb/333227.png', CAST(N'2025-06-07T16:03:03.5031575' AS DateTime2), CAST(N'2025-06-07T16:03:03.5031575' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (30, N'LG Inverter 374 lít LTD37BLM', N'Dung tích sử dụng 374 lít thích hợp gia đình 3 - 4 thành viên.
Ngăn lấy nước ngoài tiện lợi, tránh thất thoát hơi lạnh.
LINEARCooling giảm biến động nhiệt độ, thực phẩm tươi ngon đến 7 ngày.
DoorCooling+ làm lạnh từ cánh cửa tủ, luồng khí lạnh nhanh và đều hơn.
Bộ lọc khử mùi than hoạt tính Deodorizer kháng khuẩn, đem lại không khí tủ trong lành.
Ngăn Fresh 0 Zone tiết kiệm thời gian rã đông thực phẩm.

', CAST(11650000.00 AS Decimal(10, 2)), 62, 1, 2, 4, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-07T16:59:12.5147836' AS DateTime2), CAST(N'2025-06-07T16:59:12.5147836' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (32, N'Toshiba Inverter 711 lít GR-RS910WI-PMV(06)-MG', N'Dung tích sử dụng 711 lít phù hợp nhu cầu sử dụng gia đình có 5 thành viên trở lên.
Tiết kiệm điện hiệu quả, tránh lãng phí điện năng nhờ công nghệ Origin Inverter.
Luồng khí lạnh đa chiều Multi Air Flow giúp thực phẩm luôn tươi ngon.
Công nghệ PureAir Turbo™ giảm thiểu mùi khó chịu trong tủ lạnh.
Kết nối, điều khiển từ xa tiện lợi thông qua ứng dụng TSmartLife.

', CAST(20790000.00 AS Decimal(10, 2)), 82, 1, 2, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-07T17:02:45.5955145' AS DateTime2), CAST(N'2025-06-07T17:02:45.5955145' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (33, N'Toshiba Inverter 180 lít GR-B22VU UKG', N'Dung tích sử dụng 711 lít phù hợp nhu cầu sử dụng gia đình có 5 thành viên trở lên.
Tiết kiệm điện hiệu quả, tránh lãng phí điện năng nhờ công nghệ Origin Inverter.
Luồng khí lạnh đa chiều Multi Air Flow giúp thực phẩm luôn tươi ngon.
Công nghệ PureAir Turbo™ giảm thiểu mùi khó chịu trong tủ lạnh.
Kết nối, điều khiển từ xa tiện lợi thông qua ứng dụng TSmartLife.

', CAST(5370000.00 AS Decimal(10, 2)), 34, 1, 2, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-07T17:06:43.9853942' AS DateTime2), CAST(N'2025-06-07T17:06:43.9853942' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (34, N'Samsung Inverter 280 lít RB27N4010BU/SV', N'Dung tích sử dụng 711 lít phù hợp nhu cầu sử dụng gia đình có 5 thành viên trở lên.
Tiết kiệm điện hiệu quả, tránh lãng phí điện năng nhờ công nghệ Origin Inverter.
Luồng khí lạnh đa chiều Multi Air Flow giúp thực phẩm luôn tươi ngon.
Công nghệ PureAir Turbo™ giảm thiểu mùi khó chịu trong tủ lạnh.
Kết nối, điều khiển từ xa tiện lợi thông qua ứng dụng TSmartLife.

', CAST(8570000.00 AS Decimal(10, 2)), 94, 1, 2, 6, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-07T17:14:36.5388504' AS DateTime2), CAST(N'2025-06-07T17:14:36.5388504' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (38, N'Panasonic Inverter 170 lít NR-BA190PPVN', N'Dung tích sử dụng 711 lít phù hợp nhu cầu sử dụng gia đình có 5 thành viên trở lên.
Tiết kiệm điện hiệu quả, tránh lãng phí điện năng nhờ công nghệ Origin Inverter.
Luồng khí lạnh đa chiều Multi Air Flow giúp thực phẩm luôn tươi ngon.
Công nghệ PureAir Turbo™ giảm thiểu mùi khó chịu trong tủ lạnh.
Kết nối, điều khiển từ xa tiện lợi thông qua ứng dụng TSmartLife.

', CAST(6790000.00 AS Decimal(10, 2)), 62, 1, 2, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-07T17:21:56.8038182' AS DateTime2), CAST(N'2025-06-07T17:21:56.8038182' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (40, N'Toshiba Inverter 711 lít GR-RF900WI-PMV(06)-MG', N'Dung tích sử dụng 711 lít phù hợp gia đình trên 5 thành viên.
Luồng khí lạnh đa chiều Multi Air Flow giúp bảo quản thực phẩm hiệu quả. 
Công nghệ Origin Inverter tiết kiệm điện, vận hành êm ái.
Công nghệ PureAir Turbo™ diệt khuẩn, khử mùi nhanh chóng trong thời gian ngắn.
Điều chỉnh nhiệt độ và độ ẩm phù hợp, giữ trọn độ tươi ngon nhờ Flexible Zone.
Kết nối thông minh, điều khiển từ xa tiện lợi thông qua ứng dụng TSmartLife.
', CAST(24440000.00 AS Decimal(10, 2)), 73, 1, 2, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-07T17:26:22.8188664' AS DateTime2), CAST(N'2025-06-07T17:26:22.8188664' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (46, N'Toshiba Inverter 460 lít GR-RS600WI-PMV(37)-SG', N'Dung tích sử dụng 711 lít phù hợp gia đình trên 5 thành viên.
Luồng khí lạnh đa chiều Multi Air Flow giúp bảo quản thực phẩm hiệu quả. 
Công nghệ Origin Inverter tiết kiệm điện, vận hành êm ái.
Công nghệ PureAir Turbo™ diệt khuẩn, khử mùi nhanh chóng trong thời gian ngắn.
Điều chỉnh nhiệt độ và độ ẩm phù hợp, giữ trọn độ tươi ngon nhờ Flexible Zone.
Kết nối thông minh, điều khiển từ xa tiện lợi thông qua ứng dụng TSmartLife.
', CAST(14490000.00 AS Decimal(10, 2)), 76, 1, 2, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-07T17:29:26.5199940' AS DateTime2), CAST(N'2025-06-07T17:29:26.5199940' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (47, N'Panasonic Inverter 326 lít NR-TL351GVKV', NULL, CAST(13450000.00 AS Decimal(10, 2)), 85, 1, 2, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:24:28.6715369' AS DateTime2), CAST(N'2025-06-08T04:24:28.6715369' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (48, N'Samsung Inverter 307 lít RB30N4190BU/SV', NULL, CAST(13490000.00 AS Decimal(10, 2)), 35, 1, 2, 6, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2), CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (49, N'Samsung Inverter 236 lít RT22M4032BU/SV', NULL, CAST(5740000.00 AS Decimal(10, 2)), 75, 1, 2, 6, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2), CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (50, N'Panasonic Inverter 366 lít NR-TL381GVKV', NULL, CAST(15150000.00 AS Decimal(10, 2)), 95, 1, 2, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2), CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (51, N'Panasonic Inverter 405 lít NR-TX461GPKV', NULL, CAST(13590000.00 AS Decimal(10, 2)), 35, 1, 2, 6, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2), CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (52, N'Aqua Inverter 646 lít AQR-S682XA(SLB)', NULL, CAST(17990000.00 AS Decimal(10, 2)), 145, 1, 2, 3, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2), CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (53, N'Samsung Inverter 276 lít RB27N4190BU/SV', NULL, CAST(11990000.00 AS Decimal(10, 2)), 123, 1, 2, 6, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2), CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (54, N'Aqua Inverter 550 lít AQR-S612XA(WCB)', NULL, CAST(14990000.00 AS Decimal(10, 2)), 123, 1, 2, 3, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2), CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (55, N'Samsung Inverter 488 lít RF48A4000B4/SV', NULL, CAST(21990000.00 AS Decimal(10, 2)), 210, 1, 2, 6, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2), CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (56, N'Toshiba Inverter 474 lít GR-RF611WI-PGV(22)-XK', NULL, CAST(15940000.00 AS Decimal(10, 2)), 140, 1, 2, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2), CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (57, N'Samsung Inverter 307 lít RB30N4190BY/SV', NULL, CAST(11650000.00 AS Decimal(10, 2)), 105, 1, 2, 6, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2), CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (58, N'Aqua Inverter 550 lít AQR-S612XA(CBC)', NULL, CAST(12990000.00 AS Decimal(10, 2)), 102, 1, 2, 3, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2), CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (59, N'Samsung Inverter 236 lít RT22M4032BY/SV', NULL, CAST(6570000.00 AS Decimal(10, 2)), 105, 1, 2, 6, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1943/324574/gr-rf611wi-pgv-22-xk-thumb-1-600x600.jpg', CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2), CAST(N'2025-06-08T04:46:54.0170999' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (60, N'Quạt điều hòa Daikiosan DKA-04000G 110W', NULL, CAST(5100000.00 AS Decimal(10, 2)), 20, 1, 3, 9, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/236964/daikiosan-dka-04000g-040923-025222-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (61, N'Quạt điều hoà Daikiosan DKA-03500C 110W', NULL, CAST(5490000.00 AS Decimal(10, 2)), 130, 1, 3, 9, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/218304/may-lam-mat-khong-khi-daikiosan-dka-03500c-040923-021250-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (62, N'Quạt điều hoà Daikiosan DKA-04500A 175W', NULL, CAST(5400000.00 AS Decimal(10, 2)), 103, 1, 3, 9, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/218338/may-lam-mat-khong-khi-daikiosan-dka-04500a-040923-022032-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (63, N'Quạt điều hoà Kangaroo KG50F95 120W Mẫu mới', NULL, CAST(4990000.00 AS Decimal(10, 2)), 170, 1, 3, 11, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/321769/quat-dieu-hoa-kangaroo-kg50f95-0-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (64, N'Quạt điều hòa Daikiosan DKA-05000G 180W', NULL, CAST(6490000.00 AS Decimal(10, 2)), 105, 1, 3, 9, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/235381/daikiosan-dka-05000g-040923-024410-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (65, N'Quạt điều hòa Sunhouse SHD7758 170W', NULL, CAST(6590000.00 AS Decimal(10, 2)), 150, 1, 3, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/306970/quat-dieu-hoa-sunhouse-shd7758-040923-025443-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (66, N'Quạt điều hòa Sunhouse SHD7746 180W', NULL, CAST(6850000.00 AS Decimal(10, 2)), 12, 1, 3, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/114839/sunhouse-shd7746-040923-020846-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (67, N'Quạt điều hòa Sunhouse SHD7757 170W', NULL, CAST(7090000.00 AS Decimal(10, 2)), 10, 1, 3, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/235383/sunhouse-shd7757-040923-024818-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (68, N'Quạt điều hòa Sunhouse SHD7798 190W Mẫu mới', NULL, CAST(5990000.00 AS Decimal(10, 2)), 10, 1, 3, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/7498/334157/sunhouse-shd7798-190w-thumb-638733145794634643-300x300.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (69, N'Quạt điều hòa Kangaroo KG50F100 110W Mẫu mới', NULL, CAST(3990000.00 AS Decimal(10, 2)), 143, 1, 3, 11, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/7498/334155/quat-dieu-hoa-kangaroo-kg50f100-110w-thumb-638754070793815705-300x300.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (70, N'Quạt điều hoà Sunhouse SHD7745 125W Mẫu mới', NULL, CAST(4390000.00 AS Decimal(10, 2)), 10, 1, 3, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/321978/quat-dieu-hoa-sunhouse-shd7745-0-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (71, N'Quạt điều hoà Daikiosan DM103 175W', NULL, CAST(5590000.00 AS Decimal(10, 2)), 123, 1, 3, 9, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/320997/quat-dieu-hoa-daikiosan-dm103-1a-1-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (72, N'Quạt điều hoà Kangaroo KG50F99 165W Mẫu mới', NULL, CAST(5890000.00 AS Decimal(10, 2)), 155, 1, 3, 11, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/321770/quat-dieu-hoa-kangaroo-kg50f99-0-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (73, N'Quạt điều hoà Sunhouse SHD7775 200W Mẫu mới', NULL, CAST(5390000.00 AS Decimal(10, 2)), 250, 1, 3, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/321979/quat-dieu-hoa-sunhouse-shd7775-0-1-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (74, N'Quạt điều hòa Sunhouse SHD7737 220W Mẫu mới', NULL, CAST(10990000.00 AS Decimal(10, 2)), 21, 1, 3, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/7498/334158/sunhouse-shd7737-220w-thumb-638780655658383679-300x300.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (75, N'Quạt điều hoà Daikiosan DM202 210W', NULL, CAST(5990000.00 AS Decimal(10, 2)), 35, 1, 3, 9, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/320999/quat-dieu-hoa-daikiosan-dm202-0-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (76, N'Quạt điều hoà Kangaroo KG50F95 120W Mẫu mới', NULL, CAST(4990000.00 AS Decimal(10, 2)), 70, 1, 3, 11, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/321769/quat-dieu-hoa-kangaroo-kg50f95-0-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (77, N'Quạt điều hòa Sunhouse SHD7746 180W', NULL, CAST(6850000.00 AS Decimal(10, 2)), 25, 1, 3, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/114839/sunhouse-shd7746-040923-020846-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (78, N'Quạt điều hoà Daikiosan DKA-04500A 175W', NULL, CAST(5400000.00 AS Decimal(10, 2)), 201, 1, 3, 9, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/218338/may-lam-mat-khong-khi-daikiosan-dka-04500a-040923-022032-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (79, N'Quạt điều hòa Sunhouse SHD7757 170W', NULL, CAST(7090000.00 AS Decimal(10, 2)), 123, 1, 3, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/235383/sunhouse-shd7757-040923-024818-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (80, N'Quạt điều hoà Daikiosan DKA-03500C 110W', NULL, CAST(5490000.00 AS Decimal(10, 2)), 22, 1, 3, 9, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/218304/may-lam-mat-khong-khi-daikiosan-dka-03500c-040923-021250-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (81, N'Quạt điều hòa Daikiosan DKA-04000G 110W', NULL, CAST(5100000.00 AS Decimal(10, 2)), 25, 1, 3, 9, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/236964/daikiosan-dka-04000g-040923-025222-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (82, N'Quạt điều hoà Daikiosan DM201 180W', NULL, CAST(5590000.00 AS Decimal(10, 2)), 23, 1, 3, 9, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/324895/quat-dieu-hoa-daikiosan-dm201-210524-020049-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (83, N'Quạt điều hòa Daikiosan DKA-05000G 180W', NULL, CAST(6490000.00 AS Decimal(10, 2)), 72, 1, 3, 9, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/7498/235381/daikiosan-dka-05000g-040923-024410-600x600.jpg', CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2), CAST(N'2025-06-08T07:29:16.9447534' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (216, N'Quạt lửng Asia 5 cánh VY628890 75W', NULL, CAST(710000.00 AS Decimal(10, 2)), 130, 1, 4, 13, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/322619/quat-lung-asia-vy628890-75w-0-600x600.jpg', CAST(N'2025-06-08T10:31:51.9213601' AS DateTime2), CAST(N'2025-06-08T10:31:51.9213601' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (217, N'Quạt lửng Senko 3 cánh L1638 47W', NULL, CAST(690000.00 AS Decimal(10, 2)), 70, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/268452/lung-senko-l1638-290823-034304-600x600.jpg', CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2), CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (218, N'Quạt bàn Senko 3 cánh B1213 40W', NULL, CAST(399000.00 AS Decimal(10, 2)), 26, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/268448/ban-senko-b1213-290823-033550-600x600.jpg', CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2), CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (219, N'Quạt đứng Toshiba 5 cánh F-LSA20(H)VN 60W', NULL, CAST(1590000.00 AS Decimal(10, 2)), 100, 1, 4, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/164540/toshiba-f-lsa20-h-vn-290823-022101-600x600.jpg', CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2), CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (220, N'Quạt đứng Senko 5 cánh DTS1609 60W', NULL, CAST(645000.00 AS Decimal(10, 2)), 46, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/268451/dung-senko-dts1609-290823-033918-600x600.jpg', CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2), CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (221, N'Quạt đứng Senko 3 cánh DH1600 47W', NULL, CAST(700000.00 AS Decimal(10, 2)), 35, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/268450/dung-senko-dh1600-290823-033825-600x600.jpg', CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2), CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (222, N'Quạt đứng Toshiba 5 cánh F-LSA10(W)VN 50W', NULL, CAST(1230000.00 AS Decimal(10, 2)), 100, 1, 3, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/206027/quat-dung-toshiba-f-lsa10-w-vn-trang-290823-023754-600x600.jpg', CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2), CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (223, N'Quạt đứng Asia 6 cánh VY639990 80W', NULL, CAST(985000.00 AS Decimal(10, 2)), 13, 1, 4, 13, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/1992/275186/dung-asia-vy639990-thumb-638760747945869143-300x300.jpg', CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2), CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (224, N'Quạt hộp Senko 5 cánh BD230 28W', NULL, CAST(290000.00 AS Decimal(10, 2)), 100, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/268446/hop-senko-bd230-290823-033421-600x600.jpg', CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2), CAST(N'2025-06-08T10:33:02.4742466' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (225, N'Quạt sàn Asia 6 cánh VY636790 80W', NULL, CAST(885000.00 AS Decimal(10, 2)), 114, 1, 4, 13, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/1992/275525/san-asia-vy636790-thumb-638760740948341821-300x300.jpg', CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2), CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (226, N'Quạt treo tường Senko 7 cánh TC1622 65W', NULL, CAST(570000.00 AS Decimal(10, 2)), 234, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/268462/quat-treo-tuong-senko-7-canh-tc1622-65w-290823-035015-600x600.jpg', CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2), CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (227, N'Quạt treo tường Toshiba 3 cánh F-WSA20(H)VN 55W', NULL, CAST(1490000.00 AS Decimal(10, 2)), 100, 1, 3, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/166885/toshiba-f-wsa20-h-vn-290823-022224-600x600.jpg', CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2), CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (228, N'Quạt treo tường Senko 3 cánh T1680 47W', NULL, CAST(590000.00 AS Decimal(10, 2)), 34, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/268460/treo-senko-t1680-290823-034657-600x600.jpg', CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2), CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (229, N'Quạt treo tường Senko 3 cánh TR1628 47W', NULL, CAST(680000.00 AS Decimal(10, 2)), 42, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/302504/quat-treo-senko-tr1628-290823-025511-600x600.jpg', CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2), CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (230, N'Quạt bàn Senko 3 cánh B1612 47W', NULL, CAST(455000.00 AS Decimal(10, 2)), 62, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/268449/quat-ban-senko-3-canh-b1612-47w-290823-033628-600x600.jpg', CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2), CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (231, N'Quạt đứng Asia 5 cánh VY539790 55W', NULL, CAST(775000.00 AS Decimal(10, 2)), 35, 1, 4, 13, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/275185/dung-asia-vy539790-290823-035045-600x600.jpg', CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2), CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (232, N'Quạt đứng Toshiba 5 cánh F-LSA10(H)VN 50W', NULL, CAST(1230000.00 AS Decimal(10, 2)), 64, 1, 4, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/218647/quat-dung-toshiba-f-lsa10-h-vn-xam-290823-024357-600x600.jpg', CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2), CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (233, N'Quạt sạc điện Sunhouse 5 cánh SHD7223 24W', NULL, CAST(1820000.00 AS Decimal(10, 2)), 23, 1, 4, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/242117/qua-t-sa-c-dien-sunhouse-shd7223-290823-025544-600x600.jpg', CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2), CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (234, N'Quạt lửng Asia 5 cánh VY538990 55W', NULL, CAST(670000.00 AS Decimal(10, 2)), 63, 1, 4, 13, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/275524/lung-asia-vy538990-290823-034344-600x600.jpg', CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2), CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (235, N'Quạt sàn Asia 5 cánh VY616990 55W', NULL, CAST(785000.00 AS Decimal(10, 2)), 43, 1, 4, 13, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/302501/quat-san-asia-vy616990-290823-042957-600x600.jpg', CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2), CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (236, N'Quạt lửng Senko 7 cánh LTS1636 65W', NULL, CAST(690000.00 AS Decimal(10, 2)), 66, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/268453/lung-senko-lts1636-290823-034352-600x600.jpg', CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2), CAST(N'2025-06-08T10:33:32.7078816' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (237, N'Quạt hộp Senko 3 cánh BD1012 40W', NULL, CAST(400000.00 AS Decimal(10, 2)), 23, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/268447/hop-senko-bd1012-290823-033507-600x600.jpg', CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2), CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (238, N'Quạt treo tường Senko 3 cánh TC1626 47W', NULL, CAST(590000.00 AS Decimal(10, 2)), 160, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/268461/treo-senko-tc1626-290823-034838-600x600.jpg', CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2), CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (239, N'Quạt treo tường Asia 3 cánh VY377990 55W', NULL, CAST(1075000.00 AS Decimal(10, 2)), 134, 1, 4, 13, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/275529/treo-asia-vy377990-290823-034132-600x600.jpg', CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2), CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (240, N'Quạt treo tường Asia 3 cánh VY377790 55W', NULL, CAST(985000.00 AS Decimal(10, 2)), 160, 1, 4, 13, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/275528/treo-asia-vy377790-290823-033942-600x600.jpg', CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2), CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (241, N'Quạt treo tường Asia 3 cánh VY357690 55W', NULL, CAST(698000.00 AS Decimal(10, 2)), 140, 1, 4, 13, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/275526/treo-asia-vy357690-290823-034238-600x600.jpg', CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2), CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (242, N'Quạt treo tường Asia 5 cánh VY617090 55W', NULL, CAST(690000.00 AS Decimal(10, 2)), 40, 1, 4, 13, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/1992/335050/quat-treo-asia-5-canh-vy617090-55w-thumb-638773009402856236-300x300.jpg', CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2), CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (243, N'Quạt sạc điện Sunhouse 3 cánh SHD7115 15W', NULL, CAST(1420000.00 AS Decimal(10, 2)), 34, 1, 4, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/243382/sac-dien-sunhouse-shd7115-290823-025638-600x600.jpg', CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2), CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (244, N'Quạt đứng Toshiba 9 cánh DC inverter F-LSD10(W)VN 30W', NULL, CAST(2290000.00 AS Decimal(10, 2)), 34, 1, 4, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/166425/toshiba-f-lsd10-w-vn-290823-022148-600x600.jpg', CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2), CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (245, N'Quạt lửng Asia 3 cánh VY358990 55W', NULL, CAST(725000.00 AS Decimal(10, 2)), 37, 1, 4, 13, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/275523/lung-asia-vy358990-290823-034435-600x600.jpg', CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2), CAST(N'2025-06-08T10:33:58.8597964' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (249, N'Quạt lửng Senko 5 cánh LTS1632 60W', NULL, CAST(620000.00 AS Decimal(10, 2)), 75, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/311449/quat-lung-senko-lts1632-0-1-600x600.jpg', CAST(N'2025-06-08T10:35:13.2967884' AS DateTime2), CAST(N'2025-06-08T10:35:13.2967884' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (250, N'Quạt đứng Mitsubishi Electric 3 cánh LV16-RB SF-GY 47W', NULL, CAST(3120000.00 AS Decimal(10, 2)), 24, 1, 4, 14, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/322895/322895-600x600.jpg', CAST(N'2025-06-08T10:35:13.2967884' AS DateTime2), CAST(N'2025-06-08T10:35:13.2967884' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (253, N'Quạt đứng Senko 7 cánh DR1608 65W', NULL, CAST(990000.00 AS Decimal(10, 2)), 42, 1, 4, 12, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1992/302503/quat-dung-senko-dr1608-0-600x600.jpg', CAST(N'2025-06-08T10:36:58.2071998' AS DateTime2), CAST(N'2025-06-08T10:36:58.2071998' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (254, N'Máy ép ch?m Sunhouse SHD5518', NULL, CAST(2490000.00 AS Decimal(10, 2)), 32, 1, 5, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2062/325213/may-ep-cham-sunhouse-shd5518-290424-102347-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/0d/7c/0d7cf77741845bdbc799935d7612de3e.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
GO
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (255, N'Máy ép ch?m Sunhouse SHD5503', NULL, CAST(3600000.00 AS Decimal(10, 2)), 73, 1, 5, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2062/305495/may-ep-cham-sunhouse-shd5503-120423-112927-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/40/40/40409df50151a792be44c25b647323e3.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (256, N'Máy ép trái cây Panasonic MJ-CS100WRA', NULL, CAST(1780000.00 AS Decimal(10, 2)), 100, 1, 5, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2062/307340/may-ep-trai-cay-panasonic-mj-cs100wra-250523-110647-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (257, N'Máy ép ch?m Sunhouse SHD5505', NULL, CAST(3769000.00 AS Decimal(10, 2)), 34, 1, 5, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2062/247434/SHD5505-600x600-2.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/40/40/40409df50151a792be44c25b647323e3.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (258, N'Máy ép trái cây Panasonic MJ-CB100WRA', NULL, CAST(2730000.00 AS Decimal(10, 2)), 100, 1, 5, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (259, N'Máy ép trái cây Philips HR1811', NULL, CAST(1449000.00 AS Decimal(10, 2)), 33, 1, 5, 15, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (260, N'Máy ép trái cây Hafele GS-353 (535.43.086)', NULL, CAST(1290000.00 AS Decimal(10, 2)), 100, 1, 5, 17, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (261, N'Máy ép trái cây Philips HR1811', NULL, CAST(1449000.00 AS Decimal(10, 2)), 112, 1, 5, 15, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2062/67084/philips-hr1811-10-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (262, N'Máy ép trái cây Hafele GS-353 (535.43.086)', NULL, CAST(1290000.00 AS Decimal(10, 2)), 52, 1, 5, 17, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2062/230801/hafele-gs-353-17-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (263, N'Máy ép trái cây Panasonic MJ-CB100WRA', NULL, CAST(2730000.00 AS Decimal(10, 2)), 53, 1, 5, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2062/307337/may-ep-trai-cay-panasonic-mj-cb100wra-130623-112205-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (264, N'Máy ép ch?m Kangaroo KG1B8', NULL, CAST(1980000.00 AS Decimal(10, 2)), 74, 1, 5, 11, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2062/239286/KG1B8-600x600-1.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/40/40/40409df50151a792be44c25b647323e3.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (265, N'Máy ép trái cây BlueStone JEB-6545', NULL, CAST(1799000.00 AS Decimal(10, 2)), 42, 1, 5, 16, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2062/106941/bluestone-jeb-6545-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (266, N'Máy ép ch?m Hafele HS-J32X (535.43.393)', NULL, CAST(1980000.00 AS Decimal(10, 2)), 63, 1, 5, 17, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2062/287808/287808-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/40/40/40409df50151a792be44c25b647323e3.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (267, N'Máy ép ch?m Sunhouse SHD5504 M?u m?i', NULL, CAST(2490000.00 AS Decimal(10, 2)), 110, 1, 5, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2062/337515/337515-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/40/40/40409df50151a792be44c25b647323e3.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (268, N'Máy ép ch?m Hafele GS-133N (535.43.811)', NULL, CAST(3970000.00 AS Decimal(10, 2)), 124, 1, 5, 17, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2062/230989/may-ep-cham-hafele-gs-133-030123-023810-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/40/40/40409df50151a792be44c25b647323e3.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (269, N'Máy ép ch?m Kangaroo KG250SJ1 M?u m?i', NULL, CAST(3340000.00 AS Decimal(10, 2)), 23, 1, 5, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/2062/332054/may-ep-cham-kangaroo-kg250sj1-271124-034918-637-300x300.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/0d/7c/0d7cf77741845bdbc799935d7612de3e.png', CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2), CAST(N'2025-06-08T16:03:06.7660996' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (270, N'Máy xay da nang Kangaroo KG4B3', NULL, CAST(1380000.00 AS Decimal(10, 2)), 16, 1, 6, 11, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/114645/kangaroo-kg4b3-thumb.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (271, N'Máy xay da nang Kangaroo KG3B2', NULL, CAST(1220000.00 AS Decimal(10, 2)), 35, 1, 6, 11, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/114644/kangaroo-kg3b2-050224-025845-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (272, N'Máy xay c?m tay BlueStone BLB5268', NULL, CAST(1590000.00 AS Decimal(10, 2)), 32, 1, 6, 16, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/114726/may-xay-sinh-to-bluestone-blb5268-151021-112348-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (273, N'Máy xay da nang Toshiba MX-60T(H)', NULL, CAST(890000.00 AS Decimal(10, 2)), 53, 1, 6, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/214715/214715-300x300.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (274, N'Máy xay da nang Toshiba BL-70PR2NV', NULL, CAST(1550000.00 AS Decimal(10, 2)), 33, 1, 6, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/218772/may-xay-sinh-to-toshiba-bl-70pr2nv-218772thumb.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (275, N'Máy xay da nang Sunhouse SHD5114', NULL, CAST(800000.00 AS Decimal(10, 2)), 23, 1, 6, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/305624/may-xay-sinh-to-sunhouse-shd5114-120423-033551-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (276, N'Máy xay da nang Philips HR2221/00', NULL, CAST(1470000.00 AS Decimal(10, 2)), 114, 1, 6, 15, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/225092/philips-hr2221-00-225092.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (277, N'Máy xay da nang Philips HR2041/10', NULL, CAST(859000.00 AS Decimal(10, 2)), 24, 1, 6, 15, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/274453/HR204110-600x600-1.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (278, N'Máy xay da nang Toshiba BL-70PR1NV', NULL, CAST(1250000.00 AS Decimal(10, 2)), 112, 1, 6, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/214714/214714-600x600-1.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (279, N'Máy xay da nang Philips HR2223/00', NULL, CAST(1950000.00 AS Decimal(10, 2)), 115, 1, 6, 15, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/225103/philips-hr2223-00-225103.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (280, N'Máy xay da nang Sunhouse SHD 5112', NULL, CAST(520000.00 AS Decimal(10, 2)), 53, 1, 6, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/108418/sunhouse-shd-5112-xanh-2.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/0d/7c/0d7cf77741845bdbc799935d7612de3e.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (281, N'Máy xay da nang Philips HR2222/00', NULL, CAST(1599000.00 AS Decimal(10, 2)), 32, 1, 6, 15, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/225102/philips-hr2222-00-225102.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (282, N'Máy xay da nang Panasonic MX-MG53C1CRA', NULL, CAST(1890000.00 AS Decimal(10, 2)), 52, 1, 6, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/1985/269397/panasonic-mx-mg53c1cra-200125-111959-474-300x300.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (283, N'Máy làm s?a h?t da nang Sunhouse SHD5261', NULL, CAST(1860000.00 AS Decimal(10, 2)), 75, 1, 6, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2322/325224/may-lam-sua-hat-da-nang-sunhouse-shd5261-090724-103920-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/0d/7c/0d7cf77741845bdbc799935d7612de3e.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (284, N'Máy xay da nang Panasonic MX-MG5351WRA', NULL, CAST(1650000.00 AS Decimal(10, 2)), 74, 1, 6, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/1985/269396/panasonic-mx-mg5351wra-200125-110508-625-300x300.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (285, N'Máy xay da nang Sunhouse SHD5316 M?u m?i', NULL, CAST(1390000.00 AS Decimal(10, 2)), 34, 1, 6, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/325301/may-xay-sinh-to-sunhouse-shd5316-290424-021354-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/0d/7c/0d7cf77741845bdbc799935d7612de3e.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (286, N'Máy xay da nang Sunhouse SHD5582W', NULL, CAST(1140000.00 AS Decimal(10, 2)), 49, 1, 6, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/203896/may-xay-sinh-to-3-coi-sunhouse-shd5582w-203896.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (287, N'Máy xay da nang Panasonic MX-EG5311WRA M?u m?i', NULL, CAST(1450000.00 AS Decimal(10, 2)), 66, 1, 6, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/1985/332566/panasonic-mx-eg5311wra-090125-035832-044-300x300.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (288, N'Máy xay c?m tay Philips HR2531', NULL, CAST(799000.00 AS Decimal(10, 2)), 56, 1, 6, 15, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/229633/cam-tay-philips-hr2531-thumb.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/0d/7c/0d7cf77741845bdbc799935d7612de3e.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (289, N'Máy xay da nang Panasonic MX-EP3111WRA M?u m?i', NULL, CAST(950000.00 AS Decimal(10, 2)), 85, 1, 6, 1, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/1985/332567/panasonic-mx-ep3111wra-160125-110225-360-300x300.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (290, N'Máy xay c?m tay Philips HR2537', NULL, CAST(1689000.00 AS Decimal(10, 2)), 56, 1, 6, 15, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/229636/cam-tay-philips-hr2537-229636.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (291, N'Máy xay da nang Sunhouse SHD5353W', NULL, CAST(1750000.00 AS Decimal(10, 2)), 86, 1, 6, 10, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/217827/may-xay-sinh-to-sunhouse-mama-shd5353w-217827.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (292, N'Máy xay da nang Toshiba BL-70PS1PV', NULL, CAST(1990000.00 AS Decimal(10, 2)), 65, 1, 6, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/309398/309398-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (293, N'Máy xay da nang Toshiba BL-70GR2UV M?u m?i', NULL, CAST(1550000.00 AS Decimal(10, 2)), 88, 1, 6, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/1985/335203/may-xay-sinh-to-toshiba-bl-70gr2uv-0-638799658165273572-300x300.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (294, N'Máy xay sinh t? BlueStone BLB-5310', NULL, CAST(899000.00 AS Decimal(10, 2)), 66, 1, 6, 16, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/238663/bluestone-blb-5310-thumb-2-300x300.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (295, N'Máy xay sinh t? Philips HR3041/00 M?u m?i', NULL, CAST(2850000.00 AS Decimal(10, 2)), 57, 1, 6, 15, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/324391/may-xay-sinh-to-philips-hr3041-00-040424-043758-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (296, N'Máy xay da nang Toshiba BL-70GR1UV M?u m?i', NULL, CAST(1250000.00 AS Decimal(10, 2)), 150, 1, 6, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/1985/335201/may-xay-sinh-to-toshiba-bl-70gr1uv-0-638815205358339687-300x300.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (297, N'Máy làm s?a h?t da nang Kangaroo KG175HB1', NULL, CAST(3600000.00 AS Decimal(10, 2)), 65, 1, 6, 7, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/2322/226492/may-xay-nau-da-nang-kangaroo-kg175hb1-151021-110407-600x600.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/40/40/40409df50151a792be44c25b647323e3.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (298, N'Máy xay da nang BlueStone BLB-5339', NULL, CAST(1999000.00 AS Decimal(10, 2)), 55, 1, 6, 16, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/229656/bluestone-blb-5339-229656.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (299, N'Máy xay sinh t? BlueStone BLB-5377', NULL, CAST(2299000.00 AS Decimal(10, 2)), 65, 1, 6, 16, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/268878/BLB-5377-600x600-1.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
INSERT [dbo].[products] ([product_id], [name], [description], [price], [stock_qty], [active], [category_id], [brand_id], [discount_pct], [discount_from], [discount_to], [image_url], [created_at], [updated_at]) VALUES (300, N'Máy xay da nang Kangaroo KG3B6M', NULL, CAST(1310000.00 AS Decimal(10, 2)), 46, 1, 6, 11, CAST(0.00 AS Decimal(5, 2)), NULL, NULL, N'https://cdn.tgdd.vn/Products/Images/1985/202073/may-xay-sinh-to-kangaroo-kg3b6m-thumb.jpg,https://cdnv2.tgdd.vn/mwg-static/common/Campaign/8a/e2/8ae200469a09ca67fac6d9b33472ff8a.png', CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2), CAST(N'2025-06-09T09:23:35.7943212' AS DateTime2))
SET IDENTITY_INSERT [dbo].[products] OFF
GO
INSERT [dbo].[promotion_brands] ([promo_id], [brand_id]) VALUES (10, 2)
INSERT [dbo].[promotion_brands] ([promo_id], [brand_id]) VALUES (10, 4)
GO
INSERT [dbo].[promotion_categories] ([promo_id], [category_id]) VALUES (11, 3)
GO
INSERT [dbo].[promotion_products] ([promo_id], [product_id]) VALUES (9, 4)
INSERT [dbo].[promotion_products] ([promo_id], [product_id]) VALUES (9, 6)
INSERT [dbo].[promotion_products] ([promo_id], [product_id]) VALUES (9, 7)
GO
SET IDENTITY_INSERT [dbo].[promotions] ON 

INSERT [dbo].[promotions] ([promo_id], [code], [description], [discount_pct], [start_date], [end_date], [active], [created_by], [apply_type]) VALUES (9, N'PROD10', N'Giảm 10% cho sản phẩm chọn lọc', CAST(10.00 AS Decimal(5, 2)), CAST(N'2025-07-01' AS Date), CAST(N'2025-07-31' AS Date), 1, 1, N'product')
INSERT [dbo].[promotions] ([promo_id], [code], [description], [discount_pct], [start_date], [end_date], [active], [created_by], [apply_type]) VALUES (10, N'BRAND15', N'Giảm 15% cho thương hiệu Daikin và LG', CAST(15.00 AS Decimal(5, 2)), CAST(N'2025-07-01' AS Date), CAST(N'2025-07-20' AS Date), 1, 1, N'brand')
INSERT [dbo].[promotions] ([promo_id], [code], [description], [discount_pct], [start_date], [end_date], [active], [created_by], [apply_type]) VALUES (11, N'CAT20', N'Giảm 20% cho danh mục quạt điều hòa', CAST(20.00 AS Decimal(5, 2)), CAST(N'2025-07-05' AS Date), CAST(N'2025-07-25' AS Date), 1, 1, N'category')
SET IDENTITY_INSERT [dbo].[promotions] OFF
GO
SET IDENTITY_INSERT [dbo].[staff] ON 

INSERT [dbo].[staff] ([staff_id], [name], [email], [password], [phone], [address], [gender], [national_id], [start_date], [base_salary], [created_at], [updated_at]) VALUES (1, N'Bien', N'BienHLCCE181207@fpt.edu.vn', N'Bien13022004@', N'0942004995', N'Kien_GIang', N'MALE', N'091204002599', NULL, NULL, CAST(N'2025-06-15T10:39:41.6693635' AS DateTime2), CAST(N'2025-06-15T10:39:41.6693635' AS DateTime2))
INSERT [dbo].[staff] ([staff_id], [name], [email], [password], [phone], [address], [gender], [national_id], [start_date], [base_salary], [created_at], [updated_at]) VALUES (2, N'Tam', N'TamNMCE181522', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-15T10:41:39.3171063' AS DateTime2), CAST(N'2025-06-15T10:41:39.3171063' AS DateTime2))
SET IDENTITY_INSERT [dbo].[staff] OFF
GO
SET IDENTITY_INSERT [dbo].[vouchers] ON 

INSERT [dbo].[vouchers] ([voucher_id], [code], [description], [discount_amount], [discount_pct], [min_order_amount], [quantity_available], [start_date], [end_date], [active], [created_by], [created_at]) VALUES (2, N'KM001', N'giảm giá sản phẩm', NULL, CAST(10.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(10, 2)), 2, CAST(N'2025-06-18' AS Date), CAST(N'2025-06-18' AS Date), 1, 1, CAST(N'2025-06-18T08:29:02.2535081' AS DateTime2))
INSERT [dbo].[vouchers] ([voucher_id], [code], [description], [discount_amount], [discount_pct], [min_order_amount], [quantity_available], [start_date], [end_date], [active], [created_by], [created_at]) VALUES (3, N'KM002', N'EWQWWE', NULL, CAST(23.00 AS Decimal(5, 2)), CAST(2.00 AS Decimal(10, 2)), 1, CAST(N'2025-06-18' AS Date), CAST(N'2025-06-20' AS Date), 1, 1, CAST(N'2025-06-18T11:55:41.7450391' AS DateTime2))
SET IDENTITY_INSERT [dbo].[vouchers] OFF
GO
SET IDENTITY_INSERT [dbo].[warehouse] ON 

INSERT [dbo].[warehouse] ([trans_id], [product_id], [quantity_change], [stock_after], [type], [trans_date], [admin_id], [notes]) VALUES (2, 5, 20, 114, N'import', CAST(N'2025-06-15T11:55:42.0066667' AS DateTime2), 1, N'Nhập hàng Panasonic')
INSERT [dbo].[warehouse] ([trans_id], [product_id], [quantity_change], [stock_after], [type], [trans_date], [admin_id], [notes]) VALUES (3, 4, 20, 80, N'import', CAST(N'2025-06-15T11:59:23.2100000' AS DateTime2), 1, N'Nhập kho Panasonic Inverter 1 HP')
INSERT [dbo].[warehouse] ([trans_id], [product_id], [quantity_change], [stock_after], [type], [trans_date], [admin_id], [notes]) VALUES (4, 5, 30, 104, N'import', CAST(N'2025-06-15T11:59:23.2200000' AS DateTime2), 1, N'Nhập kho Daikin Inverter 1 HP')
INSERT [dbo].[warehouse] ([trans_id], [product_id], [quantity_change], [stock_after], [type], [trans_date], [admin_id], [notes]) VALUES (5, 30, 15, 77, N'import', CAST(N'2025-06-15T11:59:23.2200000' AS DateTime2), 1, N'Nhập kho tủ lạnh LG Inverter 374 lít')
INSERT [dbo].[warehouse] ([trans_id], [product_id], [quantity_change], [stock_after], [type], [trans_date], [admin_id], [notes]) VALUES (6, 65, 10, 160, N'import', CAST(N'2025-06-15T11:59:23.2200000' AS DateTime2), 1, N'Nhập kho quạt điều hòa Sunhouse SHD7758')
INSERT [dbo].[warehouse] ([trans_id], [product_id], [quantity_change], [stock_after], [type], [trans_date], [admin_id], [notes]) VALUES (7, 219, 40, 140, N'import', CAST(N'2025-06-15T11:59:23.2200000' AS DateTime2), 1, N'Nhập kho quạt Toshiba F-LSA20(H)VN')
INSERT [dbo].[warehouse] ([trans_id], [product_id], [quantity_change], [stock_after], [type], [trans_date], [admin_id], [notes]) VALUES (8, 4, 10, 70, N'IMPORT', CAST(N'2025-06-15T13:58:40.2093490' AS DateTime2), NULL, N'Test thử được hem')
INSERT [dbo].[warehouse] ([trans_id], [product_id], [quantity_change], [stock_after], [type], [trans_date], [admin_id], [notes]) VALUES (9, 18, 13, 89, N'IMPORT', CAST(N'2025-06-15T13:59:46.1582819' AS DateTime2), NULL, N'Bien test')
INSERT [dbo].[warehouse] ([trans_id], [product_id], [quantity_change], [stock_after], [type], [trans_date], [admin_id], [notes]) VALUES (10, 4, 20, 90, N'IMPORT', CAST(N'2025-06-16T13:57:21.3807481' AS DateTime2), NULL, N'Bien update')
INSERT [dbo].[warehouse] ([trans_id], [product_id], [quantity_change], [stock_after], [type], [trans_date], [admin_id], [notes]) VALUES (11, 4, -10, 80, N'EXPORT', CAST(N'2025-06-16T15:40:23.7856447' AS DateTime2), NULL, N'Bien_test')
INSERT [dbo].[warehouse] ([trans_id], [product_id], [quantity_change], [stock_after], [type], [trans_date], [admin_id], [notes]) VALUES (12, 4, -10, 70, N'EXPORT', CAST(N'2025-06-16T15:41:35.6744804' AS DateTime2), NULL, N'Bien_test')
INSERT [dbo].[warehouse] ([trans_id], [product_id], [quantity_change], [stock_after], [type], [trans_date], [admin_id], [notes]) VALUES (13, 4, -10, 60, N'EXPORT', CAST(N'2025-06-16T21:38:39.3276065' AS DateTime2), NULL, N'Bien_test')
SET IDENTITY_INSERT [dbo].[warehouse] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__admins__9560E95D7DD78E09]    Script Date: 6/21/2025 2:36:16 PM ******/
ALTER TABLE [dbo].[admins] ADD UNIQUE NONCLUSTERED 
(
	[national_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__admins__AB6E6164DF388DCF]    Script Date: 6/21/2025 2:36:16 PM ******/
ALTER TABLE [dbo].[admins] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__brands__72E12F1B853DE489]    Script Date: 6/21/2025 2:36:16 PM ******/
ALTER TABLE [dbo].[brands] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__customer__AB6E6164A970532C]    Script Date: 6/21/2025 2:36:16 PM ******/
ALTER TABLE [dbo].[customers] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Customer_Email_Provider]    Script Date: 6/21/2025 2:36:16 PM ******/
ALTER TABLE [dbo].[customers] ADD  CONSTRAINT [UQ_Customer_Email_Provider] UNIQUE NONCLUSTERED 
(
	[email] ASC,
	[provider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__promotio__357D4CF99DD9446B]    Script Date: 6/21/2025 2:36:16 PM ******/
ALTER TABLE [dbo].[promotions] ADD UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__staff__9560E95D1D157FDF]    Script Date: 6/21/2025 2:36:16 PM ******/
ALTER TABLE [dbo].[staff] ADD UNIQUE NONCLUSTERED 
(
	[national_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__staff__AB6E61644B077802]    Script Date: 6/21/2025 2:36:16 PM ******/
ALTER TABLE [dbo].[staff] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__vouchers__357D4CF95713A9B5]    Script Date: 6/21/2025 2:36:16 PM ******/
ALTER TABLE [dbo].[vouchers] ADD UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__wishlist__8915EC5B3C333BCC]    Script Date: 6/21/2025 2:36:16 PM ******/
ALTER TABLE [dbo].[wishlists] ADD UNIQUE NONCLUSTERED 
(
	[customer_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[admins] ADD  DEFAULT (sysutcdatetime()) FOR [created_at]
GO
ALTER TABLE [dbo].[admins] ADD  DEFAULT (sysutcdatetime()) FOR [updated_at]
GO
ALTER TABLE [dbo].[brands] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[brands] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[carts] ADD  DEFAULT ((1)) FOR [quantity]
GO
ALTER TABLE [dbo].[carts] ADD  DEFAULT (sysutcdatetime()) FOR [created_at]
GO
ALTER TABLE [dbo].[customers] ADD  DEFAULT (sysutcdatetime()) FOR [created_at]
GO
ALTER TABLE [dbo].[customers] ADD  DEFAULT (sysutcdatetime()) FOR [updated_at]
GO
ALTER TABLE [dbo].[customers] ADD  DEFAULT ((0)) FOR [is_locked]
GO
ALTER TABLE [dbo].[delivery_tracking] ADD  DEFAULT (sysutcdatetime()) FOR [updated_at]
GO
ALTER TABLE [dbo].[feedback] ADD  DEFAULT ('Pending') FOR [status]
GO
ALTER TABLE [dbo].[feedback] ADD  DEFAULT (sysutcdatetime()) FOR [created_at]
GO
ALTER TABLE [dbo].[flyway_schema_history] ADD  DEFAULT (getdate()) FOR [installed_on]
GO
ALTER TABLE [dbo].[maintenance_warranty_history] ADD  DEFAULT (sysutcdatetime()) FOR [update_time]
GO
ALTER TABLE [dbo].[maintenance_warranty_requests] ADD  DEFAULT (sysutcdatetime()) FOR [request_date]
GO
ALTER TABLE [dbo].[maintenance_warranty_requests] ADD  DEFAULT ('Pending') FOR [status]
GO
ALTER TABLE [dbo].[memberships] ADD  DEFAULT ((0)) FOR [points]
GO
ALTER TABLE [dbo].[memberships] ADD  DEFAULT (CONVERT([date],sysutcdatetime())) FOR [start_date]
GO
ALTER TABLE [dbo].[memberships] ADD  DEFAULT ((1)) FOR [is_current]
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT ((0)) FOR [discount_amount]
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT (sysutcdatetime()) FOR [order_date]
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT ('Pending') FOR [status]
GO
ALTER TABLE [dbo].[products] ADD  DEFAULT ((0)) FOR [stock_qty]
GO
ALTER TABLE [dbo].[products] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[products] ADD  DEFAULT ((0)) FOR [discount_pct]
GO
ALTER TABLE [dbo].[products] ADD  DEFAULT (sysutcdatetime()) FOR [created_at]
GO
ALTER TABLE [dbo].[products] ADD  DEFAULT (sysutcdatetime()) FOR [updated_at]
GO
ALTER TABLE [dbo].[promotions] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[replies] ADD  DEFAULT (sysutcdatetime()) FOR [created_at]
GO
ALTER TABLE [dbo].[staff] ADD  DEFAULT (sysutcdatetime()) FOR [created_at]
GO
ALTER TABLE [dbo].[staff] ADD  DEFAULT (sysutcdatetime()) FOR [updated_at]
GO
ALTER TABLE [dbo].[vouchers] ADD  DEFAULT ((0)) FOR [min_order_amount]
GO
ALTER TABLE [dbo].[vouchers] ADD  DEFAULT ((0)) FOR [quantity_available]
GO
ALTER TABLE [dbo].[vouchers] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[vouchers] ADD  DEFAULT (sysutcdatetime()) FOR [created_at]
GO
ALTER TABLE [dbo].[warehouse] ADD  DEFAULT (sysutcdatetime()) FOR [trans_date]
GO
ALTER TABLE [dbo].[wishlists] ADD  DEFAULT (sysutcdatetime()) FOR [created_at]
GO
ALTER TABLE [dbo].[carts]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[carts]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[categories]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[categories] ([category_id])
GO
ALTER TABLE [dbo].[delivery_tracking]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([order_id])
GO
ALTER TABLE [dbo].[delivery_tracking]  WITH CHECK ADD FOREIGN KEY([updated_by])
REFERENCES [dbo].[staff] ([staff_id])
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[maintenance_warranty_history]  WITH CHECK ADD FOREIGN KEY([request_id])
REFERENCES [dbo].[maintenance_warranty_requests] ([request_id])
GO
ALTER TABLE [dbo].[maintenance_warranty_history]  WITH CHECK ADD  CONSTRAINT [FK_maintenance_handled_by_staff] FOREIGN KEY([handled_by])
REFERENCES [dbo].[staff] ([staff_id])
GO
ALTER TABLE [dbo].[maintenance_warranty_history] CHECK CONSTRAINT [FK_maintenance_handled_by_staff]
GO
ALTER TABLE [dbo].[maintenance_warranty_requests]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
GO
ALTER TABLE [dbo].[maintenance_warranty_requests]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([order_id])
GO
ALTER TABLE [dbo].[maintenance_warranty_requests]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[memberships]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[memberships]  WITH CHECK ADD FOREIGN KEY([tier_id])
REFERENCES [dbo].[membership_tiers] ([tier_id])
GO
ALTER TABLE [dbo].[order_items]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([order_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_items]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([promo_id])
REFERENCES [dbo].[promotions] ([promo_id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([voucher_id])
REFERENCES [dbo].[vouchers] ([voucher_id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[staff] ([staff_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_staff]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([category_id])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_brands] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brands] ([brand_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_brands]
GO
ALTER TABLE [dbo].[promotion_brands]  WITH CHECK ADD FOREIGN KEY([brand_id])
REFERENCES [dbo].[brands] ([brand_id])
GO
ALTER TABLE [dbo].[promotion_brands]  WITH CHECK ADD FOREIGN KEY([promo_id])
REFERENCES [dbo].[promotions] ([promo_id])
GO
ALTER TABLE [dbo].[promotion_categories]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([category_id])
GO
ALTER TABLE [dbo].[promotion_categories]  WITH CHECK ADD FOREIGN KEY([promo_id])
REFERENCES [dbo].[promotions] ([promo_id])
GO
ALTER TABLE [dbo].[promotion_products]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[promotion_products]  WITH CHECK ADD FOREIGN KEY([promo_id])
REFERENCES [dbo].[promotions] ([promo_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[promotions]  WITH CHECK ADD FOREIGN KEY([created_by])
REFERENCES [dbo].[admins] ([admin_id])
GO
ALTER TABLE [dbo].[replies]  WITH CHECK ADD FOREIGN KEY([feedback_id])
REFERENCES [dbo].[feedback] ([feedback_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[replies]  WITH CHECK ADD FOREIGN KEY([staff_id])
REFERENCES [dbo].[staff] ([staff_id])
GO
ALTER TABLE [dbo].[voucher_brands]  WITH CHECK ADD FOREIGN KEY([brand_id])
REFERENCES [dbo].[brands] ([brand_id])
GO
ALTER TABLE [dbo].[voucher_brands]  WITH CHECK ADD FOREIGN KEY([voucher_id])
REFERENCES [dbo].[vouchers] ([voucher_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[voucher_categories]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([category_id])
GO
ALTER TABLE [dbo].[voucher_categories]  WITH CHECK ADD FOREIGN KEY([voucher_id])
REFERENCES [dbo].[vouchers] ([voucher_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[vouchers]  WITH CHECK ADD FOREIGN KEY([created_by])
REFERENCES [dbo].[admins] ([admin_id])
GO
ALTER TABLE [dbo].[warehouse]  WITH CHECK ADD FOREIGN KEY([admin_id])
REFERENCES [dbo].[admins] ([admin_id])
GO
ALTER TABLE [dbo].[warehouse]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[wishlists]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[wishlists]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[maintenance_warranty_history]  WITH CHECK ADD CHECK  (([handled_role]=N'admin' OR [handled_role]=N'staff'))
GO
ALTER TABLE [dbo].[maintenance_warranty_history]  WITH CHECK ADD  CONSTRAINT [CK_handled_role_only_staff] CHECK  (([handled_role]='staff'))
GO
ALTER TABLE [dbo].[maintenance_warranty_history] CHECK CONSTRAINT [CK_handled_role_only_staff]
GO
ALTER TABLE [dbo].[maintenance_warranty_requests]  WITH CHECK ADD CHECK  (([request_type]=N'warranty' OR [request_type]=N'maintenance'))
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD CHECK  (([payment_method]=N'VNpay' OR [payment_method]=N'COD'))
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD CHECK  (([status]=N'Delivered' OR [status]=N'Shipped' OR [status]=N'Cancelled' OR [status]=N'Paid' OR [status]=N'Pending'))
GO
ALTER TABLE [dbo].[warehouse]  WITH CHECK ADD CHECK  (([type]=N'export' OR [type]=N'import' OR [type]=N'init'))
GO
