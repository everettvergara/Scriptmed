USE [sc]
GO
/****** Object:  Table [dbo].[tb_ar_mf_term]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ar_mf_term](
	[term_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[num_of_days] [int] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_crm_mf_terms] PRIMARY KEY CLUSTERED 
(
	[term_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ar_tr_si]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ar_tr_si](
	[si_id] [int] IDENTITY(1,1) NOT NULL,
	[si_no] [nvarchar](30) NOT NULL,
	[si_date] [datetime] NOT NULL,
	[cust_id] [int] NOT NULL,
	[net_amount] [decimal](18, 2) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_si] PRIMARY KEY CLUSTERED 
(
	[si_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ar_tr_si_gp]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ar_tr_si_gp](
	[si_id] [int] NOT NULL,
	[si_gp_id] [int] IDENTITY(1,1) NOT NULL,
	[gp_so_id] [int] NOT NULL,
	[line_total] [decimal](18, 2) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_tr_si_gp] PRIMARY KEY CLUSTERED 
(
	[si_gp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_crm_mf_contact_type]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_crm_mf_contact_type](
	[contact_type_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_crm_mf_contact_type] PRIMARY KEY CLUSTERED 
(
	[contact_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_crm_mf_cust]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_crm_mf_cust](
	[cust_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[cust_type_id] [int] NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[date_started] [datetime] NOT NULL,
	[member] [bit] NULL,
	[credit_limit] [decimal](18, 2) NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_crm_mf_customer] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_crm_mf_cust_address]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_crm_mf_cust_address](
	[cust_id] [int] NOT NULL,
	[cust_address_id] [int] IDENTITY(1,1) NOT NULL,
	[cust_address_type_id] [int] NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_crm_mf_customer_address] PRIMARY KEY CLUSTERED 
(
	[cust_address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_crm_mf_cust_address_type]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_crm_mf_cust_address_type](
	[cust_address_type_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_crm_mf_customer_address_type] PRIMARY KEY CLUSTERED 
(
	[cust_address_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_crm_mf_cust_contact_person]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_crm_mf_cust_contact_person](
	[cust_id] [int] NOT NULL,
	[cust_contact_person_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[contact_type_id] [int] NOT NULL,
	[contact] [nvarchar](255) NOT NULL,
	[position] [nvarchar](30) NULL,
 CONSTRAINT [PK_tb_crm_mf_customer_contact_person] PRIMARY KEY CLUSTERED 
(
	[cust_contact_person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_crm_mf_cust_type]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_crm_mf_cust_type](
	[cust_type_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_crm_mf_customer_type] PRIMARY KEY CLUSTERED 
(
	[cust_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_lr_sc]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_lr_sc](
	[sc_id] [bigint] IDENTITY(1,1) NOT NULL,
	[mod_id] [int] NOT NULL,
	[trans_id] [int] NOT NULL,
	[trans_no] [int] NULL,
	[trans_item_id] [int] NULL,
	[trans_date] [datetime] NOT NULL,
	[post_date] [datetime] NOT NULL,
	[wh_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[serbat_no] [nvarchar](50) NULL,
	[qty] [decimal](18, 2) NOT NULL,
	[qty_bal] [decimal](18, 2) NOT NULL,
	[unit_cost] [decimal](18, 2) NOT NULL,
	[unit_price] [decimal](18, 2) NULL,
	[ref_origin_id] [bigint] NULL,
	[ref_sc_id] [bigint] NULL,
	[expiry_date] [datetime] NULL,
	[cust_id] [int] NULL,
	[supp_id] [int] NULL,
 CONSTRAINT [PK_tb_scm_lr_sc] PRIMARY KEY CLUSTERED 
(
	[sc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_item](
	[item_id] [int] NOT NULL,
	[item_type_id] [int] NOT NULL,
	[item_class1_id] [int] NOT NULL,
	[item_class2_id] [int] NOT NULL,
	[item_class3_id] [int] NOT NULL,
	[item_class4_id] [int] NOT NULL,
	[item_class5_id] [int] NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[barcode] [nvarchar](30) NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[uom_id] [int] NOT NULL,
	[unit_price] [decimal](18, 4) NULL,
	[item_specs] [nvarchar](255) NULL,
	[description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_crm_mf_item] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_item_class1]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_item_class1](
	[item_class1_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_inv_mf_item_class1] PRIMARY KEY CLUSTERED 
(
	[item_class1_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_item_class2]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_item_class2](
	[item_class2_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_inv_mf_item_class2] PRIMARY KEY CLUSTERED 
(
	[item_class2_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_item_class3]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_item_class3](
	[item_class3_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_inv_mf_item_class3] PRIMARY KEY CLUSTERED 
(
	[item_class3_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_item_class4]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_item_class4](
	[item_class4_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_int_mf_item_class4] PRIMARY KEY CLUSTERED 
(
	[item_class4_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_item_class5]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_item_class5](
	[item_class5_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_inv_mf_item_class5] PRIMARY KEY CLUSTERED 
(
	[item_class5_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_item_type]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_item_type](
	[item_type_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_inv_mf_item_type] PRIMARY KEY CLUSTERED 
(
	[item_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_mod]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_mod](
	[mod_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[remarks] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_tb_inv_mf_mod] PRIMARY KEY CLUSTERED 
(
	[mod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_sa_type]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_sa_type](
	[sa_type_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_inv_sa_type] PRIMARY KEY CLUSTERED 
(
	[sa_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_type]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_type](
	[itr_type_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_inv_itr_type] PRIMARY KEY CLUSTERED 
(
	[itr_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_uom]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_uom](
	[uom_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_crm_mf_uom] PRIMARY KEY CLUSTERED 
(
	[uom_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_wh]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_wh](
	[wh_id] [int] IDENTITY(1,1) NOT NULL,
	[wh_type_id] [int] NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[remarks] [nvarchar](1000) NULL,
	[account_id] [int] NULL,
 CONSTRAINT [PK_tb_crm_mf_warehouse] PRIMARY KEY CLUSTERED 
(
	[wh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_mf_wh_type]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_mf_wh_type](
	[wh_type_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_inv_mf_wh_type] PRIMARY KEY CLUSTERED 
(
	[wh_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_tr_itr]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_tr_itr](
	[itr_id] [int] IDENTITY(1,1) NOT NULL,
	[itr_date] [datetime] NOT NULL,
	[itr_type_id] [int] NOT NULL,
	[ref_cust_id] [int] NULL,
	[ref_supp_id] [int] NULL,
	[eta] [datetime] NULL,
	[remarks] [nvarchar](1000) NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_scm_inv_itr_out] PRIMARY KEY CLUSTERED 
(
	[itr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_tr_itr_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_tr_itr_item](
	[itr_id] [int] NOT NULL,
	[itr_item_id] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [int] NOT NULL,
	[uom_id] [int] NOT NULL,
	[wh_out_id] [int] NOT NULL,
	[qty_out] [decimal](18, 2) NOT NULL,
	[wh_in_id] [int] NOT NULL,
	[qty_in] [decimal](18, 2) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_inv_itr_out_item] PRIMARY KEY CLUSTERED 
(
	[itr_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_tr_itr_item_serbat]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_tr_itr_item_serbat](
	[itr_item_id] [int] NOT NULL,
	[itr_item_serbat_id] [int] IDENTITY(1,1) NOT NULL,
	[serbat_no] [nvarchar](50) NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tb_scm_inv_itr_out_item_serbat] PRIMARY KEY CLUSTERED 
(
	[itr_item_serbat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_tr_pc]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_tr_pc](
	[pc_id] [int] IDENTITY(1,1) NOT NULL,
	[pc_date] [datetime] NOT NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_inv_pc] PRIMARY KEY CLUSTERED 
(
	[pc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_tr_pc_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_tr_pc_item](
	[pc_id] [int] NOT NULL,
	[pc_item_id] [int] IDENTITY(1,1) NOT NULL,
	[wh_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[edp_qty] [decimal](18, 2) NOT NULL,
	[actual_qty] [decimal](18, 2) NOT NULL,
	[adj_qty] [decimal](18, 2) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_inv_pc_item] PRIMARY KEY CLUSTERED 
(
	[pc_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_tr_pc_item_serbat]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_tr_pc_item_serbat](
	[pc_item_id] [int] NOT NULL,
	[pc_item_serbat_id] [int] IDENTITY(1,1) NOT NULL,
	[serbat_no] [nvarchar](50) NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tb_inv_pc_item_serbat] PRIMARY KEY CLUSTERED 
(
	[pc_item_serbat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_tr_sa]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_tr_sa](
	[sa_id] [int] IDENTITY(1,1) NOT NULL,
	[sa_date] [datetime] NOT NULL,
	[sa_type_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_tr_sa] PRIMARY KEY CLUSTERED 
(
	[sa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_tr_sa_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_tr_sa_item](
	[sa_id] [int] NOT NULL,
	[sa_item_id] [int] IDENTITY(1,1) NOT NULL,
	[wh_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[uom_id] [int] NOT NULL,
	[qty_add] [decimal](18, 2) NOT NULL,
	[qty_deduct] [decimal](18, 2) NOT NULL,
	[unit_cost] [decimal](18, 2) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_tr_sa_item] PRIMARY KEY CLUSTERED 
(
	[sa_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_inv_tr_sa_item_serbat]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_inv_tr_sa_item_serbat](
	[sa_item_id] [int] NOT NULL,
	[sa_item_serbat_id] [int] IDENTITY(1,1) NOT NULL,
	[serbat_no] [nvarchar](50) NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tb_scm_inv_sa_item_serbat] PRIMARY KEY CLUSTERED 
(
	[sa_item_serbat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_mf_ir_type]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_mf_ir_type](
	[ir_type_id] [int] NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_tr_ir_type] PRIMARY KEY CLUSTERED 
(
	[ir_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_gp_nso]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_gp_nso](
	[nso_id] [int] NOT NULL,
	[gp_nso_id] [int] IDENTITY(1,1) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_nso_gp] PRIMARY KEY CLUSTERED 
(
	[gp_nso_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_gp_nso_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_gp_nso_item](
	[gp_nso_id] [int] NOT NULL,
	[gp_nso_item_id] [int] IDENTITY(1,1) NOT NULL,
	[nso_item_id] [int] NOT NULL,
	[qty] [int] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_tr_nso_gp_item] PRIMARY KEY CLUSTERED 
(
	[gp_nso_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_gp_nso_serbat]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_gp_nso_serbat](
	[gp_nso_item_id] [int] NOT NULL,
	[gp_nso_serbat_id] [int] IDENTITY(1,1) NOT NULL,
	[serbat_no] [nvarchar](50) NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_nso_gp_serbat] PRIMARY KEY CLUSTERED 
(
	[gp_nso_serbat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_gp_so]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_gp_so](
	[so_id] [int] NOT NULL,
	[gp_so_id] [int] IDENTITY(1,1) NOT NULL,
	[gp_so_date] [datetime] NOT NULL,
	[remarks] [nvarchar](1000) NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_gp] PRIMARY KEY CLUSTERED 
(
	[gp_so_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_gp_so_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_gp_so_item](
	[gp_so_id] [int] NOT NULL,
	[gp_so_item_id] [int] IDENTITY(1,1) NOT NULL,
	[so_item_id] [int] NOT NULL,
	[qty] [int] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_tr_gp_detail] PRIMARY KEY CLUSTERED 
(
	[gp_so_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_gp_so_serbat]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_gp_so_serbat](
	[gp_so_item_id] [int] NOT NULL,
	[gp_so_serbat_id] [int] IDENTITY(1,1) NOT NULL,
	[serbat_no] [nvarchar](50) NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_gp_serbat] PRIMARY KEY CLUSTERED 
(
	[gp_so_serbat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_irc_nso]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_irc_nso](
	[irc_nso_id] [int] IDENTITY(1,1) NOT NULL,
	[irc_nso_date] [datetime] NOT NULL,
	[ir_type_id] [int] NOT NULL,
	[remarks] [nvarchar](1000) NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_irc_nso] PRIMARY KEY CLUSTERED 
(
	[irc_nso_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_irc_nso_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_irc_nso_item](
	[irc_nso_id] [int] NOT NULL,
	[irc_nso_item_id] [int] IDENTITY(1,1) NOT NULL,
	[gp_nso_item_id] [int] NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_tr_irc_nso_item_1] PRIMARY KEY CLUSTERED 
(
	[irc_nso_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_irc_nso_item_serbat]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_irc_nso_item_serbat](
	[irc_nso_item_id] [int] NOT NULL,
	[irc_nso_item_serbat_id] [int] IDENTITY(1,1) NOT NULL,
	[serbat_no] [nvarchar](50) NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_irc_nso_item_serbat] PRIMARY KEY CLUSTERED 
(
	[irc_nso_item_serbat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_irc_so]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_irc_so](
	[irc_so_id] [int] IDENTITY(1,1) NOT NULL,
	[irc_so_date] [datetime] NOT NULL,
	[ir_type_id] [int] NOT NULL,
	[remarks] [nvarchar](1000) NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_irc] PRIMARY KEY CLUSTERED 
(
	[irc_so_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_irc_so_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_irc_so_item](
	[irc_so_id] [int] NOT NULL,
	[irc_so_item_id] [int] IDENTITY(1,1) NOT NULL,
	[gp_so_item_id] [int] NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_tr_irc_item] PRIMARY KEY CLUSTERED 
(
	[irc_so_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_irc_so_item_serbat]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_irc_so_item_serbat](
	[irc_so_item_id] [int] NOT NULL,
	[irc_so_item_serbat_id] [int] IDENTITY(1,1) NOT NULL,
	[serbat_no] [nvarchar](50) NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_irc_item_serbat] PRIMARY KEY CLUSTERED 
(
	[irc_so_item_serbat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_irs]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_irs](
	[irs_id] [int] IDENTITY(1,1) NOT NULL,
	[irs_date] [datetime] NOT NULL,
	[po_id] [int] NULL,
	[remarks] [nvarchar](1000) NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_irs] PRIMARY KEY CLUSTERED 
(
	[irs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_irs_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_irs_item](
	[irs_id] [int] NOT NULL,
	[irs_item_id] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [int] NOT NULL,
	[uom_id] [int] NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
	[unit_cost] [decimal](18, 2) NULL,
	[line_total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tb_scm_tr_irs_item] PRIMARY KEY CLUSTERED 
(
	[irs_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_irs_item_serbat]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_irs_item_serbat](
	[irs_item_id] [int] NOT NULL,
	[irs_item_serbat_id] [int] IDENTITY(1,1) NOT NULL,
	[serbat_no] [nvarchar](50) NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_irs_item_serbat] PRIMARY KEY CLUSTERED 
(
	[irs_item_serbat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_nso]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_nso](
	[nso_id] [int] IDENTITY(1,1) NOT NULL,
	[nso_type_id] [int] NOT NULL,
	[nso_date] [datetime] NOT NULL,
	[cust_id] [int] NULL,
	[salesman_id] [int] NULL,
	[supp_id] [int] NULL,
	[remarks] [nvarchar](1000) NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_nso] PRIMARY KEY CLUSTERED 
(
	[nso_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_nso_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_nso_item](
	[nso_id] [int] NOT NULL,
	[nso_item_id] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [int] NOT NULL,
	[wh_id] [int] NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
	[uom_id] [int] NOT NULL,
	[unit_price] [decimal](18, 2) NOT NULL,
	[disc_rate1] [decimal](18, 4) NOT NULL,
	[disc_rate2] [decimal](18, 4) NOT NULL,
	[disc_rate3] [decimal](18, 4) NOT NULL,
	[line_total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_nso_item] PRIMARY KEY CLUSTERED 
(
	[nso_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_nso_type]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_nso_type](
	[nso_type_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_tr_nso_type] PRIMARY KEY CLUSTERED 
(
	[nso_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_po]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_po](
	[po_id] [int] IDENTITY(1,1) NOT NULL,
	[po_type_id] [int] NOT NULL,
	[po_no] [nvarchar](30) NOT NULL,
	[po_date] [datetime] NOT NULL,
	[supp_id] [int] NOT NULL,
	[salesman_id] [int] NOT NULL,
	[term_id] [int] NOT NULL,
	[total_amount] [decimal](18, 2) NULL,
	[discount_rate] [decimal](18, 4) NULL,
	[net_amount] [decimal](18, 2) NULL,
	[remarks] [nvarchar](1000) NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_po] PRIMARY KEY CLUSTERED 
(
	[po_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_po_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_po_item](
	[po_id] [int] NOT NULL,
	[po_item_id] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [int] NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
	[uom_id] [int] NOT NULL,
	[wh_id] [int] NOT NULL,
	[unit_price] [decimal](18, 4) NOT NULL,
	[disc_rate1] [decimal](18, 4) NOT NULL,
	[disc_rate2] [decimal](18, 4) NOT NULL,
	[disc_rate3] [decimal](18, 4) NOT NULL,
	[line_total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_po_item] PRIMARY KEY CLUSTERED 
(
	[po_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_po_type]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_po_type](
	[po_type_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_tr_po_type] PRIMARY KEY CLUSTERED 
(
	[po_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_rr]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_rr](
	[rr_id] [int] IDENTITY(1,1) NOT NULL,
	[rr_date] [datetime] NOT NULL,
	[po_id] [int] NULL,
	[supp_dr_no] [int] NULL,
	[supp_dr_date] [datetime] NULL,
	[supp_si_no] [int] NULL,
	[supp_si_date] [datetime] NULL,
	[pl_no] [int] NULL,
	[pl_date] [datetime] NULL,
	[bl_no] [nvarchar](50) NULL,
	[bl_date] [datetime] NULL,
	[proforma_no] [nvarchar](50) NULL,
	[proforma_date] [datetime] NULL,
	[remarks] [nvarchar](1000) NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_rr] PRIMARY KEY CLUSTERED 
(
	[rr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_rr_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_rr_item](
	[rr_id] [int] NOT NULL,
	[rr_item_id] [int] IDENTITY(1,1) NOT NULL,
	[po_item_id] [int] NOT NULL,
	[item_id] [int] NULL,
	[uom_id] [int] NOT NULL,
	[po_qty_bal] [decimal](18, 2) NOT NULL,
	[qty_good] [decimal](18, 2) NOT NULL,
	[qty_bad] [decimal](18, 2) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_tr_rr_item] PRIMARY KEY CLUSTERED 
(
	[rr_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_rr_item_serbat]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_rr_item_serbat](
	[rr_item_id] [int] NOT NULL,
	[rr_item_serbat_id] [int] IDENTITY(1,1) NOT NULL,
	[serbat_no] [nvarchar](50) NOT NULL,
	[qty] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_rr_item_serbat] PRIMARY KEY CLUSTERED 
(
	[rr_item_serbat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_so]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_so](
	[qt_no] [nvarchar](30) NOT NULL,
	[qt_date] [datetime] NOT NULL,
	[so_id] [int] IDENTITY(1,1) NOT NULL,
	[so_type_id] [int] NOT NULL,
	[so_date] [datetime] NOT NULL,
	[po_no] [nvarchar](30) NOT NULL,
	[po_date] [datetime] NOT NULL,
	[cust_id] [int] NOT NULL,
	[salesman_id] [int] NOT NULL,
	[term_id] [int] NOT NULL,
	[total_amount] [decimal](18, 2) NOT NULL,
	[discount_rate] [decimal](18, 4) NOT NULL,
	[net_amount] [decimal](18, 2) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
	[is_posted] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[approved_date] [datetime] NULL,
	[approved_by_id] [int] NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_by_id] [int] NULL,
	[for_approval_date] [datetime] NULL,
	[for_approval_by_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_sales_order] PRIMARY KEY CLUSTERED 
(
	[so_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_so_item]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_so_item](
	[so_id] [int] NOT NULL,
	[so_item_id] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [int] NOT NULL,
	[wh_id] [int] NOT NULL,
	[qty] [int] NOT NULL,
	[uom_id] [int] NOT NULL,
	[unit_price] [decimal](18, 4) NOT NULL,
	[disc_rate1] [decimal](18, 4) NOT NULL,
	[disc_rate2] [decimal](18, 4) NOT NULL,
	[disc_rate3] [decimal](18, 4) NOT NULL,
	[line_total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tb_scm_tr_sales_order_detail] PRIMARY KEY CLUSTERED 
(
	[so_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_scm_tr_so_type]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_scm_tr_so_type](
	[so_type_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_tr_so_type] PRIMARY KEY CLUSTERED 
(
	[so_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_sm_mf_salesman]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_sm_mf_salesman](
	[salesman_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[wf_id] [int] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_crm_mf_salesman] PRIMARY KEY CLUSTERED 
(
	[salesman_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_sm_mf_territory]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_sm_mf_territory](
	[territory_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[is_active] [bit] NULL,
	[description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_sm_mf_territory] PRIMARY KEY CLUSTERED 
(
	[territory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_srm_mf_supplier]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_srm_mf_supplier](
	[supp_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[term_id] [int] NOT NULL,
	[tin] [varchar](15) NULL,
	[tax_id] [int] NOT NULL,
	[date_started] [datetime] NULL,
	[address] [nvarchar](255) NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_crm_mf_suppliers] PRIMARY KEY CLUSTERED 
(
	[supp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_srm_mf_tax]    Script Date: 6/9/2021 4:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_srm_mf_tax](
	[tax_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_scm_mf_tax] PRIMARY KEY CLUSTERED 
(
	[tax_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_ar_tr_si_gp]  WITH CHECK ADD  CONSTRAINT [FK_tb_ar_tr_si_gp_tb_ar_tr_si] FOREIGN KEY([si_id])
REFERENCES [dbo].[tb_ar_tr_si] ([si_id])
GO
ALTER TABLE [dbo].[tb_ar_tr_si_gp] CHECK CONSTRAINT [FK_tb_ar_tr_si_gp_tb_ar_tr_si]
GO
ALTER TABLE [dbo].[tb_ar_tr_si_gp]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_si_gp_tb_scm_tr_si] FOREIGN KEY([gp_so_id])
REFERENCES [dbo].[tb_scm_tr_gp_so] ([gp_so_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_ar_tr_si_gp] CHECK CONSTRAINT [FK_tb_scm_tr_si_gp_tb_scm_tr_si]
GO
ALTER TABLE [dbo].[tb_crm_mf_cust]  WITH CHECK ADD  CONSTRAINT [FK_tb_crm_mf_customer_tb_crm_mf_customer_type] FOREIGN KEY([cust_type_id])
REFERENCES [dbo].[tb_crm_mf_cust_type] ([cust_type_id])
GO
ALTER TABLE [dbo].[tb_crm_mf_cust] CHECK CONSTRAINT [FK_tb_crm_mf_customer_tb_crm_mf_customer_type]
GO
ALTER TABLE [dbo].[tb_crm_mf_cust_address]  WITH CHECK ADD  CONSTRAINT [FK_tb_crm_mf_cust_address_tb_crm_mf_cust_address_type] FOREIGN KEY([cust_address_type_id])
REFERENCES [dbo].[tb_crm_mf_cust_address_type] ([cust_address_type_id])
GO
ALTER TABLE [dbo].[tb_crm_mf_cust_address] CHECK CONSTRAINT [FK_tb_crm_mf_cust_address_tb_crm_mf_cust_address_type]
GO
ALTER TABLE [dbo].[tb_crm_mf_cust_address]  WITH CHECK ADD  CONSTRAINT [FK_tb_crm_mf_customer_address_tb_crm_mf_customer1] FOREIGN KEY([cust_id])
REFERENCES [dbo].[tb_crm_mf_cust] ([cust_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_crm_mf_cust_address] CHECK CONSTRAINT [FK_tb_crm_mf_customer_address_tb_crm_mf_customer1]
GO
ALTER TABLE [dbo].[tb_crm_mf_cust_contact_person]  WITH CHECK ADD  CONSTRAINT [FK_tb_crm_mf_customer_contact_person_tb_crm_mf_customer] FOREIGN KEY([cust_id])
REFERENCES [dbo].[tb_crm_mf_cust] ([cust_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_crm_mf_cust_contact_person] CHECK CONSTRAINT [FK_tb_crm_mf_customer_contact_person_tb_crm_mf_customer]
GO
ALTER TABLE [dbo].[tb_inv_lr_sc]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_lr_sc_tb_crm_mf_cust] FOREIGN KEY([cust_id])
REFERENCES [dbo].[tb_crm_mf_cust] ([cust_id])
GO
ALTER TABLE [dbo].[tb_inv_lr_sc] CHECK CONSTRAINT [FK_tb_inv_lr_sc_tb_crm_mf_cust]
GO
ALTER TABLE [dbo].[tb_inv_lr_sc]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_lr_sc_tb_inv_lr_sc] FOREIGN KEY([sc_id])
REFERENCES [dbo].[tb_inv_lr_sc] ([sc_id])
GO
ALTER TABLE [dbo].[tb_inv_lr_sc] CHECK CONSTRAINT [FK_tb_inv_lr_sc_tb_inv_lr_sc]
GO
ALTER TABLE [dbo].[tb_inv_lr_sc]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_lr_sc_tb_inv_mf_item] FOREIGN KEY([item_id])
REFERENCES [dbo].[tb_inv_mf_item] ([item_id])
GO
ALTER TABLE [dbo].[tb_inv_lr_sc] CHECK CONSTRAINT [FK_tb_inv_lr_sc_tb_inv_mf_item]
GO
ALTER TABLE [dbo].[tb_inv_lr_sc]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_lr_sc_tb_inv_mf_mod] FOREIGN KEY([mod_id])
REFERENCES [dbo].[tb_inv_mf_mod] ([mod_id])
GO
ALTER TABLE [dbo].[tb_inv_lr_sc] CHECK CONSTRAINT [FK_tb_inv_lr_sc_tb_inv_mf_mod]
GO
ALTER TABLE [dbo].[tb_inv_lr_sc]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_lr_sc_tb_srm_mf_supplier] FOREIGN KEY([supp_id])
REFERENCES [dbo].[tb_srm_mf_supplier] ([supp_id])
GO
ALTER TABLE [dbo].[tb_inv_lr_sc] CHECK CONSTRAINT [FK_tb_inv_lr_sc_tb_srm_mf_supplier]
GO
ALTER TABLE [dbo].[tb_inv_mf_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_crm_mf_item_tb_crm_mf_uom] FOREIGN KEY([uom_id])
REFERENCES [dbo].[tb_inv_mf_uom] ([uom_id])
GO
ALTER TABLE [dbo].[tb_inv_mf_item] CHECK CONSTRAINT [FK_tb_crm_mf_item_tb_crm_mf_uom]
GO
ALTER TABLE [dbo].[tb_inv_mf_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_mf_item_tb_inv_mf_item_class1] FOREIGN KEY([item_class1_id])
REFERENCES [dbo].[tb_inv_mf_item_class1] ([item_class1_id])
GO
ALTER TABLE [dbo].[tb_inv_mf_item] CHECK CONSTRAINT [FK_tb_inv_mf_item_tb_inv_mf_item_class1]
GO
ALTER TABLE [dbo].[tb_inv_mf_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_mf_item_tb_inv_mf_item_class2] FOREIGN KEY([item_class2_id])
REFERENCES [dbo].[tb_inv_mf_item_class2] ([item_class2_id])
GO
ALTER TABLE [dbo].[tb_inv_mf_item] CHECK CONSTRAINT [FK_tb_inv_mf_item_tb_inv_mf_item_class2]
GO
ALTER TABLE [dbo].[tb_inv_mf_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_mf_item_tb_inv_mf_item_class3] FOREIGN KEY([item_class3_id])
REFERENCES [dbo].[tb_inv_mf_item_class3] ([item_class3_id])
GO
ALTER TABLE [dbo].[tb_inv_mf_item] CHECK CONSTRAINT [FK_tb_inv_mf_item_tb_inv_mf_item_class3]
GO
ALTER TABLE [dbo].[tb_inv_mf_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_mf_item_tb_inv_mf_item_class4] FOREIGN KEY([item_class4_id])
REFERENCES [dbo].[tb_inv_mf_item_class4] ([item_class4_id])
GO
ALTER TABLE [dbo].[tb_inv_mf_item] CHECK CONSTRAINT [FK_tb_inv_mf_item_tb_inv_mf_item_class4]
GO
ALTER TABLE [dbo].[tb_inv_mf_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_mf_item_tb_inv_mf_item_class5] FOREIGN KEY([item_class5_id])
REFERENCES [dbo].[tb_inv_mf_item_class5] ([item_class5_id])
GO
ALTER TABLE [dbo].[tb_inv_mf_item] CHECK CONSTRAINT [FK_tb_inv_mf_item_tb_inv_mf_item_class5]
GO
ALTER TABLE [dbo].[tb_inv_mf_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_mf_item_tb_inv_mf_item_type] FOREIGN KEY([item_type_id])
REFERENCES [dbo].[tb_inv_mf_item_type] ([item_type_id])
GO
ALTER TABLE [dbo].[tb_inv_mf_item] CHECK CONSTRAINT [FK_tb_inv_mf_item_tb_inv_mf_item_type]
GO
ALTER TABLE [dbo].[tb_inv_mf_wh]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_mf_wh_tb_inv_mf_wh] FOREIGN KEY([wh_type_id])
REFERENCES [dbo].[tb_inv_mf_wh_type] ([wh_type_id])
GO
ALTER TABLE [dbo].[tb_inv_mf_wh] CHECK CONSTRAINT [FK_tb_inv_mf_wh_tb_inv_mf_wh]
GO
ALTER TABLE [dbo].[tb_inv_tr_itr]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_itr_tb_crm_mf_cust] FOREIGN KEY([ref_cust_id])
REFERENCES [dbo].[tb_crm_mf_cust] ([cust_id])
GO
ALTER TABLE [dbo].[tb_inv_tr_itr] CHECK CONSTRAINT [FK_tb_inv_itr_tb_crm_mf_cust]
GO
ALTER TABLE [dbo].[tb_inv_tr_itr]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_itr_tb_inv_itr_type] FOREIGN KEY([itr_type_id])
REFERENCES [dbo].[tb_inv_mf_type] ([itr_type_id])
GO
ALTER TABLE [dbo].[tb_inv_tr_itr] CHECK CONSTRAINT [FK_tb_inv_itr_tb_inv_itr_type]
GO
ALTER TABLE [dbo].[tb_inv_tr_itr]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_itr_tb_srm_mf_supplier] FOREIGN KEY([ref_supp_id])
REFERENCES [dbo].[tb_srm_mf_supplier] ([supp_id])
GO
ALTER TABLE [dbo].[tb_inv_tr_itr] CHECK CONSTRAINT [FK_tb_inv_itr_tb_srm_mf_supplier]
GO
ALTER TABLE [dbo].[tb_inv_tr_itr_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_itr_item_tb_inv_mf_item] FOREIGN KEY([item_id])
REFERENCES [dbo].[tb_inv_mf_item] ([item_id])
GO
ALTER TABLE [dbo].[tb_inv_tr_itr_item] CHECK CONSTRAINT [FK_tb_inv_itr_item_tb_inv_mf_item]
GO
ALTER TABLE [dbo].[tb_inv_tr_itr_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_itr_item_tb_inv_mf_uom] FOREIGN KEY([uom_id])
REFERENCES [dbo].[tb_inv_mf_uom] ([uom_id])
GO
ALTER TABLE [dbo].[tb_inv_tr_itr_item] CHECK CONSTRAINT [FK_tb_inv_itr_item_tb_inv_mf_uom]
GO
ALTER TABLE [dbo].[tb_inv_tr_itr_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_itr_item_tb_inv_mf_wh] FOREIGN KEY([wh_in_id])
REFERENCES [dbo].[tb_inv_mf_wh] ([wh_id])
GO
ALTER TABLE [dbo].[tb_inv_tr_itr_item] CHECK CONSTRAINT [FK_tb_inv_itr_item_tb_inv_mf_wh]
GO
ALTER TABLE [dbo].[tb_inv_tr_itr_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_itr_item_tb_inv_mf_wh1] FOREIGN KEY([wh_out_id])
REFERENCES [dbo].[tb_inv_mf_wh] ([wh_id])
GO
ALTER TABLE [dbo].[tb_inv_tr_itr_item] CHECK CONSTRAINT [FK_tb_inv_itr_item_tb_inv_mf_wh1]
GO
ALTER TABLE [dbo].[tb_inv_tr_itr_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_inv_itr_out_item_tb_scm_inv_itr_out] FOREIGN KEY([itr_id])
REFERENCES [dbo].[tb_inv_tr_itr] ([itr_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_inv_tr_itr_item] CHECK CONSTRAINT [FK_tb_scm_inv_itr_out_item_tb_scm_inv_itr_out]
GO
ALTER TABLE [dbo].[tb_inv_tr_itr_item_serbat]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_inv_itr_out_item_serbat_tb_scm_inv_itr_out_item] FOREIGN KEY([itr_item_id])
REFERENCES [dbo].[tb_inv_tr_itr_item] ([itr_item_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_inv_tr_itr_item_serbat] CHECK CONSTRAINT [FK_tb_scm_inv_itr_out_item_serbat_tb_scm_inv_itr_out_item]
GO
ALTER TABLE [dbo].[tb_inv_tr_pc_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_pc_item_tb_inv_pc_item] FOREIGN KEY([pc_item_id])
REFERENCES [dbo].[tb_inv_tr_pc_item] ([pc_item_id])
GO
ALTER TABLE [dbo].[tb_inv_tr_pc_item] CHECK CONSTRAINT [FK_tb_inv_pc_item_tb_inv_pc_item]
GO
ALTER TABLE [dbo].[tb_inv_tr_pc_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_inv_pc_item_tb_scm_inv_pc] FOREIGN KEY([pc_id])
REFERENCES [dbo].[tb_inv_tr_pc] ([pc_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_inv_tr_pc_item] CHECK CONSTRAINT [FK_tb_scm_inv_pc_item_tb_scm_inv_pc]
GO
ALTER TABLE [dbo].[tb_inv_tr_pc_item_serbat]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_pc_item_serbat_tb_inv_pc_item] FOREIGN KEY([pc_item_id])
REFERENCES [dbo].[tb_inv_tr_pc_item] ([pc_item_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_inv_tr_pc_item_serbat] CHECK CONSTRAINT [FK_tb_inv_pc_item_serbat_tb_inv_pc_item]
GO
ALTER TABLE [dbo].[tb_inv_tr_sa]  WITH CHECK ADD  CONSTRAINT [FK_tb_inv_sa_tb_inv_sa_type] FOREIGN KEY([sa_type_id])
REFERENCES [dbo].[tb_inv_mf_sa_type] ([sa_type_id])
GO
ALTER TABLE [dbo].[tb_inv_tr_sa] CHECK CONSTRAINT [FK_tb_inv_sa_tb_inv_sa_type]
GO
ALTER TABLE [dbo].[tb_inv_tr_sa_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_inv_sa_item_tb_scm_inv_sa] FOREIGN KEY([sa_id])
REFERENCES [dbo].[tb_inv_tr_sa] ([sa_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_inv_tr_sa_item] CHECK CONSTRAINT [FK_tb_scm_inv_sa_item_tb_scm_inv_sa]
GO
ALTER TABLE [dbo].[tb_inv_tr_sa_item_serbat]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_inv_sa_item_serbat_tb_scm_inv_sa_item] FOREIGN KEY([sa_item_id])
REFERENCES [dbo].[tb_inv_tr_sa_item] ([sa_item_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_inv_tr_sa_item_serbat] CHECK CONSTRAINT [FK_tb_scm_inv_sa_item_serbat_tb_scm_inv_sa_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_nso]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_nso_gp_tb_scm_tr_nso] FOREIGN KEY([nso_id])
REFERENCES [dbo].[tb_scm_tr_nso] ([nso_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_nso] CHECK CONSTRAINT [FK_tb_scm_tr_nso_gp_tb_scm_tr_nso]
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_nso_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_gp_nso_item_tb_scm_tr_nso_item] FOREIGN KEY([nso_item_id])
REFERENCES [dbo].[tb_scm_tr_nso_item] ([nso_item_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_nso_item] CHECK CONSTRAINT [FK_tb_scm_tr_gp_nso_item_tb_scm_tr_nso_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_nso_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_nso_gp_item_tb_scm_tr_nso_gp] FOREIGN KEY([gp_nso_id])
REFERENCES [dbo].[tb_scm_tr_gp_nso] ([gp_nso_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_nso_item] CHECK CONSTRAINT [FK_tb_scm_tr_nso_gp_item_tb_scm_tr_nso_gp]
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_nso_serbat]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_nso_gp_serbat_tb_scm_tr_nso_gp_item] FOREIGN KEY([gp_nso_item_id])
REFERENCES [dbo].[tb_scm_tr_gp_nso_item] ([gp_nso_item_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_nso_serbat] CHECK CONSTRAINT [FK_tb_scm_tr_nso_gp_serbat_tb_scm_tr_nso_gp_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_so]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_gp_so_tb_scm_tr_so] FOREIGN KEY([so_id])
REFERENCES [dbo].[tb_scm_tr_so] ([so_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_so] CHECK CONSTRAINT [FK_tb_scm_tr_gp_so_tb_scm_tr_so]
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_so_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_gp_detail_tb_scm_tr_so_detail] FOREIGN KEY([so_item_id])
REFERENCES [dbo].[tb_scm_tr_so_item] ([so_item_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_so_item] CHECK CONSTRAINT [FK_tb_scm_tr_gp_detail_tb_scm_tr_so_detail]
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_so_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_gp_item_tb_scm_tr_gp] FOREIGN KEY([gp_so_id])
REFERENCES [dbo].[tb_scm_tr_gp_so] ([gp_so_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_so_item] CHECK CONSTRAINT [FK_tb_scm_tr_gp_item_tb_scm_tr_gp]
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_so_serbat]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_gp_serbat_tb_scm_tr_gp_detail] FOREIGN KEY([gp_so_item_id])
REFERENCES [dbo].[tb_scm_tr_gp_so_item] ([gp_so_item_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_gp_so_serbat] CHECK CONSTRAINT [FK_tb_scm_tr_gp_serbat_tb_scm_tr_gp_detail]
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_nso]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irc_nso_tb_scm_tr_ir_type] FOREIGN KEY([ir_type_id])
REFERENCES [dbo].[tb_scm_mf_ir_type] ([ir_type_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_nso] CHECK CONSTRAINT [FK_tb_scm_tr_irc_nso_tb_scm_tr_ir_type]
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_nso_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irc_nso_item_tb_scm_tr_gp_nso_item] FOREIGN KEY([gp_nso_item_id])
REFERENCES [dbo].[tb_scm_tr_gp_nso_item] ([gp_nso_item_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_nso_item] CHECK CONSTRAINT [FK_tb_scm_tr_irc_nso_item_tb_scm_tr_gp_nso_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_nso_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irc_nso_item_tb_scm_tr_irc_nso] FOREIGN KEY([irc_nso_id])
REFERENCES [dbo].[tb_scm_tr_irc_nso] ([irc_nso_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_nso_item] CHECK CONSTRAINT [FK_tb_scm_tr_irc_nso_item_tb_scm_tr_irc_nso]
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_nso_item_serbat]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irc_nso_item_serbat_tb_scm_tr_irc_nso_item] FOREIGN KEY([irc_nso_item_id])
REFERENCES [dbo].[tb_scm_tr_irc_nso_item] ([irc_nso_item_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_nso_item_serbat] CHECK CONSTRAINT [FK_tb_scm_tr_irc_nso_item_serbat_tb_scm_tr_irc_nso_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_so]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irc_so_tb_scm_tr_ir_type] FOREIGN KEY([ir_type_id])
REFERENCES [dbo].[tb_scm_mf_ir_type] ([ir_type_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_so] CHECK CONSTRAINT [FK_tb_scm_tr_irc_so_tb_scm_tr_ir_type]
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_so_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irc_item_tb_scm_tr_irc] FOREIGN KEY([irc_so_id])
REFERENCES [dbo].[tb_scm_tr_irc_so] ([irc_so_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_so_item] CHECK CONSTRAINT [FK_tb_scm_tr_irc_item_tb_scm_tr_irc]
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_so_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irc_so_item_tb_scm_tr_gp_so_item] FOREIGN KEY([gp_so_item_id])
REFERENCES [dbo].[tb_scm_tr_gp_so_item] ([gp_so_item_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_so_item] CHECK CONSTRAINT [FK_tb_scm_tr_irc_so_item_tb_scm_tr_gp_so_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_so_item_serbat]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irc_item_serbat_tb_scm_tr_irc_item] FOREIGN KEY([irc_so_item_id])
REFERENCES [dbo].[tb_scm_tr_irc_so_item] ([irc_so_item_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_irc_so_item_serbat] CHECK CONSTRAINT [FK_tb_scm_tr_irc_item_serbat_tb_scm_tr_irc_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_irs]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irs_tb_scm_tr_po] FOREIGN KEY([po_id])
REFERENCES [dbo].[tb_scm_tr_po] ([po_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_irs] CHECK CONSTRAINT [FK_tb_scm_tr_irs_tb_scm_tr_po]
GO
ALTER TABLE [dbo].[tb_scm_tr_irs_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irs_item_tb_inv_mf_item] FOREIGN KEY([item_id])
REFERENCES [dbo].[tb_inv_mf_item] ([item_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_irs_item] CHECK CONSTRAINT [FK_tb_scm_tr_irs_item_tb_inv_mf_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_irs_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irs_item_tb_inv_mf_uom] FOREIGN KEY([uom_id])
REFERENCES [dbo].[tb_inv_mf_uom] ([uom_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_irs_item] CHECK CONSTRAINT [FK_tb_scm_tr_irs_item_tb_inv_mf_uom]
GO
ALTER TABLE [dbo].[tb_scm_tr_irs_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irs_item_tb_scm_tr_irs] FOREIGN KEY([irs_id])
REFERENCES [dbo].[tb_scm_tr_irs] ([irs_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_irs_item] CHECK CONSTRAINT [FK_tb_scm_tr_irs_item_tb_scm_tr_irs]
GO
ALTER TABLE [dbo].[tb_scm_tr_irs_item_serbat]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_irs_item_serbat_tb_scm_tr_irs_item] FOREIGN KEY([irs_item_id])
REFERENCES [dbo].[tb_scm_tr_irs_item] ([irs_item_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_irs_item_serbat] CHECK CONSTRAINT [FK_tb_scm_tr_irs_item_serbat_tb_scm_tr_irs_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_nso]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_nso_tb_crm_mf_cust] FOREIGN KEY([cust_id])
REFERENCES [dbo].[tb_crm_mf_cust] ([cust_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_nso] CHECK CONSTRAINT [FK_tb_scm_tr_nso_tb_crm_mf_cust]
GO
ALTER TABLE [dbo].[tb_scm_tr_nso]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_nso_tb_scm_tr_nso_type] FOREIGN KEY([nso_type_id])
REFERENCES [dbo].[tb_scm_tr_nso_type] ([nso_type_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_nso] CHECK CONSTRAINT [FK_tb_scm_tr_nso_tb_scm_tr_nso_type]
GO
ALTER TABLE [dbo].[tb_scm_tr_nso]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_nso_tb_sm_mf_salesman] FOREIGN KEY([salesman_id])
REFERENCES [dbo].[tb_sm_mf_salesman] ([salesman_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_nso] CHECK CONSTRAINT [FK_tb_scm_tr_nso_tb_sm_mf_salesman]
GO
ALTER TABLE [dbo].[tb_scm_tr_nso]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_nso_tb_srm_mf_supplier] FOREIGN KEY([supp_id])
REFERENCES [dbo].[tb_srm_mf_supplier] ([supp_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_nso] CHECK CONSTRAINT [FK_tb_scm_tr_nso_tb_srm_mf_supplier]
GO
ALTER TABLE [dbo].[tb_scm_tr_nso_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_nso_item_tb_inv_mf_item] FOREIGN KEY([item_id])
REFERENCES [dbo].[tb_inv_mf_item] ([item_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_nso_item] CHECK CONSTRAINT [FK_tb_scm_tr_nso_item_tb_inv_mf_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_nso_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_nso_item_tb_inv_mf_uom] FOREIGN KEY([uom_id])
REFERENCES [dbo].[tb_inv_mf_uom] ([uom_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_nso_item] CHECK CONSTRAINT [FK_tb_scm_tr_nso_item_tb_inv_mf_uom]
GO
ALTER TABLE [dbo].[tb_scm_tr_nso_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_nso_item_tb_inv_mf_wh] FOREIGN KEY([wh_id])
REFERENCES [dbo].[tb_inv_mf_wh] ([wh_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_nso_item] CHECK CONSTRAINT [FK_tb_scm_tr_nso_item_tb_inv_mf_wh]
GO
ALTER TABLE [dbo].[tb_scm_tr_nso_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_nso_item_tb_scm_tr_nso] FOREIGN KEY([nso_id])
REFERENCES [dbo].[tb_scm_tr_nso] ([nso_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_nso_item] CHECK CONSTRAINT [FK_tb_scm_tr_nso_item_tb_scm_tr_nso]
GO
ALTER TABLE [dbo].[tb_scm_tr_po]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_po_tb_ar_mf_term] FOREIGN KEY([term_id])
REFERENCES [dbo].[tb_ar_mf_term] ([term_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_po] CHECK CONSTRAINT [FK_tb_scm_tr_po_tb_ar_mf_term]
GO
ALTER TABLE [dbo].[tb_scm_tr_po]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_po_tb_scm_tr_po_type] FOREIGN KEY([po_type_id])
REFERENCES [dbo].[tb_scm_tr_po_type] ([po_type_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_po] CHECK CONSTRAINT [FK_tb_scm_tr_po_tb_scm_tr_po_type]
GO
ALTER TABLE [dbo].[tb_scm_tr_po]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_po_tb_sm_mf_salesman] FOREIGN KEY([salesman_id])
REFERENCES [dbo].[tb_sm_mf_salesman] ([salesman_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_po] CHECK CONSTRAINT [FK_tb_scm_tr_po_tb_sm_mf_salesman]
GO
ALTER TABLE [dbo].[tb_scm_tr_po]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_po_tb_srm_mf_supplier] FOREIGN KEY([supp_id])
REFERENCES [dbo].[tb_srm_mf_supplier] ([supp_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_po] CHECK CONSTRAINT [FK_tb_scm_tr_po_tb_srm_mf_supplier]
GO
ALTER TABLE [dbo].[tb_scm_tr_po_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_po_item_tb_inv_mf_item] FOREIGN KEY([item_id])
REFERENCES [dbo].[tb_inv_mf_item] ([item_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_po_item] CHECK CONSTRAINT [FK_tb_scm_tr_po_item_tb_inv_mf_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_po_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_po_item_tb_inv_mf_uom] FOREIGN KEY([uom_id])
REFERENCES [dbo].[tb_inv_mf_uom] ([uom_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_po_item] CHECK CONSTRAINT [FK_tb_scm_tr_po_item_tb_inv_mf_uom]
GO
ALTER TABLE [dbo].[tb_scm_tr_po_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_po_item_tb_inv_mf_wh] FOREIGN KEY([wh_id])
REFERENCES [dbo].[tb_inv_mf_wh] ([wh_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_po_item] CHECK CONSTRAINT [FK_tb_scm_tr_po_item_tb_inv_mf_wh]
GO
ALTER TABLE [dbo].[tb_scm_tr_po_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_po_item_tb_scm_tr_po] FOREIGN KEY([po_id])
REFERENCES [dbo].[tb_scm_tr_po] ([po_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_po_item] CHECK CONSTRAINT [FK_tb_scm_tr_po_item_tb_scm_tr_po]
GO
ALTER TABLE [dbo].[tb_scm_tr_rr]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_rr_tb_scm_tr_po] FOREIGN KEY([po_id])
REFERENCES [dbo].[tb_scm_tr_po] ([po_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_rr] CHECK CONSTRAINT [FK_tb_scm_tr_rr_tb_scm_tr_po]
GO
ALTER TABLE [dbo].[tb_scm_tr_rr_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_rr_item_tb_inv_mf_item] FOREIGN KEY([item_id])
REFERENCES [dbo].[tb_inv_mf_item] ([item_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_rr_item] CHECK CONSTRAINT [FK_tb_scm_tr_rr_item_tb_inv_mf_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_rr_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_rr_item_tb_inv_mf_uom] FOREIGN KEY([uom_id])
REFERENCES [dbo].[tb_inv_mf_uom] ([uom_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_rr_item] CHECK CONSTRAINT [FK_tb_scm_tr_rr_item_tb_inv_mf_uom]
GO
ALTER TABLE [dbo].[tb_scm_tr_rr_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_rr_item_tb_scm_tr_po_item] FOREIGN KEY([po_item_id])
REFERENCES [dbo].[tb_scm_tr_po_item] ([po_item_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_rr_item] CHECK CONSTRAINT [FK_tb_scm_tr_rr_item_tb_scm_tr_po_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_rr_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_rr_item_tb_scm_tr_rr] FOREIGN KEY([rr_id])
REFERENCES [dbo].[tb_scm_tr_rr] ([rr_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_rr_item] CHECK CONSTRAINT [FK_tb_scm_tr_rr_item_tb_scm_tr_rr]
GO
ALTER TABLE [dbo].[tb_scm_tr_rr_item_serbat]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_rr_item_serbat_tb_scm_tr_rr_item_serbat] FOREIGN KEY([rr_item_id])
REFERENCES [dbo].[tb_scm_tr_rr_item] ([rr_item_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_rr_item_serbat] CHECK CONSTRAINT [FK_tb_scm_tr_rr_item_serbat_tb_scm_tr_rr_item_serbat]
GO
ALTER TABLE [dbo].[tb_scm_tr_so]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_so_tb_ar_mf_term] FOREIGN KEY([term_id])
REFERENCES [dbo].[tb_ar_mf_term] ([term_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_so] CHECK CONSTRAINT [FK_tb_scm_tr_so_tb_ar_mf_term]
GO
ALTER TABLE [dbo].[tb_scm_tr_so]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_so_tb_crm_mf_cust] FOREIGN KEY([cust_id])
REFERENCES [dbo].[tb_crm_mf_cust] ([cust_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_so] CHECK CONSTRAINT [FK_tb_scm_tr_so_tb_crm_mf_cust]
GO
ALTER TABLE [dbo].[tb_scm_tr_so]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_so_tb_scm_tr_so_type] FOREIGN KEY([so_type_id])
REFERENCES [dbo].[tb_scm_tr_so_type] ([so_type_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_so] CHECK CONSTRAINT [FK_tb_scm_tr_so_tb_scm_tr_so_type]
GO
ALTER TABLE [dbo].[tb_scm_tr_so]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_so_tb_sm_mf_salesman] FOREIGN KEY([salesman_id])
REFERENCES [dbo].[tb_sm_mf_salesman] ([salesman_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_so] CHECK CONSTRAINT [FK_tb_scm_tr_so_tb_sm_mf_salesman]
GO
ALTER TABLE [dbo].[tb_scm_tr_so_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_so_detail_tb_scm_tr_so] FOREIGN KEY([so_id])
REFERENCES [dbo].[tb_scm_tr_so] ([so_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_scm_tr_so_item] CHECK CONSTRAINT [FK_tb_scm_tr_so_detail_tb_scm_tr_so]
GO
ALTER TABLE [dbo].[tb_scm_tr_so_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_so_item_tb_inv_mf_item] FOREIGN KEY([item_id])
REFERENCES [dbo].[tb_inv_mf_item] ([item_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_so_item] CHECK CONSTRAINT [FK_tb_scm_tr_so_item_tb_inv_mf_item]
GO
ALTER TABLE [dbo].[tb_scm_tr_so_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_so_item_tb_inv_mf_uom] FOREIGN KEY([uom_id])
REFERENCES [dbo].[tb_inv_mf_uom] ([uom_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_so_item] CHECK CONSTRAINT [FK_tb_scm_tr_so_item_tb_inv_mf_uom]
GO
ALTER TABLE [dbo].[tb_scm_tr_so_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_scm_tr_so_item_tb_inv_mf_wh] FOREIGN KEY([wh_id])
REFERENCES [dbo].[tb_inv_mf_wh] ([wh_id])
GO
ALTER TABLE [dbo].[tb_scm_tr_so_item] CHECK CONSTRAINT [FK_tb_scm_tr_so_item_tb_inv_mf_wh]
GO
ALTER TABLE [dbo].[tb_srm_mf_supplier]  WITH CHECK ADD  CONSTRAINT [FK_tb_srm_mf_supplier_tb_scm_mf_tax] FOREIGN KEY([tax_id])
REFERENCES [dbo].[tb_srm_mf_tax] ([tax_id])
GO
ALTER TABLE [dbo].[tb_srm_mf_supplier] CHECK CONSTRAINT [FK_tb_srm_mf_supplier_tb_scm_mf_tax]
GO
