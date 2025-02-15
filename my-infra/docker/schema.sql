USE [vjs]
GO
/****** Object:  Table [dbo].[aaa_license_sso_change]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aaa_license_sso_change](
	[license_id] [int] NOT NULL,
	[sso_type_users] [int] NULL,
	[sso_type_admins] [int] NULL,
	[old_type_users] [int] NULL,
	[old_type_admins] [int] NULL,
 CONSTRAINT [PK_aaa_license_sso_change] PRIMARY KEY CLUSTERED 
(
	[license_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[accounting_system_customers]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounting_system_customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_name] [varchar](200) NOT NULL,
	[customer_description] [varchar](500) NULL,
 CONSTRAINT [PK_accounting_system_customers] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin_assignments_access]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_assignments_access](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[assignment_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_admin_assignments_access] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[affiliates]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[affiliates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aff_code] [varchar](24) NOT NULL,
	[aff_name] [varchar](50) NOT NULL,
	[aff_ip_start] [varchar](20) NULL,
	[aff_ip_end] [varchar](20) NULL,
	[user_id] [int] NULL,
	[feat_career_id] [nvarchar](700) NULL,
 CONSTRAINT [PK_affiliates] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assessment_ccis_results]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assessment_ccis_results](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[instance_guid] [uniqueidentifier] NOT NULL,
	[top_result_1_id] [int] NULL,
	[top_result_1_name] [varchar](100) NULL,
	[top_result_2_id] [int] NULL,
	[top_result_2_name] [varchar](100) NULL,
	[top_result_3_id] [int] NULL,
	[top_result_3_name] [varchar](100) NULL,
	[agriculture_score] [int] NULL,
	[architecture_score] [int] NULL,
	[arts_score] [int] NULL,
	[business_score] [int] NULL,
	[education_score] [int] NULL,
	[energy_score] [int] NULL,
	[finance_score] [int] NULL,
	[government_score] [int] NULL,
	[health_science_score] [int] NULL,
	[hospitality_score] [int] NULL,
	[human_services_score] [int] NULL,
	[it_score] [int] NULL,
	[law_security_score] [int] NULL,
	[manufacturing_score] [int] NULL,
	[marketing_score] [int] NULL,
	[stem_score] [int] NULL,
	[transportation_score] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_assessment_results_ccis] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assessment_oap_results]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assessment_oap_results](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[instance_guid] [uniqueidentifier] NOT NULL,
	[osoc_code] [varchar](15) NOT NULL,
	[job_zone] [int] NOT NULL,
	[soc_code] [varchar](15) NOT NULL,
	[correlation] [float] NOT NULL,
	[correlation_strength] [varchar](15) NOT NULL,
	[distance] [float] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_assessment_oap_results] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assessment_results]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assessment_results](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[instance_guid] [uniqueidentifier] NULL,
	[category_id] [int] NULL,
	[category_score] [int] NULL,
	[computed_score] [int] NULL,
 CONSTRAINT [PK_assessment_results] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assessment_riasec_results]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assessment_riasec_results](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[instance_guid] [uniqueidentifier] NOT NULL,
	[top_result_1_id] [int] NULL,
	[top_result_1_name] [varchar](100) NULL,
	[top_result_2_id] [int] NULL,
	[top_result_2_name] [varchar](100) NULL,
	[top_result_3_id] [int] NULL,
	[top_result_3_name] [varchar](100) NULL,
	[artistic_score] [int] NULL,
	[conventional_score] [int] NULL,
	[enterprising_score] [int] NULL,
	[investigative_score] [int] NULL,
	[realistic_score] [int] NULL,
	[social_score] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_assessment_results_ip] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assessment_wil_results]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assessment_wil_results](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[instance_guid] [uniqueidentifier] NOT NULL,
	[top_result_1_id] [int] NULL,
	[top_result_1_name] [varchar](100) NULL,
	[top_result_2_id] [int] NULL,
	[top_result_2_name] [varchar](100) NULL,
	[top_result_3_id] [int] NULL,
	[top_result_3_name] [varchar](100) NULL,
	[achievement_score] [int] NULL,
	[independence_score] [int] NULL,
	[recognition_score] [int] NULL,
	[relationships_score] [int] NULL,
	[support_score] [int] NULL,
	[working_conditions_score] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_assessment_results_wil] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assignment_comments]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assignment_comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_assignment_id] [int] NULL,
	[user_id] [int] NULL,
	[comment] [nvarchar](4000) NULL,
	[date_created] [datetime] NULL,
 CONSTRAINT [PK_assignment_comments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assignment_export_items]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assignment_export_items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[settings_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_assignment_export_items] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assignment_export_settings]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assignment_export_settings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[assignment_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[modified] [datetime] NULL,
 CONSTRAINT [PK_assignment_export_settings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_v1_users]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_v1_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ssoInstanceGuid] [uniqueidentifier] NOT NULL,
	[ssoUserId] [varchar](100) NOT NULL,
	[ssoUserRole] [varchar](255) NULL,
	[vjsLicenseId] [int] NULL,
	[vjsUserId] [int] NULL,
	[vjsUserRole] [int] NULL,
	[firstName] [varchar](100) NULL,
	[lastName] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[vjsGradeId] [int] NULL,
	[dateCreated] [datetime] NOT NULL,
	[dateModified] [datetime] NOT NULL,
	[ssoLicenseId] [varchar](255) NULL,
	[ssoLicenseList] [varchar](3000) NULL,
	[ssoGradeId] [varchar](255) NULL,
	[vjsLicenseList] [varchar](1000) NULL,
	[vjsUserName] [varchar](100) NULL,
	[vjsSisId] [varchar](100) NULL,
	[userRoleOverride] [bit] NULL,
	[ssoLoginOnly] [bit] NULL,
	[ssoTypeName] [varchar](100) NULL,
 CONSTRAINT [PK_auth_v1_users_ssoInstanceGuid_ssoUserId] PRIMARY KEY CLUSTERED 
(
	[ssoInstanceGuid] ASC,
	[ssoUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_v1_users_log]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_v1_users_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[requestKey] [varchar](100) NULL,
	[ssoInstanceGuid] [uniqueidentifier] NOT NULL,
	[ssoUserId] [varchar](100) NULL,
	[ssoUserRole] [varchar](150) NULL,
	[vjsLicenseId] [int] NULL,
	[vjsUserId] [int] NULL,
	[vjsUserRole] [int] NULL,
	[firstName] [varchar](100) NULL,
	[lastName] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[vjsGradeId] [int] NULL,
	[dateCreated] [datetime] NULL,
	[ssoLicenseId] [varchar](255) NULL,
	[ssoLicenseList] [varchar](3000) NULL,
	[ssoGradeId] [varchar](255) NULL,
	[vjsLicenseList] [varchar](600) NULL,
	[vjsUserName] [varchar](100) NULL,
	[vjsSisId] [varchar](100) NULL,
	[userRoleOverride] [bit] NULL,
	[ssoLoginOnly] [bit] NULL,
	[ssoTypeName] [varchar](100) NULL,
 CONSTRAINT [PK_auth_v1_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[batch_email_queue]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[batch_email_queue](
	[email_id] [int] IDENTITY(1,1) NOT NULL,
	[batch_id] [int] NULL,
	[email_to] [varchar](1000) NOT NULL,
	[email_to_name] [varchar](1000) NULL,
	[email_from] [varchar](1000) NOT NULL,
	[email_from_name] [varchar](1000) NULL,
	[email_subject] [varchar](1000) NOT NULL,
	[email_body] [text] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[attempted] [tinyint] NULL,
	[email_batch_id] [int] NULL,
	[optional] [varchar](500) NULL,
	[approved] [tinyint] NULL,
	[is_batch_approved] [tinyint] NULL,
	[email_reply] [varchar](1000) NULL,
	[email_reply_name] [varchar](1000) NULL,
 CONSTRAINT [PK_batch_email_queue] PRIMARY KEY CLUSTERED 
(
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[batch_main]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[batch_main](
	[batch_id] [int] IDENTITY(1,1) NOT NULL,
	[batch_type] [varchar](500) NOT NULL,
	[date_started] [datetime] NOT NULL,
	[date_completed] [datetime] NULL,
	[is_skipped] [tinyint] NULL,
	[details] [varchar](4000) NULL,
	[batch_type_id] [int] NULL,
 CONSTRAINT [PK_batch_main] PRIMARY KEY CLUSTERED 
(
	[batch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[batch_main_types]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[batch_main_types](
	[batch_type_id] [int] IDENTITY(1,1) NOT NULL,
	[batch_type_title] [varchar](250) NOT NULL,
	[batch_type_description] [text] NULL,
 CONSTRAINT [PK_batch_main_types] PRIMARY KEY CLUSTERED 
(
	[batch_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blog_images_inline]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog_images_inline](
	[image_id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NOT NULL,
	[image_link] [varchar](500) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_blog_images_inline] PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blog_tag_connection]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog_tag_connection](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NOT NULL,
	[tag_id] [int] NOT NULL,
 CONSTRAINT [PK_blog_tag_connection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blog_tags]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog_tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag_name] [varchar](50) NULL,
	[tag_route] [varchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_tags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blogs]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blogs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[title_meta] [varchar](100) NULL,
	[title_route] [varchar](100) NULL,
	[description_meta] [varchar](200) NULL,
	[date] [datetime] NULL,
	[author] [varchar](200) NULL,
	[image_name] [varchar](500) NULL,
	[hero_image] [varchar](500) NULL,
	[body] [nvarchar](max) NULL,
	[keywords] [varchar](100) NULL,
	[is_published] [tinyint] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_blogs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bulk_assign_lesson_template_lessons]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bulk_assign_lesson_template_lessons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bulk_assign_lesson_template_id] [int] NOT NULL,
	[lesson_id] [int] NOT NULL,
 CONSTRAINT [PK_bulk_assign_lesson_template_lessons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bulk_assign_lesson_template_managers]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bulk_assign_lesson_template_managers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bulk_assign_lesson_template_id] [int] NOT NULL,
	[manager_id] [int] NOT NULL,
 CONSTRAINT [PK_bulk_assign_lesson_template_managers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bulk_assign_lesson_templates]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bulk_assign_lesson_templates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[creator_id] [int] NOT NULL,
	[license_id] [int] NOT NULL,
	[primary_manager_id] [int] NOT NULL,
	[days_until_due] [int] NULL,
 CONSTRAINT [PK_bulk_assign_lesson_templates] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bulk_upload_groups]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bulk_upload_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[bulk_upload_id] [int] NOT NULL,
 CONSTRAINT [PK_groups_bulk_upload] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bulk_upload_groups_users]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bulk_upload_groups_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bulk_upload_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
	[date_created] [datetime] NULL,
 CONSTRAINT [PK_bulk_upload_groups_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bulk_upload_users]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bulk_upload_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[bulk_upload_id] [int] NOT NULL,
 CONSTRAINT [PK_users_bulk_upload] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_applicant]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_applicant](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[applicant_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[school_code] [varchar](100) NULL,
	[ferpa_status] [varchar](100) NULL,
	[ferpa_date] [datetime] NULL,
	[fee_waiver_status] [varchar](10) NULL,
	[ferpa_signature] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK__ca_applicant__ECD6355] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_applicant_counselor]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_applicant_counselor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[applicant_id] [numeric](18, 0) NOT NULL,
	[recommender_id] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_ca_applicant_counselor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_ca_applicant_counselor] UNIQUE NONCLUSTERED 
(
	[applicant_id] ASC,
	[recommender_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_applicant_members]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_applicant_members](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[applicant_id] [int] NOT NULL,
	[member_id] [int] NOT NULL,
	[is_submitted] [bit] NULL,
	[application_submitted_on] [datetime] NULL,
	[is_writing_supplement_submitted] [bit] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[term] [varchar](50) NULL,
	[selected_round] [varchar](50) NULL,
 CONSTRAINT [PK_ca_applicant_members] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_applicant_teacher_schools]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_applicant_teacher_schools](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[applicant_id] [int] NOT NULL,
	[recommender_id] [int] NOT NULL,
	[member_id] [int] NOT NULL,
 CONSTRAINT [PK_ca_applicant_teacher_schools] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_ca_applicant_teacher_schools] UNIQUE NONCLUSTERED 
(
	[applicant_id] ASC,
	[recommender_id] ASC,
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_college_downloads]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_college_downloads](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[applicant_id] [int] NOT NULL,
	[recommender_id] [int] NOT NULL,
	[rec_persona_type_id] [int] NOT NULL,
	[member_id] [int] NOT NULL,
	[form_name] [varchar](250) NOT NULL,
	[downloaded_date] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_ca_college_downloads] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_counselor_recommendation_forms]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_counselor_recommendation_forms](
	[applicant_id] [int] NOT NULL,
	[recommender_id] [int] NOT NULL,
	[knowing_applicant] [varchar](100) NULL,
	[describing_student] [varchar](150) NULL,
	[detailed_evaluation_long] [varchar](max) NULL,
	[evaluation_possible] [bit] NULL,
	[no_evaluation_reason] [varchar](max) NULL,
	[detailed_evaluation] [varchar](max) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detailed_evaluation_file] [varchar](max) NULL,
 CONSTRAINT [PK_ca_counselor_recommendation_forms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_early_decision_agreements]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_early_decision_agreements](
	[applicant_id] [int] NOT NULL,
	[recommender_id] [int] NOT NULL,
	[counselor_affirmation] [int] NOT NULL,
	[counselor_signature] [varchar](60) NOT NULL,
	[counselor_signature_date] [varchar](10) NOT NULL,
	[member_id] [int] NOT NULL,
	[report_version] [int] NOT NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ca_early_decision_agreements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_fee_waiver_forms]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_fee_waiver_forms](
	[applicant_id] [int] NOT NULL,
	[recommender_id] [int] NOT NULL,
	[economic_need] [int] NOT NULL,
	[fee_waiver_additional_info] [varchar](150) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ca_fee_waiver_forms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_final_year_report_forms]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_final_year_report_forms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[applicant_id] [int] NOT NULL,
	[recommender_id] [int] NOT NULL,
	[class_rank_reporting] [int] NULL,
	[applicant_exact_class_rank] [int] NULL,
	[applicant_decile_class_rank] [int] NULL,
	[applicant_quintile_class_rank] [int] NULL,
	[applicant_quartile_class_rank] [int] NULL,
	[num_students_share_rank] [int] NULL,
	[rank_weighting] [int] NULL,
	[rank_weighting_start_date] [varchar](50) NULL,
	[rank_weighting_end_date] [varchar](50) NULL,
	[gpa_reporting] [int] NULL,
	[applicant_cumulative_gpa] [float] NULL,
	[gpa_scale] [int] NULL,
	[gpa_start_date] [varchar](50) NULL,
	[gpa_end_date] [varchar](50) NULL,
	[gpa_weighting] [int] NULL,
	[passing_mark] [varchar](6) NULL,
	[highest_grade_gpa_class] [varchar](6) NULL,
	[transcript_affirmation] [int] NULL,
	[applicant_graduated] [int] NULL,
	[course_changes] [int] NULL,
	[evaluation_changes] [int] NULL,
	[explanation_document] [varchar](max) NULL,
	[applicant_transcript] [varchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
	[member_ids] [varchar](max) NULL,
 CONSTRAINT [PK_ca_final_year_report_forms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_member_deadlines]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_member_deadlines](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[memberId] [int] NOT NULL,
	[deadlineDate] [datetime2](0) NULL,
	[decisionType] [varchar](50) NULL,
	[term] [varchar](150) NULL,
	[termTypeId] [int] NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_ca_member_deadlines] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_members]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_members](
	[memberId] [int] NOT NULL,
	[address1] [varchar](150) NULL,
	[address2] [varchar](150) NULL,
	[artsSupplement] [int] NULL,
	[caEssayReqdFY] [bit] NULL,
	[city] [varchar](150) NULL,
	[collegeName] [varchar](150) NULL,
	[contactEmail] [varchar](150) NULL,
	[counselorEvalReqd] [bit] NULL,
	[country] [varchar](10) NULL,
	[coursesAndGradesReqd] [bit] NULL,
	[fax] [varchar](50) NULL,
	[minTeacherEval] [int] NULL,
	[maxTeacherEval] [int] NULL,
	[memberTypeId] [int] NULL,
	[midYearRequired] [bit] NULL,
	[phone] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[website] [varchar](500) NULL,
	[zip] [varchar](25) NULL,
	[ceebCode] [varchar](50) NULL,
	[ipedsCode] [varchar](50) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
	[hasWritingSupplement] [varchar](3) NULL,
	[transferOnly] [varchar](3) NULL,
 CONSTRAINT [PK_ca_members] PRIMARY KEY CLUSTERED 
(
	[memberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_mid_year_report_forms]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_mid_year_report_forms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[applicant_id] [int] NOT NULL,
	[recommender_id] [int] NOT NULL,
	[class_rank_reporting] [int] NULL,
	[applicant_exact_class_rank] [int] NULL,
	[applicant_decile_class_rank] [int] NULL,
	[applicant_quintile_class_rank] [int] NULL,
	[applicant_quartile_class_rank] [int] NULL,
	[num_students_share_rank] [int] NULL,
	[rank_weighting] [int] NULL,
	[rank_weighting_start_date] [varchar](50) NULL,
	[rank_weighting_end_date] [varchar](50) NULL,
	[gpa_reporting] [int] NULL,
	[applicant_cumulative_gpa] [float] NULL,
	[gpa_scale] [int] NULL,
	[gpa_start_date] [varchar](50) NULL,
	[gpa_end_date] [varchar](50) NULL,
	[gpa_weighting] [int] NULL,
	[passing_mark] [varchar](6) NULL,
	[highest_grade_gpa_class] [varchar](6) NULL,
	[transcript_affirmation] [int] NULL,
	[transcript_grades] [int] NULL,
	[course_changes] [int] NULL,
	[evaluation_changes] [int] NULL,
	[explanation_document] [varchar](max) NULL,
	[applicant_transcript] [varchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_ca_mid_year_report_forms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_optional_1_report_forms]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_optional_1_report_forms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[applicant_id] [int] NOT NULL,
	[recommender_id] [int] NOT NULL,
	[instructional_text] [int] NULL,
	[updates] [varchar](15) NULL,
	[class_rank_reporting] [int] NULL,
	[applicant_exact_class_rank] [int] NULL,
	[applicant_decile_class_rank] [int] NULL,
	[applicant_quintile_class_rank] [int] NULL,
	[applicant_quartile_class_rank] [int] NULL,
	[num_students_share_rank] [int] NULL,
	[rank_weighting] [int] NULL,
	[rank_weighting_start_date] [varchar](50) NULL,
	[rank_weighting_end_date] [varchar](50) NULL,
	[gpa_reporting] [int] NULL,
	[applicant_cumulative_gpa] [float] NULL,
	[gpa_scale] [int] NULL,
	[gpa_start_date] [varchar](50) NULL,
	[gpa_end_date] [varchar](50) NULL,
	[gpa_weighting] [int] NULL,
	[passing_mark] [varchar](6) NULL,
	[highest_grade_gpa_class] [varchar](6) NULL,
	[transcript_affirmation] [int] NULL,
	[applicant_graduated] [int] NULL,
	[course_changes] [int] NULL,
	[evaluation_changes] [int] NULL,
	[explanation_document] [varchar](max) NULL,
	[applicant_transcript] [varchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
	[transcript_grades] [int] NULL,
 CONSTRAINT [PK_ca_optional_1_report_forms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_optional_2_report_forms]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_optional_2_report_forms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[applicant_id] [int] NOT NULL,
	[recommender_id] [int] NOT NULL,
	[instructional_text] [int] NULL,
	[updates] [varchar](15) NULL,
	[class_rank_reporting] [int] NULL,
	[applicant_exact_class_rank] [int] NULL,
	[applicant_decile_class_rank] [int] NULL,
	[applicant_quintile_class_rank] [int] NULL,
	[applicant_quartile_class_rank] [int] NULL,
	[num_students_share_rank] [int] NULL,
	[rank_weighting] [int] NULL,
	[rank_weighting_start_date] [varchar](50) NULL,
	[rank_weighting_end_date] [varchar](50) NULL,
	[gpa_reporting] [int] NULL,
	[applicant_cumulative_gpa] [float] NULL,
	[gpa_scale] [int] NULL,
	[gpa_start_date] [varchar](50) NULL,
	[gpa_end_date] [varchar](50) NULL,
	[gpa_weighting] [int] NULL,
	[passing_mark] [varchar](6) NULL,
	[highest_grade_gpa_class] [varchar](6) NULL,
	[transcript_affirmation] [int] NULL,
	[applicant_graduated] [int] NULL,
	[course_changes] [int] NULL,
	[evaluation_changes] [int] NULL,
	[explanation_document] [varchar](max) NULL,
	[applicant_transcript] [varchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
	[transcript_grades] [int] NULL,
 CONSTRAINT [PK_ca_optional_2_report_forms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_question_map]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_question_map](
	[question_id] [int] NOT NULL,
	[column_name] [varchar](50) NOT NULL,
	[form_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ca_question_map] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_school_profiles]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_school_profiles](
	[license_id] [int] NOT NULL,
	[website] [varchar](150) NULL,
	[community_disruption] [text] NULL,
	[school_setting] [varchar](10) NULL,
	[class_size] [int] NULL,
	[block_schedule] [bit] NOT NULL,
	[academic_ratings] [bit] NOT NULL,
	[international] [bit] NOT NULL,
	[international_ap] [bit] NULL,
	[us_citizen] [decimal](5, 2) NULL,
	[non_us_citizen] [decimal](5, 2) NULL,
	[free_lunch] [decimal](5, 2) NULL,
	[financial_aid] [decimal](5, 2) NULL,
	[latino_percent] [decimal](5, 2) NULL,
	[asian_percent] [decimal](5, 2) NULL,
	[african_american_percent] [decimal](5, 2) NULL,
	[white_percent] [decimal](5, 2) NULL,
	[american_indian_percent] [decimal](5, 2) NULL,
	[native_percent] [decimal](5, 2) NULL,
	[two_year] [decimal](5, 2) NULL,
	[four_year] [decimal](5, 2) NULL,
	[first_gen] [decimal](5, 2) NULL,
	[ap_offered] [bit] NULL,
	[ap_number] [int] NULL,
	[ap_limit] [int] NULL,
	[ib_offered] [bit] NULL,
	[ib_number] [int] NULL,
	[ib_limit] [int] NULL,
	[honors_offered] [bit] NULL,
	[honors_number] [int] NULL,
	[honors_limit] [int] NULL,
	[cambridge_offered] [bit] NULL,
	[cambridge_number] [int] NULL,
	[cambridge_limit] [int] NULL,
	[graduation] [date] NOT NULL,
	[mr_date] [date] NULL,
	[service] [bit] NOT NULL,
	[service_description] [text] NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[school_profile_upload] [varchar](max) NULL,
	[school_profile_upload_file_name] [nchar](200) NULL,
	[ceeb_code] [int] NULL,
 CONSTRAINT [PK_ca_school_profiles] PRIMARY KEY CLUSTERED 
(
	[license_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_school_report_forms]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_school_report_forms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[applicant_id] [int] NOT NULL,
	[recommender_id] [int] NOT NULL,
	[class_rank_reporting] [int] NULL,
	[applicant_exact_class_rank] [int] NULL,
	[applicant_quintile_class_rank] [int] NULL,
	[num_students_share_rank] [int] NULL,
	[applicant_decile_class_rank] [int] NULL,
	[applicant_quartile_class_rank] [int] NULL,
	[rank_weighting] [int] NULL,
	[rank_weighting_start_date] [varchar](50) NULL,
	[rank_weighting_end_date] [varchar](50) NULL,
	[gpa_reporting] [int] NULL,
	[applicant_cumulative_gpa] [float] NULL,
	[gpa_scale] [int] NULL,
	[gpa_start_date] [varchar](50) NULL,
	[gpa_end_date] [varchar](50) NULL,
	[gpa_weighting] [int] NULL,
	[passing_mark] [float] NULL,
	[highest_grade_gpa_class] [float] NULL,
	[course_selection] [int] NULL,
	[ib_diploma] [int] NULL,
	[aice_diploma] [int] NULL,
	[ap_capstone_diploma] [int] NULL,
	[rating_academics] [int] NULL,
	[rating_extracurricular] [int] NULL,
	[rating_personal] [int] NULL,
	[rating_overall] [int] NULL,
	[transcript_number] [int] NULL,
	[transcript1_courses] [int] NULL,
	[transcript1_exams] [int] NULL,
	[transcript_grades] [int] NULL,
	[transcript_affirmation] [int] NULL,
	[transcript_recommendation] [int] NULL,
	[language] [int] NULL,
	[education] [varchar](50) NULL,
	[leaving_exam] [varchar](50) NULL,
	[excellent] [varchar](50) NULL,
	[very_good] [varchar](50) NULL,
	[average] [varchar](50) NULL,
	[poor] [varchar](50) NULL,
	[failing] [varchar](50) NULL,
	[homeschool_experience] [varchar](1000) NULL,
	[homeschool_grading_scale] [varchar](1000) NULL,
	[homeschool_outside_evaluation] [varchar](1000) NULL,
	[homeschool_association_member] [varchar](1000) NULL,
	[homeschool_association_name] [varchar](200) NULL,
	[transcript1] [varchar](max) NULL,
	[transcript2] [varchar](max) NULL,
	[transcript3] [varchar](max) NULL,
	[transcript4] [varchar](max) NULL,
	[transcriptCourses] [varchar](max) NULL,
	[internationalForm] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PK_ca_school_report_forms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_teacher_recommendation_forms]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_teacher_recommendation_forms](
	[recommender_id] [int] NOT NULL,
	[applicant_id] [int] NOT NULL,
	[subject_area] [int] NULL,
	[academic_achievement_rating] [int] NULL,
	[intellectual_promise_rating] [int] NULL,
	[quality_of_writing_rating] [int] NULL,
	[creative_thought_rating] [int] NULL,
	[productive_discussion_rating] [int] NULL,
	[faculty_respect_rating] [int] NULL,
	[disciplined_habits_rating] [int] NULL,
	[maturity_rating] [int] NULL,
	[motivation_rating] [int] NULL,
	[leadership_rating] [int] NULL,
	[integrity_rating] [int] NULL,
	[reaction_to_setbacks_rating] [int] NULL,
	[concern_for_others_rating] [int] NULL,
	[self_confidence_rating] [int] NULL,
	[initiative_rating] [int] NULL,
	[overall_evaluation_rating] [int] NULL,
	[grade_levels] [varchar](50) NULL,
	[grade_level_other] [varchar](30) NULL,
	[knowing_applicant] [varchar](max) NULL,
	[describing_student] [varchar](max) NULL,
	[detailed_evaluation_long] [varchar](max) NULL,
	[detailed_evaluation_file] [varchar](max) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ca_teacher_recommendation_forms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ca_user]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca_user](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[is_counselor] [bit] NOT NULL,
	[is_teacher] [bit] NOT NULL,
	[updated_at] [datetime] NULL,
	[created_at] [datetime] NULL,
	[instructor_type] [varchar](15) NULL,
	[high_school_ceeb] [varchar](6) NULL,
	[college_ceeb] [varchar](4) NULL,
	[academic_ratings] [bit] NOT NULL,
	[recommender_id] [numeric](18, 0) NULL,
	[transcript_affirmation] [varchar](50) NULL,
	[agreed_com] [varchar](50) NULL,
	[last_successful_submission] [datetime] NULL,
 CONSTRAINT [ca_user_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ca_user_UN] UNIQUE NONCLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_categories]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_categories](
	[category_id] [int] NOT NULL,
	[category_name] [varchar](50) NULL,
	[category_display_name] [varchar](50) NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_career_categories] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_category_sections]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_category_sections](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[section_id] [int] NULL,
	[section_name] [varchar](50) NULL,
	[section_display_name] [varchar](50) NULL,
	[display_order] [int] NULL,
	[section_description] [varchar](500) NULL,
	[wistia_id] [varchar](20) NULL,
	[thumb_img] [varchar](50) NULL,
	[thumb_color] [varchar](6) NULL,
 CONSTRAINT [PK_career_category_sections] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_category_settings]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_category_settings](
	[license_id] [int] NULL,
	[career_category_id] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_career_category_settings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_cip_codes]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_cip_codes](
	[Career_ID] [int] NOT NULL,
	[Career_Name] [nvarchar](255) NULL,
	[CIP_Codes] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_career_cip_codes] PRIMARY KEY CLUSTERED 
(
	[Career_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_cluster]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_cluster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[career_id] [int] NOT NULL,
	[cluster_id] [int] NOT NULL,
	[ooh_cluster_id] [int] NULL,
 CONSTRAINT [PK_career_cluster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_career_cluster_cc] UNIQUE NONCLUSTERED 
(
	[career_id] ASC,
	[cluster_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_count]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_count](
	[career_id] [int] NOT NULL,
	[career_count] [int] NULL,
 CONSTRAINT [PK_career_count] PRIMARY KEY CLUSTERED 
(
	[career_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_industry]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_industry](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[career_id] [int] NOT NULL,
	[industry_id] [int] NOT NULL,
 CONSTRAINT [PK_career_industry2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_interest]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_interest](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[career_id] [int] NOT NULL,
	[interest_id] [int] NOT NULL,
 CONSTRAINT [PK_career_interest] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_ooh_link]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_ooh_link](
	[career_guid] [uniqueidentifier] NOT NULL,
	[ooh_guid] [varchar](50) NOT NULL,
 CONSTRAINT [PK_career_ooh_link] PRIMARY KEY CLUSTERED 
(
	[career_guid] ASC,
	[ooh_guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_profile_custom_tab]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_profile_custom_tab](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vjs_license] [int] NOT NULL,
	[title] [varchar](200) NOT NULL,
	[html] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_career_profile_custom_tab] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_quiz]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_quiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quizGuid] [uniqueidentifier] NOT NULL,
	[careerGuid] [uniqueidentifier] NULL,
	[name] [varchar](200) NULL,
	[master] [int] NOT NULL,
	[active] [int] NOT NULL,
	[licenseList] [varchar](500) NULL,
	[groupList] [varchar](500) NULL,
	[userList] [varchar](2000) NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[userGuid] [varchar](50) NULL,
 CONSTRAINT [PK_career_quiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_section_connection]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_section_connection](
	[category_id] [int] NULL,
	[section_id] [int] NULL,
	[career_id] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_career_section_connection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_text_qa]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_text_qa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[threadID] [int] NOT NULL,
	[userID] [int] NOT NULL,
	[licenseID] [int] NULL,
	[careerID] [int] NOT NULL,
	[approved] [bit] NULL,
	[question] [text] NULL,
	[answer] [text] NULL,
	[answer_posted] [datetime] NULL,
	[question_posted] [datetime] NULL,
	[displayorder] [int] NULL,
	[authorid] [int] NULL,
	[update_date] [datetime] NULL,
	[AssignedMentorID] [int] NULL,
	[moderatorStatus] [int] NULL,
	[moderatorApprovedDate] [datetime] NULL,
	[moderatorDenyDate] [datetime] NULL,
	[moderatorDenyComments] [nvarchar](400) NULL,
 CONSTRAINT [PK_career_text_qa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_topics]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_topics](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[career_id] [int] NOT NULL,
	[topic1] [ntext] NULL,
	[topic2] [ntext] NULL,
	[topic3] [ntext] NULL,
	[topic4] [ntext] NULL,
	[topic5] [ntext] NULL,
	[topic6] [ntext] NULL,
	[topic7] [ntext] NULL,
	[topic8] [ntext] NULL,
	[topic9] [ntext] NULL,
	[topic1_more] [varchar](50) NULL,
	[topic2_more] [varchar](50) NULL,
	[topic3_more] [varchar](50) NULL,
	[topic4_more] [varchar](50) NULL,
	[topic5_more] [varchar](50) NULL,
	[topic6_more] [varchar](50) NULL,
	[topic7_more] [varchar](50) NULL,
	[topic8_more] [varchar](50) NULL,
	[topic9_more] [varchar](50) NULL,
	[topic_video_img] [varchar](50) NULL,
	[user_id] [int] NULL,
	[date_modified] [datetime] NULL,
	[topic_indeed_jobs] [nvarchar](1500) NULL,
	[topic_indeed_jobs_more] [nvarchar](500) NULL,
	[topic10] [ntext] NULL,
	[topic10_more] [varchar](50) NULL,
 CONSTRAINT [PK_career_topics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career_video_qa]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career_video_qa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[career_id] [int] NOT NULL,
	[question] [varchar](255) NULL,
	[answer_link] [varchar](150) NULL,
	[disp_order] [int] NULL,
	[qa_qt] [bit] NULL,
	[has_flash] [int] NULL,
	[guid] [uniqueidentifier] NULL,
	[career_guid] [uniqueidentifier] NULL,
	[has_mov] [int] NULL,
	[wistia_id] [nvarchar](40) NULL,
 CONSTRAINT [PK_career_video_qa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[careers]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[careers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[career_name] [varchar](150) NULL,
	[link] [char](25) NULL,
	[vjs_career_title] [varchar](150) NULL,
	[company_logo_small] [varchar](50) NULL,
	[company_logo_big] [varchar](50) NULL,
	[company_name] [varchar](100) NULL,
	[company_name_search] [varchar](100) NULL,
	[vjs_filmstrip] [varchar](75) NULL,
	[vjs_headshot] [varchar](75) NULL,
	[has_video] [int] NULL,
	[person_name] [varchar](50) NULL,
	[video_abbr] [varchar](30) NULL,
	[main_img] [varchar](50) NULL,
	[filmstrip_img] [varchar](50) NULL,
	[nametitle_img] [varchar](50) NULL,
	[playvid_img] [varchar](50) NULL,
	[small_img] [varchar](50) NULL,
	[info_by_img] [varchar](50) NULL,
	[wm28] [int] NULL,
	[wm56] [int] NULL,
	[wm100] [int] NULL,
	[wm200] [int] NULL,
	[wm350] [int] NULL,
	[qt100] [int] NULL,
	[qt200] [int] NULL,
	[caption] [varchar](1000) NULL,
	[active] [int] NULL,
	[ad_player_active] [int] NULL,
	[ad_player_career_name] [nvarchar](100) NULL,
	[displayorder] [int] NULL,
	[has_flash] [int] NULL,
	[has_HD] [int] NULL,
	[user_id] [int] NULL,
	[has_transcript] [int] NULL,
	[date_modified] [datetime] NULL,
	[eduDegreeID] [int] NULL,
	[devryID] [int] NULL,
	[tags] [nvarchar](3000) NULL,
	[eLearnCatID] [int] NULL,
	[eLearnConID] [int] NULL,
	[notes] [nvarchar](500) NULL,
	[has_mov] [int] NULL,
	[wistia_id] [nvarchar](40) NULL,
	[isooh] [int] NULL,
	[ooh_guid] [varchar](50) NULL,
	[socCode] [varchar](50) NULL,
	[prim_cluster_id] [int] NULL,
	[company_url] [varchar](200) NULL,
	[company_address_1] [varchar](255) NULL,
	[company_address_2] [varchar](255) NULL,
	[company_city] [varchar](100) NULL,
	[company_state] [varchar](2) NULL,
	[company_zip] [varchar](10) NULL,
	[lat] [varchar](50) NULL,
	[lng] [varchar](50) NULL,
	[kid_friendly_wistia_id] [varchar](50) NULL,
	[banner_img] [varchar](60) NULL,
	[dashboard_description] [varchar](400) NULL,
	[created_at] [datetime] NULL,
	[published_at] [datetime] NULL,
	[onet_soc_code] [varchar](15) NULL,
	[legacy_explore] [bit] NOT NULL,
 CONSTRAINT [PK_careers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[careers_cipcodes]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[careers_cipcodes](
	[career_id] [int] NOT NULL,
	[career_guid] [uniqueidentifier] NOT NULL,
	[cip_code] [varchar](10) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_careers_cipcodes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[careers_featured]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[careers_featured](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[featured_career_id] [int] NULL,
	[career_guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_careers_featured] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[careers_featured_groups]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[careers_featured_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_title] [varchar](50) NULL,
	[group_description] [varchar](250) NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[excluded_group] [int] NULL,
	[main_group] [int] NULL,
 CONSTRAINT [PK_careers_featured_groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[careers_ooh_new]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[careers_ooh_new](
	[temp_career_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](250) NULL,
	[soc_code] [varchar](25) NULL,
	[all_data] [text] NULL,
	[ooh_date_last_updated] [datetime] NULL,
	[ooh_reference_year] [char](4) NULL,
	[ooh_projection_year] [char](4) NULL,
	[date_modified] [datetime] NULL,
	[checksum] [varchar](100) NULL,
	[batch_id] [int] NULL,
	[reviewed] [bit] NOT NULL,
 CONSTRAINT [PK_careers_ooh_new] PRIMARY KEY CLUSTERED 
(
	[temp_career_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[careers_ooh_v1]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[careers_ooh_v1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[oGuid] [uniqueidentifier] NULL,
	[clusterid] [int] NULL,
	[name] [nvarchar](255) NULL,
	[socCode] [varchar](10) NULL,
	[data] [ntext] NULL,
 CONSTRAINT [PK_careers_ooh_v1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[careers_ooh_v1_parsed]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[careers_ooh_v1_parsed](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[oGuid] [uniqueidentifier] NULL,
	[clusterid] [int] NULL,
	[name] [nvarchar](255) NULL,
	[socCode] [varchar](10) NULL,
	[data] [varchar](10) NULL,
	[career_description] [varchar](10) NULL,
	[required_education] [varchar](10) NULL,
	[earnings] [varchar](10) NULL,
	[future_outlook] [varchar](10) NULL,
	[additional_links] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[careers_replacement]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[careers_replacement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[old_career_id] [int] NOT NULL,
	[new_career_id] [int] NOT NULL,
 CONSTRAINT [PK_careers_replacement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cip_codes]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cip_codes](
	[CIPFamily] [nvarchar](255) NULL,
	[CIPCode] [varchar](20) NOT NULL,
	[Action] [nvarchar](255) NULL,
	[TextChange] [nvarchar](255) NULL,
	[CIPTitle] [nvarchar](255) NULL,
	[CIPDefinition] [nvarchar](4000) NULL,
	[CrossReferences] [nvarchar](255) NULL,
	[Examples] [nvarchar](255) NULL,
	[display_name] [varchar](100) NULL,
 CONSTRAINT [PK_cip_codes] PRIMARY KEY CLUSTERED 
(
	[CIPCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cip_codes_alt]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cip_codes_alt](
	[cip_code_id] [int] IDENTITY(1,1) NOT NULL,
	[CIPFamily] [char](2) NULL,
	[CIPCode] [varchar](20) NOT NULL,
	[Action] [nvarchar](255) NULL,
	[TextChange] [nvarchar](255) NULL,
	[CIPTitle] [nvarchar](255) NULL,
	[CIPDefinition] [nvarchar](4000) NULL,
	[CrossReferences] [nvarchar](255) NULL,
	[Examples] [nvarchar](255) NULL,
	[display_name] [varchar](75) NULL,
	[cip_header] [varchar](255) NULL,
 CONSTRAINT [PK_cip_codes_alt] PRIMARY KEY CLUSTERED 
(
	[cip_code_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cleversync_groups]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cleversync_groups](
	[group_id] [int] NOT NULL,
	[clever_id] [varchar](255) NULL,
	[cleversync_hash] [char](32) NULL,
	[date_created] [datetime2](0) NOT NULL,
	[date_modified] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_cleversync_groups] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cleversync_licenses]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cleversync_licenses](
	[license_id] [int] NOT NULL,
	[clever_id] [varchar](255) NULL,
	[cleversync_hash] [char](32) NULL,
	[date_created] [datetime2](0) NOT NULL,
	[date_modified] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_cleversync_licenses] PRIMARY KEY CLUSTERED 
(
	[license_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cleversync_users]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cleversync_users](
	[user_id] [int] NOT NULL,
	[clever_id] [varchar](255) NULL,
	[cleversync_hash] [char](32) NULL,
	[date_created] [datetime2](0) NOT NULL,
	[date_modified] [datetime2](0) NOT NULL,
	[update_count] [int] NOT NULL,
 CONSTRAINT [PK_cleversync_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clusters]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clusters](
	[id] [int] NOT NULL,
	[cluster_name] [varchar](50) NOT NULL,
	[ad_player_cluster_name] [varchar](50) NULL,
	[img_src] [char](40) NULL,
	[short_desc] [char](40) NULL,
	[active] [bit] NULL,
	[ooh_id] [int] NULL,
 CONSTRAINT [PK_clusters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[colleges]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colleges](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[collegeGuid] [uniqueidentifier] NULL,
	[name] [varchar](255) NOT NULL,
	[generalInfo] [text] NULL,
	[CollegeInfo] [text] NULL,
	[events] [text] NULL,
	[videos] [text] NULL,
	[recruiting] [text] NULL,
	[valuesCulture] [text] NULL,
	[students] [text] NULL,
	[active] [int] NULL,
	[dateCreated] [datetime] NULL,
	[dateModified] [datetime] NULL,
	[news] [text] NULL,
	[collegeStatus] [text] NULL,
 CONSTRAINT [PK_colleges] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[colleges_2019_03]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colleges_2019_03](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[name_alias] [nvarchar](2000) NULL,
	[year] [varchar](20) NULL,
	[type] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[zip] [nvarchar](255) NULL,
	[phone] [varchar](50) NULL,
	[lon] [float] NULL,
	[lat] [float] NULL,
	[geo_region] [nvarchar](255) NULL,
	[level] [nvarchar](255) NULL,
	[control] [nvarchar](255) NULL,
	[forprofit] [nvarchar](255) NULL,
	[religious_affiliation] [nvarchar](255) NULL,
	[main_website] [nvarchar](255) NULL,
	[fin_aid_website] [nvarchar](2000) NULL,
	[admission_website] [nvarchar](2000) NULL,
	[online_app_website] [nvarchar](2000) NULL,
	[student_faculty_ratio] [varchar](20) NULL,
	[total_applied] [varchar](20) NULL,
	[total_accepted] [varchar](20) NULL,
	[total_enrolled_of_accepted] [varchar](20) NULL,
	[open_admission_policy_required] [nvarchar](255) NULL,
	[secondary_school_gpa_required] [nvarchar](255) NULL,
	[secondary_school_rank_required] [nvarchar](255) NULL,
	[secondary_school_record_required] [nvarchar](255) NULL,
	[completion_collegeprep_prog_required] [nvarchar](255) NULL,
	[recommendations_required] [nvarchar](255) NULL,
	[formal_demo_competencies_required] [nvarchar](255) NULL,
	[admission_test_scores_required] [nvarchar](255) NULL,
	[toefl_required] [nvarchar](255) NULL,
	[sat_critical_reading_25] [varchar](20) NULL,
	[sat_critical_reading_75] [varchar](20) NULL,
	[sat_math_25] [varchar](20) NULL,
	[sat_math_75] [varchar](20) NULL,
	[act_composite_25] [varchar](20) NULL,
	[act_composite_75] [varchar](20) NULL,
	[act_english_25] [varchar](20) NULL,
	[act_english_75] [varchar](20) NULL,
	[act_math_25] [varchar](20) NULL,
	[act_math_75] [varchar](20) NULL,
	[instate_tuition] [varchar](20) NULL,
	[instate_fees] [varchar](20) NULL,
	[instate_avg_tuition_full_time_graduates] [varchar](20) NULL,
	[outofstate_avg_tuition_full_time_graduates] [varchar](20) NULL,
	[published_outofstate_tuition] [varchar](20) NULL,
	[published_outofstate_fees] [varchar](20) NULL,
	[book_supplies] [varchar](20) NULL,
	[oncampus_room_board] [varchar](20) NULL,
	[oncampus_other_expenses] [varchar](20) NULL,
	[offcampus_room_board] [varchar](20) NULL,
	[offcampus_other_expenses] [varchar](20) NULL,
	[perc_undergrad_receiving_finaid] [varchar](20) NULL,
	[perc_undergrad_receiving_pell_grants] [varchar](20) NULL,
	[avg_pell_grant_aid_undergrad] [varchar](20) NULL,
	[perc_undergrad_receiving_fed_student_loan_aid] [varchar](20) NULL,
	[avg_amount_fed_student_loan_aid_received_undergrad] [varchar](20) NULL,
	[total_students] [varchar](20) NULL,
	[total_men] [varchar](20) NULL,
	[total_women] [varchar](20) NULL,
	[american_indian_alaska_native_total] [varchar](20) NULL,
	[asian_total] [varchar](20) NULL,
	[black_african_american_total] [varchar](20) NULL,
	[hispanic_total] [varchar](20) NULL,
	[native_hawaiian_other_pacific_islander_total] [varchar](20) NULL,
	[white_total] [varchar](20) NULL,
	[mission_statement] [nvarchar](100) NULL,
	[mission_statement_website] [nvarchar](2000) NULL,
	[cert1] [nvarchar](255) NULL,
	[cert2] [nvarchar](255) NULL,
	[assoc1] [nvarchar](255) NULL,
	[assoc_cert] [nvarchar](255) NULL,
	[bach] [nvarchar](255) NULL,
	[bach_cert] [nvarchar](255) NULL,
	[mast] [nvarchar](255) NULL,
	[mast_cert] [nvarchar](255) NULL,
	[doct] [nvarchar](255) NULL,
	[doct_cert1] [nvarchar](255) NULL,
	[doct_cert2] [nvarchar](255) NULL,
	[total_enrollment] [float] NULL,
	[college_guid] [uniqueidentifier] NULL,
	[instate_avg_tuition_full_time_undergraduates] [varchar](20) NULL,
	[outofstate_avg_tuition_full_time_undergraduates] [varchar](20) NULL,
	[entry_status] [varchar](100) NULL,
	[reference_id] [varchar](100) NULL,
	[total_undergrads] [varchar](100) NULL,
	[updated_at] [datetime] NULL,
	[hbcu] [bit] NULL,
 CONSTRAINT [PK_colleges_2019_03] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[colleges_log_data]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colleges_log_data](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[last_modified_by] [int] NOT NULL,
	[last_modified_date] [datetime] NOT NULL,
	[id] [varchar](100) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[name_alias] [nvarchar](2000) NULL,
	[year] [varchar](20) NULL,
	[type] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[zip] [nvarchar](255) NULL,
	[phone] [varchar](50) NULL,
	[lon] [float] NULL,
	[lat] [float] NULL,
	[geo_region] [nvarchar](255) NULL,
	[level] [nvarchar](255) NULL,
	[control] [nvarchar](255) NULL,
	[forprofit] [nvarchar](255) NULL,
	[religious_affiliation] [nvarchar](255) NULL,
	[main_website] [nvarchar](2000) NULL,
	[fin_aid_website] [nvarchar](2000) NULL,
	[admission_website] [nvarchar](2000) NULL,
	[online_app_website] [nvarchar](2000) NULL,
	[student_faculty_ratio] [varchar](20) NULL,
	[total_applied] [varchar](20) NULL,
	[total_accepted] [varchar](20) NULL,
	[total_enrolled_of_accepted] [varchar](20) NULL,
	[open_admission_policy_required] [nvarchar](255) NULL,
	[secondary_school_gpa_required] [nvarchar](255) NULL,
	[secondary_school_rank_required] [nvarchar](255) NULL,
	[secondary_school_record_required] [nvarchar](255) NULL,
	[completion_collegeprep_prog_required] [nvarchar](255) NULL,
	[recommendations_required] [nvarchar](255) NULL,
	[formal_demo_competencies_required] [nvarchar](255) NULL,
	[admission_test_scores_required] [nvarchar](255) NULL,
	[toefl_required] [nvarchar](255) NULL,
	[sat_critical_reading_25] [varchar](20) NULL,
	[sat_critical_reading_75] [varchar](20) NULL,
	[sat_math_25] [varchar](20) NULL,
	[sat_math_75] [varchar](20) NULL,
	[act_composite_25] [varchar](20) NULL,
	[act_composite_75] [varchar](20) NULL,
	[act_english_25] [varchar](20) NULL,
	[act_english_75] [varchar](20) NULL,
	[act_math_25] [varchar](20) NULL,
	[act_math_75] [varchar](20) NULL,
	[instate_tuition] [varchar](20) NULL,
	[instate_fees] [varchar](20) NULL,
	[instate_avg_tuition_full_time_graduates] [varchar](20) NULL,
	[outofstate_avg_tuition_full_time_graduates] [varchar](20) NULL,
	[published_outofstate_tuition] [varchar](20) NULL,
	[published_outofstate_fees] [varchar](20) NULL,
	[book_supplies] [varchar](20) NULL,
	[oncampus_room_board] [varchar](20) NULL,
	[oncampus_other_expenses] [varchar](20) NULL,
	[offcampus_room_board] [varchar](20) NULL,
	[offcampus_other_expenses] [varchar](20) NULL,
	[perc_undergrad_receiving_finaid] [varchar](20) NULL,
	[perc_undergrad_receiving_pell_grants] [varchar](20) NULL,
	[avg_pell_grant_aid_undergrad] [varchar](20) NULL,
	[perc_undergrad_receiving_fed_student_loan_aid] [varchar](20) NULL,
	[avg_amount_fed_student_loan_aid_received_undergrad] [varchar](20) NULL,
	[total_students] [varchar](20) NULL,
	[total_men] [varchar](20) NULL,
	[total_women] [varchar](20) NULL,
	[american_indian_alaska_native_total] [varchar](20) NULL,
	[asian_total] [varchar](20) NULL,
	[black_african_american_total] [varchar](20) NULL,
	[hispanic_total] [varchar](20) NULL,
	[native_hawaiian_other_pacific_islander_total] [varchar](20) NULL,
	[white_total] [varchar](20) NULL,
	[mission_statement] [text] NULL,
	[mission_statement_website] [nvarchar](2000) NULL,
	[cert1] [nvarchar](255) NULL,
	[cert2] [nvarchar](255) NULL,
	[assoc1] [nvarchar](255) NULL,
	[assoc_cert] [nvarchar](255) NULL,
	[bach] [nvarchar](255) NULL,
	[bach_cert] [nvarchar](255) NULL,
	[mast] [nvarchar](255) NULL,
	[mast_cert] [nvarchar](255) NULL,
	[doct] [nvarchar](255) NULL,
	[doct_cert1] [nvarchar](255) NULL,
	[doct_cert2] [nvarchar](255) NULL,
	[total_enrollment] [float] NULL,
	[college_guid] [uniqueidentifier] NULL,
	[instate_avg_tuition_full_time_undergraduates] [varchar](20) NULL,
	[outofstate_avg_tuition_full_time_undergraduates] [varchar](20) NULL,
	[entry_status] [varchar](100) NULL,
	[reference_id] [varchar](100) NULL,
	[total_undergrads] [varchar](100) NULL,
	[cip_list] [text] NULL,
	[updated_at] [datetime] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_colleges_log_data] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[colleges_new]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colleges_new](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[year] [varchar](20) NULL,
	[state] [nvarchar](255) NULL,
	[type] [nvarchar](255) NULL,
	[religious_affiliation] [nvarchar](255) NULL,
	[student_faculty_ratio] [varchar](20) NULL,
	[address] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[zip] [nvarchar](255) NULL,
	[phone] [varchar](50) NULL,
	[main_website] [nvarchar](500) NULL,
	[fin_aid_website] [nvarchar](500) NULL,
	[admission_website] [nvarchar](500) NULL,
	[online_app_website] [nvarchar](500) NULL,
	[total_applied] [varchar](20) NULL,
	[total_accepted] [varchar](20) NULL,
	[total_enrolled_of_accepted] [varchar](20) NULL,
	[open_admission_policy_required] [nvarchar](255) NULL,
	[secondary_school_gpa_required] [nvarchar](255) NULL,
	[secondary_school_rank_required] [nvarchar](255) NULL,
	[secondary_school_record_required] [nvarchar](255) NULL,
	[completion_collegeprep_prog_required] [nvarchar](255) NULL,
	[recommendations_required] [nvarchar](255) NULL,
	[formal_demo_competencies_required] [nvarchar](255) NULL,
	[admission_test_scores_required] [nvarchar](255) NULL,
	[toefl_required] [nvarchar](255) NULL,
	[sat_critical_reading_25] [varchar](20) NULL,
	[sat_critical_reading_75] [varchar](20) NULL,
	[sat_math_25] [varchar](20) NULL,
	[sat_math_75] [varchar](20) NULL,
	[sat_writing_25] [varchar](20) NULL,
	[sat_writing_75] [varchar](20) NULL,
	[act_composite_25] [varchar](20) NULL,
	[act_composite_75] [varchar](20) NULL,
	[act_english_25] [varchar](20) NULL,
	[act_english_75] [varchar](20) NULL,
	[act_math_25] [varchar](20) NULL,
	[act_math_75] [varchar](20) NULL,
	[act_writing_25] [varchar](20) NULL,
	[act_writing_75] [varchar](20) NULL,
	[instate_tuition] [varchar](20) NULL,
	[instate_fees] [varchar](20) NULL,
	[instate_avg_tuition_full_time_graduates] [varchar](20) NULL,
	[outofstate_avg_tuition_full_time_graduates] [varchar](20) NULL,
	[published_outofstate_tuition] [varchar](20) NULL,
	[published_outofstate_fees] [varchar](20) NULL,
	[book_supplies] [varchar](20) NULL,
	[oncampus_room_board] [varchar](20) NULL,
	[oncampus_other_expenses] [varchar](20) NULL,
	[offcampus_room_board] [varchar](20) NULL,
	[offcampus_other_expenses] [varchar](20) NULL,
	[perc_undergrad_receiving_finaid] [varchar](20) NULL,
	[perc_undergrad_receiving_pell_grants] [varchar](20) NULL,
	[avg_pell_grant_aid_undergrad] [varchar](20) NULL,
	[perc_undergrad_receiving_fed_student_loan_aid] [varchar](20) NULL,
	[avg_amount_fed_student_loan_aid_received_undergrad] [varchar](20) NULL,
	[total_students] [varchar](20) NULL,
	[total_men] [varchar](20) NULL,
	[total_women] [varchar](20) NULL,
	[american_indian_alaska_native_total] [varchar](20) NULL,
	[asian_total] [varchar](20) NULL,
	[black_african_american_total] [varchar](20) NULL,
	[hispanic_total] [varchar](20) NULL,
	[native_hawaiian_other_pacific_islander_total] [varchar](20) NULL,
	[white_total] [varchar](20) NULL,
	[mission_statement] [text] NULL,
	[mission_statement_website] [nvarchar](500) NULL,
	[lon] [float] NULL,
	[lat] [float] NULL,
	[geo_region] [nvarchar](255) NULL,
	[level] [nvarchar](255) NULL,
	[control] [nvarchar](255) NULL,
	[forprofit] [nvarchar](255) NULL,
	[cert1] [nvarchar](255) NULL,
	[cert2] [nvarchar](255) NULL,
	[assoc1] [nvarchar](255) NULL,
	[assoc_cert] [nvarchar](255) NULL,
	[bach] [nvarchar](255) NULL,
	[bach_cert] [nvarchar](255) NULL,
	[mast] [nvarchar](255) NULL,
	[mast_cert] [nvarchar](255) NULL,
	[doct] [nvarchar](255) NULL,
	[doct_cert1] [nvarchar](255) NULL,
	[doct_cert2] [nvarchar](255) NULL,
	[total_enrollment] [float] NULL,
	[enrolled_fulltime_donotuse] [float] NULL,
	[instate_avg_tuition_fulltime] [float] NULL,
	[outstate_avg_tuition_fulltime] [float] NULL,
	[college_guid] [uniqueidentifier] NULL,
	[name_alias] [nvarchar](50) NULL,
 CONSTRAINT [PK_colleges_new] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[companies]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[companies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[companyGuid] [uniqueidentifier] NULL,
	[name] [varchar](255) NOT NULL,
	[generalInfo] [text] NULL,
	[description] [text] NULL,
	[events] [text] NULL,
	[videos] [text] NULL,
	[jobs] [text] NULL,
	[recruiting] [text] NULL,
	[valuesCulture] [text] NULL,
	[people] [text] NULL,
	[active] [int] NULL,
	[dateCreated] [datetime] NULL,
	[dateModified] [datetime] NULL,
	[news] [text] NULL,
	[companyStatus] [text] NULL,
	[image_bg] [varchar](100) NULL,
	[image_sm] [varchar](100) NULL,
	[image_bg_width] [int] NULL,
	[image_sm_width] [int] NULL,
 CONSTRAINT [PK_companies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[company_group]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_group](
	[guid] [uniqueidentifier] NOT NULL,
	[group_name] [varchar](200) NOT NULL,
 CONSTRAINT [PK_company_group] PRIMARY KEY CLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[company_group_link]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_group_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[comp_guid] [varchar](50) NOT NULL,
	[group_guid] [varchar](50) NOT NULL,
 CONSTRAINT [PK_company_group_link] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[company_sections]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_sections](
	[sectionGuid] [uniqueidentifier] NOT NULL,
	[companyGuid] [varchar](50) NOT NULL,
	[sectionName] [varchar](100) NOT NULL,
	[sectionNavName] [varchar](100) NULL,
	[sectionText] [text] NULL,
	[Active] [int] NULL,
	[displayOrder] [int] NULL,
 CONSTRAINT [PK_company_sections_1] PRIMARY KEY CLUSTERED 
(
	[sectionGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact_types]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contact_type] [varchar](50) NULL,
 CONSTRAINT [PK_contact_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cookie_login]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cookie_login](
	[user_guid] [uniqueidentifier] NOT NULL,
	[cookie_guid] [uniqueidentifier] NOT NULL,
	[expiration_date] [datetime] NOT NULL,
	[session_id] [int] NULL,
	[expiration_exempt] [tinyint] NULL,
 CONSTRAINT [PK_cookie_login] PRIMARY KEY CLUSTERED 
(
	[cookie_guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coverletters]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coverletters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[coverletter_guid] [uniqueidentifier] NOT NULL,
	[uid] [uniqueidentifier] MASKED WITH (FUNCTION = 'default()') NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[recip_name] [nvarchar](255) NULL,
	[recip_company] [nvarchar](255) NULL,
	[recip_position] [nvarchar](255) NULL,
	[recip_address1] [nvarchar](500) NULL,
	[recip_city] [nvarchar](40) NULL,
	[recip_state] [nvarchar](20) NULL,
	[recip_zip] [nvarchar](12) NULL,
	[date] [nvarchar](20) NULL,
	[salutation] [nvarchar](500) NULL,
	[intro] [nvarchar](max) NULL,
	[body] [nvarchar](max) NULL,
	[conclusion] [nvarchar](max) NULL,
	[closing] [nvarchar](100) NULL,
	[sig_name] [nvarchar](255) MASKED WITH (FUNCTION = 'default()') NULL,
	[user_address] [nvarchar](500) MASKED WITH (FUNCTION = 'default()') NULL,
	[user_city] [nvarchar](50) MASKED WITH (FUNCTION = 'default()') NULL,
	[user_state] [nvarchar](20) MASKED WITH (FUNCTION = 'default()') NULL,
	[user_zip] [nvarchar](12) MASKED WITH (FUNCTION = 'default()') NULL,
	[user_phone] [nvarchar](20) MASKED WITH (FUNCTION = 'default()') NULL,
	[user_email] [nvarchar](255) MASKED WITH (FUNCTION = 'email()') NULL,
	[timestamp] [datetimeoffset](0) NULL,
	[date_created] [datetimeoffset](0) NULL,
	[date_modified] [datetimeoffset](0) NULL,
	[date_archived] [datetimeoffset](0) NULL,
	[archived] [bit] NULL,
	[reference_guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_coverletters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[daily_usage]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[daily_usage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[license_id] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[user_accounts] [int] NULL,
	[site_visits] [int] NULL,
	[career_profiles] [int] NULL,
	[time_spent] [varchar](50) NULL,
	[time_spent_time] [bigint] NULL,
	[quiz_complete] [int] NULL,
	[career_journal] [int] NULL,
	[resumes_complete] [int] NULL,
	[assessments_complete] [int] NULL,
	[videos_watched_main] [int] NULL,
	[videos_watched_qa] [int] NULL,
	[assignments_complete] [int] NULL,
	[goals_created] [int] NULL,
	[videos_watched_lifeskills] [int] NULL,
	[coverletters_created] [int] NULL,
	[lifeskills_journal] [int] NULL,
	[postsecondary_complete] [int] NULL,
	[career_favorites] [int] NULL,
	[college_favorites] [int] NULL,
	[job_favorites] [int] NULL,
	[career_videos_watched] [int] NULL,
	[employability_videos_watched] [int] NULL,
	[career_profiles_viewed] [int] NULL,
	[postsecondary_profiles_viewed] [int] NULL,
	[time_on_site] [int] NULL,
	[employability_profiles_viewed] [int] NULL,
	[quiz_average_score] [int] NULL,
 CONSTRAINT [PK_daily_usage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[daily_usage_user]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[daily_usage_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] MASKED WITH (FUNCTION = 'default()') NOT NULL,
	[license_id] [int] NULL,
	[date] [date] NULL,
	[site_visits] [int] NULL,
	[career_profiles] [int] NULL,
	[time_spent] [varchar](50) NULL,
	[time_spent_time] [bigint] NULL,
	[quiz_complete] [int] NULL,
	[career_journal] [int] NULL,
	[resumes_complete] [int] NULL,
	[assessments_complete] [int] NULL,
	[career_favorites] [int] NULL,
	[college_favorites] [int] NULL,
	[job_favorites] [int] NULL,
	[videos_watched_main] [int] NULL,
	[videos_watched_qa] [int] NULL,
	[assignments_complete] [int] NULL,
	[goals_created] [int] NULL,
	[videos_watched_lifeskills] [int] NULL,
	[coverletters_created] [int] NULL,
	[career_videos_watched] [int] NULL,
	[employability_videos_watched] [int] NULL,
	[career_profiles_viewed] [int] NULL,
	[postsecondary_profiles_viewed] [int] NULL,
	[time_on_site] [int] NULL,
	[employability_profiles_viewed] [int] NULL,
	[quiz_average_score] [int] NULL,
 CONSTRAINT [PK_daily_usage_user_bak] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dashboard_banner]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dashboard_banner](
	[active] [bit] NOT NULL,
	[video_id] [int] NOT NULL,
	[description] [varchar](400) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[purpose] [varchar](100) NULL,
	[id] [int] IDENTITY(0,1) NOT NULL,
	[type] [varchar](100) NULL,
	[video_type] [varchar](100) NULL,
	[career_guid] [uniqueidentifier] NULL,
 CONSTRAINT [dashboard_banner_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dashboard_custom_content]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dashboard_custom_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content_type] [varchar](20) NOT NULL,
	[location] [varchar](100) NOT NULL,
	[body] [nvarchar](2000) NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[title] [varchar](200) NULL,
 CONSTRAINT [dashboard_custom_content_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dashboard_custom_content_relations]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dashboard_custom_content_relations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content_id] [int] NOT NULL,
	[district_id] [int] NOT NULL,
	[license_id] [int] NULL,
	[role_ids] [varchar](10) NULL,
 CONSTRAINT [dashboard_custom_content_relations_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[date_range_types]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[date_range_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [varchar](50) NOT NULL,
 CONSTRAINT [PK_date_range_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[district_features]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[district_features](
	[district_id] [int] NOT NULL,
	[feature_id] [int] NOT NULL,
 CONSTRAINT [PK_district_features] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC,
	[feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[district_products]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[district_products](
	[district_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK_district_products] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[districts]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[districts](
	[district_id] [int] IDENTITY(1,1) NOT NULL,
	[district_name] [varchar](255) NOT NULL,
	[district_state] [varchar](2) NOT NULL,
	[login_id] [varchar](6) NULL,
	[account_creation_id] [varchar](10) NULL,
	[account_creation_active] [tinyint] NULL,
	[organization_id] [int] NULL,
	[display_name] [varchar](255) NULL,
	[district_joint_guid] [uniqueidentifier] NULL,
	[has_purchased_vjs] [tinyint] NULL,
	[has_purchased_junior] [tinyint] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[date_archived] [datetime] NULL,
	[catchall_license_id] [int] NULL,
	[cp_enabled] [bit] NULL,
	[cp_alternative_courses_type] [varchar](10) NULL,
	[cp_alternative_courses_count] [int] NULL,
	[cp_scheduled_lock_open] [date] NULL,
	[cp_scheduled_lock_close] [date] NULL,
	[cp_student_plan_access] [int] NOT NULL,
	[cp_previous_year_enabled] [bit] NOT NULL,
	[cp_freshman_year_enabled] [bit] NOT NULL,
	[cp_sophomore_year_enabled] [bit] NOT NULL,
	[password_policy_user] [smallint] NULL,
	[password_length_user] [smallint] NULL,
	[password_policy_admin] [smallint] NULL,
	[password_length_admin] [smallint] NULL,
	[cp_notification_emails] [bit] NOT NULL,
	[salesforce_account_id] [varchar](50) NULL,
	[uar_id] [int] NULL,
	[user_limit] [int] NULL,
 CONSTRAINT [PK_districts] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dol_wage_data]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dol_wage_data](
	[AREA] [int] NULL,
	[AREA_TITLE] [varchar](50) NULL,
	[AREA_TYPE] [int] NULL,
	[PRIM_STATE] [varchar](50) NULL,
	[NAICS] [int] NULL,
	[NAICS_TITLE] [varchar](50) NULL,
	[I_GROUP] [varchar](50) NULL,
	[OWN_CODE] [int] NULL,
	[OCC_CODE] [varchar](50) NOT NULL,
	[OCC_TITLE] [varchar](128) NULL,
	[O_GROUP] [varchar](50) NOT NULL,
	[TOT_EMP] [varchar](50) NULL,
	[EMP_PRSE] [real] NULL,
	[JOBS_1000] [varchar](50) NULL,
	[LOC_QUOTIENT] [varchar](50) NULL,
	[PCT_TOTAL] [varchar](50) NULL,
	[PCT_RPT] [varchar](50) NULL,
	[H_MEAN] [varchar](50) NULL,
	[A_MEAN] [varchar](50) NULL,
	[MEAN_PRSE] [real] NULL,
	[H_PCT10] [varchar](50) NULL,
	[H_PCT25] [varchar](50) NULL,
	[H_MEDIAN] [varchar](50) NULL,
	[H_PCT75] [varchar](50) NULL,
	[H_PCT90] [varchar](50) NULL,
	[A_PCT10] [varchar](50) NULL,
	[A_PCT25] [varchar](50) NULL,
	[A_MEDIAN] [varchar](50) NULL,
	[A_PCT75] [varchar](50) NULL,
	[A_PCT90] [varchar](50) NULL,
	[ANNUAL] [bit] NULL,
	[HOURLY] [varchar](50) NULL,
 CONSTRAINT [PK_dol_wage_data] PRIMARY KEY CLUSTERED 
(
	[O_GROUP] ASC,
	[OCC_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eduDegree]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eduDegree](
	[eduDegreeID] [int] IDENTITY(1,1) NOT NULL,
	[eduDegreeName] [nvarchar](100) NOT NULL,
	[displayOrder] [int] NULL,
 CONSTRAINT [PK_eduDegree] PRIMARY KEY CLUSTERED 
(
	[eduDegreeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[email_delivery_status]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_delivery_status](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [varchar](512) NULL,
 CONSTRAINT [email_delivery_status_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [email_delivery_status_UN] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[email_unsubscribed]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_unsubscribed](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [PK_email_unsubscribed] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employment_outlook]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employment_outlook](
	[matrix_title] [varchar](128) NULL,
	[soc_code] [varchar](10) NOT NULL,
	[type] [varchar](50) NULL,
	[employment_2022] [numeric](16, 2) NULL,
	[employment_2032] [numeric](16, 2) NULL,
	[distribution_2022] [numeric](16, 2) NULL,
	[distribution_2032] [numeric](16, 2) NULL,
	[numeric_change] [numeric](16, 2) NULL,
	[percentage_change] [numeric](16, 2) NULL,
	[annual_average_openings] [numeric](16, 2) NULL,
	[new_emerging] [bit] NULL,
 CONSTRAINT [PK_employment_outlook] PRIMARY KEY CLUSTERED 
(
	[soc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employment_projections]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employment_projections](
	[occupation_title] [varchar](1500) NULL,
	[soc_code] [char](10) NOT NULL,
	[employment_2022] [float] NULL,
	[employment_2032] [float] NULL,
	[employment_change] [float] NULL,
	[employment_percent_change] [float] NULL,
	[annual_average_openings] [float] NULL,
	[median_annual_wage_2023] [varchar](20) NULL,
	[typical_entry_education] [varchar](50) NULL,
	[education_code] [int] NULL,
	[related_work_experience] [varchar](20) NULL,
	[workex_code] [int] NULL,
	[typical_on_job_training] [varchar](50) NULL,
	[tr_code] [int] NULL,
 CONSTRAINT [PK_employment_projections] PRIMARY KEY CLUSTERED 
(
	[soc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[error_list]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[error_list](
	[error_section] [varchar](50) NULL,
	[error_number] [int] NOT NULL,
	[error_name] [varchar](200) NOT NULL,
	[error_message] [text] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_error_list] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[error_report_throttling]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[error_report_throttling](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[exception_class] [varchar](2048) NOT NULL,
	[file] [varchar](2048) NULL,
	[line] [varchar](10) NULL,
	[message] [varchar](max) NOT NULL,
	[trace_hops] [int] NULL,
	[total_occurences] [int] NOT NULL,
	[date_last_occurence] [datetime] NULL,
	[last_user_id] [int] NULL,
 CONSTRAINT [PK_error_report_throttling] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[etx_departments]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[etx_departments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[institution_md5] [varchar](32) NULL,
	[name] [varchar](100) NULL,
	[record_id] [nchar](20) NULL,
	[files] [nchar](100) NULL,
	[updated_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_etx_departments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[etx_requests]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[etx_requests](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[etx_school_id] [int] NOT NULL,
	[etx_transcript_id] [int] NULL,
	[created_at] [datetime2](1) NULL,
	[updated_at] [datetime2](1) NULL,
	[deleted_at] [datetime2](1) NULL,
	[status] [varchar](100) NULL,
	[acknowledged] [int] NULL,
	[sent_by] [int] NULL,
	[sent_at] [datetime2](1) NULL,
 CONSTRAINT [PK_etx_requests] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[etx_schools]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[etx_schools](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[institution_md5] [char](32) NULL,
	[state] [varchar](255) NULL,
	[institution_name] [varchar](255) NULL,
	[in_network_name] [varchar](255) NULL,
	[receiver_id] [varchar](255) NULL,
	[opeid] [varchar](8) NULL,
	[ipeds_id] [int] NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_etx_school] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[etx_transcripts]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[etx_transcripts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [varchar](255) NULL,
	[transcript_file_name] [varchar](255) NULL,
	[license_id] [int] NULL,
	[school_ein] [int] NULL,
	[created_at] [datetime2](1) NULL,
	[updated_at] [datetime2](1) NULL,
	[deleted_at] [datetime2](1) NULL,
	[received_at] [datetime2](1) NULL,
 CONSTRAINT [PK_etx_transcripts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feature_licenses]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feature_licenses](
	[feature_id] [int] NOT NULL,
	[license_id] [int] NOT NULL,
 CONSTRAINT [PK_feature_licenses] PRIMARY KEY CLUSTERED 
(
	[feature_id] ASC,
	[license_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feature_products]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feature_products](
	[feature_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK_feature_products] PRIMARY KEY CLUSTERED 
(
	[feature_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[features]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[features](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](100) NULL,
	[district] [bit] NULL,
	[license] [bit] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_features] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flexcourse_flexunit]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flexcourse_flexunit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[flexcourse_id] [int] NOT NULL,
	[flexunit_id] [int] NOT NULL,
	[unit_order] [int] NOT NULL,
 CONSTRAINT [PK_flexcourse_flexunit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flexcourses]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flexcourses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [varchar](1000) NULL,
	[image_id] [varchar](150) NULL,
	[prebuilt] [int] NULL,
	[active] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[credential] [int] NULL,
 CONSTRAINT [PK_flexcourses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flexunit_lesson]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flexunit_lesson](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[flexunit_id] [int] NOT NULL,
	[lesson_id] [int] NOT NULL,
	[lesson_order] [int] NOT NULL,
	[is_assessment] [bit] NOT NULL,
	[required_passing_score] [int] NOT NULL,
	[attempts] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PK_flexunit_lessons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flexunits]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flexunits](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [varchar](1000) NULL,
	[image_id] [int] NULL,
	[prebuilt] [int] NULL,
	[active] [int] NULL,
	[credential] [int] NULL,
	[instruction_hours] [float] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PK_flexunits] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[forgot_password_reset_keys]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forgot_password_reset_keys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[email] [varchar](200) NOT NULL,
	[reset_key] [varchar](36) NOT NULL,
	[expiration_date] [datetime] NOT NULL,
 CONSTRAINT [PK_forgot_password_reset_keys] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[google_connection]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[google_connection](
	[user_guid] [uniqueidentifier] MASKED WITH (FUNCTION = 'default()') NOT NULL,
	[google_id] [varchar](50) MASKED WITH (FUNCTION = 'default()') NOT NULL,
	[google_email] [varchar](255) MASKED WITH (FUNCTION = 'default()') NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_google_connection] PRIMARY KEY CLUSTERED 
(
	[user_guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[google_licenses]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[google_licenses](
	[license_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_google_licenses] PRIMARY KEY CLUSTERED 
(
	[license_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[google_users]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[google_users](
	[user_id] [int] MASKED WITH (FUNCTION = 'default()') NOT NULL,
	[google_id] [varchar](255) MASKED WITH (FUNCTION = 'default()') NULL,
	[google_hash] [varchar](50) NULL,
	[date_created] [datetime2](0) NOT NULL,
	[date_modified] [datetime2](0) NOT NULL,
	[update_count] [int] NOT NULL,
 CONSTRAINT [PK_google_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grades]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grades](
	[gradeID] [int] IDENTITY(1,1) NOT NULL,
	[gradeName] [varchar](200) NOT NULL,
	[displayOrder] [int] NULL,
	[gradeNameId] [varchar](20) NULL,
 CONSTRAINT [PK_grades] PRIMARY KEY CLUSTERED 
(
	[gradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groups]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groups](
	[groupid] [int] IDENTITY(1,1) NOT NULL,
	[groupName] [nvarchar](100) NOT NULL,
	[teacherid] [varchar](600) NULL,
	[timestamp] [datetime] NOT NULL,
	[active] [bit] NOT NULL,
	[edmodo_group_id] [varchar](50) NULL,
	[shared] [bit] NULL,
	[creatorid] [int] NULL,
	[easy_code] [char](6) NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[date_archived] [datetime] NULL,
	[display_name] [nvarchar](100) NULL,
	[user_count] [int] NULL,
	[staff_count] [int] NULL,
	[admin_count] [int] NULL,
	[student_count] [int] NULL,
	[uar_id] [varchar](36) NULL,
	[users_updated_at] [datetime] NULL,
 CONSTRAINT [PK_groups] PRIMARY KEY CLUSTERED 
(
	[groupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groups_shared]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groups_shared](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
 CONSTRAINT [PK_groups_shared] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[industries]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[industries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[industry_name] [varchar](50) NULL,
	[ad_player_industry_name] [char](10) NULL,
	[active] [int] NULL,
	[img_src] [varchar](40) NULL,
 CONSTRAINT [PK_industries2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[instructions_playlistbuilder]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instructions_playlistbuilder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[title] [varchar](50) NULL,
	[description] [varchar](4000) NULL,
 CONSTRAINT [PK_instructions_playlistbuilder] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[instructions_reports]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instructions_reports](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[title] [varchar](255) NOT NULL,
	[description] [varchar](4000) NOT NULL,
 CONSTRAINT [PK_instructions_reports] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[instructions_resume_v1]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instructions_resume_v1](
	[instruction_id] [int] IDENTITY(1,1) NOT NULL,
	[section] [varchar](50) NULL,
	[title] [varchar](100) NULL,
	[description] [varchar](4000) NULL,
 CONSTRAINT [PK_instructions_resume_v1] PRIMARY KEY CLUSTERED 
(
	[instruction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[instructions_resume_v2]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instructions_resume_v2](
	[instruction_id] [int] IDENTITY(1,1) NOT NULL,
	[section] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[title] [varchar](100) NOT NULL,
	[description] [text] NOT NULL,
 CONSTRAINT [PK_instructions_resume_v2] PRIMARY KEY CLUSTERED 
(
	[instruction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[instructions_useraccounts]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instructions_useraccounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[title] [varchar](100) NULL,
	[description] [varchar](2000) NULL,
 CONSTRAINT [PK_instructions_useraccounts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[interests]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[interests](
	[interest_id] [int] IDENTITY(1,1) NOT NULL,
	[interest_name] [varchar](50) NOT NULL,
	[interest_abbr] [varchar](50) NULL,
 CONSTRAINT [PK_interests] PRIMARY KEY CLUSTERED 
(
	[interest_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inv_answers]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inv_answers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[test_instance_id] [int] NULL,
	[segment_id] [int] NULL,
	[question_id] [int] NULL,
	[answer_ids] [varchar](50) NULL,
	[answer_values] [varchar](50) NULL,
	[correct] [int] NULL,
	[submitted] [int] NULL,
	[updated_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[test_instance_guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_inv_answers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inv_available_answers]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inv_available_answers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question_id] [int] NOT NULL,
	[answer] [varchar](5) NOT NULL,
	[answer_value] [varchar](100) NULL,
	[correct_answer] [int] NULL,
	[image_url] [varchar](150) NULL,
 CONSTRAINT [PK_inv_available_answers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_inv_available_answers] UNIQUE NONCLUSTERED 
(
	[question_id] ASC,
	[answer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inv_osoc_occupations]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inv_osoc_occupations](
	[osoc_code] [nvarchar](50) NOT NULL,
	[osoc_title] [varchar](250) NOT NULL,
	[soc_code] [nvarchar](50) NULL,
	[soc_title] [nvarchar](1) NULL,
	[ou_code] [nvarchar](1) NULL,
	[ou_title] [nvarchar](1) NULL,
	[job_zone] [int] NOT NULL,
	[arithmetic_reasoning] [decimal](18, 15) NOT NULL,
	[computation] [decimal](18, 15) NOT NULL,
	[verbal] [decimal](18, 15) NOT NULL,
	[spacial] [decimal](18, 15) NOT NULL,
	[clerical_perception] [decimal](18, 15) NOT NULL,
	[form_perception] [decimal](18, 15) NOT NULL,
	[motor_coordination] [decimal](18, 15) NOT NULL,
	[manual_dexterity] [decimal](18, 15) NOT NULL,
	[finger_dexterity] [decimal](18, 15) NOT NULL,
 CONSTRAINT [PK_inv_osoc_occupations] PRIMARY KEY CLUSTERED 
(
	[osoc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inv_question_types]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inv_question_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_inv_question_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inv_segments]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inv_segments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[test_id] [int] NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](250) NULL,
	[instructions] [varchar](1000) NULL,
	[type] [varchar](100) NULL,
	[duration] [tinyint] NULL,
 CONSTRAINT [PK_inv_segments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inv_test_instance]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inv_test_instance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NULL,
	[user_id] [int] NOT NULL,
	[test_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[completed_at] [datetime] NULL,
	[archived_at] [datetime] NULL,
	[reference_guid] [uniqueidentifier] NULL,
	[percent_complete] [int] NULL,
	[total_segments_complete] [int] NULL,
 CONSTRAINT [PK_inv_test_instance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invAnswers]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invAnswers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[answerGuid] [uniqueidentifier] NOT NULL,
	[userGuid] [uniqueidentifier] NULL,
	[testGuid] [uniqueidentifier] NULL,
	[test_label] [varchar](200) NULL,
	[date_taken] [datetime] NULL,
	[completed] [int] NOT NULL,
	[answers] [ntext] NULL,
	[pagenum] [int] NULL,
	[myplan] [ntext] NULL,
	[oohlist] [varchar](500) NULL,
	[topCategories] [varchar](2000) NULL,
	[inv_type] [varchar](10) NULL,
	[reference_guid] [uniqueidentifier] NULL,
	[archived] [bit] NULL,
	[date_archived] [datetime] NULL,
	[percent_complete] [tinyint] NULL,
 CONSTRAINT [PK_invAnswers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invInterestAreas]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invInterestAreas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[definition] [varchar](2000) NOT NULL,
 CONSTRAINT [PK_invInterestAreas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invQuestions]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invQuestions](
	[questionId] [int] IDENTITY(1,1) NOT NULL,
	[questionGuid] [uniqueidentifier] NOT NULL,
	[testGuid] [uniqueidentifier] NULL,
	[questionText] [varchar](500) NOT NULL,
	[intAreaId] [int] NOT NULL,
	[letter] [char](1) NULL,
	[interestAreaWil] [int] NULL,
	[itemAudio] [varchar](500) NULL,
	[displayOrder] [int] NULL,
	[type] [int] NULL,
	[image_url] [varchar](100) NULL,
	[segment_id] [int] NULL,
	[practice] [varchar](50) NULL,
 CONSTRAINT [PK_inv_Questions] PRIMARY KEY CLUSTERED 
(
	[questionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invTests]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invTests](
	[testId] [int] IDENTITY(1,1) NOT NULL,
	[testGuid] [uniqueidentifier] NOT NULL,
	[testName] [varchar](200) NOT NULL,
	[progName] [varchar](50) NULL,
	[testDescription] [varchar](400) NULL,
	[page_num] [int] NULL,
	[type] [varchar](10) NULL,
	[categoryId] [int] NULL,
	[active] [bit] NULL,
	[feature_id] [int] NULL,
 CONSTRAINT [PK_invTests] PRIMARY KEY CLUSTERED 
(
	[testId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ip_whitelist]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ip_whitelist](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ip_address] [varchar](50) NOT NULL,
	[district_id] [int] NULL,
	[license_id] [int] NULL,
	[role_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [PK_ip_whitelist] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ip_whitelist_excluded]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ip_whitelist_excluded](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ip_address] [varchar](50) NOT NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [PK_ip_whitelist_exluded] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobs_local]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobs_local](
	[job_id] [int] IDENTITY(1,1) NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[job_name] [varchar](200) NULL,
	[job_description] [varchar](max) NULL,
	[company_name] [varchar](200) NULL,
	[link] [varchar](500) NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[license_list] [varchar](500) NULL,
	[opportunity_type] [varchar](20) NULL,
	[candidates] [varchar](10) NULL,
	[compensation] [varchar](200) NULL,
	[if_interested] [varchar](200) NULL,
	[date_show_start] [datetime] NULL,
	[date_show_end] [datetime] NULL,
 CONSTRAINT [PK_jobs_local] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobs_local_licenses]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobs_local_licenses](
	[job_id] [int] NOT NULL,
	[license_id] [int] NOT NULL,
 CONSTRAINT [PK_jobs_local_licenses] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC,
	[license_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kpi_data_sync]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kpi_data_sync](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[started_at] [datetime] NULL,
	[finished_at] [datetime] NULL,
	[docs_indexed] [int] NULL,
	[log] [varchar](max) NULL,
	[last_id] [int] NULL,
	[last_keep_alive] [datetime] NULL,
	[status_id] [int] NULL,
 CONSTRAINT [PK_kpi_data_sync] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kpi_data_sync_status]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kpi_data_sync_status](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[sort_order] [smallint] NULL,
 CONSTRAINT [kpi_data_sync_status_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [kpi_data_sync_status_UN] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kpi_tracking]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kpi_tracking](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[created_at] [datetime] NULL,
	[region] [varchar](256) NULL,
	[organization_id] [int] NULL,
	[district_id] [int] NULL,
	[license_id] [int] NULL,
	[user_id] [int] NULL,
	[type_id] [int] NOT NULL,
	[video_id] [int] NULL,
	[lesson_id] [int] NULL,
	[local_link_id] [int] NULL,
	[link_action] [varchar](100) NULL,
	[search_type] [varchar](100) NULL,
	[search_terms] [varchar](1024) NULL,
	[search_results] [int] NULL,
	[additional_info] [varchar](max) NULL,
	[browser] [varchar](512) NULL,
	[platform] [varchar](512) NULL,
	[assignment_id] [int] NULL,
	[user_lesson_assignment_id] [int] NULL,
	[is_legacy] [int] NULL,
	[video_type] [varchar](36) NULL,
	[wistia_id] [varchar](40) NULL,
	[wbl_id] [int] NULL,
	[career_guid] [uniqueidentifier] NULL,
	[counts] [int] NULL,
	[scholarship_id] [int] NULL,
	[search_filters] [varchar](max) NULL,
	[institution_id] [int] NULL,
	[institution_name] [varchar](250) NULL,
	[requestor_id] [int] NULL,
	[test_id] [int] NULL,
	[course_id] [int] NULL,
	[unit_id] [int] NULL,
	[self_assigned] [int] NULL,
	[is_first_lesson] [int] NULL,
	[is_assessment] [int] NULL,
	[user_role_id] [int] NULL,
	[normal_login_page_type] [varchar](10) NULL,
	[user_sso_type_name] [varchar](100) NULL,
	[login_type] [varchar](50) NULL,
	[user_role_name] [varchar](50) NULL,
 CONSTRAINT [kpi_tracking_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kpi_tracking_type]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kpi_tracking_type](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL,
 CONSTRAINT [kpi_tracking_type_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [kpi_tracking_type_UN] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_assignment]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_assignment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_id] [int] NOT NULL,
	[license_id] [int] NULL,
	[admin_id] [int] NOT NULL,
	[subtitle] [varchar](255) NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[date_deadline] [datetime] NOT NULL,
	[date_closed] [datetime] NULL,
	[force_order] [bit] NULL,
	[require_grading] [bit] NULL,
	[admin_display_name] [varchar](200) NULL,
	[allow_late_submit] [bit] NULL,
	[time_zone] [varchar](50) NULL,
	[date_active] [datetime] NULL,
	[course_id] [int] NULL,
	[unit_id] [int] NULL,
 CONSTRAINT [PK_lesson_assignment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_category]    Script Date: 9/18/2024 10:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_id] [int] NOT NULL,
	[category] [varchar](255) NOT NULL,
 CONSTRAINT [PK_lesson_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_connection]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_connection](
	[lesson_id] [int] NOT NULL,
	[district_id] [int] NULL,
	[license_id] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[state] [varchar](2) NULL,
 CONSTRAINT [PK_lesson_connection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_document_tags]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_document_tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_document_id] [int] NOT NULL,
	[tag] [varchar](50) NULL,
 CONSTRAINT [PK_lesson_document_tags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_documents]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_documents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](200) NULL,
	[description] [nvarchar](1000) NULL,
	[file] [varchar](100) NOT NULL,
	[type] [varchar](100) NOT NULL,
	[active] [bit] NOT NULL,
	[is_premium] [bit] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_lesson_documents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_image_tags]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_image_tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image_id] [int] NOT NULL,
	[name] [nvarchar](100) NULL,
 CONSTRAINT [PK_lesson_image_tags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_images]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_lesson_images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_segment]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_segment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_id] [int] NOT NULL,
	[segment_type_id] [int] NOT NULL,
	[title] [varchar](255) NULL,
	[instructions] [varchar](max) NULL,
	[display_order] [int] NULL,
	[grade_weight] [int] NULL,
	[archived] [bit] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[date_archived] [datetime] NULL,
	[is_welcome_segment] [bit] NULL,
	[is_finish_segment] [bit] NULL,
 CONSTRAINT [PK_lesson_segment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_tags]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_id] [int] NULL,
	[name] [varchar](50) NULL,
	[is_grade_tag] [bit] NULL,
 CONSTRAINT [PK_lesson_tags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lessons]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lessons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[description] [varchar](3000) NULL,
	[created_by] [int] NULL,
	[is_public] [bit] NULL,
	[grade_weight] [int] NULL,
	[archived] [bit] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[date_published] [datetime] NULL,
	[date_archived] [datetime] NULL,
	[is_prebuilt] [bit] NULL,
	[deleted] [bit] NULL,
	[date_deleted] [datetime] NULL,
	[estimated_time] [varchar](255) NULL,
	[image_id] [int] NULL,
	[from_lesson_id] [int] NULL,
	[source_lesson_id] [int] NULL,
	[is_premium] [bit] NULL,
	[video_topic_id] [int] NULL,
 CONSTRAINT [PK_lessons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lessons_cluster]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lessons_cluster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cluster_id] [int] NOT NULL,
	[lesson_id] [int] NOT NULL,
	[order] [int] NOT NULL,
 CONSTRAINT [PK_lessons_cluster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lessons_shared]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lessons_shared](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_id] [int] NOT NULL,
	[license_id] [int] NOT NULL,
 CONSTRAINT [PK_lessons_shared] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[license_common_app_settings]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[license_common_app_settings](
	[license_id] [int] NOT NULL,
	[common_app_active] [bit] NULL,
	[processing_request] [bit] NULL,
	[common_app_enabled] [bit] NULL,
 CONSTRAINT [PK_license_common_app_settings] PRIMARY KEY CLUSTERED 
(
	[license_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[license_etxsettings]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[license_etxsettings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[license_id] [int] NOT NULL,
	[enable_etx] [bit] NULL,
	[eid] [nvarchar](50) NULL,
	[school_code] [nvarchar](10) NULL,
	[school_address_1] [nvarchar](150) NULL,
	[school_address_2] [nvarchar](150) NULL,
	[school_city] [nvarchar](50) NULL,
	[school_zip] [nvarchar](50) NULL,
	[school_state] [nvarchar](6) NULL,
	[billing_address_1] [nvarchar](150) NULL,
	[billing_address_2] [nvarchar](150) NULL,
	[billing_city] [nvarchar](50) NULL,
	[billing_zip] [nvarchar](50) NULL,
	[billing_state] [nvarchar](6) NULL,
	[subscription_start_date] [date] NULL,
	[subscription_end_date] [date] NULL,
	[sale_date] [date] NULL,
	[contract_amount] [decimal](18, 2) NULL,
	[primary_contact] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[test_mode] [bit] NULL,
 CONSTRAINT [license_etxsettings_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[license_expiration_notification]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[license_expiration_notification](
	[license_id] [int] NOT NULL,
	[day_90_sent] [tinyint] NULL,
	[day_60_sent] [tinyint] NULL,
	[day_30_sent] [tinyint] NULL,
	[day_7_sent] [tinyint] NULL,
	[day_2_sent] [tinyint] NULL,
	[day_1_sent] [tinyint] NULL,
	[day_90_batch_id] [int] NULL,
	[day_60_batch_id] [int] NULL,
	[day_30_batch_id] [int] NULL,
	[day_7_batch_id] [int] NULL,
	[day_2_batch_id] [int] NULL,
	[day_1_batch_id] [int] NULL,
 CONSTRAINT [PK_license_expiration_notification] PRIMARY KEY CLUSTERED 
(
	[license_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[license_products]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[license_products](
	[license_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK_license_products] PRIMARY KEY CLUSTERED 
(
	[license_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[license_type]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[license_type](
	[license_type_id] [int] IDENTITY(1,1) NOT NULL,
	[license_type_name] [varchar](100) NULL,
	[license_type_description] [varchar](500) NULL,
 CONSTRAINT [PK_license_type] PRIMARY KEY CLUSTERED 
(
	[license_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[licensePlayList]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[licensePlayList](
	[licenseID] [int] NOT NULL,
	[playlistID] [int] IDENTITY(1,1) NOT NULL,
	[playListName] [nvarchar](200) NOT NULL,
	[active] [bit] NOT NULL,
	[dateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_licensePlayList] PRIMARY KEY CLUSTERED 
(
	[licenseID] ASC,
	[playlistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[life_skills_journal]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[life_skills_journal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[lifeskill_id] [int] NOT NULL,
	[my_interest] [int] NULL,
	[skills_required] [varchar](3000) NULL,
	[goals] [varchar](3000) NULL,
	[future] [varchar](3000) NULL,
	[lifeskill_summary] [varchar](3000) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
	[result_id] [int] NULL,
 CONSTRAINT [PK_life_skills_journal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lifeskill_video_tags]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lifeskill_video_tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lifeskill_id] [int] NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_lifeskill_video_tags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lifeskill_video_topic_video_type]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lifeskill_video_topic_video_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[topic_id] [int] NOT NULL,
	[video_type] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lifeskill_video_topics]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lifeskill_video_topics](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_lifeskill_video_topics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lifeskill_videos]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lifeskill_videos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wistia_id] [varchar](100) NULL,
	[name] [varchar](100) NULL,
	[description] [nvarchar](1000) NULL,
	[topic_id] [tinyint] NULL,
	[active] [bit] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[person_name] [varchar](100) NULL,
	[video_type] [varchar](100) NOT NULL,
	[banner] [bit] NULL,
 CONSTRAINT [PK_lifeskill_videos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[local_links]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[local_links](
	[local_link_id] [int] IDENTITY(1,1) NOT NULL,
	[user_guid] [varchar](50) NOT NULL,
	[link_name] [varchar](1000) NOT NULL,
	[link_url] [varchar](2000) NOT NULL,
	[link_description] [varchar](4000) NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[link_guid] [varchar](4000) NULL,
	[date_created] [datetime] NULL,
 CONSTRAINT [PK_local_links] PRIMARY KEY CLUSTERED 
(
	[local_link_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[local_links_schools]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[local_links_schools](
	[local_link_id] [int] NOT NULL,
	[school_id] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_local_links_schools] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[localization_translation_groups]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[localization_translation_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](1000) NULL,
 CONSTRAINT [PK_translation_groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[localization_translations]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[localization_translations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[key] [varchar](500) NOT NULL,
	[es] [varchar](1000) NULL,
	[fr] [varchar](1000) NULL,
 CONSTRAINT [PK_translations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[localization_translations_groups_connection]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[localization_translations_groups_connection](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[translation_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
 CONSTRAINT [PK_translations_groups_connection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[localization_types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[localization_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [char](2) NULL,
	[display_name] [varchar](50) NULL,
 CONSTRAINT [PK_localization_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logout_type]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logout_type](
	[id] [int] NOT NULL,
	[type] [varchar](50) NULL,
	[description] [varchar](4000) NULL,
	[url] [varchar](250) NULL,
 CONSTRAINT [PK_logout_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lti_group_params]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_group_params](
	[lti_group_id] [int] NOT NULL,
	[lti_param_id] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_lti_group_params] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lti_groups]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_groups](
	[lti_group_id] [int] IDENTITY(1,1) NOT NULL,
	[lti_group_name] [varchar](150) NULL,
	[lti_group_description] [text] NULL,
 CONSTRAINT [PK_lti_groups] PRIMARY KEY CLUSTERED 
(
	[lti_group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lti_keys]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_keys](
	[lti_id] [int] IDENTITY(1,1) NOT NULL,
	[consumer_key] [varchar](50) NOT NULL,
	[consumer_secret] [varchar](50) NOT NULL,
	[lti_group_id] [int] NOT NULL,
	[vjs_license_id] [int] NOT NULL,
	[url_path] [varchar](500) NULL,
	[method] [varchar](20) NULL,
	[lti_description] [text] NULL,
	[lti_multiple_licenses] [int] NULL,
 CONSTRAINT [PK_lti_keys] PRIMARY KEY CLUSTERED 
(
	[lti_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lti_log]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_log](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[date_entered] [datetime] NOT NULL,
	[consumer_key] [varchar](50) NULL,
	[context_id] [varchar](100) NULL,
	[class_id] [varchar](100) NULL,
	[lti_user_id] [varchar](100) NULL,
	[first_name] [varchar](200) NULL,
	[last_name] [varchar](200) NULL,
	[user_type] [varchar](50) NULL,
	[email] [varchar](200) NULL,
	[license_identifier] [varchar](50) NULL,
 CONSTRAINT [PK_lti_log] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lti_moodle]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_moodle](
	[moodle_course_id] [int] NOT NULL,
	[vjs_license_id] [int] NOT NULL,
 CONSTRAINT [PK_lti_moodle] PRIMARY KEY CLUSTERED 
(
	[moodle_course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lti_moodle_user]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_moodle_user](
	[moodle_user_id] [varchar](50) MASKED WITH (FUNCTION = 'default()') NOT NULL,
	[vjs_user_id] [int] MASKED WITH (FUNCTION = 'default()') NOT NULL,
 CONSTRAINT [PK_lti_moodle_user] PRIMARY KEY CLUSTERED 
(
	[moodle_user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lti_params]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_params](
	[param_id] [int] IDENTITY(1,1) NOT NULL,
	[param_name] [varchar](200) NOT NULL,
	[param_description] [text] NULL,
 CONSTRAINT [PK_lti_params] PRIMARY KEY CLUSTERED 
(
	[param_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lti_roles]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[consumer_key] [varchar](50) NOT NULL,
	[lti_role] [varchar](200) NOT NULL,
	[type] [varchar](10) NOT NULL,
 CONSTRAINT [PK_lti_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lti_users]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_users](
	[license_id] [int] NOT NULL,
	[class_id] [varchar](100) NULL,
	[lti_user_id] [varchar](100) NOT NULL,
	[vjs_user_id] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_lti_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marketing_links]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marketing_links](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[product_name] [varchar](50) NULL,
	[product_code] [varchar](50) NULL,
	[platform_name] [varchar](50) NULL,
	[platform_code] [varchar](50) NULL,
	[page_name] [varchar](255) NULL,
	[page_url] [text] NULL,
	[code] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[archived_at] [datetime] NULL,
 CONSTRAINT [PK_marketing_links] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[messages]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[messageGuid] [uniqueidentifier] NOT NULL,
	[messageRefGuid] [varchar](50) NULL,
	[messageTypeID] [int] NULL,
	[threadGuid] [varchar](50) NULL,
	[fromUserGuid] [varchar](50) NULL,
	[toUserGuid] [varchar](50) NULL,
	[toGroupId] [int] NULL,
	[toLicenseId] [int] NULL,
	[date_sent] [datetime] NULL,
	[date_created] [datetime] NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
	[allowReply] [int] NULL,
	[message] [text] NULL,
	[approved] [int] NULL,
	[subject] [varchar](500) NULL,
	[playlistGuid] [varchar](50) NULL,
	[assessmentGuid] [varchar](50) NULL,
	[assignmentLicenseID] [int] NULL,
 CONSTRAINT [PK_messages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[messageTypes]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[messageTypes](
	[messageTypeID] [int] IDENTITY(1,1) NOT NULL,
	[messageTypeName] [varchar](100) NOT NULL,
	[messageTypeImage] [varchar](100) NULL,
 CONSTRAINT [PK_messageTypes] PRIMARY KEY CLUSTERED 
(
	[messageTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[minilessons_categories]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[minilessons_categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[description] [varchar](200) NULL,
 CONSTRAINT [PK_minilessons_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[minilessons_items]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[minilessons_items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[zip] [varchar](150) NULL,
	[name] [varchar](100) NULL,
	[short_description] [varchar](200) NULL,
	[long_description] [varchar](500) NULL,
 CONSTRAINT [PK_minilessons_items] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[minilessons_resources]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[minilessons_resources](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NULL,
	[name] [varchar](100) NULL,
	[url] [varchar](150) NULL,
	[lesson_id] [int] NULL,
 CONSTRAINT [PK_minilessons_resources] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[naf_academy_clusters]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[naf_academy_clusters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[naf_group_id] [int] NOT NULL,
	[cluster_name] [varchar](100) NULL,
	[cluster_name_display] [varchar](100) NULL,
 CONSTRAINT [PK_naf_academy_clusters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[naf_academy_groups]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[naf_academy_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[naf_group_name] [varchar](100) NULL,
	[license_id] [int] NULL,
	[title] [varchar](500) NULL,
	[sub_title] [varchar](2000) NULL,
	[group_id] [int] NULL,
 CONSTRAINT [PK_naf_academy_groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[naf_academy_schools]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[naf_academy_schools](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[naf_cluster_id] [int] NULL,
	[school] [varchar](200) NULL,
	[address] [varchar](400) NULL,
	[principal] [varchar](100) NULL,
	[lead_teacher] [varchar](100) NULL,
	[telephone] [varchar](50) NULL,
	[website] [varchar](500) NULL,
 CONSTRAINT [PK_naf_academy_schools] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[newsletter_subscriber]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[newsletter_subscriber](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email_guid] [uniqueidentifier] NOT NULL,
	[email] [nvarchar](200) NOT NULL,
	[dateCreated] [datetime] NOT NULL,
	[active] [int] NOT NULL,
	[validated] [bit] NOT NULL,
 CONSTRAINT [PK_newletter_subsriber] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[number_employees]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[number_employees](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[number_employees] [varchar](50) NOT NULL,
	[sort_order] [int] NOT NULL,
 CONSTRAINT [PK_number_employees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[occupations_ooh]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[occupations_ooh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[oGuid] [uniqueidentifier] NOT NULL,
	[name] [varchar](200) NULL,
	[clusterid] [int] NULL,
	[description] [ntext] NULL,
	[occupCode] [varchar](50) NULL,
	[socCode] [varchar](50) NULL,
	[nameFull] [varchar](400) NULL,
	[nameShortPlural] [varchar](400) NULL,
	[nameShortSingular] [varchar](400) NULL,
	[medianPayAnnual] [varchar](50) NULL,
	[medianPayAnnualNote] [ntext] NULL,
	[medianPayHourly] [varchar](50) NULL,
	[medianPayHourlyNote] [ntext] NULL,
	[entryLevelEducation] [varchar](200) NULL,
	[workExperience] [varchar](400) NULL,
	[onTheJobTraining] [varchar](400) NULL,
	[numberOfJobs] [varchar](50) NULL,
	[employmentOutlook] [varchar](50) NULL,
	[employmentOutlookDescription] [varchar](200) NULL,
	[employmentOpenings] [varchar](50) NULL,
	[image] [ntext] NULL,
	[summaryWhatTheyDo] [ntext] NULL,
	[summaryWorkEnvironment] [ntext] NULL,
	[summaryHowToBecomeOne] [ntext] NULL,
	[summaryPay] [ntext] NULL,
	[summaryOutlook] [ntext] NULL,
	[summarySimilarOccupations] [ntext] NULL,
	[whatTheyDoTitle] [ntext] NULL,
	[whatTheyDoImage] [ntext] NULL,
	[whatTheyDoBody] [ntext] NULL,
	[workEnvironmentTitle] [ntext] NULL,
	[workEnvironmentImage] [ntext] NULL,
	[workEnvironmentBody] [ntext] NULL,
	[howToBecomeOneTitle] [ntext] NULL,
	[howToBecomeOneImage] [ntext] NULL,
	[howToBecomeOneBody] [ntext] NULL,
	[payTitle] [ntext] NULL,
	[payImage] [ntext] NULL,
	[payBody] [ntext] NULL,
	[payChart] [ntext] NULL,
	[payChartHtml] [ntext] NULL,
	[outlookTitle] [ntext] NULL,
	[outlookImage] [ntext] NULL,
	[outlookBody] [ntext] NULL,
	[outlookChart] [ntext] NULL,
	[outlookChartHtml] [ntext] NULL,
	[similarOccupationsTitle] [varchar](200) NULL,
	[similarOccupationsBody] [ntext] NULL,
	[moreInfoTitle] [varchar](200) NULL,
	[moreInfoBody] [ntext] NULL,
	[citation] [ntext] NULL,
 CONSTRAINT [PK_occupations_ooh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[occupations_ooh_new]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[occupations_ooh_new](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[oGuid] [uniqueidentifier] NULL,
	[clusterid] [int] NULL,
	[name] [nvarchar](255) NULL,
	[socCode] [varchar](10) NULL,
	[data] [ntext] NULL,
 CONSTRAINT [PK_ooh_occupations_new] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oneroster_groups]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oneroster_groups](
	[group_id] [int] NOT NULL,
	[oneroster_id] [varchar](255) NULL,
	[oneroster_hash] [char](32) NULL,
	[oneroster_users_hash] [char](32) NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_oneroster_groups] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oneroster_licenses]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oneroster_licenses](
	[license_id] [int] NOT NULL,
	[oneroster_id] [varchar](255) NULL,
	[oneroster_hash] [char](32) NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_oneroster_licenses] PRIMARY KEY CLUSTERED 
(
	[license_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oneroster_users]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oneroster_users](
	[user_id] [int] NOT NULL,
	[oneroster_id] [varchar](255) NULL,
	[oneroster_hash] [char](32) NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_oneroster_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_abilities]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_abilities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[data_value] [decimal](5, 2) NOT NULL,
	[n] [decimal](4, 0) NULL,
	[standard_error] [decimal](7, 4) NULL,
	[lower_ci_bound] [decimal](7, 4) NULL,
	[upper_ci_bound] [decimal](7, 4) NULL,
	[recommend_suppress] [char](1) NULL,
	[not_relevant] [char](1) NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_abilities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_abilities_to_work_activities]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_abilities_to_work_activities](
	[abilities_element_id] [varchar](20) NOT NULL,
	[work_activities_element_id] [varchar](20) NOT NULL,
 CONSTRAINT [PK_onet_abilities_to_work_activities] PRIMARY KEY CLUSTERED 
(
	[abilities_element_id] ASC,
	[work_activities_element_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_abilities_to_work_context]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_abilities_to_work_context](
	[abilities_element_id] [varchar](20) NOT NULL,
	[work_context_element_id] [varchar](20) NOT NULL,
 CONSTRAINT [PK_onet_abilities_to_work_context] PRIMARY KEY CLUSTERED 
(
	[abilities_element_id] ASC,
	[work_context_element_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_alternate_titles]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_alternate_titles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[alternate_title] [varchar](250) NOT NULL,
	[short_title] [varchar](150) NULL,
	[sources] [varchar](50) NOT NULL,
 CONSTRAINT [PK_onet_alternate_titles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_basic_interests_to_riasec]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_basic_interests_to_riasec](
	[basic_interests_element_id] [varchar](20) NOT NULL,
	[riasec_element_id] [varchar](20) NOT NULL,
 CONSTRAINT [PK_onet_basic_interests_to_riasec] PRIMARY KEY CLUSTERED 
(
	[basic_interests_element_id] ASC,
	[riasec_element_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_content_model_reference]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_content_model_reference](
	[element_id] [varchar](20) NOT NULL,
	[element_name] [varchar](150) NOT NULL,
	[description] [varchar](1500) NOT NULL,
 CONSTRAINT [PK__onet_con__388489FBD6EBAFCB] PRIMARY KEY CLUSTERED 
(
	[element_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_dwa_reference]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_dwa_reference](
	[element_id] [varchar](20) NOT NULL,
	[iwa_id] [varchar](20) NOT NULL,
	[dwa_id] [varchar](20) NOT NULL,
	[dwa_title] [varchar](150) NOT NULL,
 CONSTRAINT [PK__onet_dwa__7D6C35AF63526D80] PRIMARY KEY CLUSTERED 
(
	[dwa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_education_training_experience]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_education_training_experience](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[category] [decimal](3, 0) NULL,
	[data_value] [decimal](5, 2) NOT NULL,
	[n] [decimal](4, 0) NULL,
	[standard_error] [decimal](7, 4) NULL,
	[lower_ci_bound] [decimal](7, 4) NULL,
	[upper_ci_bound] [decimal](7, 4) NULL,
	[recommend_suppress] [char](1) NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_education_training_experience] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_emerging_tasks]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_emerging_tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[task] [varchar](1000) NOT NULL,
	[category] [varchar](8) NOT NULL,
	[original_task_id] [decimal](8, 0) NULL,
	[writein_total] [decimal](3, 0) NOT NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_emerging_tasks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_ete_categories]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_ete_categories](
	[element_id] [varchar](20) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[category] [decimal](3, 0) NOT NULL,
	[category_description] [varchar](1000) NOT NULL,
 CONSTRAINT [PK__onet_ete__3220A6AD5F3F9DDE] PRIMARY KEY CLUSTERED 
(
	[element_id] ASC,
	[scale_id] ASC,
	[category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_interests]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_interests](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[data_value] [decimal](5, 2) NOT NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_interests] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_interests_illus_activities]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_interests_illus_activities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[interest_type] [varchar](20) NOT NULL,
	[activity] [varchar](150) NOT NULL,
 CONSTRAINT [PK_onet_interests_illus_activities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_interests_illus_occupations]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_interests_illus_occupations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[interest_type] [varchar](20) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
 CONSTRAINT [PK_onet_interests_illus_occupations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_iwa_reference]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_iwa_reference](
	[element_id] [varchar](20) NOT NULL,
	[iwa_id] [varchar](20) NOT NULL,
	[iwa_title] [varchar](150) NOT NULL,
 CONSTRAINT [PK__onet_iwa__F8A69DE479411F9F] PRIMARY KEY CLUSTERED 
(
	[iwa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_job_zone_reference]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_job_zone_reference](
	[job_zone] [decimal](1, 0) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[experience] [varchar](300) NOT NULL,
	[education] [varchar](500) NOT NULL,
	[job_training] [varchar](300) NOT NULL,
	[examples] [varchar](500) NOT NULL,
	[svp_range] [varchar](25) NOT NULL,
 CONSTRAINT [PK__onet_job__FC0EA31A83055FF4] PRIMARY KEY CLUSTERED 
(
	[job_zone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_job_zones]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_job_zones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[job_zone] [decimal](1, 0) NOT NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_job_zones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_knowledge]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_knowledge](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[data_value] [decimal](5, 2) NOT NULL,
	[n] [decimal](4, 0) NULL,
	[standard_error] [decimal](7, 4) NULL,
	[lower_ci_bound] [decimal](7, 4) NULL,
	[upper_ci_bound] [decimal](7, 4) NULL,
	[recommend_suppress] [char](1) NULL,
	[not_relevant] [char](1) NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_knowledge] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_level_scale_anchors]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_level_scale_anchors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[anchor_value] [decimal](3, 0) NOT NULL,
	[anchor_description] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_onet_level_scale_anchors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_new_emerging]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_new_emerging](
	[onet_soc_code] [char](10) NOT NULL,
 CONSTRAINT [PK_onet_new_emerging] PRIMARY KEY CLUSTERED 
(
	[onet_soc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_occupation_data]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_occupation_data](
	[onetsoc_code] [char](10) NOT NULL,
	[title] [varchar](150) NOT NULL,
	[description] [varchar](1000) NOT NULL,
 CONSTRAINT [PK__onet_occ__8DC17CEB7ABFC053] PRIMARY KEY CLUSTERED 
(
	[onetsoc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_occupation_level_metadata]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_occupation_level_metadata](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[item] [varchar](150) NOT NULL,
	[response] [varchar](75) NULL,
	[n] [decimal](4, 0) NULL,
	[percent] [decimal](4, 1) NULL,
	[date_updated] [date] NOT NULL,
 CONSTRAINT [PK_onet_occupation_level_metadata] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_related_occupations]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_related_occupations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[related_onetsoc_code] [char](10) NOT NULL,
	[relatedness_tier] [varchar](50) NOT NULL,
	[related_index] [decimal](3, 0) NOT NULL,
 CONSTRAINT [PK_onet_related_occupations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_riasec_keywords]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_riasec_keywords](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[keyword] [varchar](150) NOT NULL,
	[keyword_type] [varchar](20) NOT NULL,
 CONSTRAINT [PK_onet_riasec_keywords] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_sample_of_reported_titles]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_sample_of_reported_titles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[reported_job_title] [varchar](150) NOT NULL,
	[shown_in_my_next_move] [char](1) NOT NULL,
 CONSTRAINT [PK_onet_sample_of_reported_titles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_scales_reference]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_scales_reference](
	[scale_id] [varchar](3) NOT NULL,
	[scale_name] [varchar](50) NOT NULL,
	[minimum] [decimal](1, 0) NOT NULL,
	[maximum] [decimal](3, 0) NOT NULL,
 CONSTRAINT [PK__onet_sca__853DA6AD1FE701EC] PRIMARY KEY CLUSTERED 
(
	[scale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_skills]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_skills](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[data_value] [decimal](5, 2) NOT NULL,
	[n] [decimal](4, 0) NULL,
	[standard_error] [decimal](7, 4) NULL,
	[lower_ci_bound] [decimal](7, 4) NULL,
	[upper_ci_bound] [decimal](7, 4) NULL,
	[recommend_suppress] [char](1) NULL,
	[not_relevant] [char](1) NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_skills] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_skills_to_work_activities]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_skills_to_work_activities](
	[skills_element_id] [varchar](20) NOT NULL,
	[work_activities_element_id] [varchar](20) NOT NULL,
 CONSTRAINT [PK_onet_skills_to_work_activities] PRIMARY KEY CLUSTERED 
(
	[skills_element_id] ASC,
	[work_activities_element_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_skills_to_work_context]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_skills_to_work_context](
	[skills_element_id] [varchar](20) NOT NULL,
	[work_context_element_id] [varchar](20) NOT NULL,
 CONSTRAINT [PK_onet_skills_to_work_context] PRIMARY KEY CLUSTERED 
(
	[skills_element_id] ASC,
	[work_context_element_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_survey_booklet_locations]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_survey_booklet_locations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[survey_item_number] [varchar](4) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
 CONSTRAINT [PK_onet_survey_booklet_locations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_task_categories]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_task_categories](
	[scale_id] [varchar](3) NOT NULL,
	[category] [decimal](3, 0) NOT NULL,
	[category_description] [varchar](1000) NOT NULL,
 CONSTRAINT [PK__onet_tas__AA42F5616F844114] PRIMARY KEY CLUSTERED 
(
	[scale_id] ASC,
	[category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_task_ratings]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_task_ratings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[task_id] [decimal](8, 0) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[category] [decimal](3, 0) NULL,
	[data_value] [decimal](5, 2) NOT NULL,
	[n] [decimal](4, 0) NULL,
	[standard_error] [decimal](7, 4) NULL,
	[lower_ci_bound] [decimal](7, 4) NULL,
	[upper_ci_bound] [decimal](7, 4) NULL,
	[recommend_suppress] [char](1) NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_task_ratings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_task_statements]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_task_statements](
	[onetsoc_code] [char](10) NOT NULL,
	[task_id] [decimal](8, 0) NOT NULL,
	[task] [varchar](1000) NOT NULL,
	[task_type] [varchar](12) NULL,
	[incumbents_responding] [decimal](4, 0) NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK__onet_tas__0492148D330534B4] PRIMARY KEY CLUSTERED 
(
	[task_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_tasks_to_dwas]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_tasks_to_dwas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[task_id] [decimal](8, 0) NOT NULL,
	[dwa_id] [varchar](20) NOT NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_tasks_to_dwas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_technology_skills]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_technology_skills](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[example] [varchar](150) NOT NULL,
	[commodity_code] [decimal](8, 0) NOT NULL,
	[hot_technology] [char](1) NOT NULL,
	[in_demand] [char](1) NOT NULL,
 CONSTRAINT [PK_onet_technology_skills] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_tools_used]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_tools_used](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[example] [varchar](150) NOT NULL,
	[commodity_code] [decimal](8, 0) NOT NULL,
 CONSTRAINT [PK_onet_tools_used] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_unspsc_reference]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_unspsc_reference](
	[commodity_code] [decimal](8, 0) NOT NULL,
	[commodity_title] [varchar](150) NOT NULL,
	[class_code] [decimal](8, 0) NOT NULL,
	[class_title] [varchar](150) NOT NULL,
	[family_code] [decimal](8, 0) NOT NULL,
	[family_title] [varchar](150) NOT NULL,
	[segment_code] [decimal](8, 0) NOT NULL,
	[segment_title] [varchar](150) NOT NULL,
 CONSTRAINT [PK__onet_uns__6C0BFFF2800765B5] PRIMARY KEY CLUSTERED 
(
	[commodity_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_work_activities]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_work_activities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[data_value] [decimal](5, 2) NOT NULL,
	[n] [decimal](4, 0) NULL,
	[standard_error] [decimal](7, 4) NULL,
	[lower_ci_bound] [decimal](7, 4) NULL,
	[upper_ci_bound] [decimal](7, 4) NULL,
	[recommend_suppress] [char](1) NULL,
	[not_relevant] [char](1) NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_work_activities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_work_context]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_work_context](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[category] [decimal](3, 0) NULL,
	[data_value] [decimal](5, 2) NOT NULL,
	[n] [decimal](4, 0) NULL,
	[standard_error] [decimal](7, 4) NULL,
	[lower_ci_bound] [decimal](7, 4) NULL,
	[upper_ci_bound] [decimal](7, 4) NULL,
	[recommend_suppress] [char](1) NULL,
	[not_relevant] [char](1) NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_work_context] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_work_context_categories]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_work_context_categories](
	[element_id] [varchar](20) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[category] [decimal](3, 0) NOT NULL,
	[category_description] [varchar](1000) NOT NULL,
 CONSTRAINT [PK__onet_wor__3220A6AD55854033] PRIMARY KEY CLUSTERED 
(
	[element_id] ASC,
	[scale_id] ASC,
	[category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_work_styles]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_work_styles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[data_value] [decimal](5, 2) NOT NULL,
	[n] [decimal](4, 0) NULL,
	[standard_error] [decimal](7, 4) NULL,
	[lower_ci_bound] [decimal](7, 4) NULL,
	[upper_ci_bound] [decimal](7, 4) NULL,
	[recommend_suppress] [char](1) NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_work_styles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[onet_work_values]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onet_work_values](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[onetsoc_code] [char](10) NOT NULL,
	[element_id] [varchar](20) NOT NULL,
	[scale_id] [varchar](3) NOT NULL,
	[data_value] [decimal](5, 2) NOT NULL,
	[date_updated] [date] NOT NULL,
	[domain_source] [varchar](30) NOT NULL,
 CONSTRAINT [PK_onet_work_values] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[organizations]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organizations](
	[organization_id] [int] IDENTITY(1,1) NOT NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[salesforce_account_id] [varchar](50) NULL,
	[salesforce_account_id_updated_at] [datetime] NULL,
	[uar_id] [int] NULL,
	[name] [varchar](255) NULL,
	[state] [char](2) NULL,
	[user_limit] [int] NULL,
 CONSTRAINT [PK_organizations] PRIMARY KEY CLUSTERED 
(
	[organization_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partners]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partners](
	[partner_id] [int] IDENTITY(1,1) NOT NULL,
	[partner_name] [varchar](100) NOT NULL,
	[partner_display] [varchar](500) NOT NULL,
	[partner_description] [varchar](2000) NULL,
	[date_created] [datetime] NULL,
	[partner_image] [varchar](250) NULL,
	[partner_image_width] [varchar](20) NULL,
	[partner_title] [varchar](100) NULL,
	[partner_subtitle] [varchar](1000) NULL,
	[partner_footer_heading] [varchar](100) NULL,
	[partner_footer_description] [varchar](2000) NULL,
	[partner_call_to_action] [varchar](100) NULL,
	[partner_call_to_action_text] [varchar](50) NULL,
	[date_last_modified] [datetime] NULL,
	[date_archived] [datetime] NULL,
 CONSTRAINT [PK_partners] PRIMARY KEY CLUSTERED 
(
	[partner_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partners_careers]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partners_careers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[partner_id] [int] NOT NULL,
	[career_name] [varchar](100) NULL,
	[career_description] [varchar](1000) NULL,
	[wistia_id] [varchar](50) NULL,
	[career_guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_partners_careers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_formatted_scholarships]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_formatted_scholarships](
	[id] [int] NOT NULL,
	[batch] [varchar](3) NULL,
	[comments] [varchar](1000) NULL,
	[description] [varchar](6000) NULL,
	[area_of_study1] [varchar](255) NULL,
	[area_of_study2] [varchar](255) NULL,
	[area_of_study3] [varchar](255) NULL,
	[area_of_study4] [varchar](255) NULL,
	[area_of_study5] [varchar](255) NULL,
	[area_of_study6] [varchar](255) NULL,
	[area_of_study7] [varchar](255) NULL,
	[area_of_study8] [varchar](255) NULL,
	[area_of_study9] [varchar](255) NULL,
	[area_of_study10] [varchar](255) NULL,
	[area_of_study11] [varchar](255) NULL,
	[area_of_study12] [varchar](255) NULL,
	[program_name] [varchar](250) NULL,
	[number_awarded_min] [int] NULL,
	[number_awarded_max] [int] NULL,
	[donor] [varchar](66) NULL,
	[percent_award] [varchar](4) NULL,
	[award_amount_min] [int] NULL,
	[award_amount_max] [int] NULL,
	[application_deadline_month] [varchar](2) NULL,
	[application_deadline_day] [varchar](2) NULL,
	[application_required] [varchar](1) NULL,
	[transcript_required] [varchar](1) NULL,
	[autobiography_required] [varchar](1) NULL,
	[test_scores_required] [varchar](1) NULL,
	[interview_required] [varchar](1) NULL,
	[financial_need_analysis_required] [varchar](1) NULL,
	[essay_required] [varchar](1) NULL,
	[recommendations_required] [varchar](1) NULL,
	[special_requirements] [varchar](1) NULL,
	[contest_entry_required] [varchar](1) NULL,
	[contest_entry_not_required] [varchar](1) NULL,
	[application_fee_required] [varchar](1) NULL,
	[application_fee_not_required] [varchar](1) NULL,
	[contact_name] [varchar](38) NULL,
	[contact_name2] [varchar](38) NULL,
	[contact_name3] [varchar](38) NULL,
	[contact_address] [varchar](38) NULL,
	[contact_city] [varchar](30) NULL,
	[contact_state] [varchar](2) NULL,
	[contact_zip1] [varchar](5) NULL,
	[contact_zip2] [varchar](4) NULL,
	[contact_areacode] [varchar](3) NULL,
	[contact_exchange] [varchar](3) NULL,
	[contact_phone] [varchar](50) NULL,
	[contact_extension] [varchar](13) NULL,
	[donor_name1] [varchar](100) NULL,
	[donor_name2] [varchar](100) NULL,
	[donor_description] [varchar](6000) NULL,
	[must_be_in_high_school] [varchar](1) NULL,
	[does_not_need_to_be_in_high_school] [varchar](1) NULL,
	[is_scholarship] [varchar](1) NULL,
	[is_loan] [varchar](1) NULL,
	[renewable] [varchar](1) NULL,
	[nonrenewable] [varchar](1) NULL,
	[male_only] [varchar](1) NULL,
	[female_only] [varchar](1) NULL,
	[married] [varchar](1) NULL,
	[single] [varchar](1) NULL,
	[upperhalf] [varchar](1) NULL,
	[upperthird] [varchar](1) NULL,
	[upperforth] [varchar](1) NULL,
	[freshman] [varchar](1) NULL,
	[sophomore] [varchar](1) NULL,
	[junior] [varchar](1) NULL,
	[senior] [varchar](1) NULL,
	[graduate_school] [varchar](1) NULL,
	[two_year_school] [varchar](1) NULL,
	[four_year_school] [varchar](1) NULL,
	[trade_tech_school] [varchar](1) NULL,
	[visually_impaired] [varchar](1) NULL,
	[hearing_imparied] [varchar](1) NULL,
	[physical_impairment] [varchar](1) NULL,
	[learning_disabled] [varchar](1) NULL,
	[native] [varchar](1) NULL,
	[asian] [varchar](1) NULL,
	[black] [varchar](1) NULL,
	[hispanic] [varchar](1) NULL,
	[military] [varchar](1) NULL,
	[air_force] [varchar](1) NULL,
	[army] [varchar](1) NULL,
	[navy] [varchar](1) NULL,
	[marines] [varchar](1) NULL,
	[coast_guard] [varchar](1) NULL,
	[special_military] [varchar](1) NULL,
	[air_national_guard] [varchar](1) NULL,
	[army_national_guard] [varchar](1) NULL,
	[state1] [varchar](2) NULL,
	[state2] [varchar](2) NULL,
	[state3] [varchar](2) NULL,
	[state4] [varchar](2) NULL,
	[state5] [varchar](2) NULL,
	[state6] [varchar](2) NULL,
	[state7] [varchar](2) NULL,
	[state8] [varchar](2) NULL,
	[state9] [varchar](2) NULL,
	[state10] [varchar](2) NULL,
	[state11] [varchar](2) NULL,
	[state12] [varchar](2) NULL,
	[state13] [varchar](2) NULL,
	[state14] [varchar](2) NULL,
	[state15] [varchar](2) NULL,
	[religion1] [varchar](255) NULL,
	[religion2] [varchar](255) NULL,
	[religion3] [varchar](255) NULL,
	[ethnicity1] [varchar](255) NULL,
	[ethnicity2] [varchar](255) NULL,
	[ethnicity3] [varchar](255) NULL,
	[ethnicity4] [varchar](255) NULL,
	[ethnicity5] [varchar](255) NULL,
	[employment1] [varchar](255) NULL,
	[employment2] [varchar](255) NULL,
	[employment3] [varchar](255) NULL,
	[talent1] [varchar](255) NULL,
	[talent2] [varchar](255) NULL,
	[talent3] [varchar](255) NULL,
	[talent4] [varchar](255) NULL,
	[talent5] [varchar](255) NULL,
	[organization1] [varchar](255) NULL,
	[organization2] [varchar](255) NULL,
	[organization3] [varchar](255) NULL,
	[prize] [varchar](1) NULL,
	[hs_eligible] [varchar](1) NULL,
	[hs_ineligible] [varchar](1) NULL,
	[self_addr_envelope] [varchar](1) NULL,
	[number_awarded] [varchar](6) NULL,
	[total_awarded] [varchar](9) NULL,
	[corporation] [varchar](255) NULL,
	[application_fee] [varchar](5) NULL,
	[state_used1] [varchar](2) NULL,
	[state_used2] [varchar](2) NULL,
	[state_used3] [varchar](2) NULL,
	[state_used4] [varchar](2) NULL,
	[state_used5] [varchar](2) NULL,
	[state_used6] [varchar](2) NULL,
	[state_used7] [varchar](2) NULL,
	[state_used8] [varchar](2) NULL,
	[state_used9] [varchar](2) NULL,
	[state_used10] [varchar](2) NULL,
	[state_used11] [varchar](2) NULL,
	[state_used12] [varchar](2) NULL,
	[state_used13] [varchar](2) NULL,
	[state_used14] [varchar](2) NULL,
	[state_used15] [varchar](2) NULL,
	[sponsor_url] [varchar](250) NULL,
	[state_funded] [varchar](1) NULL,
	[not_state_funded] [varchar](1) NULL,
	[full_time_only] [varchar](1) NULL,
	[part_time_only] [varchar](1) NULL,
	[full_or_part_time] [varchar](1) NULL,
	[photograph_required] [varchar](1) NULL,
	[drivers_license_required] [varchar](1) NULL,
	[portfolio_required] [varchar](1) NULL,
	[is_grant] [varchar](1) NULL,
	[is_fellowship] [varchar](1) NULL,
	[postgrad] [varchar](1) NULL,
	[university] [varchar](1) NULL,
	[age_restriction_from] [varchar](2) NULL,
	[age_restriction_to] [varchar](3) NULL,
	[citizenship_restriction0] [varchar](50) NULL,
	[citizenship_restriction1] [varchar](50) NULL,
	[citizenship_restriction2] [varchar](50) NULL,
	[citizenship_restriction3] [varchar](50) NULL,
	[citizenship_restriction4] [varchar](50) NULL,
	[citizenship_restriction5] [varchar](50) NULL,
	[contact_prefix] [varchar](50) NULL,
	[contact_first_name] [varchar](50) NULL,
	[contact_middle_name] [varchar](50) NULL,
	[contact_last_name] [varchar](50) NULL,
	[contact_title] [varchar](150) NULL,
	[contact_fax] [varchar](50) NULL,
	[contact_email] [varchar](120) NULL,
	[contact_address1] [varchar](80) NULL,
	[contact_address2] [varchar](80) NULL,
	[contact_zip] [varchar](10) NULL,
	[contact_country] [varchar](50) NULL,
	[is_forgivable_loan] [varchar](1) NULL,
	[available_usa] [varchar](1) NULL,
	[not_available_usa] [varchar](1) NULL,
	[available_ca] [varchar](1) NULL,
	[not_available_ca] [varchar](1) NULL,
	[available_outside_usa_ca] [varchar](1) NULL,
	[not_available_outside_usa_ca] [varchar](1) NULL,
	[resume_required] [varchar](1) NULL,
	[other_application_requirements] [varchar](2000) NULL,
	[restricted_911_survivors] [varchar](1) NULL,
	[number_of_applications] [int] NULL,
	[community_service_required] [varchar](1) NULL,
	[online_application] [varchar](1) NULL,
	[application_url] [varchar](2000) NULL,
	[donor_name] [varchar](1200) NULL,
	[program_url] [varchar](1200) NULL,
	[application_email_address] [varchar](120) NULL,
 CONSTRAINT [PK_pd_scholarships] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_pa_academics]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_pa_academics](
	[code] [varchar](2) NOT NULL,
	[description] [varchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_pd_pa_academics] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_pa_corporations]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_pa_corporations](
	[code] [varchar](2) NOT NULL,
	[description] [varchar](255) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_pa_corporations] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_pa_descriptions]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_pa_descriptions](
	[id] [int] NOT NULL,
	[description] [varchar](4000) NULL,
	[program_name] [varchar](250) NULL,
	[donor_description] [varchar](4000) NULL,
	[donor_name] [varchar](108) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_pa_descriptions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_pa_employers]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_pa_employers](
	[code] [varchar](2) NOT NULL,
	[description] [varchar](255) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_pa_employers] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_pa_ethnicities]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_pa_ethnicities](
	[code] [varchar](2) NOT NULL,
	[description] [varchar](255) NULL,
	[updated_at] [datetime] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_pd_pa_ethnicities] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_pa_organizations]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_pa_organizations](
	[code] [varchar](2) NOT NULL,
	[description] [varchar](255) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_pa_organizations] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_pa_religions]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_pa_religions](
	[code] [varchar](2) NOT NULL,
	[description] [varchar](255) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_pa_religions] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_pa_scholarships]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_pa_scholarships](
	[id] [int] NOT NULL,
	[batch] [varchar](3) NULL,
	[comments] [varchar](1000) NULL,
	[description1] [varchar](100) NULL,
	[description2] [varchar](100) NULL,
	[description3] [varchar](100) NULL,
	[description4] [varchar](100) NULL,
	[description5] [varchar](100) NULL,
	[area_of_study1] [varchar](2) NULL,
	[area_of_study2] [varchar](2) NULL,
	[area_of_study3] [varchar](2) NULL,
	[area_of_study4] [varchar](2) NULL,
	[area_of_study5] [varchar](2) NULL,
	[area_of_study6] [varchar](2) NULL,
	[area_of_study7] [varchar](2) NULL,
	[area_of_study8] [varchar](2) NULL,
	[area_of_study9] [varchar](2) NULL,
	[area_of_study10] [varchar](2) NULL,
	[area_of_study11] [varchar](2) NULL,
	[area_of_study12] [varchar](2) NULL,
	[program_name] [varchar](200) NULL,
	[number_awarded_min] [int] NULL,
	[number_awarded_max] [int] NULL,
	[donor] [varchar](66) NULL,
	[percent_award] [varchar](4) NULL,
	[award_amount_min] [int] NULL,
	[award_amount_max] [int] NULL,
	[application_deadline_month] [varchar](2) NULL,
	[application_deadline_day] [varchar](2) NULL,
	[application_required] [varchar](1) NULL,
	[transcript_required] [varchar](1) NULL,
	[autobiography_required] [varchar](1) NULL,
	[test_scores_required] [varchar](1) NULL,
	[interview_required] [varchar](1) NULL,
	[finanicial_need_analysis_required] [varchar](1) NULL,
	[essay_required] [varchar](1) NULL,
	[recommendations_required] [varchar](1) NULL,
	[special_requirements] [varchar](1) NULL,
	[contest_entry_required] [varchar](1) NULL,
	[contest_entry_not_required] [varchar](1) NULL,
	[application_fee_required] [varchar](1) NULL,
	[application_fee_not_required] [varchar](1) NULL,
	[contact_name] [varchar](38) NULL,
	[contact_name2] [varchar](38) NULL,
	[contact_name3] [varchar](38) NULL,
	[contact_address] [varchar](38) NULL,
	[contact_city] [varchar](30) NULL,
	[contact_state] [varchar](2) NULL,
	[contact_zip1] [varchar](5) NULL,
	[contact_zip2] [varchar](4) NULL,
	[contact_areacode] [varchar](3) NULL,
	[contact_exchange] [varchar](3) NULL,
	[contact_phone] [varchar](4) NULL,
	[contact_extension] [varchar](13) NULL,
	[program_name1] [varchar](250) NULL,
	[program_name2] [varchar](250) NULL,
	[donor_name1] [varchar](150) NULL,
	[donor_name2] [varchar](150) NULL,
	[must_be_in_high_school] [varchar](1) NULL,
	[does_not_need_to_be_in_high_school] [varchar](1) NULL,
	[is_scholarship] [varchar](1) NULL,
	[is_loan] [varchar](1) NULL,
	[renewable] [varchar](1) NULL,
	[nonrenewable] [varchar](1) NULL,
	[male_only] [varchar](1) NULL,
	[female_only] [varchar](1) NULL,
	[married] [varchar](1) NULL,
	[single] [varchar](1) NULL,
	[upperhalf] [varchar](1) NULL,
	[upperthird] [varchar](1) NULL,
	[upperforth] [varchar](1) NULL,
	[freshman] [varchar](1) NULL,
	[sophomore] [varchar](1) NULL,
	[junior] [varchar](1) NULL,
	[senior] [varchar](1) NULL,
	[graduate_school] [varchar](1) NULL,
	[two_year_school] [varchar](1) NULL,
	[four_year_school] [varchar](1) NULL,
	[trade_tech_school] [varchar](1) NULL,
	[visually_impaired] [varchar](1) NULL,
	[hearing_imparied] [varchar](1) NULL,
	[physical_impairment] [varchar](1) NULL,
	[learning_disabled] [varchar](1) NULL,
	[native] [varchar](1) NULL,
	[asian] [varchar](1) NULL,
	[black] [varchar](1) NULL,
	[hispanic] [varchar](1) NULL,
	[military] [varchar](1) NULL,
	[air_force] [varchar](1) NULL,
	[army] [varchar](1) NULL,
	[navy] [varchar](1) NULL,
	[marines] [varchar](1) NULL,
	[coast_guard] [varchar](1) NULL,
	[special_military] [varchar](1) NULL,
	[air_national_guard] [varchar](1) NULL,
	[army_national_guard] [varchar](1) NULL,
	[state1] [varchar](2) NULL,
	[state2] [varchar](2) NULL,
	[state3] [varchar](2) NULL,
	[state4] [varchar](2) NULL,
	[state5] [varchar](2) NULL,
	[state6] [varchar](2) NULL,
	[state7] [varchar](2) NULL,
	[state8] [varchar](2) NULL,
	[state9] [varchar](2) NULL,
	[state10] [varchar](2) NULL,
	[state11] [varchar](2) NULL,
	[state12] [varchar](2) NULL,
	[state13] [varchar](2) NULL,
	[state14] [varchar](2) NULL,
	[state15] [varchar](2) NULL,
	[religion1] [varchar](2) NULL,
	[religion2] [varchar](2) NULL,
	[religion3] [varchar](2) NULL,
	[ethnicity1] [varchar](2) NULL,
	[ethnicity2] [varchar](2) NULL,
	[ethnicity3] [varchar](2) NULL,
	[ethnicity4] [varchar](2) NULL,
	[ethnicity5] [varchar](2) NULL,
	[employment1] [varchar](2) NULL,
	[employment2] [varchar](2) NULL,
	[employment3] [varchar](2) NULL,
	[talent1] [varchar](2) NULL,
	[talent2] [varchar](2) NULL,
	[talent3] [varchar](2) NULL,
	[talent4] [varchar](2) NULL,
	[talent5] [varchar](2) NULL,
	[organization1] [varchar](2) NULL,
	[organization2] [varchar](2) NULL,
	[organization3] [varchar](2) NULL,
	[prize] [varchar](1) NULL,
	[hs_eligible] [varchar](1) NULL,
	[hs_ineligible] [varchar](1) NULL,
	[self_addr_envelope] [varchar](1) NULL,
	[number_awarded] [varchar](5) NULL,
	[total_awarded] [varchar](9) NULL,
	[corporation] [varchar](2) NULL,
	[application_fee] [varchar](5) NULL,
	[state_used1] [varchar](2) NULL,
	[state_used2] [varchar](2) NULL,
	[state_used3] [varchar](2) NULL,
	[state_used4] [varchar](2) NULL,
	[state_used5] [varchar](2) NULL,
	[state_used6] [varchar](2) NULL,
	[state_used7] [varchar](2) NULL,
	[state_used8] [varchar](2) NULL,
	[state_used9] [varchar](2) NULL,
	[state_used10] [varchar](2) NULL,
	[state_used11] [varchar](2) NULL,
	[state_used12] [varchar](2) NULL,
	[state_used13] [varchar](2) NULL,
	[state_used14] [varchar](2) NULL,
	[state_used15] [varchar](2) NULL,
	[sponsor_url] [varchar](150) NULL,
	[state_funded] [varchar](1) NULL,
	[not_state_funded] [varchar](1) NULL,
	[full_time_only] [varchar](1) NULL,
	[part_time_only] [varchar](1) NULL,
	[full_or_part_time] [varchar](1) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
	[gpa_required] [numeric](8, 4) NULL,
 CONSTRAINT [PK_pd_pa_scholarships] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_pa_supplements]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_pa_supplements](
	[id] [int] NOT NULL,
	[photograph_required] [varchar](1) NULL,
	[drivers_license_required] [varchar](1) NULL,
	[portfolio_required] [varchar](1) NULL,
	[is_grant] [varchar](1) NULL,
	[is_fellowship] [varchar](1) NULL,
	[postgrad] [varchar](1) NULL,
	[university] [varchar](1) NULL,
	[age_restriction_from] [varchar](2) NULL,
	[age_restriction_to] [varchar](3) NULL,
	[citizenship_restriction0] [varchar](50) NULL,
	[citizenship_restriction1] [varchar](50) NULL,
	[citizenship_restriction2] [varchar](50) NULL,
	[citizenship_restriction3] [varchar](50) NULL,
	[citizenship_restriction4] [varchar](50) NULL,
	[citizenship_restriction5] [varchar](50) NULL,
	[contact_prefix] [varchar](50) NULL,
	[contact_first_name] [varchar](50) NULL,
	[contact_middle_name] [varchar](50) NULL,
	[contact_last_name] [varchar](50) NULL,
	[contact_title] [varchar](150) NULL,
	[contact_phone] [varchar](50) NULL,
	[contact_fax] [varchar](50) NULL,
	[contact_email] [varchar](120) NULL,
	[contact_address1] [varchar](80) NULL,
	[contact_address2] [varchar](80) NULL,
	[contact_city] [varchar](50) NULL,
	[contact_state] [varchar](2) NULL,
	[contact_zip] [varchar](10) NULL,
	[contact_country] [varchar](50) NULL,
	[is_forgivable_loan] [varchar](1) NULL,
	[available_usa] [varchar](1) NULL,
	[not_available_usa] [varchar](1) NULL,
	[available_ca] [varchar](1) NULL,
	[not_available_ca] [varchar](1) NULL,
	[available_outside_usa_ca] [varchar](1) NULL,
	[not_available_outside_usa_ca] [varchar](1) NULL,
	[resume_required] [varchar](1) NULL,
	[other_application_requirements] [varchar](2000) NULL,
	[restricted_911_survivors] [varchar](1) NULL,
	[number_of_applications] [int] NULL,
	[community_service_required] [varchar](1) NULL,
	[online_application] [varchar](1) NULL,
	[application_url] [varchar](1500) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
	[application_email] [varchar](1) NULL,
	[application_mail] [varchar](2) NULL,
	[application_email_address] [varchar](120) NULL,
	[program_url] [varchar](500) NULL,
 CONSTRAINT [PK_pd_pa_supplements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_pa_talents]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_pa_talents](
	[code] [varchar](2) NOT NULL,
	[description] [varchar](255) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_pa_talents] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_academic_programs]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_academic_programs](
	[dataset_year] [int] NULL,
	[code] [varchar](5) NOT NULL,
	[description] [varchar](100) NULL,
	[sequence] [int] NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_academic_programs] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_admission_factors]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_admission_factors](
	[dataset_year] [int] NULL,
	[code] [varchar](5) NOT NULL,
	[description] [varchar](100) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_admission_factors] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_admission_factors_assignments]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_admission_factors_assignments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[factor] [varchar](5) NULL,
	[importance] [varchar](4) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_admission_factors_assignments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_admissions]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_admissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NOT NULL,
	[institution_id] [int] NOT NULL,
	[currency] [varchar](3) NULL,
	[applications_received_first_year] [int] NULL,
	[applications_admitted_first_year] [int] NULL,
	[applications_recd_first_year_male] [int] NULL,
	[applications_recd_first_year_female] [int] NULL,
	[applications_admitted_first_year_male] [int] NULL,
	[applications_admitted_first_year_female] [int] NULL,
	[has_waitlist] [varchar](1) NULL,
	[waitlisted_applications] [int] NULL,
	[waitlist_applicants_accepting] [int] NULL,
	[waitlist_applicants_admitted] [int] NULL,
	[has_open_admissions_policy] [varchar](1) NULL,
	[open_admissions_policy] [text] NULL,
	[has_preferential_admissions_policy] [varchar](1) NULL,
	[preferential_admissions_policy] [text] NULL,
	[has_early_admissions_policy] [varchar](1) NULL,
	[accepts_international_baccalaureate] [varchar](1) NULL,
	[has_early_action_plan] [varchar](1) NULL,
	[has_early_decision_plan] [varchar](1) NULL,
	[has_deferred_admissions_option] [varchar](1) NULL,
	[high_school_completition_requirement] [varchar](3) NULL,
	[high_school_completition_req_some_programs] [varchar](3) NULL,
	[high_school_comp_req_some_programs_policy] [text] NULL,
	[fall_freshman_app_deadline_month] [int] NULL,
	[fall_freshman_app_deadline_day] [int] NULL,
	[fall_freshman_app_deadline_type] [varchar](1) NULL,
	[fall_freshman_app_notification_month] [int] NULL,
	[fall_freshman_app_notification_day] [int] NULL,
	[fall_freshman_app_notification_type] [varchar](1) NULL,
	[nonres_app_deadline_month] [int] NULL,
	[nonres_app_deadline_day] [int] NULL,
	[nonres_app_deadline_type] [varchar](1) NULL,
	[other_early_decision_deadline_month] [int] NULL,
	[other_early_decision_deadline_day] [int] NULL,
	[other_early_decision_deadline_type] [varchar](1) NULL,
	[other_early_decision_notification_month] [int] NULL,
	[other_early_decision_notification_day] [int] NULL,
	[other_early_decision_notification_type] [varchar](1) NULL,
	[nonres_app_notification_month] [int] NULL,
	[nonres_app_notification_day] [int] NULL,
	[nonres_app_notification_type] [varchar](1) NULL,
	[early_decision_deadline_month] [int] NULL,
	[early_decision_deadline_day] [int] NULL,
	[early_decision_deadline_type] [varchar](1) NULL,
	[fall_transfer_app_deadline_month] [int] NULL,
	[fall_transfer_app_deadline_day] [int] NULL,
	[fall_transfer_app_deadline_type] [varchar](1) NULL,
	[early_decision_notification_month] [int] NULL,
	[early_decision_notification_day] [int] NULL,
	[early_decision_notification_type] [varchar](1) NULL,
	[early_action_deadline_month] [int] NULL,
	[early_action_deadline_day] [int] NULL,
	[early_action_deadline_type] [varchar](1) NULL,
	[early_action_notification_month] [int] NULL,
	[early_action_notification_day] [int] NULL,
	[early_action_notification_type] [varchar](1) NULL,
	[fall_transfer_notification_month] [int] NULL,
	[fall_transfer_notification_day] [int] NULL,
	[fall_transfer_notification_type] [varchar](1) NULL,
	[application_fee] [decimal](9, 2) NULL,
	[early_decision_applicants] [int] NULL,
	[early_decision_applicants_admitted] [int] NULL,
	[early_action_applicants] [int] NULL,
	[early_action_applicants_admitted] [int] NULL,
	[accepts_electrontic_applications] [varchar](1) NULL,
	[has_admission_video] [varchar](1) NULL,
	[has_viewbook] [varchar](1) NULL,
	[entrance_difficulty_all] [varchar](4) NULL,
	[entrance_difficulty_nonres] [varchar](4) NULL,
	[entrance_difficulty_transfer] [varchar](4) NULL,
	[entrance_difficulty_groups] [varchar](4) NULL,
	[entrance_difficulty_groups_text] [text] NULL,
	[transfer_students_allowed_in_fall] [varchar](1) NULL,
	[transfer_students_allowed_in_winter] [varchar](1) NULL,
	[transfer_students_allowed_spring] [varchar](1) NULL,
	[transfer_students_allowed_summer] [varchar](1) NULL,
	[sat_reasoning_deadline_month] [int] NULL,
	[sat_reasoning_deadline_day] [int] NULL,
	[sat_subject_deadline_month] [int] NULL,
	[sat_subject_deadline_day] [int] NULL,
	[accepts_clep_subject_transfers] [varchar](1) NULL,
	[accepts_clep_general_transfers] [varchar](1) NULL,
	[accepts_dsst_dantes_transfers] [varchar](1) NULL,
	[accepts_life_long_learning_credit] [varchar](1) NULL,
	[age_of_credit_trans_limit] [int] NULL,
	[no_age_limit_for_credit_transfers] [varchar](1) NULL,
	[accepts_ace_transfers] [varchar](1) NULL,
	[accepts_excelsior_transfers] [varchar](1) NULL,
	[accepts_credit_transfers] [varchar](1) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_admissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_affiliation_types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_affiliation_types](
	[code] [varchar](3) NOT NULL,
	[description] [varchar](100) NULL,
	[type] [varchar](5) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_affiliation_types] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_appl_req_types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_appl_req_types](
	[dataset_year] [int] NOT NULL,
	[code] [varchar](10) NOT NULL,
	[description] [varchar](100) NULL,
	[user_defined] [varchar](1) NULL,
	[sequence] [int] NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_appl_req_types_1] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_athletics_assignments]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_athletics_assignments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[code] [varchar](5) NULL,
	[intramural_men] [varchar](1) NULL,
	[intramural_women] [varchar](1) NULL,
	[intercollegiate_men] [varchar](1) NULL,
	[intercollegiate_women] [varchar](1) NULL,
	[scholarships_men] [varchar](1) NULL,
	[scholarships_women] [varchar](1) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_athletics_assignments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_award_types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_award_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[award_code] [varchar](4) NULL,
	[description] [varchar](100) NULL,
	[sort_sequence] [int] NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_award_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_awarded_degrees]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_awarded_degrees](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[code] [varchar](5) NULL,
	[associate_percentage] [numeric](8, 2) NULL,
	[bachelor_percentage] [numeric](8, 2) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_awarded_degrees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_pd_ug_awarded_degrees] UNIQUE NONCLUSTERED 
(
	[institution_id] ASC,
	[research_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_campuses]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_campuses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[setting] [varchar](5) NULL,
	[nearest_metro_area] [varchar](50) NULL,
	[size] [int] NULL,
	[size_unit_of_measure] [varchar](4) NULL,
	[nearest_airport] [varchar](55) NULL,
	[nearest_highway] [varchar](50) NULL,
	[on_campus_housing] [varchar](1) NULL,
	[on_campus_housing_available] [int] NULL,
	[on_campus_housing_occupancy] [int] NULL,
	[freshman_housing_policy] [varchar](1) NULL,
	[on_campus_required_until] [varchar](1) NULL,
	[co_ed_housing_offered] [varchar](1) NULL,
	[perc_live_on_campus] [decimal](9, 2) NULL,
	[male_only_housing] [varchar](1) NULL,
	[female_only_housing] [varchar](1) NULL,
	[has_student_newspaper] [varchar](1) NULL,
	[has_theater_drama_group] [varchar](1) NULL,
	[has_student_radio] [varchar](1) NULL,
	[has_marching_band] [varchar](1) NULL,
	[has_chorus] [varchar](1) NULL,
	[provides_legal_services] [varchar](1) NULL,
	[provides_health_services] [varchar](1) NULL,
	[provides_counseling_services] [varchar](1) NULL,
	[has_womens_center] [varchar](1) NULL,
	[has_fraternities] [varchar](1) NULL,
	[has_sororities] [varchar](1) NULL,
	[has_local_fraternities] [varchar](1) NULL,
	[has_local_sororities] [varchar](1) NULL,
	[has_other_social_organizations] [varchar](1) NULL,
	[other_social_orgaizations_text] [text] NULL,
	[perc_male_org_members] [decimal](9, 2) NULL,
	[perc_female_org_members] [decimal](9, 2) NULL,
	[number_of_organizations] [int] NULL,
	[largest_organization1] [varchar](120) NULL,
	[largest_organization2] [varchar](120) NULL,
	[largest_organization3] [varchar](120) NULL,
	[largest_organization4] [varchar](120) NULL,
	[largest_organization5] [varchar](120) NULL,
	[largest_campus_event1] [varchar](120) NULL,
	[largest_campus_event2] [varchar](120) NULL,
	[largest_campus_event3] [varchar](120) NULL,
	[has_24_hour_emergency_alarm] [varchar](1) NULL,
	[has_24_hour_security] [varchar](1) NULL,
	[has_student_patrols] [varchar](1) NULL,
	[has_late_night_escorts_available] [varchar](1) NULL,
	[has_electronic_dorm_locks] [varchar](1) NULL,
	[other_security_measures] [text] NULL,
	[coop_housing] [varchar](1) NULL,
	[coop_ada_housing] [varchar](1) NULL,
	[has_student_tv_station] [varchar](1) NULL,
	[univ_owns_on_campus_housing] [varchar](1) NULL,
	[univ_leases_on_campus_housing] [varchar](1) NULL,
	[on_campus_housing_3rd_party] [varchar](1) NULL,
	[perc_students_on_campus_weekend] [decimal](9, 2) NULL,
	[perc_commuting] [decimal](9, 2) NULL,
	[on_campus_housing_required] [varchar](1) NULL,
	[freshmen_allowed_car] [varchar](1) NULL,
	[has_va_office] [varchar](1) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_campuses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_characteristics]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_characteristics](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[affiliated_institution] [varchar](90) NULL,
	[system] [text] NULL,
	[endowment_value] [numeric](16, 2) NULL,
	[endowment_entire_system] [varchar](1) NULL,
	[total_instruction_expenditure] [numeric](16, 2) NULL,
	[average_inst_expend_per_student] [numeric](16, 2) NULL,
	[total_research_expenditure] [numeric](16, 2) NULL,
	[total_library_expenditure] [numeric](16, 2) NULL,
	[main_library_name] [varchar](70) NULL,
	[number_of_other_libraries] [int] NULL,
	[full_time_career_center_staff] [int] NULL,
	[part_time_career_center_staff] [int] NULL,
	[offers_individual_career_counseling] [varchar](1) NULL,
	[offers_group_career_counseling] [varchar](1) NULL,
	[offers_career_placement] [varchar](1) NULL,
	[has_on_campus_recruitment] [varchar](1) NULL,
	[has_job_bank] [varchar](1) NULL,
	[has_job_fair] [varchar](1) NULL,
	[has_job_interviews_via_career_center] [varchar](1) NULL,
	[has_career_library] [varchar](1) NULL,
	[offers_resume_prep] [varchar](1) NULL,
	[offers_resume_referral] [varchar](1) NULL,
	[perc_career_counseled] [numeric](8, 2) NULL,
	[organizations_that_recruite_on_campus] [int] NULL,
	[perc_job_offers] [numeric](8, 2) NULL,
	[post_masters_certificates_offered] [varchar](1) NULL,
	[offers_interest_testing] [varchar](1) NULL,
	[offers_interview_workshops] [varchar](1) NULL,
	[other_career_services] [text] NULL,
	[offers_certificates] [varchar](1) NULL,
	[offers_degrees] [varchar](1) NULL,
	[offers_transfer_assoc_degree] [varchar](1) NULL,
	[offers_terminal_assoc_degree] [varchar](1) NULL,
	[offers_bachelors_degree] [varchar](1) NULL,
	[offers_masters_degree] [varchar](1) NULL,
	[awards_description] [text] NULL,
	[ncaa] [varchar](1) NULL,
	[naia] [varchar](1) NULL,
	[nccaa] [varchar](1) NULL,
	[njcaa] [varchar](1) NULL,
	[cis_ciau] [varchar](1) NULL,
	[offers_alumni_networking] [varchar](1) NULL,
	[offers_post_bach_certificate] [varchar](1) NULL,
	[uscaa] [varchar](1) NULL,
	[offers_other_doctoral_degree] [varchar](1) NULL,
	[offers_professional_doc_degre] [varchar](1) NULL,
	[offers_research_doctoral_degree] [varchar](1) NULL,
	[starting_salary] [numeric](8, 2) NULL,
	[library_ebooks] [int] NULL,
	[library_books] [int] NULL,
	[library_databases] [int] NULL,
	[library_serial_subs] [int] NULL,
	[library_electronic_serial_subs] [int] NULL,
	[library_hours_per_week] [int] NULL,
	[library_open_24hours] [varchar](1) NULL,
	[library_has_reserved_study_rooms] [varchar](1) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_characteristics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_cip_assignments]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_cip_assignments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[code] [varchar](7) NULL,
	[associates] [varchar](1) NULL,
	[bachelors] [varchar](1) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_cip_assignments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_cip_types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_cip_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NOT NULL,
	[code] [varchar](7) NOT NULL,
	[description] [varchar](250) NULL,
	[origin] [varchar](2) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_cip_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_computers]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_computers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[number_of_computers] [int] NULL,
	[computer_services_description] [text] NULL,
	[computer_required] [varchar](1) NULL,
	[purchase_plan_available] [varchar](1) NULL,
	[has_campus_wide_network] [varchar](1) NULL,
	[dorms_are_networked] [varchar](1) NULL,
	[network_available_off_campus] [varchar](1) NULL,
	[has_staffed_computer_lab] [varchar](1) NULL,
	[lab_available_24_hours] [varchar](1) NULL,
	[provides_comp_training] [varchar](1) NULL,
	[provides_software_training] [varchar](1) NULL,
	[provides_internet_training] [varchar](1) NULL,
	[has_online_class_registration] [varchar](1) NULL,
	[number_of_ports] [int] NULL,
	[has_intranet] [varchar](1) NULL,
	[has_help_desk] [varchar](1) NULL,
	[provides_student_email_accounts] [varchar](1) NULL,
	[grades_available_online] [varchar](1) NULL,
	[schedule_available_online] [varchar](1) NULL,
	[perc_housing_high_speed_network] [numeric](8, 2) NULL,
	[has_wireless] [varchar](1) NULL,
	[wireless_available_all_of_campus] [varchar](1) NULL,
	[wireless_in_classrooms] [varchar](1) NULL,
	[wireless_in_comp_centers] [varchar](1) NULL,
	[wireless_in_comp_labs] [varchar](1) NULL,
	[wireless_in_dorms] [varchar](1) NULL,
	[wireless_in_learning_centers] [varchar](1) NULL,
	[wireless_in_libraries] [varchar](1) NULL,
	[wireless_in_student_centers] [varchar](1) NULL,
	[laptops_provided] [varchar](1) NULL,
	[days_per_week_comp_lab_open] [int] NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_computers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_pd_ug_computers] UNIQUE NONCLUSTERED 
(
	[institution_id] ASC,
	[research_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_countries]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_countries](
	[code] [varchar](3) NOT NULL,
	[description] [varchar](50) NULL,
	[long_name] [varchar](100) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_country_types] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_currencies]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_currencies](
	[code] [varchar](3) NOT NULL,
	[description] [varchar](100) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_currency_types] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_denominations]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_denominations](
	[code] [varchar](3) NOT NULL,
	[description] [varchar](100) NULL,
	[type] [varchar](5) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_denomination_types] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_enrollments]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_enrollments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[fulltime_freshmen_men_degree_seeking] [int] NULL,
	[fulltime_freshmen_women_degree_seeking] [int] NULL,
	[parttime_freshmen_men_degree_seeking] [int] NULL,
	[parttime_freshmen_women_degree_seeking] [int] NULL,
	[other_fulltime_men_degree_seeking] [int] NULL,
	[other_fulltime_women_degree_seeking] [int] NULL,
	[other_parttime_men_degree_seeking] [int] NULL,
	[other_parttime_women_degree_seeking] [int] NULL,
	[fulltime_non_degree_seeking_men] [int] NULL,
	[fulltime_non_degree_seeking_women] [int] NULL,
	[parttime_non_degree_seeking_men] [int] NULL,
	[parttime_non_degree_seeking_women] [int] NULL,
	[cohort] [int] NULL,
	[cohort_excluded] [int] NULL,
	[cohort_adjusted] [int] NULL,
	[cohort_grad_in_4_years] [int] NULL,
	[cohort_grad_in_5_years] [int] NULL,
	[cohort_grad_in_6_years] [int] NULL,
	[cohort_total_grad_after_6_years] [int] NULL,
	[cohort_perc_grad_after_6_years] [numeric](8, 2) NULL,
	[assoc_cohort] [int] NULL,
	[assoc_cohort_exclude] [int] NULL,
	[assoc_cohort_adjusted] [int] NULL,
	[assoc_grad_from_programs_less_2_years] [int] NULL,
	[assoc_grad_less_than_150_perc_of_scheduled_2yr_prog] [int] NULL,
	[assoc_grad_from_programs_more_2_years] [nchar](10) NULL,
	[assoc_gradless_than_150_perc_of_scheduled_mort_2_years] [nchar](10) NULL,
	[assoc_cohort_transfer_out] [int] NULL,
	[assoc_transfer_to_assoc] [int] NULL,
	[assoc_transfer_to_four_year_program] [int] NULL,
	[perc_freshman_that_submitted_hs_gpa] [numeric](8, 2) NULL,
	[number_of_degree_seeking_transfer_students] [int] NULL,
	[total_fulltime_ug_men] [int] NULL,
	[total_fulltime_ug_women] [int] NULL,
	[total_parttime_ug_men] [int] NULL,
	[total_parttime_ug_women] [int] NULL,
	[total_fulltime_men] [int] NULL,
	[total_fulltime_women] [int] NULL,
	[total_parttime_men] [int] NULL,
	[total_parttime_women] [int] NULL,
	[total_ug_students] [int] NULL,
	[total_students] [int] NULL,
	[perc_ug_degree_seeking_over_25] [numeric](8, 2) NULL,
	[perc_ug_degree_seeking_out_of_state] [numeric](8, 2) NULL,
	[number_of_states_represented] [int] NULL,
	[number_of_foreign_countries_represented] [int] NULL,
	[perc_freshman_that_submitted_hs_rank] [numeric](8, 2) NULL,
	[perc_freshman_in_top_50_perc_hs] [numeric](8, 2) NULL,
	[perc_freshman_in_top_25_perc_hs] [numeric](8, 2) NULL,
	[perc_freshman_in_top_10_perc_hs] [numeric](8, 2) NULL,
	[average_hs_gpa] [varchar](4) NULL,
	[national_merit_scholars] [int] NULL,
	[senior_class_presidents] [int] NULL,
	[valedictorians] [int] NULL,
	[student_government_officers] [int] NULL,
	[freshman_retention_rate] [numeric](8, 2) NULL,
	[perc_2yr_transfer_to_4yr_program] [numeric](8, 2) NULL,
	[perc_bachelor_to_graduate_school] [numeric](8, 2) NULL,
	[diplomas_awarded_last_year] [int] NULL,
	[associate_degrees_awarded_last_year] [int] NULL,
	[bachelors_degrees_awarded_last_year] [int] NULL,
	[post_bach_certificates_awarded_last_year] [int] NULL,
	[masters_degrees_awarded_last_year] [int] NULL,
	[post_masters_certificates_awarded_last_year] [int] NULL,
	[cohort_entrance_year] [int] NULL,
	[other_doctoral_degrees_awarded_last_year] [int] NULL,
	[professional_doctoral_degrees_awarded_last_year] [int] NULL,
	[research_doctoral_degrees_awarded_last_year] [int] NULL,
	[fulltime_grad_men] [int] NULL,
	[fulltime_grad_women] [int] NULL,
	[parttime_grad_men] [int] NULL,
	[parttime_grad_women] [int] NULL,
	[degree_seeking_nonresidents] [int] NULL,
	[degree_seeking_hispanic_ethnicity] [int] NULL,
	[degree_seeking_black_african_american] [int] NULL,
	[degree_seeking_white] [int] NULL,
	[degree_seeking_native] [int] NULL,
	[degree_seeking_asian] [int] NULL,
	[degree_seeking_pacific_islander] [int] NULL,
	[degree_seeking_two_or_more_races] [int] NULL,
	[degree_seeking_race_unknown] [int] NULL,
	[degree_seeking_all_race_ethnicity] [int] NULL,
	[is_freshman_hs_gpa_weighted] [varchar](1) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
	[freshman_hs_gpa_1] [numeric](8, 2) NULL,
	[freshman_hs_gpa_2] [numeric](8, 2) NULL,
	[freshman_hs_gpa_3] [numeric](8, 2) NULL,
	[freshman_hs_gpa_4] [numeric](8, 2) NULL,
	[freshman_hs_gpa_5] [numeric](8, 2) NULL,
	[freshman_hs_gpa_6] [numeric](8, 2) NULL,
	[freshman_hs_gpa_7] [numeric](8, 2) NULL,
	[freshman_hs_gpa_8] [numeric](8, 2) NULL,
	[freshman_hs_gpa_9] [numeric](8, 2) NULL,
 CONSTRAINT [PK_pd_ug_enrollments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_pd_ug_enrollments] UNIQUE NONCLUSTERED 
(
	[institution_id] ASC,
	[research_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_entrance_exams]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_entrance_exams](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[code] [varchar](5) NULL,
	[student_code] [varchar](1) NULL,
	[required] [varchar](1) NULL,
	[recommended] [varchar](1) NULL,
	[required_some] [varchar](1) NULL,
	[other_description] [text] NULL,
	[considered] [varchar](1) NULL,
	[not_considered] [varchar](1) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_entrance_exams] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_pd_ug_entrance_exams] UNIQUE NONCLUSTERED 
(
	[research_id] ASC,
	[institution_id] ASC,
	[code] ASC,
	[student_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_exam_profiles]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_exam_profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[exams_used_in_admissions] [varchar](1) NULL,
	[SAT1_VERB_200_P] [numeric](8, 2) NULL,
	[SAT1_VERB_300_P] [numeric](8, 2) NULL,
	[SAT1_VERB_400_P] [numeric](8, 2) NULL,
	[SAT1_VERB_500_P] [numeric](8, 2) NULL,
	[SAT1_VERB_600_P] [numeric](8, 2) NULL,
	[SAT1_VERB_700_P] [numeric](8, 2) NULL,
	[SAT1_MATH_200_P] [numeric](8, 2) NULL,
	[SAT1_MATH_300_P] [numeric](8, 2) NULL,
	[SAT1_MATH_400_P] [numeric](8, 2) NULL,
	[SAT1_MATH_500_P] [numeric](8, 2) NULL,
	[SAT1_MATH_600_P] [numeric](8, 2) NULL,
	[SAT1_MATH_700_P] [numeric](8, 2) NULL,
	[SAT1_COMP_400_P] [numeric](8, 2) NULL,
	[SAT1_COMP_600_P] [numeric](8, 2) NULL,
	[SAT1_COMP_800_P] [numeric](8, 2) NULL,
	[SAT1_COMP_1000_P] [numeric](8, 2) NULL,
	[SAT1_COMP_1200_P] [numeric](8, 2) NULL,
	[SAT1_COMP_1400_P] [numeric](8, 2) NULL,
	[ACT_1_P] [numeric](8, 2) NULL,
	[ACT_2_P] [numeric](8, 2) NULL,
	[ACT_3_P] [numeric](8, 2) NULL,
	[ACT_4_P] [numeric](8, 2) NULL,
	[ACT_5_P] [numeric](8, 2) NULL,
	[ACT_6_P] [numeric](8, 2) NULL,
	[SAT1_VERB_MEAN] [numeric](8, 2) NULL,
	[SAT1_MATH_MEAN] [numeric](8, 2) NULL,
	[SAT1_COMP_MEAN] [numeric](8, 2) NULL,
	[ACT_MEAN] [numeric](8, 2) NULL,
	[SUBMIT_SAT1_P] [numeric](8, 2) NULL,
	[SUBMIT_ACT_P] [numeric](8, 2) NULL,
	[SAT1_VERB_25TH_P] [numeric](8, 2) NULL,
	[SAT1_VERB_75TH_P] [numeric](8, 2) NULL,
	[SAT1_MATH_25TH_P] [numeric](8, 2) NULL,
	[SAT1_MATH_75TH_P] [numeric](8, 2) NULL,
	[SAT1_COMP_25TH_P] [numeric](8, 2) NULL,
	[SAT1_COMP_75TH_P] [numeric](8, 2) NULL,
	[ACT_COMP_25TH_P] [numeric](8, 2) NULL,
	[ACT_COMP_75TH_P] [numeric](8, 2) NULL,
	[ACT_WRITING] [varchar](10) NULL,
	[SAT1_WRITING_700_P] [numeric](8, 2) NULL,
	[ESSAY_ADMIS_ACT] [varchar](1) NULL,
	[ESSAY_ADMIS_SAT] [varchar](1) NULL,
	[ESSAY_ADVISING_ACT] [varchar](1) NULL,
	[ESSAY_ADVISING_SAT] [varchar](1) NULL,
	[ESSAY_AP_SUBST_ACT] [varchar](1) NULL,
	[ESSAY_AP_SUBST_SAT] [varchar](1) NULL,
	[ESSAY_AP_VALID_ACT] [varchar](1) NULL,
	[ESSAY_AP_VALID_SAT] [varchar](1) NULL,
	[ESSAY_NO_ACT] [varchar](1) NULL,
	[ESSAY_NO_SAT] [varchar](1) NULL,
	[ESSAY_NO_POLICY_ACT] [varchar](1) NULL,
	[ESSAY_NO_POLICY_SAT] [varchar](1) NULL,
	[ESSAY_PLACE_ACT] [varchar](1) NULL,
	[ESSAY_PLACE_SAT] [varchar](1) NULL,
	[ADMS_OPTIONAL] [varchar](1) NULL,
	[SAT_ESSAY] [varchar](10) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
	[act_eng_1_p] [numeric](8, 2) NULL,
	[act_eng_2_p] [numeric](8, 2) NULL,
	[act_eng_3_p] [numeric](8, 2) NULL,
	[act_eng_4_p] [numeric](8, 2) NULL,
	[act_eng_5_p] [numeric](8, 2) NULL,
	[act_eng_6_p] [numeric](8, 2) NULL,
	[act_math_1_p] [numeric](8, 2) NULL,
	[act_math_2_p] [numeric](8, 2) NULL,
	[act_math_3_p] [numeric](8, 2) NULL,
	[act_math_4_p] [numeric](8, 2) NULL,
	[act_math_5_p] [numeric](8, 2) NULL,
	[act_math_6_p] [numeric](8, 2) NULL,
	[act_math_mean] [numeric](8, 2) NULL,
	[act_eng_mean] [numeric](8, 2) NULL,
	[act_math_25th_p] [numeric](8, 2) NULL,
	[act_math_75th_p] [numeric](8, 2) NULL,
	[act_eng_25th_p] [numeric](8, 2) NULL,
	[act_eng_75th_p] [numeric](8, 2) NULL,
 CONSTRAINT [PK_pd_ug_exam_profiles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_pd_ug_exam_profiles] UNIQUE NONCLUSTERED 
(
	[research_id] ASC,
	[institution_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_exam_types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_exam_types](
	[dataset_year] [int] NULL,
	[code] [varchar](5) NOT NULL,
	[description] [varchar](100) NULL,
	[user_defined] [varchar](1) NULL,
	[updated_at] [datetime] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_pd_ug_exam_types] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_expenses]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_expenses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[academic_year] [int] NULL,
	[source] [varchar](1) NULL,
	[overall_ft_tuition] [numeric](8, 2) NULL,
	[in_district_ft_tuition] [numeric](8, 2) NULL,
	[in_state_ft_tuition] [numeric](8, 2) NULL,
	[out_of_state_ft_tuition] [numeric](8, 2) NULL,
	[ft_fees] [numeric](8, 2) NULL,
	[overall_pt_tuition] [numeric](8, 2) NULL,
	[overall_pt_tuition_unit] [varchar](1) NULL,
	[in_district_pt_tuition] [numeric](8, 2) NULL,
	[in_district_pt_tuition_un] [varchar](1) NULL,
	[in_state_pt_tuition] [numeric](8, 2) NULL,
	[in_state_pt_tuition_unit] [varchar](1) NULL,
	[out_of_state_pt_tuition] [numeric](8, 2) NULL,
	[out_of_state_pt_tuition_unit] [varchar](1) NULL,
	[room_and_board] [numeric](8, 2) NULL,
	[room_only] [numeric](8, 2) NULL,
	[comprehensive_fee] [numeric](8, 2) NULL,
	[expenses_description] [text] NULL,
	[typical_ft_load] [int] NULL,
	[typical_ft_load_unit] [varchar](1) NULL,
	[currency] [varchar](3) NULL,
	[international_ft_tuition] [numeric](8, 2) NULL,
	[books] [numeric](8, 2) NULL,
	[boarding_only_living_at_home] [numeric](8, 2) NULL,
	[boarding_only_not_living_at_home] [numeric](8, 2) NULL,
	[transportation_expense] [numeric](8, 2) NULL,
	[transportation_exp_living_at_home] [numeric](8, 2) NULL,
	[transportation_exp_not_living_at_home] [numeric](8, 2) NULL,
	[other_expenses] [numeric](8, 2) NULL,
	[other_exp_living_at_home] [numeric](8, 2) NULL,
	[other_exp_not_living_at_home] [numeric](8, 2) NULL,
	[one_time_fees] [numeric](8, 2) NULL,
	[pt_fees_per_unit] [numeric](8, 2) NULL,
	[pt_fees_unit] [varchar](1) NULL,
	[pt_fees_per_term] [numeric](8, 2) NULL,
	[pt_fees_per_term_unit] [varchar](1) NULL,
	[do_tuition_fees_vary_by_program] [varchar](1) NULL,
	[do_tuition_fees_vary_by_location] [varchar](1) NULL,
	[do_tuition_fees_vary_by_time] [varchar](1) NULL,
	[do_tuition_fees_vary_by_load] [varchar](1) NULL,
	[do_tuition_fees_vary_by_level] [varchar](1) NULL,
	[do_tuition_fees_vary_by_degree] [varchar](1) NULL,
	[do_tuition_fees_vary_by_reciprocity] [varchar](1) NULL,
	[do_tuition_fees_vary_by_student_level] [varchar](1) NULL,
	[do_room_board_vary_by_plan_selected] [varchar](1) NULL,
	[do_room_board_vary_by_location] [varchar](1) NULL,
	[do_room_board_vary_by_gender] [varchar](1) NULL,
	[do_room_board_vary_by_housing_type] [varchar](1) NULL,
	[do_room_board_vary_by_student_level] [varchar](1) NULL,
	[has_tuition_guarantee_plan] [varchar](1) NULL,
	[has_tuition_prepay_plan] [varchar](1) NULL,
	[has_tuition_installment_plan] [varchar](1) NULL,
	[has_tuition_deferment_plan] [varchar](1) NULL,
	[has_tuition_waiver_for_minorities] [varchar](1) NULL,
	[has_tuition_waiver_for_alumni_children] [varchar](1) NULL,
	[has_tuition_waiver_for_employees_children] [varchar](1) NULL,
	[has_tuition_waiver_for_adult_students] [varchar](1) NULL,
	[has_tuition_waiver_for_senior_citizens] [varchar](1) NULL,
	[fee_agreement_with_other_states] [numeric](8, 2) NULL,
	[tuition_agreement_with_other_states] [numeric](8, 2) NULL,
	[fee_tuition_agreement_description] [text] NULL,
	[price_calculator_url] [text] NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_expenses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_pd_ug_expenses] UNIQUE NONCLUSTERED 
(
	[institution_id] ASC,
	[research_id] ASC,
	[academic_year] ASC,
	[source] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_faculty]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_faculty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[fulltime] [int] NULL,
	[parttime] [int] NULL,
	[total] [int] NULL,
	[student_faculty_ratio] [numeric](8, 3) NULL,
	[ug_student_faculty_ratio] [numeric](8, 3) NULL,
	[fulltime_male] [int] NULL,
	[fulltime_female] [int] NULL,
	[parttime_male] [int] NULL,
	[parttime_female] [int] NULL,
	[total_male] [int] NULL,
	[total_female] [int] NULL,
	[fulltime_doctorate] [int] NULL,
	[parttime_doctorate] [int] NULL,
	[total_doctorate] [int] NULL,
	[ug_ratio_faculty] [int] NULL,
	[ug_ratio_student] [int] NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_faculty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_pd_ug_faculty] UNIQUE NONCLUSTERED 
(
	[institution_id] ASC,
	[research_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_financial_award_assignments]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_financial_award_assignments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[award_code] [varchar](4) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_financial_awards_assign] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_financial_awards]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_financial_awards](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[academic_year] [int] NULL,
	[currency] [varchar](3) NULL,
	[fed_needbased_awarded] [numeric](18, 2) NULL,
	[fed_non_needbased_awarded] [numeric](18, 2) NULL,
	[state_needbased_awarded] [numeric](18, 2) NULL,
	[state_non_needbased_awarded] [numeric](18, 2) NULL,
	[external_needbased_awarded] [numeric](18, 2) NULL,
	[external_non_needbased_awarded] [numeric](18, 2) NULL,
	[inst_needbased_awarded] [numeric](18, 2) NULL,
	[inst_non_needbased_awarded] [numeric](18, 2) NULL,
	[frsh_ft_nd_n] [int] NULL,
	[frsh_ft_nb_gift_n] [int] NULL,
	[ug_ft_nb_gift_n] [int] NULL,
	[frsh_ft_nb_sh_n] [int] NULL,
	[ug_ft_nb_sh_n] [int] NULL,
	[frsh_ft_nn_gift_n] [int] NULL,
	[ug_ft_nn_gift_n] [int] NULL,
	[frsh_ft_nd_met_n] [int] NULL,
	[ug_ft_nd_met_n] [int] NULL,
	[full_time_degree_seeking_undergrads] [int] NULL,
	[full_time_degree_seeking_freshmen] [int] NULL,
	[ug_ft_ap_n] [int] NULL,
	[international_no] [varchar](1) NULL,
	[frsh_ft_ap_n] [int] NULL,
	[ug_ft_nd_n] [int] NULL,
	[intl_avg_d] [numeric](18, 2) NULL,
	[intl_recd_n] [int] NULL,
	[intl_nb] [varchar](1) NULL,
	[ug_ft_avg_pkg_d] [numeric](18, 2) NULL,
	[frsh_ft_avg_pkg_d] [numeric](18, 2) NULL,
	[ug_ft_nd_met_p] [numeric](18, 2) NULL,
	[frsh_ft_nd_met_p] [numeric](18, 2) NULL,
	[form_dom_fafsa] [varchar](1) NULL,
	[form_dom_css] [varchar](1) NULL,
	[form_dom_state] [varchar](1) NULL,
	[form_dom_inst] [varchar](1) NULL,
	[form_dom_other] [varchar](1) NULL,
	[form_dom_other_t] [varchar](120) NULL,
	[form_dom_parent] [varchar](1) NULL,
	[form_dom_bus] [varchar](1) NULL,
	[form_intl_inst] [varchar](1) NULL,
	[form_intl_css] [varchar](1) NULL,
	[form_intl_fa_ap] [varchar](1) NULL,
	[form_intl_certif_fin] [varchar](1) NULL,
	[form_intl_other] [varchar](1) NULL,
	[form_intl_oth_t] [varchar](1000) NULL,
	[ap_dl_yes] [varchar](1) NULL,
	[ap_dl_no] [varchar](1) NULL,
	[ap_dl_mon] [int] NULL,
	[ap_dl_day] [int] NULL,
	[ap_dl_priority] [varchar](1) NULL,
	[ap_dl_priority_mon] [int] NULL,
	[ap_dl_priority_day] [int] NULL,
	[ap_notf_roll] [varchar](1) NULL,
	[ap_notf_roll_mon] [int] NULL,
	[ap_notf_roll_day] [int] NULL,
	[ap_notif_dl] [varchar](1) NULL,
	[ap_notf_dl_mon] [int] NULL,
	[ap_notf_dl_day] [int] NULL,
	[ap_reply_dl_mon] [int] NULL,
	[ap_reply_dl_day] [int] NULL,
	[ap_reply_dl_week] [int] NULL,
	[ug_class_loan_p] [numeric](18, 2) NULL,
	[ug_class_avg_debt_d] [numeric](18, 2) NULL,
	[loan_perkins] [varchar](1) NULL,
	[loan_direct_plush] [varchar](1) NULL,
	[loan_direct_stafford_sub] [varchar](1) NULL,
	[loan_direct_stafford_unsub] [varchar](1) NULL,
	[loan_nursing] [varchar](1) NULL,
	[loan_state] [varchar](1) NULL,
	[loan_inst] [varchar](1) NULL,
	[loan_oth] [varchar](1) NULL,
	[loan_other_t] [varchar](120) NULL,
	[jobs_fws] [varchar](1) NULL,
	[jobs_fws_n] [varchar](1) NULL,
	[jobs_fws_avg_d] [numeric](18, 2) NULL,
	[schol_nb] [varchar](1) NULL,
	[schol_nb_uncf] [varchar](1) NULL,
	[schol_nb_nursing] [varchar](1) NULL,
	[jobs_pt] [varchar](1) NULL,
	[jobs_pt_n] [int] NULL,
	[schol_nb_pell] [varchar](1) NULL,
	[schol_nb_seog] [varchar](1) NULL,
	[schol_nb_state] [varchar](1) NULL,
	[schol_nb_private] [varchar](1) NULL,
	[schol_nc_inst] [varchar](1) NULL,
	[schol_nb_oth] [varchar](1) NULL,
	[schol_nb_oth_t] [varchar](100) NULL,
	[schol_nn_acad_n] [int] NULL,
	[schol_nn_acad_d] [numeric](18, 2) NULL,
	[schol_nn_art_n] [int] NULL,
	[schol_nn_art_d] [numeric](18, 2) NULL,
	[schol_nn_achv_n] [int] NULL,
	[schol_nn_achv_d] [numeric](18, 2) NULL,
	[schol_nn_char_n] [int] NULL,
	[schol_nn_char_d] [numeric](18, 2) NULL,
	[intl_nn] [varchar](1) NULL,
	[sh_nb_stud_loan_d] [numeric](18, 2) NULL,
	[sh_nn_stud_loan_d] [numeric](18, 2) NULL,
	[sh_nb_fws_d] [numeric](18, 2) NULL,
	[sh_nb_state_d] [numeric](18, 2) NULL,
	[sh_nn_state_d] [numeric](18, 2) NULL,
	[sh_nb_tot_d] [numeric](18, 2) NULL,
	[sh_nn_tot_d] [numeric](18, 2) NULL,
	[schol_nn_tot_d] [numeric](18, 2) NULL,
	[schol_nb_tot_d] [numeric](18, 2) NULL,
	[meth_fm] [varchar](1) NULL,
	[meth_im] [varchar](1) NULL,
	[meth_fm_im] [varchar](1) NULL,
	[nb_parent_d] [numeric](18, 2) NULL,
	[nn_parent_d] [numeric](18, 2) NULL,
	[nb_waiver_d] [numeric](18, 2) NULL,
	[nn_waiver_d] [numeric](18, 2) NULL,
	[nb_athl_d] [numeric](18, 2) NULL,
	[nn_athl_d] [numeric](18, 2) NULL,
	[fresh_ft_rec_aid_n] [int] NULL,
	[ug_ft_rec_aid_n] [int] NULL,
	[frsh_ft_avg_nb_gift_d] [numeric](18, 2) NULL,
	[ug_ft_avg_nb_figt_d] [numeric](18, 2) NULL,
	[frsh_ft_avg_nb_sh_d] [numeric](18, 2) NULL,
	[ug_ft_avg_nb_sh_d] [numeric](18, 2) NULL,
	[frsh_ft_avg_nb_loan_d] [numeric](18, 2) NULL,
	[ug_ft_avg_nb_loan_d] [numeric](18, 2) NULL,
	[frsh_ft_nn_noneed_n] [int] NULL,
	[ug_ft_nn_noneed_n] [int] NULL,
	[fresh_ft_nn_noneed_d] [numeric](18, 2) NULL,
	[ug_ft_nn_noneed_d] [numeric](18, 2) NULL,
	[jobs_pt_avg_d] [numeric](18, 2) NULL,
	[url_address_fa] [varchar](250) NULL,
	[ug_ft_nd_plus_p] [numeric](18, 2) NULL,
	[ug_ft_noneed_plus_p] [numeric](18, 2) NULL,
	[intl_nb_fa_oth] [varchar](1) NULL,
	[intl_nb_fa_oth_t] [varchar](1000) NULL,
	[intl_nb_jobs_pt] [varchar](1) NULL,
	[intl_nb_loan_inst] [varchar](1) NULL,
	[intl_nb_loan_non_inst] [varchar](1) NULL,
	[intl_nb_schol_athl] [varchar](1) NULL,
	[intl_nb_schol_inst] [varchar](1) NULL,
	[intl_nb_waiver] [varchar](1) NULL,
	[intl_nn_fa_oth] [varchar](1) NULL,
	[intl_nn_fa_oth_t] [varchar](1000) NULL,
	[intl_nn_jobs_pt] [varchar](1) NULL,
	[intl_nn_loan_inst] [varchar](1) NULL,
	[intl_nn_loan_non_inst] [varchar](1) NULL,
	[intl_nn_schol_athl] [varchar](1) NULL,
	[intl_nn_schol_inst] [varchar](1) NULL,
	[intl_nn_waiver] [varchar](1) NULL,
	[ug_class_loan_fed_p] [numeric](18, 2) NULL,
	[ug_class_avg_debt_fed_d] [numeric](18, 2) NULL,
	[loan_perkins_avg_d] [numeric](18, 2) NULL,
	[schol_nb_seog_avg_d] [numeric](18, 2) NULL,
	[loan_perkins_p] [numeric](18, 2) NULL,
	[schol_nb_seog_p] [numeric](18, 2) NULL,
	[ug_ft_avg_nb_gift_2yr_d] [numeric](18, 2) NULL,
	[ug_ft_avg_nb_gift_3yr_d] [numeric](18, 2) NULL,
	[ug_ft_avg_nb_gift_4yr_d] [numeric](18, 2) NULL,
	[ug_ft_nn_noneed_2yr_d] [numeric](18, 2) NULL,
	[ug_ft_nn_noneed_3yr_d] [numeric](18, 2) NULL,
	[ug_ft_nn_noneed_4yr_d] [numeric](18, 2) NULL,
	[url_address_schol] [varchar](1000) NULL,
	[ug_class_n] [int] NULL,
	[ug_class_loan_n] [int] NULL,
	[ug_class_loan_fed_n] [int] NULL,
	[ug_class_loan_inst_n] [int] NULL,
	[ug_class_loan_inst_p] [numeric](18, 2) NULL,
	[ug_class_avg_debt_inst_d] [numeric](18, 2) NULL,
	[ug_class_loan_state_n] [int] NULL,
	[ug_class_loan_state_p] [numeric](18, 2) NULL,
	[ug_class_avg_debt_state_d] [numeric](18, 2) NULL,
	[ug_class_loan_private_n] [int] NULL,
	[ug_class_loan_private_p] [numeric](18, 2) NULL,
	[ug_class_avg_debt_private_d] [numeric](18, 2) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_financial_awards] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_graduation_requirements]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_graduation_requirements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[has_core_curriculum] [varchar](1) NULL,
	[credits_required_associates] [varchar](125) NULL,
	[credits_required_bachelors] [varchar](125) NULL,
	[foreign_language_required] [varchar](1) NULL,
	[math_science_requirement] [varchar](1) NULL,
	[computer_credit_required] [varchar](1) NULL,
	[internship_required_everyone] [varchar](1) NULL,
	[internship_required_some_majors] [varchar](1) NULL,
	[senior_project_required_everyone] [varchar](1) NULL,
	[senior_project_required_some_majors] [varchar](1) NULL,
	[senior_project_required_honors] [varchar](1) NULL,
	[min_credit_hours_for_transfer_students_assoc] [int] NULL,
	[transfer_students_assoc_credit_units] [varchar](1) NULL,
	[min_credit_hours_for_transfer_students_bach] [int] NULL,
	[transfer_students_bach_credit_units] [varchar](1) NULL,
	[has_final_year_residency_requirement] [varchar](1) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_graduation_requirements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_pd_ug_graduation_requirements] UNIQUE NONCLUSTERED 
(
	[institution_id] ASC,
	[research_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_institutions]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_institutions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[institution_id] [int] NOT NULL,
	[name] [varchar](150) NULL,
	[year_last_surveyed] [int] NULL,
	[address1] [varchar](80) NULL,
	[address2] [varchar](80) NULL,
	[address3] [varchar](80) NULL,
	[foreign_postal_location] [varchar](80) NULL,
	[physical_city] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](2) NULL,
	[county] [varchar](50) NULL,
	[country] [varchar](3) NULL,
	[zipcode] [varchar](10) NULL,
	[official_area_code] [varchar](3) NULL,
	[official_phone] [varchar](20) NULL,
	[offical_extension] [varchar](5) NULL,
	[instate_area_code] [varchar](3) NULL,
	[instate_phone] [varchar](20) NULL,
	[instate_extension] [varchar](5) NULL,
	[outstate_area_code] [varchar](3) NULL,
	[outstate_phone] [varchar](20) NULL,
	[outstate_extenstion] [varchar](5) NULL,
	[fax_area_code] [varchar](3) NULL,
	[fax] [varchar](20) NULL,
	[fax_extension] [varchar](5) NULL,
	[affiliation] [varchar](3) NULL,
	[denomination] [varchar](3) NULL,
	[fips_code] [varchar](4) NULL,
	[main_carnegie_classification] [varchar](2) NULL,
	[main_central_reg_id] [varchar](12) NULL,
	[main_fice_code] [varchar](10) NULL,
	[main_ipeds_code] [varchar](10) NULL,
	[main_function_type] [varchar](5) NULL,
	[main_student_body] [varchar](2) NULL,
	[main_founding_year] [int] NULL,
	[main_congressional_district] [varchar](2) NULL,
	[main_institutional_control] [varchar](3) NULL,
	[main_calendar] [varchar](3) NULL,
	[main_other_calendar] [varchar](100) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_institutions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_metro_areas]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_metro_areas](
	[code] [varchar](4) NOT NULL,
	[description] [varchar](60) NULL,
	[cumulative_fips] [varchar](2) NULL,
	[cumulative_indicator] [varchar](4) NULL,
	[cumulative_level] [varchar](1) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_metro_areas] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_programs]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_programs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[offers_orientation] [varchar](1) NULL,
	[offers_esl] [varchar](1) NULL,
	[offers_academic_remediation] [varchar](1) NULL,
	[offers_distance_learning] [varchar](1) NULL,
	[allows_double_major] [varchar](1) NULL,
	[allows_independent_study] [varchar](1) NULL,
	[offers_learning_disabilities_services] [varchar](1) NULL,
	[allows_advance_placement_credit] [varchar](1) NULL,
	[offers_accelerated_degree_programs] [varchar](1) NULL,
	[allows_student_designed_majors] [varchar](1) NULL,
	[has_freshman_honor_college] [varchar](1) NULL,
	[has_honors_program] [varchar](1) NULL,
	[allows_undergrad_in_grad_classes] [varchar](1) NULL,
	[offers_coop] [varchar](1) NULL,
	[offers_interships] [varchar](1) NULL,
	[offers_off_campus_study] [varchar](1) NULL,
	[off_campus_study_description] [text] NULL,
	[offers_summer_session] [varchar](1) NULL,
	[sponsors_study_abroad] [varchar](1) NULL,
	[offers_part_time_degree_programs] [varchar](1) NULL,
	[offers_daytime_part_time] [varchar](1) NULL,
	[offers_evening_part_time] [varchar](1) NULL,
	[offers_weekend_part_time] [varchar](1) NULL,
	[offers_summer_part_time] [varchar](1) NULL,
	[offers_adult_student_programs] [varchar](1) NULL,
	[offers_external_degree_programs] [varchar](1) NULL,
	[has_rotc_army] [varchar](1) NULL,
	[has_rotc_navy] [varchar](1) NULL,
	[has_rotc_air_force] [varchar](1) NULL,
	[offers_3_2_degree_program] [varchar](1) NULL,
	[offers_3_2_business_admin] [varchar](1) NULL,
	[business_admin_3_2_description] [text] NULL,
	[offers_3_2_engineering] [varchar](1) NULL,
	[engineering_3_2_description] [text] NULL,
	[offers_3_2_forestry] [varchar](1) NULL,
	[forestry_3_2_description] [text] NULL,
	[offers_3_2_nursing] [varchar](1) NULL,
	[nursing_3_2_description] [text] NULL,
	[offers_3_2_social_work] [varchar](1) NULL,
	[social_work_3_2_description] [text] NULL,
	[other_3_2_description] [text] NULL,
	[online_degree_program] [varchar](4) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_programs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_pd_ug_programs] UNIQUE NONCLUSTERED 
(
	[institution_id] ASC,
	[research_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_requirements_assignments]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_requirements_assignments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[requirement] [varchar](10) NULL,
	[freshman_requirement] [varchar](4) NULL,
	[freshman_recommendation] [varchar](4) NULL,
	[some_freshman_requirement] [varchar](4) NULL,
	[description] [text] NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_requirements_assignments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_sports]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_sports](
	[code] [varchar](5) NOT NULL,
	[description] [varchar](100) NULL,
	[user_defined] [varchar](1) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_sports] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_states]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_states](
	[code] [varchar](2) NOT NULL,
	[description] [varchar](100) NULL,
	[type] [varchar](1) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_states] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_url_types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_url_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NULL,
	[code] [varchar](5) NOT NULL,
	[description] [varchar](100) NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_url_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pd_ug_urls]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_ug_urls](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataset_year] [int] NOT NULL,
	[research_id] [int] NULL,
	[institution_id] [int] NULL,
	[code] [varchar](5) NULL,
	[url] [text] NULL,
	[updated_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_pd_ug_urls] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_pd_ug_urls] UNIQUE NONCLUSTERED 
(
	[institution_id] ASC,
	[research_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[petersons_dataset]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[petersons_dataset](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](15) NOT NULL,
	[sort_order] [int] NOT NULL,
	[created_at] [datetime2](0) NULL,
 CONSTRAINT [PK_petersons_dataset] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[petersons_import_status]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[petersons_import_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](15) NOT NULL,
	[sort_order] [smallint] NOT NULL,
 CONSTRAINT [PK_petersons_import_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[petersons_import_type]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[petersons_import_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[sort_order] [smallint] NOT NULL,
	[slug] [varchar](15) NOT NULL,
	[created_at] [datetime2](0) NULL,
 CONSTRAINT [PK_petersons_import_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[petersons_imports]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[petersons_imports](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[started_at] [datetime2](0) NULL,
	[finished_at] [datetime2](0) NULL,
	[rows_imported] [int] NULL,
	[tables_imported] [int] NULL,
	[log] [varchar](1000) NULL,
	[last_keep_alive] [datetime2](0) NULL,
	[type_id] [int] NOT NULL,
	[dataset_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
 CONSTRAINT [PK_petersons_imports] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[playList]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[playList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[playlistGuid] [uniqueidentifier] NOT NULL,
	[userGuid] [varchar](50) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[description] [varchar](2000) NULL,
	[date_created] [datetime] NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_playList_1] PRIMARY KEY CLUSTERED 
(
	[playlistGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[playListAssigned]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[playListAssigned](
	[playlistGuid] [varchar](50) NOT NULL,
	[userGuid] [varchar](50) NOT NULL,
 CONSTRAINT [PK_playListAssigned] PRIMARY KEY CLUSTERED 
(
	[playlistGuid] ASC,
	[userGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[playlistDetails]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[playlistDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[playlistGuid] [varchar](50) NOT NULL,
	[careerGuid] [varchar](50) NOT NULL,
	[displayOrder] [int] NULL,
 CONSTRAINT [PK_playlistDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[portal_license]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portal_license](
	[portal_id] [varchar](36) NOT NULL,
	[vjs_license_id] [int] NOT NULL,
	[has_login] [tinyint] NOT NULL,
	[has_new_account] [tinyint] NOT NULL,
	[has_forgot_password] [tinyint] NOT NULL,
	[login_template_type_id] [int] NULL,
	[new_account_template_type_id] [int] NULL,
	[forgot_password_template_type_id] [int] NULL,
	[login_template_type] [varchar](50) NULL,
	[new_account_template_type] [varchar](50) NULL,
	[forgot_password_template_type] [varchar](50) NULL,
	[login_url_name] [varchar](75) NULL,
	[logo] [varchar](200) NULL,
	[new_account_url_name] [varchar](75) NULL,
	[cloudfront_image_url] [varchar](255) NULL,
 CONSTRAINT [PK_portal_license] PRIMARY KEY CLUSTERED 
(
	[portal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[portal_license_email_format]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portal_license_email_format](
	[email_format_id] [int] IDENTITY(1,1) NOT NULL,
	[license_id] [int] NULL,
	[email_format] [varchar](100) NULL,
 CONSTRAINT [PK_portal_license_email_format] PRIMARY KEY CLUSTERED 
(
	[email_format_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[portal_license_template]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portal_license_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vjs_license_id] [int] NOT NULL,
	[template_item_id] [int] NOT NULL,
	[template_option_id] [int] NULL,
 CONSTRAINT [PK_portal_license_template] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[portal_template_details]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portal_template_details](
	[template_item_id] [int] IDENTITY(1,1) NOT NULL,
	[template_key] [varchar](150) NULL,
	[template_value] [text] NULL,
 CONSTRAINT [PK_portal_template_details] PRIMARY KEY CLUSTERED 
(
	[template_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[portal_template_options]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portal_template_options](
	[template_option_id] [int] IDENTITY(1,1) NOT NULL,
	[template_type_id] [int] NULL,
	[template_item_key] [varchar](200) NULL,
	[has_school_replace] [tinyint] NULL,
 CONSTRAINT [PK_portal_template_options] PRIMARY KEY CLUSTERED 
(
	[template_option_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[portal_template_type]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portal_template_type](
	[template_type_id] [int] IDENTITY(1,1) NOT NULL,
	[template_type_name] [varchar](200) NULL,
	[template_type_description] [text] NULL,
	[template_section] [varchar](50) NULL,
 CONSTRAINT [PK_portal_template_type] PRIMARY KEY CLUSTERED 
(
	[template_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[postsecondary_sections]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[postsecondary_sections](
	[postsecondary_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
 CONSTRAINT [PK_postsecondary_sections] PRIMARY KEY CLUSTERED 
(
	[postsecondary_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prelogin_contacts]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prelogin_contacts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [varchar](100) NULL,
	[existing] [tinyint] NULL,
	[role] [varchar](50) NULL,
	[reason] [varchar](100) NULL,
	[city] [varchar](100) NULL,
	[state] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[phone] [varchar](100) NULL,
	[comments] [varchar](50) NULL,
	[source] [varchar](50) NULL,
	[date] [datetime] NULL,
	[org] [varchar](150) NULL,
 CONSTRAINT [PK_prelogin_contacts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prelogin_videos]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prelogin_videos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[career_name] [varchar](200) NULL,
	[caption] [varchar](500) NOT NULL,
	[wistia_id] [varchar](50) NULL,
	[date_modified] [datetime] NULL,
	[url_title] [varchar](200) NULL,
	[vimeo_id] [varchar](50) NULL,
 CONSTRAINT [PK_prelogin_videos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profile_settings]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profile_settings](
	[profile_settings_id] [int] IDENTITY(1,1) NOT NULL,
	[license_id] [int] NOT NULL,
	[grade] [tinyint] NOT NULL,
	[first_name] [tinyint] NOT NULL,
	[middle_name] [tinyint] NOT NULL,
	[last_name] [tinyint] NOT NULL,
	[user_name] [tinyint] NOT NULL,
	[password] [tinyint] NOT NULL,
	[email] [tinyint] NOT NULL,
	[city] [tinyint] NOT NULL,
	[state] [tinyint] NOT NULL,
	[zip] [tinyint] NOT NULL,
	[user_type] [tinyint] NOT NULL,
	[age] [tinyint] NOT NULL,
	[birth_date] [tinyint] NOT NULL,
	[school_name] [tinyint] NOT NULL,
	[avatar] [tinyint] NOT NULL,
	[grade_required] [tinyint] NOT NULL,
	[first_name_required] [tinyint] NOT NULL,
	[middle_name_required] [tinyint] NOT NULL,
	[last_name_required] [tinyint] NOT NULL,
	[user_name_required] [tinyint] NOT NULL,
	[password_required] [tinyint] NOT NULL,
	[email_required] [tinyint] NOT NULL,
	[city_required] [tinyint] NOT NULL,
	[state_required] [tinyint] NOT NULL,
	[zip_required] [tinyint] NOT NULL,
	[user_type_required] [tinyint] NOT NULL,
	[age_required] [tinyint] NOT NULL,
	[birth_date_required] [tinyint] NOT NULL,
	[school_name_required] [tinyint] NOT NULL,
	[avatar_required] [tinyint] NOT NULL,
	[grade_editable] [tinyint] NOT NULL,
	[first_name_editable] [tinyint] NOT NULL,
	[middle_name_editable] [tinyint] NOT NULL,
	[last_name_editable] [tinyint] NOT NULL,
	[user_name_editable] [tinyint] NOT NULL,
	[password_editable] [tinyint] NOT NULL,
	[email_editable] [tinyint] NOT NULL,
	[city_editable] [tinyint] NOT NULL,
	[state_editable] [tinyint] NOT NULL,
	[zip_editable] [tinyint] NOT NULL,
	[user_type_editable] [tinyint] NOT NULL,
	[age_editable] [tinyint] NOT NULL,
	[birth_date_editable] [tinyint] NOT NULL,
	[school_name_editable] [tinyint] NOT NULL,
	[avatar_editable] [tinyint] NOT NULL,
 CONSTRAINT [PK_profile_settings] PRIMARY KEY CLUSTERED 
(
	[profile_settings_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quiz_answer]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quiz_answer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[answerGuid] [uniqueidentifier] NOT NULL,
	[questionGuid] [uniqueidentifier] NOT NULL,
	[answer] [varchar](500) NOT NULL,
	[displayOrder] [int] NOT NULL,
	[correct] [int] NOT NULL,
 CONSTRAINT [PK_quiz_answer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quiz_question]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quiz_question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[questionGuid] [uniqueidentifier] NOT NULL,
	[quizGuid] [uniqueidentifier] NOT NULL,
	[question] [varchar](500) NOT NULL,
	[displayOrder] [int] NOT NULL,
 CONSTRAINT [PK_quiz_question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_columns]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_columns](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[report_id] [int] NOT NULL,
	[column_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_report_type_columns] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_filter_mappings]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_filter_mappings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[report_filter_id] [int] NOT NULL,
	[report_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_filters]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_filters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_report_filters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_instance_columns]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_instance_columns](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[report_instance_id] [int] NOT NULL,
	[report_column_id] [int] NOT NULL,
	[order] [int] NULL,
	[visible] [bit] NULL,
	[sort_priority] [int] NULL,
	[sort_order] [int] NULL,
 CONSTRAINT [PK_report_instance_columns] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_instance_distributions]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_instance_distributions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[report_instance_schedule_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[report_id] [int] NOT NULL,
 CONSTRAINT [PK_report_instance_distribution] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_instance_filters]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_instance_filters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[report_instance_id] [int] NOT NULL,
	[report_filter_id] [int] NOT NULL,
	[filter_setting] [varchar](max) NOT NULL,
 CONSTRAINT [PK_report_instance_filters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_instance_schedules]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_instance_schedules](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[report_instance_id] [int] NOT NULL,
	[frequency_type_id] [int] NOT NULL,
 CONSTRAINT [PK_report_instance_schedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_instances]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_instances](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[report_id] [int] NOT NULL,
	[report_type_id] [int] NOT NULL,
	[date_range_type_id] [int] NULL,
	[fixed_start_date] [datetime] NULL,
	[fixed_end_date] [datetime] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_report_instances] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[order] [int] NOT NULL,
 CONSTRAINT [PK_report_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reports]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reports](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[report_type_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[class] [varchar](50) NOT NULL,
	[page] [varchar](255) NULL,
 CONSTRAINT [PK_reports] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resume_education]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resume_education](
	[resume_eduID] [int] IDENTITY(1,1) NOT NULL,
	[resume_guid] [uniqueidentifier] NOT NULL,
	[edu_school] [nvarchar](200) NULL,
	[edu_add_info] [nvarchar](max) NULL,
	[edu_start_date] [nvarchar](100) NULL,
	[edu_end_date] [nvarchar](100) NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_resume_education] PRIMARY KEY CLUSTERED 
(
	[resume_eduID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resume_experience]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resume_experience](
	[resume_eduID] [int] IDENTITY(1,1) NOT NULL,
	[resume_guid] [uniqueidentifier] NOT NULL,
	[position_name] [nvarchar](400) NULL,
	[company_name] [nvarchar](400) NULL,
	[city] [nvarchar](200) NULL,
	[state] [nvarchar](100) NULL,
	[start_date] [nvarchar](50) NULL,
	[end_date] [nvarchar](50) NULL,
	[responsibility] [text] NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_resume_experience] PRIMARY KEY CLUSTERED 
(
	[resume_eduID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resumes]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resumes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[resume_guid] [uniqueidentifier] NOT NULL,
	[uid] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[first_name] [nvarchar](100) MASKED WITH (FUNCTION = 'default()') NULL,
	[last_name] [nvarchar](100) MASKED WITH (FUNCTION = 'default()') NULL,
	[mi_name] [nvarchar](50) MASKED WITH (FUNCTION = 'default()') NULL,
	[address1] [nvarchar](200) MASKED WITH (FUNCTION = 'default()') NULL,
	[address2] [nvarchar](100) MASKED WITH (FUNCTION = 'default()') NULL,
	[city] [nvarchar](100) MASKED WITH (FUNCTION = 'default()') NULL,
	[state] [nvarchar](50) MASKED WITH (FUNCTION = 'default()') NULL,
	[zip] [nvarchar](50) MASKED WITH (FUNCTION = 'default()') NULL,
	[home_phone] [nvarchar](50) MASKED WITH (FUNCTION = 'default()') NULL,
	[cell_phone] [nvarchar](50) MASKED WITH (FUNCTION = 'default()') NULL,
	[email] [nvarchar](100) MASKED WITH (FUNCTION = 'email()') NULL,
	[objective] [nvarchar](max) MASKED WITH (FUNCTION = 'default()') NULL,
	[achievements] [nvarchar](max) MASKED WITH (FUNCTION = 'default()') NULL,
	[volunteer] [nvarchar](max) MASKED WITH (FUNCTION = 'default()') NULL,
	[interests] [nvarchar](max) MASKED WITH (FUNCTION = 'default()') NULL,
	[skills] [nvarchar](max) MASKED WITH (FUNCTION = 'default()') NULL,
	[references] [nvarchar](max) MASKED WITH (FUNCTION = 'default()') NULL,
	[other] [nvarchar](max) NULL,
	[timestamp] [datetimeoffset](0) NULL,
	[date_created] [datetimeoffset](0) NULL,
	[date_modified] [datetimeoffset](0) NULL,
	[date_archived] [datetimeoffset](0) NULL,
	[archived] [bit] NULL,
	[reference_guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_resumes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](20) NULL,
	[role_desc] [varchar](50) NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule_frequencies]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule_frequencies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_schedule_frequencies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scholarship_summary]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scholarship_summary](
	[scholarship_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[funding_type] [varchar](100) NULL,
	[program_name] [varchar](200) NULL,
	[donor_name] [text] NULL,
	[description] [text] NULL,
	[deadline] [varchar](100) NULL,
	[contact_name] [varchar](100) NULL,
	[contact_phone] [varchar](50) NULL,
	[contact_email] [varchar](120) NULL,
	[sponsor_url] [varchar](1000) NULL,
	[application_url] [varchar](2000) NULL,
	[program_url] [varchar](1000) NULL,
 CONSTRAINT [scholarship_summary_PK] PRIMARY KEY CLUSTERED 
(
	[scholarship_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[short_name] [varchar](100) NULL,
	[name] [varchar](255) NOT NULL,
	[description] [varchar](100) NULL,
	[gradable] [bit] NOT NULL,
	[admin_title] [varchar](255) NULL,
	[admin_title_placeholder] [varchar](255) NULL,
	[admin_instructions_admin_actions] [varchar](255) NULL,
	[admin_instructions_user_actions] [varchar](255) NULL,
	[admin_additional_placeholder] [varchar](255) NULL,
	[student_title] [varchar](255) NULL,
	[student_instructions] [varchar](255) NULL,
	[welcome_admin_title] [varchar](255) NULL,
	[welcome_admin_instructions] [varchar](500) NULL,
	[welcome_student_title] [varchar](255) NULL,
	[welcome_student_instructions] [varchar](255) NULL,
	[finish_admin_title] [varchar](255) NULL,
	[finish_admin_instructions] [varchar](255) NULL,
	[finish_student_title] [varchar](255) NULL,
	[finish_student_instructions] [varchar](255) NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_segment_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_assessment]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_assessment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[assessment_type_id] [uniqueidentifier] NULL,
	[allow_previous_completed] [bit] NULL,
	[allow_extra_time] [bit] NULL,
 CONSTRAINT [PK_segment_v1_assessment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_assessment_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_assessment_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[user_assessment_guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_segment_v1_assessment_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_career_favorite]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_career_favorite](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[count_required] [int] NULL,
 CONSTRAINT [PK_segment_v1_career_favorite] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_career_favorite_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_career_favorite_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[user_career_id] [int] NULL,
 CONSTRAINT [PK_segment_v1_career_favorite_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_career_journal]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_career_journal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[career_guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_segment_v1_career_journal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_career_journal_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_career_journal_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[career_journal_guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_segment_v1_career_journal_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_career_profile]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_career_profile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[career_id] [int] NOT NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_segment_v1_career_profile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_checkbox]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_checkbox](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[checkbox_text] [varchar](500) NOT NULL,
 CONSTRAINT [PK_segment_v1_checkbox] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_college_favorite]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_college_favorite](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[count_required] [int] NULL,
 CONSTRAINT [PK_segment_v1_college_favorite] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_college_favorite_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_college_favorite_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[user_college_id] [int] NOT NULL,
 CONSTRAINT [PK_segment_v1_college_favorite_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_content_editor]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_content_editor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[content_html] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_segment_v1_content_editor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_coverletter_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_coverletter_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[user_coverletter_guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_segment_v1_coverletter_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_custom_survey_question]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_custom_survey_question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[question_type_id] [int] NOT NULL,
	[text] [varchar](max) NULL,
	[hint] [varchar](max) NULL,
	[grade_weight] [int] NULL,
	[display_order] [int] NULL,
	[count_required] [int] NULL,
 CONSTRAINT [PK_segment_v1_custom_survey_question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_custom_survey_question_option]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_custom_survey_question_option](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question_id] [int] NOT NULL,
	[text] [varchar](4000) NULL,
	[correct] [bit] NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_segment_v1_custom_survey_options] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_custom_survey_question_option_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_custom_survey_question_option_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question_result_id] [int] NOT NULL,
	[option_id] [int] NULL,
	[is_selected] [bit] NULL,
	[text_response] [varchar](max) NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_segment_v1_custom_survey_option_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_custom_survey_question_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_custom_survey_question_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[question_id] [int] NOT NULL,
	[text_response] [varchar](max) NULL,
	[grade_computed] [int] NULL,
	[grade_teacher] [int] NULL,
	[grade_final] [int] NULL,
 CONSTRAINT [PK_segment_v1_custom_survey_question_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_custom_survey_question_type]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_custom_survey_question_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[short_name] [varchar](50) NULL,
	[description] [varchar](50) NULL,
	[default_text] [varchar](50) NULL,
	[default_instructions] [varchar](500) NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_segment_v1_custom_survey_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_employability_journal_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_employability_journal_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[employability_journal_id] [int] NULL,
 CONSTRAINT [PK_segment_v1_employability_journal_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_goal_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_goal_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[user_goal_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_segment_v1_goal_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_goals]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_goals](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[count_required] [int] NULL,
 CONSTRAINT [PK_segment_v1_goals] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_job_favorite]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_job_favorite](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[count_required] [int] NULL,
 CONSTRAINT [PK_segment_v1_job_favorite] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_job_favorite_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_job_favorite_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[user_job_id] [int] NOT NULL,
 CONSTRAINT [PK_segment_v1_job_favorite_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_lesson_document]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_lesson_document](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[lesson_document_id] [int] NOT NULL,
 CONSTRAINT [PK_segment_v1_lesson_document] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_lifeskill_journal]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_lifeskill_journal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[lifeskill_id] [int] NOT NULL,
 CONSTRAINT [PK_segment_v1_lifeskill_journal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_link_embed]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_link_embed](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[link_url] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_segment_v1_link_embed] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_playlist_video_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_playlist_video_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[segment_video_id] [int] NOT NULL,
	[progress] [int] NULL,
	[last_time_seconds] [int] NULL,
	[date_started] [datetime] NULL,
	[date_last_access] [datetime] NULL,
	[user_assignment_id] [int] NULL,
	[segment_id] [int] NULL,
 CONSTRAINT [PK_segment_v1_playlist_video_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_playlist_videos]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_playlist_videos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[career_id] [int] NULL,
	[is_qa_included] [bit] NULL,
	[is_qa] [bit] NULL,
	[qa_id] [int] NULL,
	[display_order] [int] NULL,
	[force_watch] [bit] NULL,
	[flex_id] [int] NULL,
	[cluster_id] [int] NULL,
	[video_type] [varchar](50) NULL,
 CONSTRAINT [PK_segment_v1_playlist_videos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_popquiz]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_popquiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[career_guid] [uniqueidentifier] NOT NULL,
	[show_answers] [bit] NOT NULL,
 CONSTRAINT [PK_segment_v1_popquiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_popquiz_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_popquiz_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[user_quiz_guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_segment_v1_popquiz_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_post_secondary_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_post_secondary_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NULL,
	[education_plan] [varchar](50) NULL,
	[school1] [varchar](50) NULL,
	[school2] [varchar](50) NULL,
	[school3] [varchar](50) NULL,
	[career1] [varchar](50) NULL,
	[career2] [varchar](50) NULL,
	[career3] [varchar](50) NULL,
 CONSTRAINT [PK_segment_v1_post_secondary_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_quiz]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_quiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[show_answers] [bit] NOT NULL,
 CONSTRAINT [PK_segment_v1_quiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_quiz_question]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_quiz_question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[question_type_id] [int] NOT NULL,
	[text] [varchar](max) NULL,
	[hint] [varchar](max) NULL,
	[grade_weight] [int] NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_segment_v1_quiz_question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_quiz_question_option]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_quiz_question_option](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question_id] [int] NOT NULL,
	[text] [varchar](max) NULL,
	[correct] [bit] NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_segment_v1_quiz_options] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_quiz_question_option_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_quiz_question_option_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question_result_id] [int] NOT NULL,
	[option_id] [int] NOT NULL,
	[is_selected] [bit] NULL,
	[text_response] [varchar](50) NULL,
	[display_order] [int] NULL,
	[is_correct] [bit] NULL,
 CONSTRAINT [PK_segment_v1_quiz_option_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_quiz_question_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_quiz_question_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[question_id] [int] NOT NULL,
	[text_response] [varchar](max) NULL,
	[grade_computed] [int] NULL,
	[grade_teacher] [int] NULL,
	[grade_final] [int] NULL,
 CONSTRAINT [PK_segment_v1_quiz_question_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_quiz_question_type]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_quiz_question_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[short_name] [varchar](50) NULL,
	[description] [varchar](50) NULL,
	[default_text] [varchar](50) NULL,
	[default_instructions] [varchar](500) NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_segment_v1_quiz_question_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[user_assignment_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[progress] [int] NULL,
	[grade_computed] [int] NULL,
	[grade_teacher] [int] NULL,
	[grade_final] [int] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_segment_v1_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_resume_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_resume_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[user_resume_guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_segment_v1_resume_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_scholarship_favorite]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_scholarship_favorite](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[count_required] [int] NULL,
 CONSTRAINT [PK_segment_v1_scholarship_favorite] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_scholarship_favorite_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_scholarship_favorite_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[user_scholarship_id] [int] NOT NULL,
 CONSTRAINT [PK_segment_v1_scholarship_favorite_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_signature]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_signature](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[sign_for] [varchar](4000) NOT NULL,
 CONSTRAINT [PK_segment_v1_signature] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_signature_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_signature_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[user_signature_guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_segment_v1_signature_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_survey]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_survey](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[prevent_changing_answers] [bit] NOT NULL,
 CONSTRAINT [PK_segment_v1_survey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_video_embed]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_video_embed](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[video_type] [varchar](20) NULL,
	[video_url] [varchar](1000) NULL,
	[video_id] [varchar](100) NULL,
	[force_watch] [bit] NULL,
 CONSTRAINT [PK_segment_v1_video_embed] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_written_response]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_written_response](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segment_id] [int] NOT NULL,
	[question_text] [varchar](max) NOT NULL,
	[grade_weight] [int] NULL,
	[word_count_min] [int] NULL,
	[word_count_max] [int] NULL,
 CONSTRAINT [PK_segment_v1_written_response] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segment_v1_written_response_result]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segment_v1_written_response_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result_id] [int] NOT NULL,
	[text_response] [varchar](max) NOT NULL,
	[word_count] [int] NOT NULL,
 CONSTRAINT [PK_segment_v1_written_response_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sent_email_events]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sent_email_events](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[sent_email_id] [int] NOT NULL,
	[event] [varchar](50) NOT NULL,
	[smtp_id] [varchar](100) NULL,
	[sg_event_id] [varchar](200) NULL,
	[sg_message_id] [varchar](100) NULL,
	[event_date] [datetime2](0) NOT NULL,
	[created_at] [datetime2](0) NULL,
	[ip] [varchar](50) NULL,
	[user_agent] [varchar](512) NULL,
	[response] [varchar](1024) NULL,
	[http_status] [varchar](50) NULL,
 CONSTRAINT [sent_email_events_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sent_email_types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sent_email_types](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
 CONSTRAINT [sent_email_types_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [sent_email_types_UN] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sent_emails]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sent_emails](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[from] [varchar](1024) NOT NULL,
	[to] [varchar](1024) NULL,
	[content] [text] NULL,
	[subject] [varchar](4096) NULL,
	[message_id] [varchar](100) NULL,
	[email_delivery_status_id] [int] NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[type_id] [int] NOT NULL,
	[log] [text] NULL,
	[opened] [bit] NULL,
	[click_count] [int] NULL,
 CONSTRAINT [sent_emails_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sessions]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sessions](
	[id] [nvarchar](255) NOT NULL,
	[user_id] [int] NULL,
	[ip_address] [nvarchar](45) NULL,
	[user_agent] [nvarchar](max) NULL,
	[payload] [nvarchar](max) NOT NULL,
	[last_activity] [int] NOT NULL,
 CONSTRAINT [PK__sessions__3213E83F5B32E912] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[signature_emails]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[signature_emails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[signature_guid] [uniqueidentifier] NULL,
	[email] [nvarchar](150) NULL,
	[signed] [bit] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_signature_emails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[signatures]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[signatures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[signature_guid] [uniqueidentifier] NOT NULL,
	[uid] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](100) NULL,
	[data] [nvarchar](max) NULL,
	[signed] [bit] NULL,
	[user_logged_in] [bit] NULL,
	[delivery_method] [nvarchar](5) NULL,
	[emails_sent] [smallint] NULL,
	[email_guid] [uniqueidentifier] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_signatures] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site_keys]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_keys](
	[site_key] [uniqueidentifier] NOT NULL,
	[userGuid] [uniqueidentifier] NOT NULL,
	[set_timestamp] [datetime] NOT NULL,
	[exp_timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_site_keys] PRIMARY KEY CLUSTERED 
(
	[site_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site_links]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_links](
	[uid] [uniqueidentifier] NOT NULL,
	[licenseid] [int] NOT NULL,
	[linkName] [varchar](200) NOT NULL,
	[linkUrl] [varchar](200) NOT NULL,
	[linkDescription] [varchar](2000) NULL,
	[displayOrder] [int] NULL,
	[userGuid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_site_links] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site_settings]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_settings](
	[licenseid] [int] NOT NULL,
	[nav_career_central] [int] NULL,
	[nav_career_central_my_favs] [int] NULL,
	[nav_tools_my_playlist] [int] NULL,
	[nav_College] [int] NULL,
	[nav_College_My] [int] NULL,
	[nav_College_Compare] [int] NULL,
	[nav_Jobs] [int] NULL,
	[nav_Jobs_My] [int] NULL,
	[nav_Tools] [int] NULL,
	[nav_Tools_Resume] [int] NULL,
	[nav_Tools_Assessment] [int] NULL,
	[nav_admin_playlist] [int] NULL,
	[nav_Tools_User_Tutorial] [int] NULL,
	[nav_admin_groups] [int] NULL,
	[nav_admin_curriculum] [int] NULL,
	[nav_admin_manage_users] [int] NULL,
	[nav_Admin_Local_Links] [int] NULL,
	[nav_Admin_Reports] [int] NULL,
	[nav_user_messages] [int] NULL,
	[nav_User_Profile] [int] NULL,
	[nav_User_Profile_Edit] [int] NULL,
	[nav_User_Profile_Activity] [int] NULL,
	[nav_User_Help_Center] [int] NULL,
	[nav_User_Logout] [int] NULL,
	[disable_links] [int] NULL,
	[college_search_type] [varchar](50) NULL,
	[job_search_type] [varchar](50) NULL,
	[career_earnings_type] [varchar](50) NULL,
	[employment_stats_type] [varchar](50) NULL,
	[featured_careers_type] [varchar](50) NULL,
	[company_connect_type] [varchar](50) NULL,
	[cool_careers_type] [varchar](50) NULL,
	[local_links_type] [varchar](50) NULL,
	[disable_quiz] [int] NULL,
	[disable_career_journal] [int] NULL,
	[disable_password_change] [int] NULL,
	[disable_username_change] [int] NULL,
	[logout_type] [int] NULL,
	[nav_Tools_Post_Secondary] [int] NULL,
	[nav_Tools_Goals] [int] NULL,
	[nav_Admin_Local_Jobs] [int] NULL,
	[nav_Tools_Resume2] [tinyint] NULL,
	[nav_admin_lessons] [tinyint] NULL,
	[nav_jobs_internships] [tinyint] NULL,
	[nav_jobs_wblboard] [tinyint] NULL,
	[nav_college_scholarship] [tinyint] NULL,
	[encode_passwords] [tinyint] NULL,
	[nav_tools_lessons] [tinyint] NULL,
	[nav_lifeskills] [tinyint] NULL,
	[nav_etx] [tinyint] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[nav_admin_etx] [tinyint] NULL,
 CONSTRAINT [PK_site_settings] PRIMARY KEY CLUSTERED 
(
	[licenseid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site_token]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_token](
	[token] [uniqueidentifier] NOT NULL,
	[userGuid] [uniqueidentifier] NOT NULL,
	[set_timestamp] [datetime] NOT NULL,
	[exp_timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_site_token] PRIMARY KEY CLUSTERED 
(
	[token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sponsor_group_connection]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sponsor_group_connection](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vjs_license_id] [int] NOT NULL,
	[sponsor_id] [int] NOT NULL,
 CONSTRAINT [PK_sponsor_group_connection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sponsor_groups]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sponsor_groups](
	[sponsor_id] [int] IDENTITY(1,1) NOT NULL,
	[sponsor_group_name] [varchar](200) NULL,
	[sponsor_group_description] [varchar](1000) NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_sponsor_groups] PRIMARY KEY CLUSTERED 
(
	[sponsor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sso_types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sso_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sso_type_name] [varchar](100) NULL,
 CONSTRAINT [PK_sso_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[success_stories]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[success_stories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[title_meta] [varchar](100) NULL,
	[title_route] [varchar](100) NULL,
	[description_meta] [varchar](200) NULL,
	[date] [datetime] NULL,
	[author] [varchar](200) NULL,
	[image_name] [varchar](500) NULL,
	[hero_image] [varchar](500) NULL,
	[body] [nvarchar](max) NULL,
	[keywords] [varchar](100) NULL,
	[is_published] [tinyint] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_success_stories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[success_stories_images_inline]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[success_stories_images_inline](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NOT NULL,
	[image_link] [varchar](500) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_success_stories_images_inline] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[success_stories_tag_connection]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[success_stories_tag_connection](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NOT NULL,
	[tag_id] [int] NOT NULL,
 CONSTRAINT [PK_success_stories_tag_connection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[success_stories_tags]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[success_stories_tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag_name] [varchar](50) NOT NULL,
	[tag_route] [varchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_success_stories_tag] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[time_zones]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[time_zones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[standard_time_zone] [varchar](50) NULL,
	[utc_time_zone] [varchar](50) NULL,
	[est_offset] [int] NULL,
 CONSTRAINT [PK_time_zones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic_more]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_more](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[more_text] [text] NULL,
 CONSTRAINT [PK_topic_more] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topics]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topics](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[topic_abbr] [varchar](20) NULL,
	[topic_name] [varchar](50) NULL,
	[topic_img] [varchar](50) NULL,
	[topic_link_img] [varchar](50) NULL,
	[disp_order] [int] NULL,
	[topic_color] [varchar](50) NULL,
	[topic_next_link] [varchar](50) NULL,
 CONSTRAINT [PK_topics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uar_sync_processes]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uar_sync_processes](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[pid] [varchar](100) NULL,
	[event_type_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[finished_at] [datetime] NULL,
	[keepalive_at] [datetime] NULL,
	[process_killed] [bit] NULL,
	[locked_account_id_for_users] [int] NULL,
	[locked_account_id_for_groups] [int] NULL,
	[account_events_processed] [int] NOT NULL,
	[group_events_processed] [int] NOT NULL,
	[user_events_processed] [int] NOT NULL,
	[total_events_processed] [int] NOT NULL,
	[request_ids] [text] NULL,
	[number_of_errors] [int] NOT NULL,
	[log_file_name] [varchar](256) NULL,
	[total_uar_events_requests] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uar_user]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uar_user](
	[uar_id] [uniqueidentifier] NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[uar_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ui_carousels]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ui_carousels](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[placement] [varchar](100) NULL,
	[location] [nvarchar](20) NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[active] [bit] NULL,
	[carousel_name] [varchar](100) NULL,
 CONSTRAINT [dashboard_carousel_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ui_carousels_slides]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ui_carousels_slides](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[carousel_id] [int] NOT NULL,
	[slide_id] [int] NOT NULL,
	[start_date] [datetime2](0) NULL,
	[end_date] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[purpose] [varchar](100) NULL,
 CONSTRAINT [ui_carousels_slides_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ui_slides]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ui_slides](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[title] [varchar](100) NULL,
	[feature_type] [varchar](100) NULL,
	[created_by] [varchar](100) NULL,
 CONSTRAINT [dashboard_carousel_slides_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ui_slides_items]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ui_slides_items](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[video_type] [varchar](100) NOT NULL,
	[video_id] [int] NOT NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[slide_id] [int] NULL,
 CONSTRAINT [dashboard_carousel_items_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[univ_master_cip]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[univ_master_cip](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ipeds] [float] NOT NULL,
	[cip_code] [varchar](50) NOT NULL,
	[inun_id] [int] NULL,
 CONSTRAINT [PK_univ_master_cip] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[univ_master_validator]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[univ_master_validator](
	[guid] [uniqueidentifier] NOT NULL,
	[ipeds] [varchar](50) NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
 CONSTRAINT [PK_univ_master_validator] PRIMARY KEY CLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usage_career_log]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usage_career_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_guid] [uniqueidentifier] NOT NULL,
	[career_guid] [uniqueidentifier] NOT NULL,
	[usage_log_id] [int] NOT NULL,
	[start_time] [smalldatetime] NULL,
	[end_time] [smalldatetime] NULL,
 CONSTRAINT [PK_usage_career_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usage_details]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usage_details](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[sessionID] [int] NULL,
	[userGuid] [uniqueidentifier] NOT NULL,
	[pageName] [varchar](200) NULL,
	[pageURL] [varchar](200) NULL,
	[dateIn] [datetime] NULL,
	[dateOut] [datetime] NULL,
	[cguid] [uniqueidentifier] NULL,
	[careerName] [varchar](200) NULL,
	[pageQueryString] [varchar](1000) NULL,
	[pageFormPost] [varchar](1000) NULL,
	[lastPage] [int] NULL,
 CONSTRAINT [PK_usage_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usage_log]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usage_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[sessionid] [varchar](50) NULL,
	[aff_id] [int] NULL,
	[date_login] [datetime] NULL,
	[ip] [varchar](250) NULL,
	[browser] [varchar](250) NULL,
	[date_logout] [datetime] NULL,
	[user_guid] [uniqueidentifier] NULL,
	[schoology_token] [varchar](50) NULL,
	[chalkable_token] [varchar](50) NULL,
	[date_logout_server] [datetime] NULL,
 CONSTRAINT [PK_usage_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usage_video]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usage_video](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[session_id] [int] NULL,
	[date_view] [datetime] NULL,
	[file_name] [varchar](90) NULL,
	[video_id] [varchar](20) NULL,
	[qa_id] [int] NULL,
	[is_qa] [smallint] NULL,
	[date_view_end] [datetime] NULL,
	[career_guid] [varchar](50) NULL,
	[qa_guid] [varchar](50) NULL,
	[user_guid] [varchar](50) NULL,
	[cul_id] [int] NULL,
 CONSTRAINT [PK_usage_video] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usage_video_lifeskill_log]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usage_video_lifeskill_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[video_id] [int] NULL,
	[user_id] [int] NULL,
	[date_watched] [datetime] NULL,
	[license_id] [int] NULL,
	[district_id] [int] NULL,
 CONSTRAINT [PK_usage_video_lifeskill_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usage_video_progress]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usage_video_progress](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_guid] [varchar](50) NOT NULL,
	[career_guid] [varchar](50) NULL,
	[qa_guid] [varchar](50) NULL,
	[seconds] [int] NOT NULL,
	[pct] [int] NOT NULL,
	[last_date_viewed] [datetime] NULL,
 CONSTRAINT [PK_usage_video_progress] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_career_videos_watched]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_career_videos_watched](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[career_guid] [uniqueidentifier] NOT NULL,
	[video_id] [varchar](50) NOT NULL,
	[file_name] [varchar](255) NOT NULL,
	[is_qa] [bit] NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_user_career_videos_watched] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_colleges]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_colleges](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [varchar](36) NOT NULL,
	[college_id] [int] NOT NULL,
	[college_name] [varchar](200) NULL,
	[timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_user_colleges] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_comments]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_comments](
	[commentID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[careerID] [int] NULL,
	[scoopID] [int] NULL,
	[comment] [nvarchar](2000) NULL,
	[timestamp] [datetime] NULL,
	[flagged] [bit] NULL,
	[flaggedBy] [int] NULL,
 CONSTRAINT [PK_user_comments] PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_EmailValidate]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_EmailValidate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [varchar](36) NULL,
	[email] [varchar](200) NULL,
	[code] [varchar](36) NULL,
	[isvalidated] [tinyint] NULL,
	[timeStart] [datetime] NULL,
	[timeEnd] [datetime] NULL,
	[is_primary] [tinyint] NULL,
	[number_of_emails] [int] NULL,
 CONSTRAINT [PK_user_EmailValidate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_employability_videos_watched]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_employability_videos_watched](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[video_id] [varchar](100) NOT NULL,
	[license_id] [int] NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_user_employability_videos_watched] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_favorite_lifeskills_videos]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_favorite_lifeskills_videos](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[lifeskill_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [user_favorite_lifeskills_videos_UN] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[lifeskill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_favorite_scholarships]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_favorite_scholarships](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[scholarship_id] [int] NULL,
	[scholarship_summary_id] [int] NOT NULL,
	[user_id] [int] NULL,
	[updated_at] [datetime] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [user_scholarships_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [user_favorite_scholarships_UN] UNIQUE NONCLUSTERED 
(
	[scholarship_summary_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_favorites]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_favorites](
	[uid] [uniqueidentifier] NOT NULL,
	[career_guid] [uniqueidentifier] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[dispOrder] [int] NOT NULL,
 CONSTRAINT [PK_user_favorites_1] PRIMARY KEY CLUSTERED 
(
	[uid] ASC,
	[career_guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_goals]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_goals](
	[goal_id] [uniqueidentifier] NOT NULL,
	[user_guid] [uniqueidentifier] NOT NULL,
	[goal_type] [varchar](10) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[description] [varchar](4000) NULL,
	[is_completed] [tinyint] NOT NULL,
	[date_completed] [datetimeoffset](0) NULL,
	[date_created] [datetimeoffset](0) NOT NULL,
	[date_archived] [datetimeoffset](0) NULL,
	[archived] [bit] NULL,
	[reference_guid] [uniqueidentifier] NULL,
	[updated_at] [datetimeoffset](0) NULL,
	[specific] [bit] NULL,
	[measurable] [bit] NULL,
	[attainable] [bit] NULL,
	[relevant] [bit] NULL,
	[timebound] [bit] NULL,
 CONSTRAINT [PK_user_goals] PRIMARY KEY CLUSTERED 
(
	[goal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_goals_compiled]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_goals_compiled](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_guid] [uniqueidentifier] NOT NULL,
	[goal_type] [varchar](10) NOT NULL,
	[goal_count] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_user_goals_compiled] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_grades]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_grades](
	[uid] [varchar](50) NULL,
	[gradeId] [varchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_user_grades] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_graph_org]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_graph_org](
	[guid] [uniqueidentifier] NOT NULL,
	[uid] [varchar](50) NOT NULL,
	[career_guid] [varchar](50) NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[my_interest] [varchar](50) NULL,
	[skills_required] [text] NULL,
	[edu_required] [text] NULL,
	[salary_benefits] [text] NULL,
	[local_demand] [text] NULL,
	[pros] [text] NULL,
	[cons] [text] NULL,
	[other] [text] NULL,
	[career_desc] [text] NULL,
	[date_created] [datetime] NULL,
	[result_id] [int] NULL,
 CONSTRAINT [PK_user_graph_org] PRIMARY KEY CLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_group]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_group](
	[usergroupid] [int] IDENTITY(1,1) NOT NULL,
	[groupid] [int] NOT NULL,
	[userid] [int] NOT NULL,
 CONSTRAINT [PK_user_group] PRIMARY KEY CLUSTERED 
(
	[usergroupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_jobs]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_jobs](
	[uid] [uniqueidentifier] NOT NULL,
	[jobkey] [varchar](100) NOT NULL,
	[joblink] [varchar](200) NULL,
	[timestamp] [datetime] NOT NULL,
	[company] [varchar](200) NULL,
	[description] [nvarchar](2000) NULL,
	[date_posted] [datetime] NULL,
	[location] [varchar](200) NULL,
	[url] [varchar](2000) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reference_key] [int] NULL,
	[date_archived] [datetime] NULL,
	[archived] [bit] NULL,
	[popup_html] [varchar](max) NULL,
 CONSTRAINT [PK_user_jobs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_lesson_assignment]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_lesson_assignment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[assignment_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[progress] [int] NOT NULL,
	[grade_computed] [int] NULL,
	[grade_teacher] [int] NULL,
	[grade_final] [int] NULL,
	[date_last_access] [datetime] NULL,
	[date_completed] [datetime] NULL,
	[last_segment_id] [int] NULL,
	[is_submitted] [bit] NULL,
	[date_submitted] [datetime] NULL,
 CONSTRAINT [PK_user_lesson_assigment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_level]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_level](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[level_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_user_level] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_message]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userGuid] [varchar](50) NOT NULL,
	[messageGuid] [varchar](50) NOT NULL,
	[date_opened] [datetime] NULL,
	[trashcan] [int] NULL,
	[owner_trashcan] [int] NULL,
 CONSTRAINT [PK_user_message] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_page_views]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_page_views](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[career_profile] [int] NOT NULL,
	[postsecondary_profile] [int] NOT NULL,
	[employability_profile] [int] NOT NULL,
 CONSTRAINT [PK_user_page_views] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_plan_postsecondary]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_plan_postsecondary](
	[uid] [uniqueidentifier] NOT NULL,
	[is_completed] [tinyint] NULL,
	[education_plan] [varchar](100) NULL,
	[school1] [varchar](100) NULL,
	[school2] [varchar](100) NULL,
	[school3] [varchar](100) NULL,
	[career1] [varchar](100) NULL,
	[career2] [varchar](100) NULL,
	[career3] [varchar](100) NULL,
	[completed_education] [int] NULL,
	[completed_schools] [int] NULL,
	[completed_careers] [int] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[scholarship1] [int] NULL,
	[scholarship2] [int] NULL,
	[scholarship3] [int] NULL,
 CONSTRAINT [PK_user_plan_postsecondary] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_queue]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_queue](
	[uid] [uniqueidentifier] NOT NULL,
	[career_guid] [uniqueidentifier] NULL,
	[timestamp] [datetime] NOT NULL,
	[dispOrder] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lifeskill_id] [int] NULL,
 CONSTRAINT [PK_user_queue] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_quiz]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_quiz](
	[instance_guid] [uniqueidentifier] NOT NULL,
	[uid] [uniqueidentifier] NOT NULL,
	[career_guid] [uniqueidentifier] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[dispOrder] [int] NOT NULL,
	[results] [text] NULL,
	[score] [varchar](50) NULL,
	[results_legacy] [text] NULL,
	[legacy_convert] [bit] NULL,
	[instance_name] [varchar](100) NULL,
	[result_id] [int] NULL,
 CONSTRAINT [PK_user_quiz_1] PRIMARY KEY CLUSTERED 
(
	[instance_guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_role_types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_role_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[name] [varchar](50) NULL,
	[display_name] [varchar](50) NULL,
 CONSTRAINT [PK_user_role_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_roles]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[role_id] [int] NULL,
	[vjsLicenseList] [nvarchar](4000) NULL,
	[delete_users] [int] NULL,
	[set_myplan] [int] NULL,
	[admin_user_accounts] [int] NULL,
 CONSTRAINT [PK_user_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_search_history]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_search_history](
	[guid] [uniqueidentifier] NOT NULL,
	[userGuid] [varchar](50) NOT NULL,
	[searchName] [varchar](100) NULL,
	[searchString] [varchar](2000) NULL,
	[dateTime] [date] NULL,
	[searchType] [varchar](50) NULL,
 CONSTRAINT [PK_user_search_history] PRIMARY KEY CLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_time_on_site]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_time_on_site](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[start_time] [datetime] NOT NULL,
	[end_time] [datetime] NOT NULL,
	[total_time] [int] NOT NULL,
 CONSTRAINT [PK_user_time_on_site] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Types]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Types](
	[UserTypeId] [smallint] IDENTITY(1,1) NOT NULL,
	[UserTypeName] [varchar](50) NULL,
	[DisplayOrder] [smallint] NULL,
 CONSTRAINT [PK_User_Types] PRIMARY KEY CLUSTERED 
(
	[UserTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_vjsadmin]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_vjsadmin](
	[user_id] [int] NOT NULL,
	[customer_service] [tinyint] NULL,
	[sales] [tinyint] NULL,
	[tech] [tinyint] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_user_vjsadmin] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [uniqueidentifier] NOT NULL,
	[user_name] [varchar](100) MASKED WITH (FUNCTION = 'default()') NOT NULL,
	[password_hashed] [varchar](255) NULL,
	[licenseID] [int] MASKED WITH (FUNCTION = 'default()') NULL,
	[role_id] [int] NULL,
	[fname] [varchar](100) MASKED WITH (FUNCTION = 'default()') NOT NULL,
	[lname] [varchar](100) MASKED WITH (FUNCTION = 'default()') NULL,
	[email] [varchar](80) MASKED WITH (FUNCTION = 'email()') NULL,
	[edu_level] [varchar](50) NULL,
	[edu_level_confirm] [tinyint] NULL,
	[address] [varchar](40) MASKED WITH (FUNCTION = 'default()') NULL,
	[city] [varchar](50) MASKED WITH (FUNCTION = 'default()') NULL,
	[state] [varchar](25) MASKED WITH (FUNCTION = 'default()') NULL,
	[zip] [varchar](10) MASKED WITH (FUNCTION = 'default()') NULL,
	[phone] [varchar](20) MASKED WITH (FUNCTION = 'default()') NULL,
	[date_entered] [datetime] NULL,
	[affiliateId] [nvarchar](50) NULL,
	[paGatewayUserID] [varchar](50) NULL,
	[grad_year] [varchar](50) NULL,
	[archived] [tinyint] NULL,
	[date_archived] [datetime] NULL,
	[archived_by] [int] NULL,
	[is_portal] [tinyint] NULL,
	[referenceUserId] [varchar](100) NULL,
	[heard_from] [varchar](50) NULL,
	[sis_id] [varchar](100) NULL,
	[date_last_modified] [datetime] NULL,
	[created_by] [int] NULL,
	[last_activity] [datetime] NULL,
	[language_preference] [char](2) NULL,
	[can_delete_users] [bit] NULL,
	[can_create_users] [bit] NULL,
	[ca_applicant_id] [int] NULL,
	[title] [varchar](30) NULL,
	[other_prefix] [varchar](24) NULL,
	[middle_initial] [varchar](100) NULL,
	[position] [varchar](100) NULL,
	[fax] [varchar](15) MASKED WITH (FUNCTION = 'partial(1, "XXX", 1)') NULL,
	[url] [varchar](15) MASKED WITH (FUNCTION = 'partial(1, "XXX", 1)') NULL,
	[uar_id] [varchar](36) NULL,
	[uar_id2] [uniqueidentifier] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_sso_admin_exclude]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_sso_admin_exclude](
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_users_sso_admin_exclude_1] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_sso_connection]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_sso_connection](
	[connection_group] [varchar](50) NULL,
	[connection_id] [varchar](100) NULL,
	[vjs_user_id] [int] NULL,
	[connection_name] [varchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_users_sso_connection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[UserTypeId] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [varchar](50) NOT NULL,
	[intSortOrder] [int] NOT NULL,
 CONSTRAINT [PK_UserTypes] PRIMARY KEY CLUSTERED 
(
	[UserTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userVideoHistory]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userVideoHistory](
	[userId] [int] NOT NULL,
	[careerId] [int] NOT NULL,
	[clusterID] [nvarchar](50) NULL,
	[mainWatched] [smallint] NOT NULL,
	[qa1Watched] [smallint] NOT NULL,
	[qa2Watched] [smallint] NOT NULL,
	[qa3Watched] [smallint] NOT NULL,
	[qa4Watched] [smallint] NOT NULL,
	[qa5Watched] [smallint] NOT NULL,
	[qa6Watched] [smallint] NOT NULL,
	[qa7Watched] [smallint] NOT NULL,
	[qa8Watched] [smallint] NOT NULL,
	[qa9Watched] [smallint] NOT NULL,
	[qa10Watched] [smallint] NOT NULL,
	[qa1Id] [int] NULL,
	[qa2Id] [int] NULL,
	[qa3Id] [int] NULL,
	[qa4Id] [int] NULL,
	[qa5Id] [int] NULL,
	[qa6Id] [int] NULL,
	[qa7Id] [int] NULL,
	[qa8Id] [int] NULL,
	[qa9Id] [int] NULL,
	[qa10Id] [int] NULL,
	[mainWatchedDate] [datetime] NULL,
	[qa1WatchedDate] [datetime] NULL,
	[qa2WatchedDate] [datetime] NULL,
	[qa3WatchedDate] [datetime] NULL,
	[qa4WatchedDate] [datetime] NULL,
	[qa5WatchedDate] [datetime] NULL,
	[qa6WatchedDate] [datetime] NULL,
	[qa7WatchedDate] [datetime] NULL,
	[qa8WatchedDate] [datetime] NULL,
	[qa9WatchedDate] [datetime] NULL,
	[qa10WatchedDate] [datetime] NULL,
	[courseCompleted] [smallint] NULL,
	[courseCompletedDate] [datetime] NULL,
	[courseCompletedUTCDate] [datetime] NULL,
 CONSTRAINT [PK_userVideoHistory] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[careerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[utility_career_search]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utility_career_search](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[career_search] [varchar](100) NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_utility_career_search] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[utility_count_queue]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utility_count_queue](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[license_id] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_utility_count_queue] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UX_CIP_TYPES]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UX_CIP_TYPES](
	[DATASET_YR] [float] NULL,
	[CIP_CODE] [nvarchar](255) NULL,
	[DESCR] [nvarchar](255) NULL,
	[CIP_ORIGIN] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_UX_CIP_TYPES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UX_ENTR_DIFFICULTY]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UX_ENTR_DIFFICULTY](
	[diff_code] [nvarchar](50) NOT NULL,
	[diff_description] [nvarchar](50) NULL,
 CONSTRAINT [PK_UX_ENTR_DIFFICULTY] PRIMARY KEY CLUSTERED 
(
	[diff_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UX_INST]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UX_INST](
	[DATASET_YR] [float] NULL,
	[INUN_ID] [float] NOT NULL,
	[NAME] [nvarchar](255) NULL,
	[YEAR_LAST_SURVEYED] [float] NULL,
	[LINE1] [nvarchar](255) NULL,
	[LINE2] [nvarchar](255) NULL,
	[LINE3] [nvarchar](255) NULL,
	[FRN_POSTAL_LOC] [nvarchar](255) NULL,
	[DOM_LOC_CITY] [nvarchar](255) NULL,
	[CITY] [nvarchar](255) NULL,
	[STATE_CODE] [nvarchar](255) NULL,
	[COUNTY] [nvarchar](255) NULL,
	[COUNTRY_CODE] [nvarchar](255) NULL,
	[ZIPCODE] [nvarchar](255) NULL,
	[OFFICIAL_AREA_CODE] [nvarchar](255) NULL,
	[OFFICIAL_PHONE] [nvarchar](255) NULL,
	[OFFICIAL_EXT] [nvarchar](255) NULL,
	[INSTATE_AREA_CODE] [nvarchar](255) NULL,
	[INSTATE_PHONE] [nvarchar](255) NULL,
	[INSTATE_EXT] [nvarchar](255) NULL,
	[OUTSTATE_AREA_CODE] [nvarchar](255) NULL,
	[OUTSTATE_PHONE] [nvarchar](255) NULL,
	[OUTSTATE_EXT] [nvarchar](255) NULL,
	[FAX_AREA_CODE] [nvarchar](255) NULL,
	[FAX] [nvarchar](255) NULL,
	[FAX_EXT] [nvarchar](255) NULL,
	[COORDINATE_SCHOOL] [nvarchar](255) NULL,
	[DB_KEY] [nvarchar](255) NULL,
	[AFFIL_CODE] [nvarchar](255) NULL,
	[DENOM_CODE] [nvarchar](255) NULL,
	[FIPS_CODE] [nvarchar](255) NULL,
	[URL_ADDRESS] [nvarchar](255) NULL,
	[SAT_KEY] [nvarchar](255) NULL,
	[MAIN_CARNEGIE_CLASS] [nvarchar](255) NULL,
	[MAIN_CNTRL_REG_ID] [nvarchar](255) NULL,
	[MAIN_FICE_CODE] [nvarchar](255) NULL,
	[MAIN_IPEDS_CODE] [nvarchar](255) NULL,
	[MAIN_SPECIAL_CODE] [nvarchar](255) NULL,
	[MAIN_SPECIAL_T] [nvarchar](255) NULL,
	[MAIN_FUNCTION_TYPE] [nvarchar](255) NULL,
	[MAIN_STUDENT_BODY] [nvarchar](255) NULL,
	[MAIN_FOUNDING_YR] [float] NULL,
	[MAIN_CONGRESS_DIST] [nvarchar](255) NULL,
	[MAIN_INST_CONTROL] [nvarchar](255) NULL,
	[MAIN_CALENDAR] [nvarchar](255) NULL,
	[MAIN_OTHER_CALENDAR] [nvarchar](255) NULL,
	[intUniversityID] [int] NULL,
	[txtDescription] [nvarchar](2000) NULL,
	[lat] [varchar](50) NULL,
	[lng] [varchar](50) NULL,
	[geo_process] [bit] NULL,
	[IPEDS_LINK] [varchar](200) NULL,
 CONSTRAINT [PK_UX_INST_1] PRIMARY KEY CLUSTERED 
(
	[INUN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UX_UNIV_TYPES]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UX_UNIV_TYPES](
	[code] [varchar](255) NOT NULL,
	[description] [varchar](255) NULL,
 CONSTRAINT [PK_UX_UNIV_TYPES] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UX_URL_ASGNS]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UX_URL_ASGNS](
	[DATASET_YR] [int] NULL,
	[REPRJ_ID] [int] NULL,
	[INUN_ID] [int] NULL,
	[URL_CODE] [nvarchar](5) NULL,
	[URL_DISPLAY] [nvarchar](255) NULL,
	[URL_DESTINATION] [nvarchar](255) NULL,
	[URL_HTML] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_UX_URL_ASGNS] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UX_URL_TYPES]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UX_URL_TYPES](
	[DATASET_YR] [int] NOT NULL,
	[URL_CODE] [nvarchar](5) NULL,
	[DESCR] [nvarchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_UX_URL_TYPES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_audit]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_audit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action] [varchar](1000) NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_vjs_audit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_employees]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_employees](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[display_name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_vjs_employees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_license]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_license](
	[LicenseID] [int] IDENTITY(1,1) NOT NULL,
	[LicenseTypeID] [int] NULL,
	[LicenseType] [nvarchar](50) NULL,
	[activationCode] [uniqueidentifier] NOT NULL,
	[userID] [int] NULL,
	[active] [bit] NOT NULL,
	[activation_date] [date] NULL,
	[expiration_date] [date] NULL,
	[OrgName] [nvarchar](100) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[Zip] [nvarchar](50) NULL,
	[State] [nvarchar](6) NULL,
	[date_entered] [datetime] NULL,
	[accountnotes] [ntext] NULL,
	[date_updated] [datetime] NULL,
	[AccountLimit] [int] NULL,
	[AccountCount] [int] NULL,
	[AccountNumberOverride] [bit] NULL,
	[disableLinks] [bit] NULL,
	[disablePasswordChange] [bit] NULL,
	[disableUserNameChange] [bit] NULL,
	[portal_image] [varchar](200) NULL,
	[portal_email] [varchar](50) NULL,
	[lat] [float] NULL,
	[lon] [float] NULL,
	[school_logo] [varchar](100) NULL,
	[county_logo] [varchar](100) NULL,
	[schoolUrl] [varchar](250) NULL,
	[rightUrl] [varchar](250) NULL,
	[isPAGateway] [int] NULL,
	[PAGatewayActive] [int] NULL,
	[license_type_id] [int] NULL,
	[district_id] [int] NULL,
	[accounting_system_id] [int] NULL,
	[sso_type_users] [int] NULL,
	[sso_url_users] [varchar](600) NULL,
	[sso_type_admins] [int] NULL,
	[sso_url_admins] [varchar](600) NULL,
	[login_id] [varchar](10) NULL,
	[sso_instructions_users] [varchar](1000) NULL,
	[sso_instructions_admins] [varchar](1000) NULL,
	[searchable] [tinyint] NULL,
	[sso_url_logout_users] [varchar](600) NULL,
	[sso_url_logout_admins] [varchar](600) NULL,
	[account_creation_id] [varchar](10) NULL,
	[account_creation_active] [tinyint] NULL,
	[date_archived] [datetime] NULL,
	[user_count] [int] NULL,
	[admin_count] [int] NULL,
	[group_count] [int] NULL,
	[cp_enabled] [bit] NULL,
	[cp_scheduled_lock_open] [date] NULL,
	[cp_scheduled_lock_close] [date] NULL,
	[cp_alternative_courses_type] [varchar](10) NULL,
	[cp_alternative_courses_count] [int] NULL,
	[cp_previous_year_enabled] [bit] NULL,
	[cp_freshman_year_enabled] [bit] NULL,
	[cp_sophomore_year_enabled] [bit] NULL,
	[cp_additional_years_custom] [bit] NULL,
	[cp_student_plan_access] [int] NULL,
	[cp_notification_emails] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[ceeb_code] [varchar](15) NULL,
	[sso_is_user_hybrid_login] [bit] NULL,
	[sso_is_admin_hybrid_login] [bit] NULL,
	[use_district_features] [bit] NULL,
	[salesforce_account_id] [varchar](50) NULL,
	[uar_id] [int] NULL,
	[sso_redirect_commons] [bit] NOT NULL,
	[white_label] [bit] NOT NULL,
	[white_label_image_link] [varchar](255) NULL,
	[white_label_image] [varchar](100) NULL,
 CONSTRAINT [PK_vjs_license] PRIMARY KEY CLUSTERED 
(
	[LicenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_license_access]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_license_access](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[license_id] [int] NOT NULL,
 CONSTRAINT [PK_vjs_license_access] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_license_assessment]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_license_assessment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[license_id] [int] NOT NULL,
	[assessmentGuid] [varchar](36) NOT NULL,
	[count] [int] NOT NULL,
	[transaction_date] [datetime] NOT NULL,
	[payment] [money] NULL,
	[order_number] [varchar](100) NULL,
	[userid] [int] NULL,
	[timestamp] [datetime] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_vjs_license_assessment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_license_assessment_master]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_license_assessment_master](
	[license_id] [int] NOT NULL,
	[assessmentGuid] [varchar](50) NOT NULL,
	[count] [int] NOT NULL,
	[used] [int] NOT NULL,
 CONSTRAINT [PK_vjs_license_assessment_master] PRIMARY KEY CLUSTERED 
(
	[license_id] ASC,
	[assessmentGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_license_clever_link]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_license_clever_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clever_school_id] [varchar](50) NULL,
	[vjs_license_id] [int] NOT NULL,
	[district_id] [varchar](50) NULL,
	[school_name] [varchar](100) NULL,
	[custom_name] [varchar](200) NULL,
	[custom_description] [varchar](1000) NULL,
	[date_created] [datetime] NULL,
	[is_multiple] [tinyint] NOT NULL,
 CONSTRAINT [PK_vjs_license_clever_link] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_license_grade]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_license_grade](
	[licenseGradeID] [int] IDENTITY(1,1) NOT NULL,
	[licenseID] [int] NOT NULL,
	[gradeID] [int] NOT NULL,
	[cp_isEnabled] [bit] NULL,
	[cp_hasStudentAccess] [bit] NULL,
 CONSTRAINT [PK_vjs_license_grade] PRIMARY KEY CLUSTERED 
(
	[licenseGradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_license_local_careers]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_license_local_careers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[licenseID] [int] NOT NULL,
	[careerGroupGuid] [varchar](50) NOT NULL,
 CONSTRAINT [PK_vjs_license_local_careers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_license_portal]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_license_portal](
	[licenseid] [int] NOT NULL,
	[portalid] [varchar](50) NOT NULL,
	[schoolName] [varchar](250) NOT NULL,
	[schoolUrl] [varchar](250) NULL,
	[schoolLogo] [varchar](50) NULL,
	[logoHeight] [int] NULL,
	[logoWidth] [int] NULL,
	[emailValidate] [varchar](250) NULL,
	[headerColor] [varchar](100) NULL,
	[newAccountRedirect] [varchar](250) NULL,
	[loginRedirect] [varchar](250) NULL,
 CONSTRAINT [PK_vjs_license_portal] PRIMARY KEY CLUSTERED 
(
	[licenseid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_license_sso_connection]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_license_sso_connection](
	[connection_group] [varchar](50) NULL,
	[connection_name] [varchar](100) NULL,
	[vjs_license_id] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_vjs_license_sso_connection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_license_usage]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_license_usage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [varchar](50) NOT NULL,
	[views] [text] NULL,
	[timespent] [text] NULL,
	[visits] [text] NULL,
 CONSTRAINT [PK_vjs_license_usage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_LicenseType]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_LicenseType](
	[LicenseTypeID] [int] IDENTITY(1,1) NOT NULL,
	[LicenseTypeName] [nvarchar](50) NOT NULL,
	[DisplayOrder] [int] NULL,
	[Active] [bit] NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED 
(
	[LicenseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_QAText]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_QAText](
	[threadID] [int] IDENTITY(1,1) NOT NULL,
	[careerID] [int] NOT NULL,
	[approved] [bit] NULL,
	[question] [text] NULL,
	[answer] [text] NULL,
	[displayorder] [int] NULL,
 CONSTRAINT [PK_vjs_QAText] PRIMARY KEY CLUSTERED 
(
	[threadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vjs_states]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vjs_states](
	[state_abbr] [varchar](2) NOT NULL,
	[state_name] [varchar](75) NULL,
 CONSTRAINT [PK_vjs_states] PRIMARY KEY CLUSTERED 
(
	[state_abbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wages_2016_national]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wages_2016_national](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[OCC_CODE] [nvarchar](255) NULL,
	[OCC_TITLE] [nvarchar](255) NULL,
	[OCC_GROUP] [nvarchar](255) NULL,
	[TOT_EMP] [float] NULL,
	[EMP_PRSE] [float] NULL,
	[H_MEAN] [float] NULL,
	[A_MEAN] [float] NULL,
	[MEAN_PRSE] [float] NULL,
	[H_PCT10] [float] NULL,
	[H_PCT25] [float] NULL,
	[H_MEDIAN] [float] NULL,
	[H_PCT75] [float] NULL,
	[H_PCT90] [float] NULL,
	[A_PCT10] [float] NULL,
	[A_PCT25] [float] NULL,
	[A_MEDIAN] [float] NULL,
	[A_PCT75] [float] NULL,
	[A_PCT90] [float] NULL,
	[ANNUAL] [nvarchar](255) NULL,
	[HOURLY] [nvarchar](255) NULL,
 CONSTRAINT [PK_wages_2016_national] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wages_2016_state]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wages_2016_state](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AREA] [nvarchar](255) NULL,
	[ST] [nvarchar](255) NULL,
	[STATE] [nvarchar](255) NULL,
	[OCC_CODE] [nvarchar](255) NULL,
	[OCC_TITLE] [nvarchar](255) NULL,
	[OCC_GROUP] [nvarchar](255) NULL,
	[TOT_EMP] [float] NULL,
	[EMP_PRSE] [float] NULL,
	[JOBS_1000] [float] NULL,
	[LOC_Q] [float] NULL,
	[H_MEAN] [float] NULL,
	[A_MEAN] [float] NULL,
	[MEAN_PRSE] [float] NULL,
	[H_PCT10] [float] NULL,
	[H_PCT25] [float] NULL,
	[H_MEDIAN] [float] NULL,
	[H_PCT75] [float] NULL,
	[H_PCT90] [float] NULL,
	[A_PCT10] [float] NULL,
	[A_PCT25] [float] NULL,
	[A_MEDIAN] [float] NULL,
	[A_PCT75] [float] NULL,
	[A_PCT90] [float] NULL,
	[ANNUAL] [nvarchar](255) NULL,
	[HOURLY] [nvarchar](255) NULL,
 CONSTRAINT [PK_wages_2016_state] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wages_2020_national]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wages_2020_national](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AREA] [int] NOT NULL,
	[AREA_TITLE] [nvarchar](50) NOT NULL,
	[AREA_TYPE] [nvarchar](50) NOT NULL,
	[PRIM_STATE] [nvarchar](50) NOT NULL,
	[NAICS] [nvarchar](50) NOT NULL,
	[NAICS_TITLE] [nvarchar](50) NOT NULL,
	[I_GROUP] [nvarchar](50) NOT NULL,
	[OWN_CODE] [int] NOT NULL,
	[OCC_CODE] [nvarchar](50) NOT NULL,
	[OCC_TITLE] [nvarchar](255) NOT NULL,
	[OCC_GROUP] [nvarchar](50) NOT NULL,
	[TOT_EMP] [float] NULL,
	[EMP_PRSE] [float] NULL,
	[JOBS_1000] [float] NULL,
	[LOC_QUOTIENT] [float] NULL,
	[PCT_TOTAL] [float] NULL,
	[H_MEAN] [float] NULL,
	[A_MEAN] [float] NULL,
	[MEAN_PRSE] [float] NULL,
	[H_PCT10] [float] NULL,
	[H_PCT25] [float] NULL,
	[H_MEDIAN] [float] NULL,
	[H_PCT75] [float] NULL,
	[H_PCT90] [float] NULL,
	[A_PCT10] [float] NULL,
	[A_PCT25] [float] NULL,
	[A_MEDIAN] [float] NULL,
	[A_PCT75] [float] NULL,
	[A_PCT90] [float] NULL,
	[ANNUAL] [nvarchar](50) NULL,
	[HOURLY] [nvarchar](50) NULL,
 CONSTRAINT [PK_wages_2020_national] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wages_2020_state]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wages_2020_state](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AREA] [nvarchar](50) NOT NULL,
	[STATE] [nvarchar](50) NOT NULL,
	[AREA_TYPE] [int] NOT NULL,
	[ST] [nvarchar](50) NOT NULL,
	[NAICS] [nvarchar](50) NOT NULL,
	[NAICS_TITLE] [nvarchar](50) NOT NULL,
	[I_GROUP] [nvarchar](50) NOT NULL,
	[OWN_CODE] [int] NOT NULL,
	[OCC_CODE] [nvarchar](50) NOT NULL,
	[OCC_TITLE] [nvarchar](255) NOT NULL,
	[OCC_GROUP] [nvarchar](255) NOT NULL,
	[TOT_EMP] [float] NULL,
	[EMP_PRSE] [float] NULL,
	[JOBS_1000] [float] NULL,
	[LOC_Q] [float] NULL,
	[PCT_TOTAL] [float] NULL,
	[H_MEAN] [float] NULL,
	[A_MEAN] [float] NULL,
	[MEAN_PRSE] [float] NULL,
	[H_PCT10] [float] NULL,
	[H_PCT25] [float] NULL,
	[H_MEDIAN] [float] NULL,
	[H_PCT75] [float] NULL,
	[H_PCT90] [float] NULL,
	[A_PCT10] [float] NULL,
	[A_PCT25] [float] NULL,
	[A_MEDIAN] [float] NULL,
	[A_PCT75] [float] NULL,
	[A_PCT90] [float] NULL,
	[ANNUAL] [nvarchar](50) NULL,
	[HOURLY] [nvarchar](50) NULL,
 CONSTRAINT [PK_wages_2020_state] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wages_2023_national]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wages_2023_national](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AREA] [int] NULL,
	[AREA_TITLE] [varchar](50) NULL,
	[AREA_TYPE] [int] NULL,
	[PRIM_STATE] [varchar](50) NULL,
	[NAICS] [int] NULL,
	[NAICS_TITLE] [varchar](50) NULL,
	[I_GROUP] [varchar](50) NULL,
	[OWN_CODE] [int] NULL,
	[OCC_CODE] [varchar](50) NOT NULL,
	[OCC_TITLE] [varchar](128) NULL,
	[O_GROUP] [varchar](50) NOT NULL,
	[TOT_EMP] [varchar](50) NULL,
	[EMP_PRSE] [real] NULL,
	[JOBS_1000] [varchar](50) NULL,
	[LOC_QUOTIENT] [varchar](50) NULL,
	[PCT_TOTAL] [varchar](50) NULL,
	[PCT_RPT] [varchar](50) NULL,
	[H_MEAN] [varchar](50) NULL,
	[A_MEAN] [varchar](50) NULL,
	[MEAN_PRSE] [real] NULL,
	[H_PCT10] [varchar](50) NULL,
	[H_PCT25] [varchar](50) NULL,
	[H_MEDIAN] [varchar](50) NULL,
	[H_PCT75] [varchar](50) NULL,
	[H_PCT90] [varchar](50) NULL,
	[A_PCT10] [varchar](50) NULL,
	[A_PCT25] [varchar](50) NULL,
	[A_MEDIAN] [varchar](50) NULL,
	[A_PCT75] [varchar](50) NULL,
	[A_PCT90] [varchar](50) NULL,
	[ANNUAL] [bit] NULL,
	[HOURLY] [varchar](50) NULL,
 CONSTRAINT [PK_wages_2023_national] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wages_2023_state]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wages_2023_state](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AREA] [nvarchar](50) NOT NULL,
	[STATE] [nvarchar](50) NOT NULL,
	[AREA_TYPE] [int] NOT NULL,
	[ST] [nvarchar](50) NOT NULL,
	[NAICS] [nvarchar](50) NOT NULL,
	[NAICS_TITLE] [nvarchar](50) NOT NULL,
	[I_GROUP] [nvarchar](50) NOT NULL,
	[OWN_CODE] [int] NOT NULL,
	[OCC_CODE] [nvarchar](50) NOT NULL,
	[OCC_TITLE] [nvarchar](255) NOT NULL,
	[OCC_GROUP] [nvarchar](255) NOT NULL,
	[TOT_EMP] [float] NULL,
	[EMP_PRSE] [float] NULL,
	[JOBS_1000] [float] NULL,
	[LOC_Q] [float] NULL,
	[PCT_TOTAL] [float] NULL,
	[H_MEAN] [float] NULL,
	[A_MEAN] [float] NULL,
	[MEAN_PRSE] [float] NULL,
	[H_PCT10] [float] NULL,
	[H_PCT25] [float] NULL,
	[H_MEDIAN] [float] NULL,
	[H_PCT75] [float] NULL,
	[H_PCT90] [float] NULL,
	[A_PCT10] [float] NULL,
	[A_PCT25] [float] NULL,
	[A_MEDIAN] [float] NULL,
	[A_PCT75] [float] NULL,
	[A_PCT90] [float] NULL,
	[ANNUAL] [nvarchar](50) NULL,
	[HOURLY] [nvarchar](50) NULL,
 CONSTRAINT [PK_wages_2023_state] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webinar_list]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webinar_list](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[webinar_key] [bigint] NULL,
	[webinar_id] [bigint] NULL,
	[registration_url] [varchar](150) NULL,
	[subject] [varchar](200) NULL,
	[description] [text] NULL,
	[start_time] [varchar](10) NULL,
	[end_time] [varchar](10) NULL,
	[date] [varchar](30) NULL,
	[raw_time] [varchar](50) NULL,
	[account] [varchar](50) NULL,
 CONSTRAINT [PK_webinar_list] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wil_careers]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wil_careers](
	[wil_id] [int] IDENTITY(1,1) NOT NULL,
	[career name] [nvarchar](255) NOT NULL,
	[work_value_id] [int] NOT NULL,
	[code] [nvarchar](255) NULL,
	[career_id] [int] NULL,
	[zone] [nvarchar](10) NULL,
 CONSTRAINT [PK_wil_careers] PRIMARY KEY CLUSTERED 
(
	[wil_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wil_letters]    Script Date: 9/18/2024 10:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wil_letters](
	[id] [int] NOT NULL,
	[work_value_id] [int] NOT NULL,
	[letter] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
 CONSTRAINT [PK_wil_letters_work_value_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[auth_v1_users] ADD  CONSTRAINT [DF_auth_v1_users_dateCreated_1]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[auth_v1_users] ADD  CONSTRAINT [DF_auth_v1_users_dateModified]  DEFAULT (getdate()) FOR [dateModified]
GO
ALTER TABLE [dbo].[auth_v1_users_log] ADD  CONSTRAINT [DF_auth_v1_users_dateCreated]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[batch_email_queue] ADD  CONSTRAINT [DF_batch_email_queue_approved]  DEFAULT ((0)) FOR [approved]
GO
ALTER TABLE [dbo].[batch_email_queue] ADD  CONSTRAINT [DF_batch_email_queue_is_batch_approved]  DEFAULT ((0)) FOR [is_batch_approved]
GO
ALTER TABLE [dbo].[blogs] ADD  CONSTRAINT [DF_blogs_is_published]  DEFAULT ((0)) FOR [is_published]
GO
ALTER TABLE [dbo].[bulk_upload_groups_users] ADD  CONSTRAINT [DF_bulk_upload_groups_users_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[ca_user] ADD  CONSTRAINT [DF_ca_user_is_counselor]  DEFAULT ((0)) FOR [is_counselor]
GO
ALTER TABLE [dbo].[ca_user] ADD  CONSTRAINT [DF_ca_user_is_teacher]  DEFAULT ((0)) FOR [is_teacher]
GO
ALTER TABLE [dbo].[ca_user] ADD  CONSTRAINT [DF_ca_user_academic_ratings]  DEFAULT ((0)) FOR [academic_ratings]
GO
ALTER TABLE [dbo].[career_quiz] ADD  CONSTRAINT [DF_career_quiz_quizGuid]  DEFAULT (newid()) FOR [quizGuid]
GO
ALTER TABLE [dbo].[career_video_qa] ADD  CONSTRAINT [DF_career_video_qa_disp_order]  DEFAULT ((0)) FOR [disp_order]
GO
ALTER TABLE [dbo].[career_video_qa] ADD  CONSTRAINT [DF_career_video_qa_guid]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[career_video_qa] ADD  CONSTRAINT [DF_career_video_qa_has_mov]  DEFAULT ((0)) FOR [has_mov]
GO
ALTER TABLE [dbo].[careers] ADD  CONSTRAINT [DF_careers_guid]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[careers] ADD  CONSTRAINT [DF_careers_ad_player_active]  DEFAULT ((0)) FOR [ad_player_active]
GO
ALTER TABLE [dbo].[careers] ADD  CONSTRAINT [DF_careers_has_transcript]  DEFAULT ((0)) FOR [has_transcript]
GO
ALTER TABLE [dbo].[careers] ADD  CONSTRAINT [DF_careers_has_mov]  DEFAULT ((0)) FOR [has_mov]
GO
ALTER TABLE [dbo].[careers] ADD  CONSTRAINT [DF_careers_isooh_1]  DEFAULT ((0)) FOR [isooh]
GO
ALTER TABLE [dbo].[careers] ADD  CONSTRAINT [DF__careers__creat__72C01017]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[careers] ADD  CONSTRAINT [DF_careers_legacy_explore]  DEFAULT ((0)) FOR [legacy_explore]
GO
ALTER TABLE [dbo].[careers_ooh_new] ADD  CONSTRAINT [DF_careers_ooh_new_reviewed]  DEFAULT ((0)) FOR [reviewed]
GO
ALTER TABLE [dbo].[cleversync_groups] ADD  CONSTRAINT [DF_cleversync_groups_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[cleversync_groups] ADD  CONSTRAINT [DF_cleversync_groups_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[cleversync_licenses] ADD  CONSTRAINT [DF_cleversync_licenses_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[cleversync_licenses] ADD  CONSTRAINT [DF_cleversync_licenses_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[cleversync_users] ADD  CONSTRAINT [DF_cleversync_users_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[cleversync_users] ADD  CONSTRAINT [DF_cleversync_users_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[cleversync_users] ADD  CONSTRAINT [DF_cleversync_users_update_count]  DEFAULT ((0)) FOR [update_count]
GO
ALTER TABLE [dbo].[clusters] ADD  CONSTRAINT [DF_clusters_active]  DEFAULT (0) FOR [active]
GO
ALTER TABLE [dbo].[colleges] ADD  CONSTRAINT [DF_Table_1_companyGuid_1]  DEFAULT (newid()) FOR [collegeGuid]
GO
ALTER TABLE [dbo].[colleges] ADD  CONSTRAINT [DF_colleges_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[colleges] ADD  CONSTRAINT [DF_colleges_dateCreated]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[colleges_log_data] ADD  CONSTRAINT [DF_colleges_log_data_last_modified_by]  DEFAULT ((1111)) FOR [last_modified_by]
GO
ALTER TABLE [dbo].[colleges_log_data] ADD  CONSTRAINT [DF_colleges_log_data_last_modified_date]  DEFAULT (getdate()) FOR [last_modified_date]
GO
ALTER TABLE [dbo].[companies] ADD  CONSTRAINT [DF_Table_1_CompanyGUID]  DEFAULT (newid()) FOR [companyGuid]
GO
ALTER TABLE [dbo].[companies] ADD  CONSTRAINT [DF_companies_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[companies] ADD  CONSTRAINT [DF_companies_dateCreated]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[company_group] ADD  CONSTRAINT [DF_company_group_guid]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[company_group_link] ADD  CONSTRAINT [DF_company_group_link_guid]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[company_sections] ADD  CONSTRAINT [DF_company_sections_sectionGuid]  DEFAULT (newid()) FOR [sectionGuid]
GO
ALTER TABLE [dbo].[company_sections] ADD  CONSTRAINT [DF_company_sections_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[company_sections] ADD  CONSTRAINT [DF_company_sections_displayOrder]  DEFAULT ((1)) FOR [displayOrder]
GO
ALTER TABLE [dbo].[cookie_login] ADD  CONSTRAINT [DF_cookie_login_expiration_exempt]  DEFAULT ((0)) FOR [expiration_exempt]
GO
ALTER TABLE [dbo].[coverletters] ADD  CONSTRAINT [DF__coverlett__cover__4D86EFB7]  DEFAULT (newid()) FOR [coverletter_guid]
GO
ALTER TABLE [dbo].[coverletters] ADD  CONSTRAINT [DF__coverlett__times__6C5E1957]  DEFAULT ((getutcdate() AT TIME ZONE 'UTC')) FOR [timestamp]
GO
ALTER TABLE [dbo].[coverletters] ADD  CONSTRAINT [DF__coverlett__date___993EE2C]  DEFAULT ((getutcdate() AT TIME ZONE 'UTC')) FOR [date_created]
GO
ALTER TABLE [dbo].[coverletters] ADD  CONSTRAINT [DF__coverlett__date___5D88A92]  DEFAULT ((getutcdate() AT TIME ZONE 'UTC')) FOR [date_modified]
GO
ALTER TABLE [dbo].[coverletters] ADD  CONSTRAINT [DF__coverlett__archi__6FEBB269]  DEFAULT ((0)) FOR [archived]
GO
ALTER TABLE [dbo].[daily_usage] ADD  CONSTRAINT [DF__daily_usa__caree__5C0F2629]  DEFAULT ((0)) FOR [career_videos_watched]
GO
ALTER TABLE [dbo].[daily_usage] ADD  CONSTRAINT [DF__daily_usa__emplo__5D034A62]  DEFAULT ((0)) FOR [employability_videos_watched]
GO
ALTER TABLE [dbo].[daily_usage] ADD  CONSTRAINT [DF__daily_usa__caree__5DF76E9B]  DEFAULT ((0)) FOR [career_profiles_viewed]
GO
ALTER TABLE [dbo].[daily_usage] ADD  CONSTRAINT [DF__daily_usa__posts__5EEB92D4]  DEFAULT ((0)) FOR [postsecondary_profiles_viewed]
GO
ALTER TABLE [dbo].[daily_usage] ADD  CONSTRAINT [DF__daily_usa__time___5FDFB70D]  DEFAULT ((0)) FOR [time_on_site]
GO
ALTER TABLE [dbo].[daily_usage] ADD  CONSTRAINT [DF__daily_usa__empol__60D3DB46]  DEFAULT ((0)) FOR [employability_profiles_viewed]
GO
ALTER TABLE [dbo].[daily_usage] ADD  CONSTRAINT [DF__daily_usa__quiz___6874FD0E]  DEFAULT ((0)) FOR [quiz_average_score]
GO
ALTER TABLE [dbo].[daily_usage_user] ADD  CONSTRAINT [DF__daily_usa__caree__61C7FF7F]  DEFAULT ((0)) FOR [career_videos_watched]
GO
ALTER TABLE [dbo].[daily_usage_user] ADD  CONSTRAINT [DF__daily_usa__emplo__62BC23B8]  DEFAULT ((0)) FOR [employability_videos_watched]
GO
ALTER TABLE [dbo].[daily_usage_user] ADD  CONSTRAINT [DF__daily_usa__caree__63B047F1]  DEFAULT ((0)) FOR [career_profiles_viewed]
GO
ALTER TABLE [dbo].[daily_usage_user] ADD  CONSTRAINT [DF__daily_usa__posts__64A46C2A]  DEFAULT ((0)) FOR [postsecondary_profiles_viewed]
GO
ALTER TABLE [dbo].[daily_usage_user] ADD  CONSTRAINT [DF__daily_usa__time___65989063]  DEFAULT ((0)) FOR [time_on_site]
GO
ALTER TABLE [dbo].[daily_usage_user] ADD  CONSTRAINT [DF__daily_usa__empol__668CB49C]  DEFAULT ((0)) FOR [employability_profiles_viewed]
GO
ALTER TABLE [dbo].[daily_usage_user] ADD  CONSTRAINT [DF__daily_usa__quiz___6780D8D5]  DEFAULT ((0)) FOR [quiz_average_score]
GO
ALTER TABLE [dbo].[dashboard_banner] ADD  CONSTRAINT [DF__dashboard__creat__607ED58B]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[dashboard_banner] ADD  CONSTRAINT [DF__dashboard__updat__6172F9C4]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[districts] ADD  CONSTRAINT [DF_districts_account_creation_active]  DEFAULT ((0)) FOR [account_creation_active]
GO
ALTER TABLE [dbo].[districts] ADD  CONSTRAINT [DF_districts_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[districts] ADD  CONSTRAINT [DF_districts_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[districts] ADD  CONSTRAINT [DF_districts_course_planner_emabled]  DEFAULT ((0)) FOR [cp_enabled]
GO
ALTER TABLE [dbo].[districts] ADD  CONSTRAINT [DF_districts_cp_student_plan_access]  DEFAULT ((0)) FOR [cp_student_plan_access]
GO
ALTER TABLE [dbo].[districts] ADD  CONSTRAINT [cp_previous_year_enabled]  DEFAULT ((0)) FOR [cp_previous_year_enabled]
GO
ALTER TABLE [dbo].[districts] ADD  CONSTRAINT [cp_freshman_year_enabled]  DEFAULT ((0)) FOR [cp_freshman_year_enabled]
GO
ALTER TABLE [dbo].[districts] ADD  CONSTRAINT [cp_sophomore_year_enabled]  DEFAULT ((0)) FOR [cp_sophomore_year_enabled]
GO
ALTER TABLE [dbo].[districts] ADD  CONSTRAINT [DF_districts_cp_notification_emails]  DEFAULT ((0)) FOR [cp_notification_emails]
GO
ALTER TABLE [dbo].[eduDegree] ADD  CONSTRAINT [DF_eduDegree_displayOrder]  DEFAULT (0) FOR [displayOrder]
GO
ALTER TABLE [dbo].[email_unsubscribed] ADD  CONSTRAINT [DF_email_unsubscribed_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[error_report_throttling] ADD  CONSTRAINT [DF__error_rep__total__20AE6939]  DEFAULT ((1)) FOR [total_occurences]
GO
ALTER TABLE [dbo].[error_report_throttling] ADD  CONSTRAINT [DF__error_rep__date___21A28D72]  DEFAULT (getdate()) FOR [date_last_occurence]
GO
ALTER TABLE [dbo].[etx_requests] ADD  CONSTRAINT [DF__etx_reque__statu__1F3B2213]  DEFAULT ('Requested') FOR [status]
GO
ALTER TABLE [dbo].[flexunit_lesson] ADD  CONSTRAINT [DF_flexunit_lesson_is_assessment]  DEFAULT ((0)) FOR [is_assessment]
GO
ALTER TABLE [dbo].[flexunit_lesson] ADD  CONSTRAINT [DF_flexunit_lesson_required_passing_score]  DEFAULT ((0)) FOR [required_passing_score]
GO
ALTER TABLE [dbo].[flexunit_lesson] ADD  CONSTRAINT [DF_flexunit_lesson_attempts]  DEFAULT ((0)) FOR [attempts]
GO
ALTER TABLE [dbo].[google_licenses] ADD  CONSTRAINT [DF_google_licenses_date_created]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[google_users] ADD  CONSTRAINT [DF_google_users_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[google_users] ADD  CONSTRAINT [DF_google_users_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[google_users] ADD  CONSTRAINT [DF_google_users_update_count]  DEFAULT ((0)) FOR [update_count]
GO
ALTER TABLE [dbo].[groups] ADD  CONSTRAINT [DF_groups_timestamp]  DEFAULT (getdate()) FOR [timestamp]
GO
ALTER TABLE [dbo].[groups] ADD  CONSTRAINT [DF_groups_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[groups] ADD  CONSTRAINT [DF_groups_shared]  DEFAULT ((0)) FOR [shared]
GO
ALTER TABLE [dbo].[groups] ADD  CONSTRAINT [DF__tmp_rg_xx__creat__0C5BC11B]  DEFAULT ((0)) FOR [creatorid]
GO
ALTER TABLE [dbo].[groups] ADD  CONSTRAINT [DF_groups_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[groups] ADD  CONSTRAINT [DF_groups_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[groups] ADD  CONSTRAINT [DF_groups_user_count]  DEFAULT ((0)) FOR [user_count]
GO
ALTER TABLE [dbo].[inv_answers] ADD  CONSTRAINT [DF__inv_answe__updat__7F186B44]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[inv_answers] ADD  CONSTRAINT [DF__inv_answe__creat__7E24470B]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[inv_test_instance] ADD  CONSTRAINT [DF__inv_test_i__guid__08B6E417]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[invAnswers] ADD  CONSTRAINT [DF_invAnswers_answerGuid]  DEFAULT (newid()) FOR [answerGuid]
GO
ALTER TABLE [dbo].[invAnswers] ADD  CONSTRAINT [DF_invAnswers_completed]  DEFAULT ((0)) FOR [completed]
GO
ALTER TABLE [dbo].[invAnswers] ADD  CONSTRAINT [DF_invAnswers_pagenum]  DEFAULT ((0)) FOR [pagenum]
GO
ALTER TABLE [dbo].[invAnswers] ADD  CONSTRAINT [DF_invAnswers_archived]  DEFAULT ((0)) FOR [archived]
GO
ALTER TABLE [dbo].[invAnswers] ADD  CONSTRAINT [DF__invAnswer__perce__555F93D4]  DEFAULT ((0)) FOR [percent_complete]
GO
ALTER TABLE [dbo].[invQuestions] ADD  CONSTRAINT [DF_invCEI_EZ_Questions_questionGuid]  DEFAULT (newid()) FOR [questionGuid]
GO
ALTER TABLE [dbo].[invTests] ADD  CONSTRAINT [DF_invTests_testGuid]  DEFAULT (newid()) FOR [testGuid]
GO
ALTER TABLE [dbo].[ip_whitelist] ADD  CONSTRAINT [DF_ip_whitelist_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ip_whitelist_excluded] ADD  CONSTRAINT [DF_ip_whitelist_exluded_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[kpi_data_sync] ADD  CONSTRAINT [DF__kpi_data___start__587DC110]  DEFAULT (getdate()) FOR [started_at]
GO
ALTER TABLE [dbo].[kpi_tracking] ADD  CONSTRAINT [DF__kpi_usage__creat__4A2FA1B9]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[kpi_tracking] ADD  CONSTRAINT [DF_kpi_tracking_is_legacy]  DEFAULT ((0)) FOR [is_legacy]
GO
ALTER TABLE [dbo].[lesson_assignment] ADD  CONSTRAINT [DF_lesson_assignment_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[lesson_assignment] ADD  CONSTRAINT [DF_lesson_assignment_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[lesson_assignment] ADD  CONSTRAINT [DF_lesson_assignment_force_order]  DEFAULT ((1)) FOR [force_order]
GO
ALTER TABLE [dbo].[lesson_assignment] ADD  CONSTRAINT [DF_lesson_assignment_time_zone]  DEFAULT ('America/New_York') FOR [time_zone]
GO
ALTER TABLE [dbo].[lesson_assignment] ADD  CONSTRAINT [DF__lesson_as__date___507BB588]  DEFAULT (getdate()) FOR [date_active]
GO
ALTER TABLE [dbo].[lesson_documents] ADD  CONSTRAINT [default_no_active]  DEFAULT ((0)) FOR [active]
GO
ALTER TABLE [dbo].[lesson_documents] ADD  CONSTRAINT [default_no_premium]  DEFAULT ((0)) FOR [is_premium]
GO
ALTER TABLE [dbo].[lesson_segment] ADD  CONSTRAINT [DF_lesson_segment_archived]  DEFAULT ((0)) FOR [archived]
GO
ALTER TABLE [dbo].[lesson_segment] ADD  CONSTRAINT [DF_lesson_segment_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[lesson_segment] ADD  CONSTRAINT [DF_lesson_segment_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[lesson_segment] ADD  CONSTRAINT [DF_lesson_segment_is_welcome_segment]  DEFAULT ((0)) FOR [is_welcome_segment]
GO
ALTER TABLE [dbo].[lesson_segment] ADD  CONSTRAINT [DF_lesson_segment_is_finish_segment]  DEFAULT ((0)) FOR [is_finish_segment]
GO
ALTER TABLE [dbo].[lesson_tags] ADD  CONSTRAINT [DF_lesson_tags_is_grade_tag]  DEFAULT ((0)) FOR [is_grade_tag]
GO
ALTER TABLE [dbo].[lessons] ADD  CONSTRAINT [DF_lessons_is_private]  DEFAULT ((0)) FOR [is_public]
GO
ALTER TABLE [dbo].[lessons] ADD  CONSTRAINT [DF_lessons_archived]  DEFAULT ((0)) FOR [archived]
GO
ALTER TABLE [dbo].[lessons] ADD  CONSTRAINT [DF_lessons_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[lessons] ADD  CONSTRAINT [DF_lessons_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[lessons] ADD  CONSTRAINT [DF_lessons_is_prebuilt]  DEFAULT ((0)) FOR [is_prebuilt]
GO
ALTER TABLE [dbo].[lessons] ADD  CONSTRAINT [DF_lessons_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[license_expiration_notification] ADD  CONSTRAINT [DF_license_expiration_notification_day_90_sent]  DEFAULT ((0)) FOR [day_90_sent]
GO
ALTER TABLE [dbo].[license_expiration_notification] ADD  CONSTRAINT [DF_license_expiration_notification_day_60_sent]  DEFAULT ((0)) FOR [day_60_sent]
GO
ALTER TABLE [dbo].[license_expiration_notification] ADD  CONSTRAINT [DF_license_expiration_notification_day_30_sent]  DEFAULT ((0)) FOR [day_30_sent]
GO
ALTER TABLE [dbo].[license_expiration_notification] ADD  CONSTRAINT [DF_license_expiration_notification_day_7_sent]  DEFAULT ((0)) FOR [day_7_sent]
GO
ALTER TABLE [dbo].[license_expiration_notification] ADD  CONSTRAINT [DF_license_expiration_notification_day_2_sent]  DEFAULT ((0)) FOR [day_2_sent]
GO
ALTER TABLE [dbo].[license_expiration_notification] ADD  CONSTRAINT [DF_license_expiration_notification_day_1_sent]  DEFAULT ((0)) FOR [day_1_sent]
GO
ALTER TABLE [dbo].[licensePlayList] ADD  CONSTRAINT [DF_licensePlayList_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[licensePlayList] ADD  CONSTRAINT [DF_licensePlayList_dateCreated]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[lifeskill_videos] ADD  CONSTRAINT [DF__lifeskill__topic__3C6308A4]  DEFAULT ((0)) FOR [topic_id]
GO
ALTER TABLE [dbo].[lifeskill_videos] ADD  CONSTRAINT [DF__lifeskill__activ__5463904C]  DEFAULT ((0)) FOR [active]
GO
ALTER TABLE [dbo].[lifeskill_videos] ADD  CONSTRAINT [DF_lifeskill_videos_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[lifeskill_videos] ADD  CONSTRAINT [DF_lifeskill_videos_video_type]  DEFAULT ('video') FOR [video_type]
GO
ALTER TABLE [dbo].[lti_keys] ADD  CONSTRAINT [DF_lti_keys_method]  DEFAULT ('POST') FOR [method]
GO
ALTER TABLE [dbo].[lti_keys] ADD  CONSTRAINT [DF_lti_keys_lti_multiple_licenses]  DEFAULT ((0)) FOR [lti_multiple_licenses]
GO
ALTER TABLE [dbo].[lti_log] ADD  CONSTRAINT [DF_lti_log_date_entered]  DEFAULT (getdate()) FOR [date_entered]
GO
ALTER TABLE [dbo].[marketing_links] ADD  CONSTRAINT [DF__marketing__creat__02A1456A]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[messages] ADD  CONSTRAINT [DF_messages_messageGuid]  DEFAULT (newid()) FOR [messageGuid]
GO
ALTER TABLE [dbo].[newsletter_subscriber] ADD  CONSTRAINT [DF_newletter_subsriber_email_guid]  DEFAULT (newid()) FOR [email_guid]
GO
ALTER TABLE [dbo].[newsletter_subscriber] ADD  CONSTRAINT [DF_newletter_subsriber_dateCreated]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[newsletter_subscriber] ADD  CONSTRAINT [DF_newletter_subsriber_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[newsletter_subscriber] ADD  CONSTRAINT [DF_newletter_subsriber_validated]  DEFAULT ((0)) FOR [validated]
GO
ALTER TABLE [dbo].[number_employees] ADD  CONSTRAINT [DF_number_employees_sort_order]  DEFAULT ((0)) FOR [sort_order]
GO
ALTER TABLE [dbo].[occupations_ooh] ADD  CONSTRAINT [DF_Table_1_careerGuid]  DEFAULT (newid()) FOR [oGuid]
GO
ALTER TABLE [dbo].[occupations_ooh_new] ADD  CONSTRAINT [DF_ooh_occupations_new_oGuid]  DEFAULT (newid()) FOR [oGuid]
GO
ALTER TABLE [dbo].[oneroster_groups] ADD  CONSTRAINT [DF_oneroster_groups_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[oneroster_licenses] ADD  CONSTRAINT [DF_oneroster_licenses_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[oneroster_users] ADD  CONSTRAINT [DF_oneroster_users_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[organizations] ADD  CONSTRAINT [DF_organizations_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[organizations] ADD  CONSTRAINT [DF_organizations_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[partners] ADD  CONSTRAINT [DF_partners_date_created_1]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[partners] ADD  CONSTRAINT [DF_partners_date_last_modified]  DEFAULT (getdate()) FOR [date_last_modified]
GO
ALTER TABLE [dbo].[playList] ADD  CONSTRAINT [DF_playList_playistGuid]  DEFAULT (newid()) FOR [playlistGuid]
GO
ALTER TABLE [dbo].[playList] ADD  CONSTRAINT [DF_playList_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[playlistDetails] ADD  CONSTRAINT [DF_playlistDetails_displayOrder]  DEFAULT ((1)) FOR [displayOrder]
GO
ALTER TABLE [dbo].[portal_license] ADD  CONSTRAINT [DF_portals_license_has_login]  DEFAULT ((1)) FOR [has_login]
GO
ALTER TABLE [dbo].[portal_license] ADD  CONSTRAINT [DF_portals_license_has_new_account]  DEFAULT ((1)) FOR [has_new_account]
GO
ALTER TABLE [dbo].[portal_license] ADD  CONSTRAINT [DF_portals_license_has_forgot_password]  DEFAULT ((1)) FOR [has_forgot_password]
GO
ALTER TABLE [dbo].[portal_license] ADD  CONSTRAINT [DF_portal_license_login_template_type]  DEFAULT ('login') FOR [login_template_type]
GO
ALTER TABLE [dbo].[portal_license] ADD  CONSTRAINT [DF_portal_license_new_account_template_type]  DEFAULT ('new_account') FOR [new_account_template_type]
GO
ALTER TABLE [dbo].[portal_license] ADD  CONSTRAINT [DF_portal_license_forgot_password_template_type]  DEFAULT ('forgot_password') FOR [forgot_password_template_type]
GO
ALTER TABLE [dbo].[portal_license] ADD  CONSTRAINT [DF_portal_license_login_url_name]  DEFAULT ('portals.validate.login') FOR [login_url_name]
GO
ALTER TABLE [dbo].[portal_license] ADD  CONSTRAINT [DF_portal_license_new_account_url_name]  DEFAULT ('portals.validate.new_account') FOR [new_account_url_name]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_grade]  DEFAULT ((1)) FOR [grade]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_first_name]  DEFAULT ((1)) FOR [first_name]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_middle_name]  DEFAULT ((0)) FOR [middle_name]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_last_name]  DEFAULT ((1)) FOR [last_name]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_user_name]  DEFAULT ((1)) FOR [user_name]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_password]  DEFAULT ((0)) FOR [password]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_email]  DEFAULT ((1)) FOR [email]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_city]  DEFAULT ((1)) FOR [city]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_state]  DEFAULT ((1)) FOR [state]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_zip]  DEFAULT ((1)) FOR [zip]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_user_type]  DEFAULT ((0)) FOR [user_type]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_age]  DEFAULT ((0)) FOR [age]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_birth_date]  DEFAULT ((0)) FOR [birth_date]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_school_name]  DEFAULT ((0)) FOR [school_name]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_avatar]  DEFAULT ((0)) FOR [avatar]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_grade_required]  DEFAULT ((0)) FOR [grade_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_first_name_required]  DEFAULT ((0)) FOR [first_name_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_middle_name_required]  DEFAULT ((0)) FOR [middle_name_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_last_name_required]  DEFAULT ((0)) FOR [last_name_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_user_name_required]  DEFAULT ((0)) FOR [user_name_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_password_required]  DEFAULT ((0)) FOR [password_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_email_required]  DEFAULT ((0)) FOR [email_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_city_required]  DEFAULT ((0)) FOR [city_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_state_required]  DEFAULT ((0)) FOR [state_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_zip_required]  DEFAULT ((0)) FOR [zip_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_user_type_required]  DEFAULT ((0)) FOR [user_type_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_age_required]  DEFAULT ((0)) FOR [age_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_birth_date_required]  DEFAULT ((0)) FOR [birth_date_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_school_name_required]  DEFAULT ((0)) FOR [school_name_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_avatar_required]  DEFAULT ((0)) FOR [avatar_required]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_grade_editable]  DEFAULT ((0)) FOR [grade_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_first_name_editable]  DEFAULT ((0)) FOR [first_name_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_middle_name_editable]  DEFAULT ((0)) FOR [middle_name_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_last_name_editable]  DEFAULT ((0)) FOR [last_name_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_user_name_editable]  DEFAULT ((0)) FOR [user_name_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_password_editable]  DEFAULT ((0)) FOR [password_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_email_editable]  DEFAULT ((0)) FOR [email_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_city_editable]  DEFAULT ((0)) FOR [city_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_state_editable]  DEFAULT ((0)) FOR [state_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_zip_editable]  DEFAULT ((0)) FOR [zip_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_user_type_editable]  DEFAULT ((0)) FOR [user_type_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_age_editable]  DEFAULT ((0)) FOR [age_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_birth_date_editable]  DEFAULT ((0)) FOR [birth_date_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_school_name_editable]  DEFAULT ((0)) FOR [school_name_editable]
GO
ALTER TABLE [dbo].[profile_settings] ADD  CONSTRAINT [DF_profile_settings_avatar_editable]  DEFAULT ((0)) FOR [avatar_editable]
GO
ALTER TABLE [dbo].[quiz_answer] ADD  CONSTRAINT [DF_Table_1_questionGuid]  DEFAULT (newid()) FOR [answerGuid]
GO
ALTER TABLE [dbo].[quiz_answer] ADD  CONSTRAINT [DF_quiz_answer_displayOrder]  DEFAULT ((1)) FOR [displayOrder]
GO
ALTER TABLE [dbo].[quiz_answer] ADD  CONSTRAINT [DF_quiz_answer_correct]  DEFAULT ((0)) FOR [correct]
GO
ALTER TABLE [dbo].[quiz_question] ADD  CONSTRAINT [DF_quiz_question_questionGuid]  DEFAULT (newid()) FOR [questionGuid]
GO
ALTER TABLE [dbo].[quiz_question] ADD  CONSTRAINT [DF_quiz_question_displayOrder]  DEFAULT ((1)) FOR [displayOrder]
GO
ALTER TABLE [dbo].[resume_education] ADD  CONSTRAINT [DF_resume_education_display_order]  DEFAULT ((1)) FOR [display_order]
GO
ALTER TABLE [dbo].[resume_experience] ADD  CONSTRAINT [DF_resume_experience_display_order]  DEFAULT ((1)) FOR [display_order]
GO
ALTER TABLE [dbo].[resumes] ADD  CONSTRAINT [DF_resumes_resume_guid]  DEFAULT (newid()) FOR [resume_guid]
GO
ALTER TABLE [dbo].[resumes] ADD  CONSTRAINT [DF_resumes_timestamp]  DEFAULT ((getutcdate() AT TIME ZONE 'UTC')) FOR [timestamp]
GO
ALTER TABLE [dbo].[resumes] ADD  CONSTRAINT [DF_resumes_date_created]  DEFAULT ((getutcdate() AT TIME ZONE 'UTC')) FOR [date_created]
GO
ALTER TABLE [dbo].[resumes] ADD  CONSTRAINT [DF_resumes_date_modified]  DEFAULT ((getutcdate() AT TIME ZONE 'UTC')) FOR [date_modified]
GO
ALTER TABLE [dbo].[resumes] ADD  CONSTRAINT [DF_resumes_archived]  DEFAULT ((0)) FOR [archived]
GO
ALTER TABLE [dbo].[segment_types] ADD  CONSTRAINT [DF_segment_types_gradable]  DEFAULT ((1)) FOR [gradable]
GO
ALTER TABLE [dbo].[segment_v1_assessment] ADD  CONSTRAINT [DF__segment_v__allow__11371B7F]  DEFAULT ((0)) FOR [allow_extra_time]
GO
ALTER TABLE [dbo].[segment_v1_playlist_videos] ADD  CONSTRAINT [DF_segment_v1_playlist_videos_is_include_qa]  DEFAULT ((0)) FOR [is_qa_included]
GO
ALTER TABLE [dbo].[segment_v1_playlist_videos] ADD  CONSTRAINT [DF_segment_v1_playlist_videos_is_qa_included]  DEFAULT ((0)) FOR [is_qa]
GO
ALTER TABLE [dbo].[segment_v1_playlist_videos] ADD  CONSTRAINT [DF_segment_v1_playlist_videos_force_watch]  DEFAULT ((0)) FOR [force_watch]
GO
ALTER TABLE [dbo].[segment_v1_popquiz] ADD  CONSTRAINT [DF_segment_v1_popquiz_show_answers]  DEFAULT ((1)) FOR [show_answers]
GO
ALTER TABLE [dbo].[segment_v1_quiz] ADD  CONSTRAINT [DF_segment_v1_quiz_show_answers]  DEFAULT ((1)) FOR [show_answers]
GO
ALTER TABLE [dbo].[segment_v1_result] ADD  CONSTRAINT [DF_segment_v1_result_progress]  DEFAULT ((0)) FOR [progress]
GO
ALTER TABLE [dbo].[segment_v1_result] ADD  CONSTRAINT [DF_segment_v1_result_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[segment_v1_result] ADD  CONSTRAINT [DF_segment_v1_result_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[segment_v1_survey] ADD  CONSTRAINT [DF__segment_v__preve__7F7DCE24]  DEFAULT ((0)) FOR [prevent_changing_answers]
GO
ALTER TABLE [dbo].[segment_v1_video_embed] ADD  CONSTRAINT [DF__segment_v__force__427E19CB]  DEFAULT ((0)) FOR [force_watch]
GO
ALTER TABLE [dbo].[sent_emails] ADD  CONSTRAINT [DF__sent_emai__opene__48875069]  DEFAULT ((0)) FOR [opened]
GO
ALTER TABLE [dbo].[sent_emails] ADD  CONSTRAINT [DF__sent_emai__click__47932C30]  DEFAULT ((0)) FOR [click_count]
GO
ALTER TABLE [dbo].[signature_emails] ADD  CONSTRAINT [DF__signature__guid__6B3DC0EA]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[signature_emails] ADD  CONSTRAINT [DF__signature__signe__4C026F95]  DEFAULT ((0)) FOR [signed]
GO
ALTER TABLE [dbo].[signature_emails] ADD  CONSTRAINT [DF__signature__date___7B32DC26]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[signature_emails] ADD  CONSTRAINT [DF__signature__date___280F3B8B]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[signatures] ADD  CONSTRAINT [DF__signature__signa__358C3040]  DEFAULT (newid()) FOR [signature_guid]
GO
ALTER TABLE [dbo].[signatures] ADD  CONSTRAINT [DF__signature__signe__4EC91735]  DEFAULT ((0)) FOR [signed]
GO
ALTER TABLE [dbo].[signatures] ADD  CONSTRAINT [DF__signature__user___47D91251]  DEFAULT ((0)) FOR [user_logged_in]
GO
ALTER TABLE [dbo].[signatures] ADD  CONSTRAINT [DF__signature__email__50F9B7BF]  DEFAULT ((0)) FOR [emails_sent]
GO
ALTER TABLE [dbo].[signatures] ADD  CONSTRAINT [DF__signature__date___797D23BF]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[signatures] ADD  CONSTRAINT [DF__signature__date___29FB742A]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[site_keys] ADD  CONSTRAINT [DF_site_keys_site_key]  DEFAULT (newid()) FOR [site_key]
GO
ALTER TABLE [dbo].[site_keys] ADD  CONSTRAINT [DF_site_keys_set_timestamp]  DEFAULT (getdate()) FOR [set_timestamp]
GO
ALTER TABLE [dbo].[site_links] ADD  CONSTRAINT [DF_site_links_uid]  DEFAULT (newid()) FOR [uid]
GO
ALTER TABLE [dbo].[site_links] ADD  CONSTRAINT [DF_site_links_displayOrder]  DEFAULT ((1)) FOR [displayOrder]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_CareerCentral]  DEFAULT ((1)) FOR [nav_career_central]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_CareerCentral_My_Favs]  DEFAULT ((1)) FOR [nav_career_central_my_favs]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_CareerCentral_MY_Queue]  DEFAULT ((1)) FOR [nav_tools_my_playlist]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_College]  DEFAULT ((1)) FOR [nav_College]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_College_My]  DEFAULT ((1)) FOR [nav_College_My]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_College_Compare]  DEFAULT ((1)) FOR [nav_College_Compare]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Jobs]  DEFAULT ((1)) FOR [nav_Jobs]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Jobs_My]  DEFAULT ((1)) FOR [nav_Jobs_My]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Tools]  DEFAULT ((1)) FOR [nav_Tools]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Tools_Resume]  DEFAULT ((1)) FOR [nav_Tools_Resume]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Tools_Assessment]  DEFAULT ((1)) FOR [nav_Tools_Assessment]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Tools_Playlist]  DEFAULT ((1)) FOR [nav_admin_playlist]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Tools_User_Tutorial]  DEFAULT ((1)) FOR [nav_Tools_User_Tutorial]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Admin_Account_Group]  DEFAULT ((1)) FOR [nav_admin_groups]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Admin_miniLesson]  DEFAULT ((1)) FOR [nav_admin_curriculum]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Admin_Account_User_Account]  DEFAULT ((1)) FOR [nav_admin_manage_users]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Admin_Local_Links]  DEFAULT ((1)) FOR [nav_Admin_Local_Links]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Admin_Reports]  DEFAULT ((1)) FOR [nav_Admin_Reports]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_User_Profile_Messages]  DEFAULT ((1)) FOR [nav_user_messages]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_User_Profile]  DEFAULT ((1)) FOR [nav_User_Profile]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_User_Profile_Edit]  DEFAULT ((1)) FOR [nav_User_Profile_Edit]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_User_Profile_Activity]  DEFAULT ((1)) FOR [nav_User_Profile_Activity]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_User_Help_Center]  DEFAULT ((1)) FOR [nav_User_Help_Center]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_User_Logout]  DEFAULT ((1)) FOR [nav_User_Logout]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_disable_links]  DEFAULT ((0)) FOR [disable_links]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_college_search_type]  DEFAULT ((0)) FOR [college_search_type]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_job_search_type]  DEFAULT ((0)) FOR [job_search_type]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_career_earnings_type]  DEFAULT ((0)) FOR [career_earnings_type]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_employment_stats_type]  DEFAULT ((0)) FOR [employment_stats_type]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_featued_careers_type]  DEFAULT ((0)) FOR [featured_careers_type]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_company_connect_type]  DEFAULT ((0)) FOR [company_connect_type]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_cool_careers_type]  DEFAULT ((0)) FOR [cool_careers_type]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_local_links_type]  DEFAULT ((0)) FOR [local_links_type]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_disable_Quiz]  DEFAULT ((0)) FOR [disable_quiz]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_disable_career_journal]  DEFAULT ((0)) FOR [disable_career_journal]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_disable_career_journal1]  DEFAULT ((0)) FOR [disable_password_change]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_disable_username_change]  DEFAULT ((0)) FOR [disable_username_change]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_logout_type_1]  DEFAULT ((1)) FOR [logout_type]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Tools_Post_Secondary]  DEFAULT ((1)) FOR [nav_Tools_Post_Secondary]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Tools_Goals]  DEFAULT ((1)) FOR [nav_Tools_Goals]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Admin_Local_Jobs]  DEFAULT ((1)) FOR [nav_Admin_Local_Jobs]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_Tools_Resume2]  DEFAULT ((0)) FOR [nav_Tools_Resume2]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_jobs_internships]  DEFAULT ((1)) FOR [nav_jobs_internships]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_jobs_wblboard]  DEFAULT ((1)) FOR [nav_jobs_wblboard]
GO
ALTER TABLE [dbo].[site_settings] ADD  CONSTRAINT [DF_site_settings_nav_college_scholarship]  DEFAULT ((1)) FOR [nav_college_scholarship]
GO
ALTER TABLE [dbo].[site_token] ADD  CONSTRAINT [DF_site_token_site_key]  DEFAULT (newid()) FOR [token]
GO
ALTER TABLE [dbo].[site_token] ADD  CONSTRAINT [DF_site_token_set_timestamp]  DEFAULT (getdate()) FOR [set_timestamp]
GO
ALTER TABLE [dbo].[success_stories] ADD  CONSTRAINT [DF_success_stories_is_published]  DEFAULT ((0)) FOR [is_published]
GO
ALTER TABLE [dbo].[uar_sync_processes] ADD  CONSTRAINT [DF__uar_sync___creat__363E82FC]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[uar_sync_processes] ADD  CONSTRAINT [DF__uar_sync___keepa__3732A735]  DEFAULT (getdate()) FOR [keepalive_at]
GO
ALTER TABLE [dbo].[uar_sync_processes] ADD  CONSTRAINT [DF__uar_sync___proce__3826CB6E]  DEFAULT ((0)) FOR [process_killed]
GO
ALTER TABLE [dbo].[uar_sync_processes] ADD  CONSTRAINT [DF__uar_sync___accou__391AEFA7]  DEFAULT ((0)) FOR [account_events_processed]
GO
ALTER TABLE [dbo].[uar_sync_processes] ADD  CONSTRAINT [DF__uar_sync___group__3A0F13E0]  DEFAULT ((0)) FOR [group_events_processed]
GO
ALTER TABLE [dbo].[uar_sync_processes] ADD  CONSTRAINT [DF__uar_sync___user___3B033819]  DEFAULT ((0)) FOR [user_events_processed]
GO
ALTER TABLE [dbo].[uar_sync_processes] ADD  CONSTRAINT [DF__uar_sync___total__3BF75C52]  DEFAULT ((0)) FOR [total_events_processed]
GO
ALTER TABLE [dbo].[uar_sync_processes] ADD  CONSTRAINT [DF__uar_sync___numbe__3CEB808B]  DEFAULT ((0)) FOR [number_of_errors]
GO
ALTER TABLE [dbo].[uar_sync_processes] ADD  CONSTRAINT [DF__uar_sync___total__3DDFA4C4]  DEFAULT ((0)) FOR [total_uar_events_requests]
GO
ALTER TABLE [dbo].[ui_carousels] ADD  CONSTRAINT [DF__dashboard__creat__48DC5624]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ui_carousels] ADD  CONSTRAINT [DF__dashboard__updat__49D07A5D]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[ui_carousels_slides] ADD  CONSTRAINT [DF__ui_carous__creat__4F544989]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ui_carousels_slides] ADD  CONSTRAINT [DF__ui_carous__updat__50486DC2]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[ui_slides] ADD  CONSTRAINT [DF__dashboard__creat__283A7C68]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ui_slides] ADD  CONSTRAINT [DF__dashboard__updat__292EA0A1]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[ui_slides_items] ADD  CONSTRAINT [DF__dashboard__creat__5DD7730A]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ui_slides_items] ADD  CONSTRAINT [DF__dashboard__updat__5ECB9743]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[univ_master_validator] ADD  CONSTRAINT [DF_univ_master_validator_guid]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[univ_master_validator] ADD  CONSTRAINT [DF_univ_master_validator_start_date]  DEFAULT (getdate()) FOR [start_date]
GO
ALTER TABLE [dbo].[univ_master_validator] ADD  CONSTRAINT [DF_univ_master_validator_end_date]  DEFAULT (getdate()) FOR [end_date]
GO
ALTER TABLE [dbo].[usage_details] ADD  CONSTRAINT [DF_usage_details_last_page]  DEFAULT ((0)) FOR [lastPage]
GO
ALTER TABLE [dbo].[usage_video_lifeskill_log] ADD  CONSTRAINT [DF__usage_vid__date___5AD7D618]  DEFAULT (getdate()) FOR [date_watched]
GO
ALTER TABLE [dbo].[usage_video_progress] ADD  CONSTRAINT [DF_usage_video_progress_seconds]  DEFAULT ((0)) FOR [seconds]
GO
ALTER TABLE [dbo].[usage_video_progress] ADD  CONSTRAINT [DF_usage_video_progress_pct]  DEFAULT ((0)) FOR [pct]
GO
ALTER TABLE [dbo].[user_career_videos_watched] ADD  CONSTRAINT [DF_user_career_videos_watched_is_qa]  DEFAULT ((0)) FOR [is_qa]
GO
ALTER TABLE [dbo].[user_career_videos_watched] ADD  CONSTRAINT [DF_user_career_videos_watched_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[user_colleges] ADD  CONSTRAINT [DF_user_colleges_2_timestamp]  DEFAULT (getdate()) FOR [timestamp]
GO
ALTER TABLE [dbo].[user_comments] ADD  CONSTRAINT [DF_user_comments_timestamp]  DEFAULT (getdate()) FOR [timestamp]
GO
ALTER TABLE [dbo].[user_EmailValidate] ADD  CONSTRAINT [DF_user_EmailValidate_2_isvalidated]  DEFAULT ((0)) FOR [isvalidated]
GO
ALTER TABLE [dbo].[user_EmailValidate] ADD  CONSTRAINT [DF_user_EmailValidate_2_is_primary]  DEFAULT ((0)) FOR [is_primary]
GO
ALTER TABLE [dbo].[user_EmailValidate] ADD  CONSTRAINT [DF_user_EmailValidate_number_of_emails]  DEFAULT ((0)) FOR [number_of_emails]
GO
ALTER TABLE [dbo].[user_favorites] ADD  CONSTRAINT [DF_user_favorites_timestamp]  DEFAULT (getdate()) FOR [timestamp]
GO
ALTER TABLE [dbo].[user_favorites] ADD  CONSTRAINT [DF_user_favorites_dispOrder]  DEFAULT ((1)) FOR [dispOrder]
GO
ALTER TABLE [dbo].[user_goals] ADD  CONSTRAINT [DF_user_goals_goal_id]  DEFAULT (newid()) FOR [goal_id]
GO
ALTER TABLE [dbo].[user_goals] ADD  CONSTRAINT [DF_user_goals_is_completed]  DEFAULT ((0)) FOR [is_completed]
GO
ALTER TABLE [dbo].[user_goals] ADD  CONSTRAINT [DF_user_goals_date_created]  DEFAULT ((getutcdate() AT TIME ZONE 'UTC')) FOR [date_created]
GO
ALTER TABLE [dbo].[user_goals] ADD  CONSTRAINT [DF_user_goals_archived]  DEFAULT ((0)) FOR [archived]
GO
ALTER TABLE [dbo].[user_goals] ADD  CONSTRAINT [DF_user_goals_updated_at]  DEFAULT ((getutcdate() AT TIME ZONE 'UTC')) FOR [updated_at]
GO
ALTER TABLE [dbo].[user_goals_compiled] ADD  CONSTRAINT [DF_user_goals_compiled_goal_count]  DEFAULT ((0)) FOR [goal_count]
GO
ALTER TABLE [dbo].[user_goals_compiled] ADD  CONSTRAINT [DF_user_goals_compiled_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[user_graph_org] ADD  CONSTRAINT [DF_user_graph_org_guid]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[user_jobs] ADD  CONSTRAINT [DF_user_jobs_timestamp]  DEFAULT (getdate()) FOR [timestamp]
GO
ALTER TABLE [dbo].[user_jobs] ADD  CONSTRAINT [DF_user_jobs_archived]  DEFAULT ((0)) FOR [archived]
GO
ALTER TABLE [dbo].[user_lesson_assignment] ADD  CONSTRAINT [DF_user_lesson_assignment_progress]  DEFAULT ((0)) FOR [progress]
GO
ALTER TABLE [dbo].[user_lesson_assignment] ADD  CONSTRAINT [DF_user_lesson_assignment_is_submitted]  DEFAULT ((0)) FOR [is_submitted]
GO
ALTER TABLE [dbo].[user_message] ADD  CONSTRAINT [DF_user_message_trashcan]  DEFAULT ((0)) FOR [trashcan]
GO
ALTER TABLE [dbo].[user_message] ADD  CONSTRAINT [DF_user_message_owner_trashcan]  DEFAULT ((0)) FOR [owner_trashcan]
GO
ALTER TABLE [dbo].[user_page_views] ADD  CONSTRAINT [DF_user_page_views_career_profile]  DEFAULT ((0)) FOR [career_profile]
GO
ALTER TABLE [dbo].[user_page_views] ADD  CONSTRAINT [DF_user_page_views_postsecondary_profile]  DEFAULT ((0)) FOR [postsecondary_profile]
GO
ALTER TABLE [dbo].[user_page_views] ADD  CONSTRAINT [DF_user_page_views_employability_profile]  DEFAULT ((0)) FOR [employability_profile]
GO
ALTER TABLE [dbo].[user_plan_postsecondary] ADD  CONSTRAINT [DF_user_plan_postsecondary_is_completed]  DEFAULT ((0)) FOR [is_completed]
GO
ALTER TABLE [dbo].[user_plan_postsecondary] ADD  CONSTRAINT [DF_user_plan_postsecondary_completed_education]  DEFAULT ((0)) FOR [completed_education]
GO
ALTER TABLE [dbo].[user_plan_postsecondary] ADD  CONSTRAINT [DF_user_plan_postsecondary_completed_schools]  DEFAULT ((0)) FOR [completed_schools]
GO
ALTER TABLE [dbo].[user_plan_postsecondary] ADD  CONSTRAINT [DF_user_plan_postsecondary_completed_careers]  DEFAULT ((0)) FOR [completed_careers]
GO
ALTER TABLE [dbo].[user_plan_postsecondary] ADD  CONSTRAINT [DF_user_plan_postsecondary_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[user_plan_postsecondary] ADD  CONSTRAINT [DF_user_plan_postsecondary_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[user_queue] ADD  CONSTRAINT [DF_user_queue_timestamp]  DEFAULT (getdate()) FOR [timestamp]
GO
ALTER TABLE [dbo].[user_queue] ADD  CONSTRAINT [DF_user_queue_dispOrder]  DEFAULT ((1)) FOR [dispOrder]
GO
ALTER TABLE [dbo].[user_quiz] ADD  CONSTRAINT [DF_user_quiz_instance_guid]  DEFAULT (newid()) FOR [instance_guid]
GO
ALTER TABLE [dbo].[user_quiz] ADD  CONSTRAINT [DF_user_quiz_timestamp]  DEFAULT (getdate()) FOR [timestamp]
GO
ALTER TABLE [dbo].[user_quiz] ADD  CONSTRAINT [DF_user_quiz_dispOrder]  DEFAULT ((1)) FOR [dispOrder]
GO
ALTER TABLE [dbo].[user_quiz] ADD  CONSTRAINT [DF_user_quiz_legacy_convert]  DEFAULT ((0)) FOR [legacy_convert]
GO
ALTER TABLE [dbo].[user_roles] ADD  CONSTRAINT [DF_user_roles_delete_users]  DEFAULT ((1)) FOR [delete_users]
GO
ALTER TABLE [dbo].[user_roles] ADD  CONSTRAINT [DF_user_roles_set_myplan]  DEFAULT ((0)) FOR [set_myplan]
GO
ALTER TABLE [dbo].[user_roles] ADD  CONSTRAINT [DF_user_roles_admin_user_accounts]  DEFAULT ((1)) FOR [admin_user_accounts]
GO
ALTER TABLE [dbo].[user_search_history] ADD  CONSTRAINT [DF_user_search_history_guid]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[user_search_history] ADD  CONSTRAINT [DF_user_search_history_dateTime]  DEFAULT (getdate()) FOR [dateTime]
GO
ALTER TABLE [dbo].[user_vjsadmin] ADD  CONSTRAINT [DF_user_vjsadmin_customer_service]  DEFAULT ((0)) FOR [customer_service]
GO
ALTER TABLE [dbo].[user_vjsadmin] ADD  CONSTRAINT [DF_user_vjsadmin_sales]  DEFAULT ((0)) FOR [sales]
GO
ALTER TABLE [dbo].[user_vjsadmin] ADD  CONSTRAINT [DF_user_vjsadmin_tech]  DEFAULT ((0)) FOR [tech]
GO
ALTER TABLE [dbo].[user_vjsadmin] ADD  CONSTRAINT [DF_user_vjsadmin_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[user_vjsadmin] ADD  CONSTRAINT [DF_user_vjsadmin_date_modified]  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_uid_1]  DEFAULT (newid()) FOR [uid]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_role_id]  DEFAULT ((1)) FOR [role_id]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_edu_level_confirm]  DEFAULT ((0)) FOR [edu_level_confirm]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_date_entered]  DEFAULT (getdate()) FOR [date_entered]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_archived]  DEFAULT ((0)) FOR [archived]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_is_portal]  DEFAULT ((0)) FOR [is_portal]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_date_last_modified]  DEFAULT (getdate()) FOR [date_last_modified]
GO
ALTER TABLE [dbo].[userVideoHistory] ADD  CONSTRAINT [DF_userVideoHistory_main_watched]  DEFAULT (0) FOR [mainWatched]
GO
ALTER TABLE [dbo].[userVideoHistory] ADD  CONSTRAINT [DF_userVideoHistory_qa1_watched]  DEFAULT (0) FOR [qa1Watched]
GO
ALTER TABLE [dbo].[userVideoHistory] ADD  CONSTRAINT [DF_userVideoHistory_qa2_watched]  DEFAULT (0) FOR [qa2Watched]
GO
ALTER TABLE [dbo].[userVideoHistory] ADD  CONSTRAINT [DF_userVideoHistory_qa3_watched]  DEFAULT (0) FOR [qa3Watched]
GO
ALTER TABLE [dbo].[userVideoHistory] ADD  CONSTRAINT [DF_userVideoHistory_qa4_watched]  DEFAULT (0) FOR [qa4Watched]
GO
ALTER TABLE [dbo].[userVideoHistory] ADD  CONSTRAINT [DF_userVideoHistory_qa5_watched]  DEFAULT (0) FOR [qa5Watched]
GO
ALTER TABLE [dbo].[userVideoHistory] ADD  CONSTRAINT [DF_userVideoHistory_qa6_watched]  DEFAULT (0) FOR [qa6Watched]
GO
ALTER TABLE [dbo].[userVideoHistory] ADD  CONSTRAINT [DF_userVideoHistory_qa7_watched]  DEFAULT (0) FOR [qa7Watched]
GO
ALTER TABLE [dbo].[userVideoHistory] ADD  CONSTRAINT [DF_userVideoHistory_qa8_watched]  DEFAULT (0) FOR [qa8Watched]
GO
ALTER TABLE [dbo].[userVideoHistory] ADD  CONSTRAINT [DF_userVideoHistory_qa9_watched]  DEFAULT (0) FOR [qa9Watched]
GO
ALTER TABLE [dbo].[userVideoHistory] ADD  CONSTRAINT [DF_userVideoHistory_qa10_watched]  DEFAULT (0) FOR [qa10Watched]
GO
ALTER TABLE [dbo].[userVideoHistory] ADD  CONSTRAINT [DF_userVideoHistory_courseCompleted]  DEFAULT (0) FOR [courseCompleted]
GO
ALTER TABLE [dbo].[utility_count_queue] ADD  CONSTRAINT [DF_utility_count_queue_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[UX_INST] ADD  CONSTRAINT [DF_UX_INST_2013_geo_process]  DEFAULT ((0)) FOR [geo_process]
GO
ALTER TABLE [dbo].[vjs_audit] ADD  CONSTRAINT [DF_vjs_audit_date]  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_LicenseTypeID]  DEFAULT ((3)) FOR [LicenseTypeID]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_activationCode]  DEFAULT (newid()) FOR [activationCode]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_active]  DEFAULT ((0)) FOR [active]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_date_entered]  DEFAULT (getdate()) FOR [date_entered]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_AccountCount]  DEFAULT ((0)) FOR [AccountCount]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_AccountNumberOverride]  DEFAULT ((1)) FOR [AccountNumberOverride]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_disableLinks]  DEFAULT ((0)) FOR [disableLinks]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_disablePasswordChange]  DEFAULT ((0)) FOR [disablePasswordChange]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_disableUserNameChange]  DEFAULT ((0)) FOR [disableUserNameChange]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_isPAGateway]  DEFAULT ((0)) FOR [isPAGateway]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_PAGatewayActive]  DEFAULT ((0)) FOR [PAGatewayActive]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_license_type_id]  DEFAULT ((2)) FOR [license_type_id]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_sso_type_users]  DEFAULT ((101)) FOR [sso_type_users]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_sso_type_admins]  DEFAULT ((101)) FOR [sso_type_admins]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_searchable]  DEFAULT ((1)) FOR [searchable]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_account_creation_active]  DEFAULT ((0)) FOR [account_creation_active]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_user_count]  DEFAULT ((0)) FOR [user_count]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_admin_count]  DEFAULT ((0)) FOR [admin_count]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_group_count]  DEFAULT ((0)) FOR [group_count]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_cp_enabled]  DEFAULT ((0)) FOR [cp_enabled]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_cp_previous_year_enabled]  DEFAULT ((0)) FOR [cp_previous_year_enabled]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_cp_freshman_year_enabled]  DEFAULT ((0)) FOR [cp_freshman_year_enabled]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_cp_sophomore_year_enabled]  DEFAULT ((0)) FOR [cp_sophomore_year_enabled]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_cp_additional_years_custom]  DEFAULT ((0)) FOR [cp_additional_years_custom]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_cp_notification_emails]  DEFAULT ((0)) FOR [cp_notification_emails]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_is_hybrid_login]  DEFAULT ((0)) FOR [sso_is_user_hybrid_login]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_sso_is_admin_hybrid_login]  DEFAULT ((0)) FOR [sso_is_admin_hybrid_login]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_use_district_features]  DEFAULT ((1)) FOR [use_district_features]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF_vjs_license_sso_redirect_commons]  DEFAULT ((0)) FOR [sso_redirect_commons]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF__vjs_licen__white__05113BBC]  DEFAULT ((0)) FOR [white_label]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF__vjs_licen__white__78AB64D7]  DEFAULT (NULL) FOR [white_label_image_link]
GO
ALTER TABLE [dbo].[vjs_license] ADD  CONSTRAINT [DF__vjs_licen__white__799F8910]  DEFAULT (NULL) FOR [white_label_image]
GO
ALTER TABLE [dbo].[vjs_license_assessment] ADD  CONSTRAINT [DF_vjs_license_assessment_2_transaction_date]  DEFAULT (getdate()) FOR [transaction_date]
GO
ALTER TABLE [dbo].[vjs_license_assessment_master] ADD  CONSTRAINT [DF_vjs_license_assessment_master_count]  DEFAULT ((0)) FOR [count]
GO
ALTER TABLE [dbo].[vjs_license_assessment_master] ADD  CONSTRAINT [DF_vjs_license_assessment_master_used]  DEFAULT ((0)) FOR [used]
GO
ALTER TABLE [dbo].[vjs_license_clever_link] ADD  CONSTRAINT [DF_vjs_license_clever_link_is_multiple]  DEFAULT ((0)) FOR [is_multiple]
GO
ALTER TABLE [dbo].[vjs_license_grade] ADD  CONSTRAINT [DF_vjs_license_grade_cp_isEnabled]  DEFAULT ((0)) FOR [cp_isEnabled]
GO
ALTER TABLE [dbo].[vjs_license_grade] ADD  CONSTRAINT [DF_vjs_license_grade_cp_hasStudentAccess]  DEFAULT ((0)) FOR [cp_hasStudentAccess]
GO
ALTER TABLE [dbo].[admin_assignments_access]  WITH CHECK ADD  CONSTRAINT [FK_admin_assignments_access_assignment] FOREIGN KEY([assignment_id])
REFERENCES [dbo].[lesson_assignment] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_assignments_access] CHECK CONSTRAINT [FK_admin_assignments_access_assignment]
GO
ALTER TABLE [dbo].[admin_assignments_access]  WITH CHECK ADD  CONSTRAINT [FK_admin_assignments_access_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_assignments_access] CHECK CONSTRAINT [FK_admin_assignments_access_user]
GO
ALTER TABLE [dbo].[assessment_oap_results]  WITH CHECK ADD  CONSTRAINT [FK_assessment_oap_results_inv_test_instance] FOREIGN KEY([instance_guid])
REFERENCES [dbo].[inv_test_instance] ([guid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[assessment_oap_results] CHECK CONSTRAINT [FK_assessment_oap_results_inv_test_instance]
GO
ALTER TABLE [dbo].[assignment_comments]  WITH CHECK ADD  CONSTRAINT [assignment_comments_FK] FOREIGN KEY([user_assignment_id])
REFERENCES [dbo].[user_lesson_assignment] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[assignment_comments] CHECK CONSTRAINT [assignment_comments_FK]
GO
ALTER TABLE [dbo].[bulk_assign_lesson_template_lessons]  WITH CHECK ADD  CONSTRAINT [FK_bulk_assign_lesson_template_lessons_bulk_assign_lesson_templates] FOREIGN KEY([bulk_assign_lesson_template_id])
REFERENCES [dbo].[bulk_assign_lesson_templates] ([id])
GO
ALTER TABLE [dbo].[bulk_assign_lesson_template_lessons] CHECK CONSTRAINT [FK_bulk_assign_lesson_template_lessons_bulk_assign_lesson_templates]
GO
ALTER TABLE [dbo].[bulk_assign_lesson_template_lessons]  WITH CHECK ADD  CONSTRAINT [FK_bulk_assign_lesson_template_lessons_lessons] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[lessons] ([id])
GO
ALTER TABLE [dbo].[bulk_assign_lesson_template_lessons] CHECK CONSTRAINT [FK_bulk_assign_lesson_template_lessons_lessons]
GO
ALTER TABLE [dbo].[bulk_assign_lesson_template_managers]  WITH CHECK ADD  CONSTRAINT [FK_bulk_assign_lesson_template_managers_bulk_assign_lesson_templates] FOREIGN KEY([bulk_assign_lesson_template_id])
REFERENCES [dbo].[bulk_assign_lesson_templates] ([id])
GO
ALTER TABLE [dbo].[bulk_assign_lesson_template_managers] CHECK CONSTRAINT [FK_bulk_assign_lesson_template_managers_bulk_assign_lesson_templates]
GO
ALTER TABLE [dbo].[bulk_assign_lesson_template_managers]  WITH CHECK ADD  CONSTRAINT [FK_bulk_assign_lesson_template_managers_users] FOREIGN KEY([manager_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[bulk_assign_lesson_template_managers] CHECK CONSTRAINT [FK_bulk_assign_lesson_template_managers_users]
GO
ALTER TABLE [dbo].[bulk_assign_lesson_templates]  WITH CHECK ADD  CONSTRAINT [FK_bulk_assign_lesson_templates_users] FOREIGN KEY([primary_manager_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[bulk_assign_lesson_templates] CHECK CONSTRAINT [FK_bulk_assign_lesson_templates_users]
GO
ALTER TABLE [dbo].[bulk_assign_lesson_templates]  WITH CHECK ADD  CONSTRAINT [FK_bulk_assign_lesson_templates_vjs_license] FOREIGN KEY([license_id])
REFERENCES [dbo].[vjs_license] ([LicenseID])
GO
ALTER TABLE [dbo].[bulk_assign_lesson_templates] CHECK CONSTRAINT [FK_bulk_assign_lesson_templates_vjs_license]
GO
ALTER TABLE [dbo].[ca_applicant_members]  WITH CHECK ADD  CONSTRAINT [FK_ca_applicant_members_ca_members] FOREIGN KEY([member_id])
REFERENCES [dbo].[ca_members] ([memberId])
GO
ALTER TABLE [dbo].[ca_applicant_members] CHECK CONSTRAINT [FK_ca_applicant_members_ca_members]
GO
ALTER TABLE [dbo].[ca_member_deadlines]  WITH CHECK ADD  CONSTRAINT [FK_ca_member_deadlines_ca_members] FOREIGN KEY([memberId])
REFERENCES [dbo].[ca_members] ([memberId])
GO
ALTER TABLE [dbo].[ca_member_deadlines] CHECK CONSTRAINT [FK_ca_member_deadlines_ca_members]
GO
ALTER TABLE [dbo].[ca_school_profiles]  WITH CHECK ADD  CONSTRAINT [license_id_fk] FOREIGN KEY([license_id])
REFERENCES [dbo].[vjs_license] ([LicenseID])
GO
ALTER TABLE [dbo].[ca_school_profiles] CHECK CONSTRAINT [license_id_fk]
GO
ALTER TABLE [dbo].[dashboard_custom_content_relations]  WITH CHECK ADD  CONSTRAINT [dashboard_custom_content_relations_dashboard_custom_content_FK] FOREIGN KEY([content_id])
REFERENCES [dbo].[dashboard_custom_content] ([id])
GO
ALTER TABLE [dbo].[dashboard_custom_content_relations] CHECK CONSTRAINT [dashboard_custom_content_relations_dashboard_custom_content_FK]
GO
ALTER TABLE [dbo].[district_features]  WITH CHECK ADD  CONSTRAINT [FK_district_features_districts] FOREIGN KEY([district_id])
REFERENCES [dbo].[districts] ([district_id])
GO
ALTER TABLE [dbo].[district_features] CHECK CONSTRAINT [FK_district_features_districts]
GO
ALTER TABLE [dbo].[district_features]  WITH NOCHECK ADD  CONSTRAINT [FK_district_features_features] FOREIGN KEY([feature_id])
REFERENCES [dbo].[features] ([id])
GO
ALTER TABLE [dbo].[district_features] NOCHECK CONSTRAINT [FK_district_features_features]
GO
ALTER TABLE [dbo].[district_products]  WITH CHECK ADD  CONSTRAINT [FK_district_product_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[district_products] CHECK CONSTRAINT [FK_district_product_products]
GO
ALTER TABLE [dbo].[district_products]  WITH CHECK ADD  CONSTRAINT [FK_district_products_districts] FOREIGN KEY([district_id])
REFERENCES [dbo].[districts] ([district_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[district_products] CHECK CONSTRAINT [FK_district_products_districts]
GO
ALTER TABLE [dbo].[error_report_throttling]  WITH CHECK ADD  CONSTRAINT [error_report_throttling_FK] FOREIGN KEY([last_user_id])
REFERENCES [dbo].[users] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[error_report_throttling] CHECK CONSTRAINT [error_report_throttling_FK]
GO
ALTER TABLE [dbo].[etx_transcripts]  WITH CHECK ADD  CONSTRAINT [FK_etx_transcripts_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[etx_transcripts] CHECK CONSTRAINT [FK_etx_transcripts_users]
GO
ALTER TABLE [dbo].[etx_transcripts]  WITH CHECK ADD  CONSTRAINT [FK_etx_transcripts_vjs_license] FOREIGN KEY([license_id])
REFERENCES [dbo].[vjs_license] ([LicenseID])
GO
ALTER TABLE [dbo].[etx_transcripts] CHECK CONSTRAINT [FK_etx_transcripts_vjs_license]
GO
ALTER TABLE [dbo].[feature_licenses]  WITH NOCHECK ADD  CONSTRAINT [FK_feature_licenses_features] FOREIGN KEY([feature_id])
REFERENCES [dbo].[features] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[feature_licenses] NOCHECK CONSTRAINT [FK_feature_licenses_features]
GO
ALTER TABLE [dbo].[feature_licenses]  WITH CHECK ADD  CONSTRAINT [FK_feature_licenses_vjs_license] FOREIGN KEY([license_id])
REFERENCES [dbo].[vjs_license] ([LicenseID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[feature_licenses] CHECK CONSTRAINT [FK_feature_licenses_vjs_license]
GO
ALTER TABLE [dbo].[feature_products]  WITH NOCHECK ADD  CONSTRAINT [FK_feature_products_features] FOREIGN KEY([feature_id])
REFERENCES [dbo].[features] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[feature_products] NOCHECK CONSTRAINT [FK_feature_products_features]
GO
ALTER TABLE [dbo].[feature_products]  WITH CHECK ADD  CONSTRAINT [FK_feature_products_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[feature_products] CHECK CONSTRAINT [FK_feature_products_products]
GO
ALTER TABLE [dbo].[flexcourse_flexunit]  WITH CHECK ADD  CONSTRAINT [FK_flexcourse_flexunit_flexcourses] FOREIGN KEY([flexcourse_id])
REFERENCES [dbo].[flexcourses] ([id])
GO
ALTER TABLE [dbo].[flexcourse_flexunit] CHECK CONSTRAINT [FK_flexcourse_flexunit_flexcourses]
GO
ALTER TABLE [dbo].[flexcourse_flexunit]  WITH CHECK ADD  CONSTRAINT [FK_flexcourse_flexunit_flexunits] FOREIGN KEY([flexunit_id])
REFERENCES [dbo].[flexunits] ([id])
GO
ALTER TABLE [dbo].[flexcourse_flexunit] CHECK CONSTRAINT [FK_flexcourse_flexunit_flexunits]
GO
ALTER TABLE [dbo].[flexunit_lesson]  WITH CHECK ADD  CONSTRAINT [FK_flexunit_lessons_flexunits] FOREIGN KEY([flexunit_id])
REFERENCES [dbo].[flexunits] ([id])
GO
ALTER TABLE [dbo].[flexunit_lesson] CHECK CONSTRAINT [FK_flexunit_lessons_flexunits]
GO
ALTER TABLE [dbo].[flexunit_lesson]  WITH CHECK ADD  CONSTRAINT [FK_flexunit_lessons_lessons] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[lessons] ([id])
GO
ALTER TABLE [dbo].[flexunit_lesson] CHECK CONSTRAINT [FK_flexunit_lessons_lessons]
GO
ALTER TABLE [dbo].[inv_answers]  WITH CHECK ADD  CONSTRAINT [FK_inv_answers_inv_segments] FOREIGN KEY([segment_id])
REFERENCES [dbo].[inv_segments] ([id])
GO
ALTER TABLE [dbo].[inv_answers] CHECK CONSTRAINT [FK_inv_answers_inv_segments]
GO
ALTER TABLE [dbo].[inv_answers]  WITH CHECK ADD  CONSTRAINT [FK_inv_answers_inv_test_instance] FOREIGN KEY([test_instance_id])
REFERENCES [dbo].[inv_test_instance] ([id])
GO
ALTER TABLE [dbo].[inv_answers] CHECK CONSTRAINT [FK_inv_answers_inv_test_instance]
GO
ALTER TABLE [dbo].[inv_answers]  WITH CHECK ADD  CONSTRAINT [FK_inv_answers_invQuestions] FOREIGN KEY([question_id])
REFERENCES [dbo].[invQuestions] ([questionId])
GO
ALTER TABLE [dbo].[inv_answers] CHECK CONSTRAINT [FK_inv_answers_invQuestions]
GO
ALTER TABLE [dbo].[inv_available_answers]  WITH CHECK ADD  CONSTRAINT [FK_inv_available_answers_invQuestions] FOREIGN KEY([question_id])
REFERENCES [dbo].[invQuestions] ([questionId])
GO
ALTER TABLE [dbo].[inv_available_answers] CHECK CONSTRAINT [FK_inv_available_answers_invQuestions]
GO
ALTER TABLE [dbo].[inv_segments]  WITH CHECK ADD  CONSTRAINT [FK_inv_segments_invTests] FOREIGN KEY([test_id])
REFERENCES [dbo].[invTests] ([testId])
GO
ALTER TABLE [dbo].[inv_segments] CHECK CONSTRAINT [FK_inv_segments_invTests]
GO
ALTER TABLE [dbo].[inv_test_instance]  WITH CHECK ADD  CONSTRAINT [FK_inv_test_instance_invTests] FOREIGN KEY([test_id])
REFERENCES [dbo].[invTests] ([testId])
GO
ALTER TABLE [dbo].[inv_test_instance] CHECK CONSTRAINT [FK_inv_test_instance_invTests]
GO
ALTER TABLE [dbo].[inv_test_instance]  WITH NOCHECK ADD  CONSTRAINT [FK_inv_test_instance_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[inv_test_instance] NOCHECK CONSTRAINT [FK_inv_test_instance_users]
GO
ALTER TABLE [dbo].[invQuestions]  WITH CHECK ADD  CONSTRAINT [FK_invQuestions_inv_question_types] FOREIGN KEY([type])
REFERENCES [dbo].[inv_question_types] ([id])
GO
ALTER TABLE [dbo].[invQuestions] CHECK CONSTRAINT [FK_invQuestions_inv_question_types]
GO
ALTER TABLE [dbo].[invQuestions]  WITH CHECK ADD  CONSTRAINT [FK_invQuestions_invQuestions] FOREIGN KEY([segment_id])
REFERENCES [dbo].[inv_segments] ([id])
GO
ALTER TABLE [dbo].[invQuestions] CHECK CONSTRAINT [FK_invQuestions_invQuestions]
GO
ALTER TABLE [dbo].[invTests]  WITH CHECK ADD  CONSTRAINT [FK_invTests_features] FOREIGN KEY([feature_id])
REFERENCES [dbo].[features] ([id])
GO
ALTER TABLE [dbo].[invTests] CHECK CONSTRAINT [FK_invTests_features]
GO
ALTER TABLE [dbo].[jobs_local_licenses]  WITH CHECK ADD  CONSTRAINT [FK_jobs_local_licenses_jobs_local] FOREIGN KEY([job_id])
REFERENCES [dbo].[jobs_local] ([job_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[jobs_local_licenses] CHECK CONSTRAINT [FK_jobs_local_licenses_jobs_local]
GO
ALTER TABLE [dbo].[kpi_data_sync]  WITH CHECK ADD  CONSTRAINT [kpi_data_sync_status_FK] FOREIGN KEY([status_id])
REFERENCES [dbo].[kpi_data_sync_status] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[kpi_data_sync] CHECK CONSTRAINT [kpi_data_sync_status_FK]
GO
ALTER TABLE [dbo].[kpi_tracking]  WITH CHECK ADD  CONSTRAINT [kpi_tracking_district_FK] FOREIGN KEY([district_id])
REFERENCES [dbo].[districts] ([district_id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[kpi_tracking] CHECK CONSTRAINT [kpi_tracking_district_FK]
GO
ALTER TABLE [dbo].[kpi_tracking]  WITH CHECK ADD  CONSTRAINT [kpi_tracking_FK] FOREIGN KEY([type_id])
REFERENCES [dbo].[kpi_tracking_type] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[kpi_tracking] CHECK CONSTRAINT [kpi_tracking_FK]
GO
ALTER TABLE [dbo].[kpi_tracking]  WITH CHECK ADD  CONSTRAINT [kpi_tracking_locallink_FK] FOREIGN KEY([local_link_id])
REFERENCES [dbo].[local_links] ([local_link_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[kpi_tracking] CHECK CONSTRAINT [kpi_tracking_locallink_FK]
GO
ALTER TABLE [dbo].[kpi_tracking]  WITH CHECK ADD  CONSTRAINT [kpi_tracking_scholarship_FK] FOREIGN KEY([scholarship_id])
REFERENCES [dbo].[pd_formatted_scholarships] ([id])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[kpi_tracking] CHECK CONSTRAINT [kpi_tracking_scholarship_FK]
GO
ALTER TABLE [dbo].[kpi_tracking]  WITH CHECK ADD  CONSTRAINT [kpi_tracking_wbl_FK] FOREIGN KEY([wbl_id])
REFERENCES [dbo].[jobs_local] ([job_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[kpi_tracking] CHECK CONSTRAINT [kpi_tracking_wbl_FK]
GO
ALTER TABLE [dbo].[lesson_assignment]  WITH CHECK ADD  CONSTRAINT [FK_lesson_assignment_flexcourses] FOREIGN KEY([course_id])
REFERENCES [dbo].[flexcourses] ([id])
GO
ALTER TABLE [dbo].[lesson_assignment] CHECK CONSTRAINT [FK_lesson_assignment_flexcourses]
GO
ALTER TABLE [dbo].[lesson_assignment]  WITH CHECK ADD  CONSTRAINT [FK_lesson_assignment_flexunits] FOREIGN KEY([unit_id])
REFERENCES [dbo].[flexunits] ([id])
GO
ALTER TABLE [dbo].[lesson_assignment] CHECK CONSTRAINT [FK_lesson_assignment_flexunits]
GO
ALTER TABLE [dbo].[lesson_assignment]  WITH CHECK ADD  CONSTRAINT [FK_lesson_assignment_lessons] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[lessons] ([id])
GO
ALTER TABLE [dbo].[lesson_assignment] CHECK CONSTRAINT [FK_lesson_assignment_lessons]
GO
ALTER TABLE [dbo].[lesson_document_tags]  WITH CHECK ADD  CONSTRAINT [FK_lesson_document_tags_lesson_documents] FOREIGN KEY([lesson_document_id])
REFERENCES [dbo].[lesson_documents] ([id])
GO
ALTER TABLE [dbo].[lesson_document_tags] CHECK CONSTRAINT [FK_lesson_document_tags_lesson_documents]
GO
ALTER TABLE [dbo].[lesson_segment]  WITH CHECK ADD  CONSTRAINT [FK_lesson_segment_lessons] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[lessons] ([id])
GO
ALTER TABLE [dbo].[lesson_segment] CHECK CONSTRAINT [FK_lesson_segment_lessons]
GO
ALTER TABLE [dbo].[lesson_segment]  WITH CHECK ADD  CONSTRAINT [FK_lesson_segment_segment_types] FOREIGN KEY([segment_type_id])
REFERENCES [dbo].[segment_types] ([id])
GO
ALTER TABLE [dbo].[lesson_segment] CHECK CONSTRAINT [FK_lesson_segment_segment_types]
GO
ALTER TABLE [dbo].[lessons_cluster]  WITH CHECK ADD  CONSTRAINT [FK_lessons_cluster_cluster] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lessons_cluster] CHECK CONSTRAINT [FK_lessons_cluster_cluster]
GO
ALTER TABLE [dbo].[lessons_cluster]  WITH CHECK ADD  CONSTRAINT [FK_lessons_cluster_lesson] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[lessons] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lessons_cluster] CHECK CONSTRAINT [FK_lessons_cluster_lesson]
GO
ALTER TABLE [dbo].[license_etxsettings]  WITH CHECK ADD  CONSTRAINT [license_etxsettings_FK] FOREIGN KEY([license_id])
REFERENCES [dbo].[vjs_license] ([LicenseID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[license_etxsettings] CHECK CONSTRAINT [license_etxsettings_FK]
GO
ALTER TABLE [dbo].[license_products]  WITH CHECK ADD  CONSTRAINT [FK_license_products_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[license_products] CHECK CONSTRAINT [FK_license_products_products]
GO
ALTER TABLE [dbo].[license_products]  WITH CHECK ADD  CONSTRAINT [FK_license_products_vjs_license] FOREIGN KEY([license_id])
REFERENCES [dbo].[vjs_license] ([LicenseID])
GO
ALTER TABLE [dbo].[license_products] CHECK CONSTRAINT [FK_license_products_vjs_license]
GO
ALTER TABLE [dbo].[life_skills_journal]  WITH CHECK ADD  CONSTRAINT [FK_life_skills_journal_lifeskill_videos] FOREIGN KEY([lifeskill_id])
REFERENCES [dbo].[lifeskill_videos] ([id])
GO
ALTER TABLE [dbo].[life_skills_journal] CHECK CONSTRAINT [FK_life_skills_journal_lifeskill_videos]
GO
ALTER TABLE [dbo].[life_skills_journal]  WITH CHECK ADD  CONSTRAINT [FK_life_skills_journal_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[life_skills_journal] CHECK CONSTRAINT [FK_life_skills_journal_users]
GO
ALTER TABLE [dbo].[local_links_schools]  WITH CHECK ADD  CONSTRAINT [FK_local_links_schools_local_links] FOREIGN KEY([local_link_id])
REFERENCES [dbo].[local_links] ([local_link_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[local_links_schools] CHECK CONSTRAINT [FK_local_links_schools_local_links]
GO
ALTER TABLE [dbo].[onet_abilities]  WITH CHECK ADD  CONSTRAINT [FK__onet_abil__eleme__4E8020E1] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_abilities] CHECK CONSTRAINT [FK__onet_abil__eleme__4E8020E1]
GO
ALTER TABLE [dbo].[onet_abilities]  WITH CHECK ADD  CONSTRAINT [FK__onet_abil__onets__4D8BFCA8] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_abilities] CHECK CONSTRAINT [FK__onet_abil__onets__4D8BFCA8]
GO
ALTER TABLE [dbo].[onet_abilities]  WITH CHECK ADD  CONSTRAINT [FK__onet_abil__scale__4F74451A] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_abilities] CHECK CONSTRAINT [FK__onet_abil__scale__4F74451A]
GO
ALTER TABLE [dbo].[onet_abilities_to_work_activities]  WITH CHECK ADD  CONSTRAINT [FK__onet_abil__abili__4D56F27E] FOREIGN KEY([abilities_element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_abilities_to_work_activities] CHECK CONSTRAINT [FK__onet_abil__abili__4D56F27E]
GO
ALTER TABLE [dbo].[onet_abilities_to_work_activities]  WITH CHECK ADD  CONSTRAINT [FK__onet_abil__work___4E4B16B7] FOREIGN KEY([work_activities_element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_abilities_to_work_activities] CHECK CONSTRAINT [FK__onet_abil__work___4E4B16B7]
GO
ALTER TABLE [dbo].[onet_abilities_to_work_context]  WITH CHECK ADD  CONSTRAINT [FK__onet_abil__abili__3B384243] FOREIGN KEY([abilities_element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_abilities_to_work_context] CHECK CONSTRAINT [FK__onet_abil__abili__3B384243]
GO
ALTER TABLE [dbo].[onet_abilities_to_work_context]  WITH CHECK ADD  CONSTRAINT [FK__onet_abil__work___3C2C667C] FOREIGN KEY([work_context_element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_abilities_to_work_context] CHECK CONSTRAINT [FK__onet_abil__work___3C2C667C]
GO
ALTER TABLE [dbo].[onet_alternate_titles]  WITH CHECK ADD  CONSTRAINT [FK__onet_alte__onets__31AED809] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_alternate_titles] CHECK CONSTRAINT [FK__onet_alte__onets__31AED809]
GO
ALTER TABLE [dbo].[onet_basic_interests_to_riasec]  WITH CHECK ADD  CONSTRAINT [FK__onet_basi__basic__45B5D0B6] FOREIGN KEY([basic_interests_element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_basic_interests_to_riasec] CHECK CONSTRAINT [FK__onet_basi__basic__45B5D0B6]
GO
ALTER TABLE [dbo].[onet_basic_interests_to_riasec]  WITH CHECK ADD  CONSTRAINT [FK__onet_basi__riase__46A9F4EF] FOREIGN KEY([riasec_element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_basic_interests_to_riasec] CHECK CONSTRAINT [FK__onet_basi__riase__46A9F4EF]
GO
ALTER TABLE [dbo].[onet_dwa_reference]  WITH CHECK ADD  CONSTRAINT [FK__onet_dwa___eleme__2360B8B2] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_dwa_reference] CHECK CONSTRAINT [FK__onet_dwa___eleme__2360B8B2]
GO
ALTER TABLE [dbo].[onet_dwa_reference]  WITH CHECK ADD  CONSTRAINT [FK__onet_dwa___iwa_i__2454DCEB] FOREIGN KEY([iwa_id])
REFERENCES [dbo].[onet_iwa_reference] ([iwa_id])
GO
ALTER TABLE [dbo].[onet_dwa_reference] CHECK CONSTRAINT [FK__onet_dwa___iwa_i__2454DCEB]
GO
ALTER TABLE [dbo].[onet_education_training_experience]  WITH CHECK ADD  CONSTRAINT [FK__onet_educ__eleme__5250B1C5] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_education_training_experience] CHECK CONSTRAINT [FK__onet_educ__eleme__5250B1C5]
GO
ALTER TABLE [dbo].[onet_education_training_experience]  WITH CHECK ADD  CONSTRAINT [FK__onet_educ__onets__515C8D8C] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_education_training_experience] CHECK CONSTRAINT [FK__onet_educ__onets__515C8D8C]
GO
ALTER TABLE [dbo].[onet_education_training_experience]  WITH CHECK ADD  CONSTRAINT [FK__onet_educ__scale__5344D5FE] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_education_training_experience] CHECK CONSTRAINT [FK__onet_educ__scale__5344D5FE]
GO
ALTER TABLE [dbo].[onet_education_training_experience]  WITH CHECK ADD  CONSTRAINT [FK__onet_education_t__5438FA37] FOREIGN KEY([element_id], [scale_id], [category])
REFERENCES [dbo].[onet_ete_categories] ([element_id], [scale_id], [category])
GO
ALTER TABLE [dbo].[onet_education_training_experience] CHECK CONSTRAINT [FK__onet_education_t__5438FA37]
GO
ALTER TABLE [dbo].[onet_emerging_tasks]  WITH CHECK ADD  CONSTRAINT [FK__onet_emer__onets__2A0DB641] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_emerging_tasks] CHECK CONSTRAINT [FK__onet_emer__onets__2A0DB641]
GO
ALTER TABLE [dbo].[onet_emerging_tasks]  WITH CHECK ADD  CONSTRAINT [FK__onet_emer__origi__2B01DA7A] FOREIGN KEY([original_task_id])
REFERENCES [dbo].[onet_task_statements] ([task_id])
GO
ALTER TABLE [dbo].[onet_emerging_tasks] CHECK CONSTRAINT [FK__onet_emer__origi__2B01DA7A]
GO
ALTER TABLE [dbo].[onet_ete_categories]  WITH CHECK ADD  CONSTRAINT [FK__onet_ete___eleme__3A792834] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_ete_categories] CHECK CONSTRAINT [FK__onet_ete___eleme__3A792834]
GO
ALTER TABLE [dbo].[onet_ete_categories]  WITH CHECK ADD  CONSTRAINT [FK__onet_ete___scale__3B6D4C6D] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_ete_categories] CHECK CONSTRAINT [FK__onet_ete___scale__3B6D4C6D]
GO
ALTER TABLE [dbo].[onet_interests]  WITH CHECK ADD  CONSTRAINT [FK__onet_inte__eleme__5AE5F7C6] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_interests] CHECK CONSTRAINT [FK__onet_inte__eleme__5AE5F7C6]
GO
ALTER TABLE [dbo].[onet_interests]  WITH CHECK ADD  CONSTRAINT [FK__onet_inte__onets__59F1D38D] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_interests] CHECK CONSTRAINT [FK__onet_inte__onets__59F1D38D]
GO
ALTER TABLE [dbo].[onet_interests]  WITH CHECK ADD  CONSTRAINT [FK__onet_inte__scale__5BDA1BFF] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_interests] CHECK CONSTRAINT [FK__onet_inte__scale__5BDA1BFF]
GO
ALTER TABLE [dbo].[onet_interests_illus_activities]  WITH CHECK ADD  CONSTRAINT [FK__onet_inte__eleme__48923D61] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_interests_illus_activities] CHECK CONSTRAINT [FK__onet_inte__eleme__48923D61]
GO
ALTER TABLE [dbo].[onet_interests_illus_occupations]  WITH CHECK ADD  CONSTRAINT [FK__onet_inte__eleme__4A7A85D3] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_interests_illus_occupations] CHECK CONSTRAINT [FK__onet_inte__eleme__4A7A85D3]
GO
ALTER TABLE [dbo].[onet_interests_illus_occupations]  WITH CHECK ADD  CONSTRAINT [FK__onet_inte__onets__4B6EAA0C] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_interests_illus_occupations] CHECK CONSTRAINT [FK__onet_inte__onets__4B6EAA0C]
GO
ALTER TABLE [dbo].[onet_iwa_reference]  WITH CHECK ADD  CONSTRAINT [FK__onet_iwa___eleme__20844C07] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_iwa_reference] CHECK CONSTRAINT [FK__onet_iwa___eleme__20844C07]
GO
ALTER TABLE [dbo].[onet_job_zones]  WITH CHECK ADD  CONSTRAINT [FK__onet_job___job_z__5EB688AA] FOREIGN KEY([job_zone])
REFERENCES [dbo].[onet_job_zone_reference] ([job_zone])
GO
ALTER TABLE [dbo].[onet_job_zones] CHECK CONSTRAINT [FK__onet_job___job_z__5EB688AA]
GO
ALTER TABLE [dbo].[onet_job_zones]  WITH CHECK ADD  CONSTRAINT [FK__onet_job___onets__5DC26471] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_job_zones] CHECK CONSTRAINT [FK__onet_job___onets__5DC26471]
GO
ALTER TABLE [dbo].[onet_knowledge]  WITH CHECK ADD  CONSTRAINT [FK__onet_know__eleme__6192F555] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_knowledge] CHECK CONSTRAINT [FK__onet_know__eleme__6192F555]
GO
ALTER TABLE [dbo].[onet_knowledge]  WITH CHECK ADD  CONSTRAINT [FK__onet_know__onets__609ED11C] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_knowledge] CHECK CONSTRAINT [FK__onet_know__onets__609ED11C]
GO
ALTER TABLE [dbo].[onet_knowledge]  WITH CHECK ADD  CONSTRAINT [FK__onet_know__scale__6287198E] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_knowledge] CHECK CONSTRAINT [FK__onet_know__scale__6287198E]
GO
ALTER TABLE [dbo].[onet_level_scale_anchors]  WITH CHECK ADD  CONSTRAINT [FK__onet_leve__eleme__3D5594DF] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_level_scale_anchors] CHECK CONSTRAINT [FK__onet_leve__eleme__3D5594DF]
GO
ALTER TABLE [dbo].[onet_level_scale_anchors]  WITH CHECK ADD  CONSTRAINT [FK__onet_leve__scale__3E49B918] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_level_scale_anchors] CHECK CONSTRAINT [FK__onet_leve__scale__3E49B918]
GO
ALTER TABLE [dbo].[onet_new_emerging]  WITH CHECK ADD  CONSTRAINT [FK_onet_new_emerging_onet_new_emerging] FOREIGN KEY([onet_soc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_new_emerging] CHECK CONSTRAINT [FK_onet_new_emerging_onet_new_emerging]
GO
ALTER TABLE [dbo].[onet_occupation_level_metadata]  WITH CHECK ADD  CONSTRAINT [FK__onet_occu__onets__421A49FC] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_occupation_level_metadata] CHECK CONSTRAINT [FK__onet_occu__onets__421A49FC]
GO
ALTER TABLE [dbo].[onet_related_occupations]  WITH CHECK ADD  CONSTRAINT [FK__onet_rela__onets__2CEA22EC] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_related_occupations] CHECK CONSTRAINT [FK__onet_rela__onets__2CEA22EC]
GO
ALTER TABLE [dbo].[onet_related_occupations]  WITH CHECK ADD  CONSTRAINT [FK__onet_rela__relat__2DDE4725] FOREIGN KEY([related_onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_related_occupations] CHECK CONSTRAINT [FK__onet_rela__relat__2DDE4725]
GO
ALTER TABLE [dbo].[onet_riasec_keywords]  WITH CHECK ADD  CONSTRAINT [FK__onet_rias__eleme__43CD8844] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_riasec_keywords] CHECK CONSTRAINT [FK__onet_rias__eleme__43CD8844]
GO
ALTER TABLE [dbo].[onet_sample_of_reported_titles]  WITH CHECK ADD  CONSTRAINT [FK__onet_samp__onets__3397207B] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_sample_of_reported_titles] CHECK CONSTRAINT [FK__onet_samp__onets__3397207B]
GO
ALTER TABLE [dbo].[onet_skills]  WITH CHECK ADD  CONSTRAINT [FK__onet_skil__eleme__65638639] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_skills] CHECK CONSTRAINT [FK__onet_skil__eleme__65638639]
GO
ALTER TABLE [dbo].[onet_skills]  WITH CHECK ADD  CONSTRAINT [FK__onet_skil__onets__646F6200] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_skills] CHECK CONSTRAINT [FK__onet_skil__onets__646F6200]
GO
ALTER TABLE [dbo].[onet_skills]  WITH CHECK ADD  CONSTRAINT [FK__onet_skil__scale__6657AA72] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_skills] CHECK CONSTRAINT [FK__onet_skil__scale__6657AA72]
GO
ALTER TABLE [dbo].[onet_skills_to_work_activities]  WITH CHECK ADD  CONSTRAINT [FK__onet_skil__skill__3E14AEEE] FOREIGN KEY([skills_element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_skills_to_work_activities] CHECK CONSTRAINT [FK__onet_skil__skill__3E14AEEE]
GO
ALTER TABLE [dbo].[onet_skills_to_work_activities]  WITH CHECK ADD  CONSTRAINT [FK__onet_skil__work___3F08D327] FOREIGN KEY([work_activities_element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_skills_to_work_activities] CHECK CONSTRAINT [FK__onet_skil__work___3F08D327]
GO
ALTER TABLE [dbo].[onet_skills_to_work_context]  WITH CHECK ADD  CONSTRAINT [FK__onet_skil__skill__40F11B99] FOREIGN KEY([skills_element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_skills_to_work_context] CHECK CONSTRAINT [FK__onet_skil__skill__40F11B99]
GO
ALTER TABLE [dbo].[onet_skills_to_work_context]  WITH CHECK ADD  CONSTRAINT [FK__onet_skil__work___41E53FD2] FOREIGN KEY([work_context_element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_skills_to_work_context] CHECK CONSTRAINT [FK__onet_skil__work___41E53FD2]
GO
ALTER TABLE [dbo].[onet_survey_booklet_locations]  WITH CHECK ADD  CONSTRAINT [FK__onet_surv__eleme__4402926E] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_survey_booklet_locations] CHECK CONSTRAINT [FK__onet_surv__eleme__4402926E]
GO
ALTER TABLE [dbo].[onet_survey_booklet_locations]  WITH CHECK ADD  CONSTRAINT [FK__onet_surv__scale__44F6B6A7] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_survey_booklet_locations] CHECK CONSTRAINT [FK__onet_surv__scale__44F6B6A7]
GO
ALTER TABLE [dbo].[onet_task_categories]  WITH CHECK ADD  CONSTRAINT [FK__onet_task__scale__47D32352] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_task_categories] CHECK CONSTRAINT [FK__onet_task__scale__47D32352]
GO
ALTER TABLE [dbo].[onet_task_ratings]  WITH CHECK ADD  CONSTRAINT [FK__onet_task__onets__1512995B] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_task_ratings] CHECK CONSTRAINT [FK__onet_task__onets__1512995B]
GO
ALTER TABLE [dbo].[onet_task_ratings]  WITH CHECK ADD  CONSTRAINT [FK__onet_task__scale__16FAE1CD] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_task_ratings] CHECK CONSTRAINT [FK__onet_task__scale__16FAE1CD]
GO
ALTER TABLE [dbo].[onet_task_ratings]  WITH CHECK ADD  CONSTRAINT [FK__onet_task__task___1606BD94] FOREIGN KEY([task_id])
REFERENCES [dbo].[onet_task_statements] ([task_id])
GO
ALTER TABLE [dbo].[onet_task_ratings] CHECK CONSTRAINT [FK__onet_task__task___1606BD94]
GO
ALTER TABLE [dbo].[onet_task_ratings]  WITH CHECK ADD  CONSTRAINT [FK__onet_task_rating__17EF0606] FOREIGN KEY([scale_id], [category])
REFERENCES [dbo].[onet_task_categories] ([scale_id], [category])
GO
ALTER TABLE [dbo].[onet_task_ratings] CHECK CONSTRAINT [FK__onet_task_rating__17EF0606]
GO
ALTER TABLE [dbo].[onet_task_statements]  WITH CHECK ADD  CONSTRAINT [FK__onet_task__onets__6934171D] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_task_statements] CHECK CONSTRAINT [FK__onet_task__onets__6934171D]
GO
ALTER TABLE [dbo].[onet_tasks_to_dwas]  WITH CHECK ADD  CONSTRAINT [FK__onet_task__dwa_i__28256DCF] FOREIGN KEY([dwa_id])
REFERENCES [dbo].[onet_dwa_reference] ([dwa_id])
GO
ALTER TABLE [dbo].[onet_tasks_to_dwas] CHECK CONSTRAINT [FK__onet_task__dwa_i__28256DCF]
GO
ALTER TABLE [dbo].[onet_tasks_to_dwas]  WITH CHECK ADD  CONSTRAINT [FK__onet_task__onets__263D255D] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_tasks_to_dwas] CHECK CONSTRAINT [FK__onet_task__onets__263D255D]
GO
ALTER TABLE [dbo].[onet_tasks_to_dwas]  WITH CHECK ADD  CONSTRAINT [FK__onet_task__task___27314996] FOREIGN KEY([task_id])
REFERENCES [dbo].[onet_task_statements] ([task_id])
GO
ALTER TABLE [dbo].[onet_tasks_to_dwas] CHECK CONSTRAINT [FK__onet_task__task___27314996]
GO
ALTER TABLE [dbo].[onet_technology_skills]  WITH CHECK ADD  CONSTRAINT [FK__onet_tech__commo__36738D26] FOREIGN KEY([commodity_code])
REFERENCES [dbo].[onet_unspsc_reference] ([commodity_code])
GO
ALTER TABLE [dbo].[onet_technology_skills] CHECK CONSTRAINT [FK__onet_tech__commo__36738D26]
GO
ALTER TABLE [dbo].[onet_technology_skills]  WITH CHECK ADD  CONSTRAINT [FK__onet_tech__onets__357F68ED] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_technology_skills] CHECK CONSTRAINT [FK__onet_tech__onets__357F68ED]
GO
ALTER TABLE [dbo].[onet_tools_used]  WITH CHECK ADD  CONSTRAINT [FK__onet_tool__commo__394FF9D1] FOREIGN KEY([commodity_code])
REFERENCES [dbo].[onet_unspsc_reference] ([commodity_code])
GO
ALTER TABLE [dbo].[onet_tools_used] CHECK CONSTRAINT [FK__onet_tool__commo__394FF9D1]
GO
ALTER TABLE [dbo].[onet_tools_used]  WITH CHECK ADD  CONSTRAINT [FK__onet_tool__onets__385BD598] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_tools_used] CHECK CONSTRAINT [FK__onet_tool__onets__385BD598]
GO
ALTER TABLE [dbo].[onet_work_activities]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__eleme__73B1A590] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_work_activities] CHECK CONSTRAINT [FK__onet_work__eleme__73B1A590]
GO
ALTER TABLE [dbo].[onet_work_activities]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__onets__72BD8157] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_work_activities] CHECK CONSTRAINT [FK__onet_work__onets__72BD8157]
GO
ALTER TABLE [dbo].[onet_work_activities]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__scale__74A5C9C9] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_work_activities] CHECK CONSTRAINT [FK__onet_work__scale__74A5C9C9]
GO
ALTER TABLE [dbo].[onet_work_context]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__eleme__1BBF96EA] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_work_context] CHECK CONSTRAINT [FK__onet_work__eleme__1BBF96EA]
GO
ALTER TABLE [dbo].[onet_work_context]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__onets__1ACB72B1] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_work_context] CHECK CONSTRAINT [FK__onet_work__onets__1ACB72B1]
GO
ALTER TABLE [dbo].[onet_work_context]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__scale__1CB3BB23] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_work_context] CHECK CONSTRAINT [FK__onet_work__scale__1CB3BB23]
GO
ALTER TABLE [dbo].[onet_work_context]  WITH CHECK ADD  CONSTRAINT [FK__onet_work_contex__1DA7DF5C] FOREIGN KEY([element_id], [scale_id], [category])
REFERENCES [dbo].[onet_work_context_categories] ([element_id], [scale_id], [category])
GO
ALTER TABLE [dbo].[onet_work_context] CHECK CONSTRAINT [FK__onet_work_contex__1DA7DF5C]
GO
ALTER TABLE [dbo].[onet_work_context_categories]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__eleme__4AAF8FFD] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_work_context_categories] CHECK CONSTRAINT [FK__onet_work__eleme__4AAF8FFD]
GO
ALTER TABLE [dbo].[onet_work_context_categories]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__scale__4BA3B436] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_work_context_categories] CHECK CONSTRAINT [FK__onet_work__scale__4BA3B436]
GO
ALTER TABLE [dbo].[onet_work_styles]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__eleme__6C1083C8] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_work_styles] CHECK CONSTRAINT [FK__onet_work__eleme__6C1083C8]
GO
ALTER TABLE [dbo].[onet_work_styles]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__onets__6B1C5F8F] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_work_styles] CHECK CONSTRAINT [FK__onet_work__onets__6B1C5F8F]
GO
ALTER TABLE [dbo].[onet_work_styles]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__scale__6D04A801] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_work_styles] CHECK CONSTRAINT [FK__onet_work__scale__6D04A801]
GO
ALTER TABLE [dbo].[onet_work_values]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__eleme__6FE114AC] FOREIGN KEY([element_id])
REFERENCES [dbo].[onet_content_model_reference] ([element_id])
GO
ALTER TABLE [dbo].[onet_work_values] CHECK CONSTRAINT [FK__onet_work__eleme__6FE114AC]
GO
ALTER TABLE [dbo].[onet_work_values]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__onets__6EECF073] FOREIGN KEY([onetsoc_code])
REFERENCES [dbo].[onet_occupation_data] ([onetsoc_code])
GO
ALTER TABLE [dbo].[onet_work_values] CHECK CONSTRAINT [FK__onet_work__onets__6EECF073]
GO
ALTER TABLE [dbo].[onet_work_values]  WITH CHECK ADD  CONSTRAINT [FK__onet_work__scale__70D538E5] FOREIGN KEY([scale_id])
REFERENCES [dbo].[onet_scales_reference] ([scale_id])
GO
ALTER TABLE [dbo].[onet_work_values] CHECK CONSTRAINT [FK__onet_work__scale__70D538E5]
GO
ALTER TABLE [dbo].[petersons_imports]  WITH CHECK ADD  CONSTRAINT [FK_petersons_imports_petersons_dataset] FOREIGN KEY([dataset_id])
REFERENCES [dbo].[petersons_dataset] ([id])
GO
ALTER TABLE [dbo].[petersons_imports] CHECK CONSTRAINT [FK_petersons_imports_petersons_dataset]
GO
ALTER TABLE [dbo].[petersons_imports]  WITH CHECK ADD  CONSTRAINT [FK_petersons_imports_petersons_import_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[petersons_import_status] ([id])
GO
ALTER TABLE [dbo].[petersons_imports] CHECK CONSTRAINT [FK_petersons_imports_petersons_import_status]
GO
ALTER TABLE [dbo].[petersons_imports]  WITH CHECK ADD  CONSTRAINT [FK_petersons_imports_petersons_import_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[petersons_import_type] ([id])
GO
ALTER TABLE [dbo].[petersons_imports] CHECK CONSTRAINT [FK_petersons_imports_petersons_import_type]
GO
ALTER TABLE [dbo].[report_columns]  WITH CHECK ADD  CONSTRAINT [FK_report_columns_report_columns] FOREIGN KEY([report_id])
REFERENCES [dbo].[reports] ([id])
GO
ALTER TABLE [dbo].[report_columns] CHECK CONSTRAINT [FK_report_columns_report_columns]
GO
ALTER TABLE [dbo].[report_instance_columns]  WITH CHECK ADD  CONSTRAINT [FK_report_instance_columns_report_instances] FOREIGN KEY([report_instance_id])
REFERENCES [dbo].[report_instances] ([id])
GO
ALTER TABLE [dbo].[report_instance_columns] CHECK CONSTRAINT [FK_report_instance_columns_report_instances]
GO
ALTER TABLE [dbo].[report_instance_columns]  WITH CHECK ADD  CONSTRAINT [FK_report_instance_columns_report_type_columns] FOREIGN KEY([report_column_id])
REFERENCES [dbo].[report_columns] ([id])
GO
ALTER TABLE [dbo].[report_instance_columns] CHECK CONSTRAINT [FK_report_instance_columns_report_type_columns]
GO
ALTER TABLE [dbo].[report_instance_distributions]  WITH CHECK ADD  CONSTRAINT [FK_report_instance_distribution_report_instance_schedule] FOREIGN KEY([report_instance_schedule_id])
REFERENCES [dbo].[report_instance_schedules] ([id])
GO
ALTER TABLE [dbo].[report_instance_distributions] CHECK CONSTRAINT [FK_report_instance_distribution_report_instance_schedule]
GO
ALTER TABLE [dbo].[report_instance_distributions]  WITH CHECK ADD  CONSTRAINT [FK_report_instance_distribution_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[report_instance_distributions] CHECK CONSTRAINT [FK_report_instance_distribution_users]
GO
ALTER TABLE [dbo].[report_instance_distributions]  WITH CHECK ADD  CONSTRAINT [FK_report_instance_distributions_reports] FOREIGN KEY([report_id])
REFERENCES [dbo].[reports] ([id])
GO
ALTER TABLE [dbo].[report_instance_distributions] CHECK CONSTRAINT [FK_report_instance_distributions_reports]
GO
ALTER TABLE [dbo].[report_instance_filters]  WITH CHECK ADD  CONSTRAINT [FK_report_filters_report_instances] FOREIGN KEY([report_instance_id])
REFERENCES [dbo].[report_instances] ([id])
GO
ALTER TABLE [dbo].[report_instance_filters] CHECK CONSTRAINT [FK_report_filters_report_instances]
GO
ALTER TABLE [dbo].[report_instance_filters]  WITH CHECK ADD  CONSTRAINT [FK_report_instance_filters_report_filters] FOREIGN KEY([report_filter_id])
REFERENCES [dbo].[report_filters] ([id])
GO
ALTER TABLE [dbo].[report_instance_filters] CHECK CONSTRAINT [FK_report_instance_filters_report_filters]
GO
ALTER TABLE [dbo].[report_instance_schedules]  WITH CHECK ADD  CONSTRAINT [FK_report_instance_schedule_report_instances] FOREIGN KEY([report_instance_id])
REFERENCES [dbo].[report_instances] ([id])
GO
ALTER TABLE [dbo].[report_instance_schedules] CHECK CONSTRAINT [FK_report_instance_schedule_report_instances]
GO
ALTER TABLE [dbo].[report_instance_schedules]  WITH CHECK ADD  CONSTRAINT [FK_report_instance_schedule_schedule_frequencies] FOREIGN KEY([frequency_type_id])
REFERENCES [dbo].[schedule_frequencies] ([id])
GO
ALTER TABLE [dbo].[report_instance_schedules] CHECK CONSTRAINT [FK_report_instance_schedule_schedule_frequencies]
GO
ALTER TABLE [dbo].[report_instances]  WITH CHECK ADD  CONSTRAINT [FK_report_instances_date_range_types] FOREIGN KEY([date_range_type_id])
REFERENCES [dbo].[date_range_types] ([id])
GO
ALTER TABLE [dbo].[report_instances] CHECK CONSTRAINT [FK_report_instances_date_range_types]
GO
ALTER TABLE [dbo].[report_instances]  WITH CHECK ADD  CONSTRAINT [FK_report_instances_report_types] FOREIGN KEY([report_type_id])
REFERENCES [dbo].[report_types] ([id])
GO
ALTER TABLE [dbo].[report_instances] CHECK CONSTRAINT [FK_report_instances_report_types]
GO
ALTER TABLE [dbo].[report_instances]  WITH CHECK ADD  CONSTRAINT [FK_report_instances_reports] FOREIGN KEY([report_id])
REFERENCES [dbo].[reports] ([id])
GO
ALTER TABLE [dbo].[report_instances] CHECK CONSTRAINT [FK_report_instances_reports]
GO
ALTER TABLE [dbo].[report_instances]  WITH CHECK ADD  CONSTRAINT [FK_report_instances_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[report_instances] CHECK CONSTRAINT [FK_report_instances_users]
GO
ALTER TABLE [dbo].[reports]  WITH CHECK ADD  CONSTRAINT [FK_reports_report_types] FOREIGN KEY([report_type_id])
REFERENCES [dbo].[report_types] ([id])
GO
ALTER TABLE [dbo].[reports] CHECK CONSTRAINT [FK_reports_report_types]
GO
ALTER TABLE [dbo].[segment_v1_assessment]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_assessment_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_assessment] CHECK CONSTRAINT [FK_segment_v1_assessment_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_assessment_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_assessment_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_assessment_result] CHECK CONSTRAINT [FK_segment_v1_assessment_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_career_favorite]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_career_favorite_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_career_favorite] CHECK CONSTRAINT [FK_segment_v1_career_favorite_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_career_favorite_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_career_favorite_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_career_favorite_result] CHECK CONSTRAINT [FK_segment_v1_career_favorite_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_career_journal]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_career_journal_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_career_journal] CHECK CONSTRAINT [FK_segment_v1_career_journal_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_career_journal_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_career_journal_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_career_journal_result] CHECK CONSTRAINT [FK_segment_v1_career_journal_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_career_profile]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_career_profile_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_career_profile] CHECK CONSTRAINT [FK_segment_v1_career_profile_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_checkbox]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_checkbox_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_checkbox] CHECK CONSTRAINT [FK_segment_v1_checkbox_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_college_favorite]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_college_favorite_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_college_favorite] CHECK CONSTRAINT [FK_segment_v1_college_favorite_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_college_favorite_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_college_favorite_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_college_favorite_result] CHECK CONSTRAINT [FK_segment_v1_college_favorite_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_content_editor]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_content_editor_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_content_editor] CHECK CONSTRAINT [FK_segment_v1_content_editor_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_coverletter_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_coverletter_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_coverletter_result] CHECK CONSTRAINT [FK_segment_v1_coverletter_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_custom_survey_question_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_custom_survey_question_result_question] FOREIGN KEY([question_id])
REFERENCES [dbo].[segment_v1_custom_survey_question] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_custom_survey_question_result] CHECK CONSTRAINT [FK_segment_v1_custom_survey_question_result_question]
GO
ALTER TABLE [dbo].[segment_v1_custom_survey_question_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_custom_survey_question_result_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_custom_survey_question_result] CHECK CONSTRAINT [FK_segment_v1_custom_survey_question_result_result]
GO
ALTER TABLE [dbo].[segment_v1_custom_survey_question_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_custom_survey_question_result_segment_v1_custom_survey_question_result] FOREIGN KEY([id])
REFERENCES [dbo].[segment_v1_custom_survey_question_result] ([id])
GO
ALTER TABLE [dbo].[segment_v1_custom_survey_question_result] CHECK CONSTRAINT [FK_segment_v1_custom_survey_question_result_segment_v1_custom_survey_question_result]
GO
ALTER TABLE [dbo].[segment_v1_employability_journal_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_employability_journal_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_employability_journal_result] CHECK CONSTRAINT [FK_segment_v1_employability_journal_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_goal_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_goal_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_goal_result] CHECK CONSTRAINT [FK_segment_v1_goal_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_goals]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_goals_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_goals] CHECK CONSTRAINT [FK_segment_v1_goals_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_job_favorite]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_job_favorite_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_job_favorite] CHECK CONSTRAINT [FK_segment_v1_job_favorite_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_job_favorite_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_job_favorite_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_job_favorite_result] CHECK CONSTRAINT [FK_segment_v1_job_favorite_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_lesson_document]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_lesson_document_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_lesson_document] CHECK CONSTRAINT [FK_segment_v1_lesson_document_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_lifeskill_journal]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_lifeskill_journal_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_lifeskill_journal] CHECK CONSTRAINT [FK_segment_v1_lifeskill_journal_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_link_embed]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_link_embed_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_link_embed] CHECK CONSTRAINT [FK_segment_v1_link_embed_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_playlist_video_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_playlist_video_result_segment_v1_playlist_videos] FOREIGN KEY([segment_video_id])
REFERENCES [dbo].[segment_v1_playlist_videos] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_playlist_video_result] CHECK CONSTRAINT [FK_segment_v1_playlist_video_result_segment_v1_playlist_videos]
GO
ALTER TABLE [dbo].[segment_v1_playlist_video_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_playlist_video_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_playlist_video_result] CHECK CONSTRAINT [FK_segment_v1_playlist_video_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_playlist_videos]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_playlist_videos_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_playlist_videos] CHECK CONSTRAINT [FK_segment_v1_playlist_videos_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_popquiz]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_popquiz_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_popquiz] CHECK CONSTRAINT [FK_segment_v1_popquiz_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_popquiz_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_popquiz_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_popquiz_result] CHECK CONSTRAINT [FK_segment_v1_popquiz_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_post_secondary_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_post_secondary_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_post_secondary_result] CHECK CONSTRAINT [FK_segment_v1_post_secondary_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_quiz]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_quiz_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_quiz] CHECK CONSTRAINT [FK_segment_v1_quiz_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_quiz_question]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_quiz_question_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_quiz_question] CHECK CONSTRAINT [FK_segment_v1_quiz_question_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_quiz_question]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_quiz_question_segment_v1_quiz_question_type] FOREIGN KEY([question_type_id])
REFERENCES [dbo].[segment_v1_quiz_question_type] ([id])
GO
ALTER TABLE [dbo].[segment_v1_quiz_question] CHECK CONSTRAINT [FK_segment_v1_quiz_question_segment_v1_quiz_question_type]
GO
ALTER TABLE [dbo].[segment_v1_quiz_question_option]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_quiz_question_options_segment_v1_quiz_question] FOREIGN KEY([question_id])
REFERENCES [dbo].[segment_v1_quiz_question] ([id])
GO
ALTER TABLE [dbo].[segment_v1_quiz_question_option] CHECK CONSTRAINT [FK_segment_v1_quiz_question_options_segment_v1_quiz_question]
GO
ALTER TABLE [dbo].[segment_v1_quiz_question_option_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_quiz_question_option_result_segment_v1_quiz_question_option] FOREIGN KEY([option_id])
REFERENCES [dbo].[segment_v1_quiz_question_option] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_quiz_question_option_result] CHECK CONSTRAINT [FK_segment_v1_quiz_question_option_result_segment_v1_quiz_question_option]
GO
ALTER TABLE [dbo].[segment_v1_quiz_question_option_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_quiz_question_option_result_segment_v1_quiz_question_result] FOREIGN KEY([question_result_id])
REFERENCES [dbo].[segment_v1_quiz_question_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_quiz_question_option_result] CHECK CONSTRAINT [FK_segment_v1_quiz_question_option_result_segment_v1_quiz_question_result]
GO
ALTER TABLE [dbo].[segment_v1_quiz_question_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_quiz_question_result_segment_v1_quiz_question] FOREIGN KEY([question_id])
REFERENCES [dbo].[segment_v1_quiz_question] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_quiz_question_result] CHECK CONSTRAINT [FK_segment_v1_quiz_question_result_segment_v1_quiz_question]
GO
ALTER TABLE [dbo].[segment_v1_quiz_question_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_quiz_question_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_quiz_question_result] CHECK CONSTRAINT [FK_segment_v1_quiz_question_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_result_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_result] CHECK CONSTRAINT [FK_segment_v1_result_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_result_user_lesson_assigment] FOREIGN KEY([user_assignment_id])
REFERENCES [dbo].[user_lesson_assignment] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_result] CHECK CONSTRAINT [FK_segment_v1_result_user_lesson_assigment]
GO
ALTER TABLE [dbo].[segment_v1_resume_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_resume_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_resume_result] CHECK CONSTRAINT [FK_segment_v1_resume_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_scholarship_favorite]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_scholarship_favorite_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_scholarship_favorite] CHECK CONSTRAINT [FK_segment_v1_scholarship_favorite_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_scholarship_favorite_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_scholarship_favorite_result_segment_v1_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_scholarship_favorite_result] CHECK CONSTRAINT [FK_segment_v1_scholarship_favorite_result_segment_v1_result]
GO
ALTER TABLE [dbo].[segment_v1_signature_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_signature_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_signature_result] CHECK CONSTRAINT [FK_segment_v1_signature_result]
GO
ALTER TABLE [dbo].[segment_v1_survey]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_survey_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_survey] CHECK CONSTRAINT [FK_segment_v1_survey_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_video_embed]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_video_embed_lesson_segment] FOREIGN KEY([segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
GO
ALTER TABLE [dbo].[segment_v1_video_embed] CHECK CONSTRAINT [FK_segment_v1_video_embed_lesson_segment]
GO
ALTER TABLE [dbo].[segment_v1_written_response_result]  WITH CHECK ADD  CONSTRAINT [FK_segment_v1_written_response_result] FOREIGN KEY([result_id])
REFERENCES [dbo].[segment_v1_result] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[segment_v1_written_response_result] CHECK CONSTRAINT [FK_segment_v1_written_response_result]
GO
ALTER TABLE [dbo].[sent_email_events]  WITH CHECK ADD  CONSTRAINT [sent_email_event_email_FK] FOREIGN KEY([sent_email_id])
REFERENCES [dbo].[sent_emails] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[sent_email_events] CHECK CONSTRAINT [sent_email_event_email_FK]
GO
ALTER TABLE [dbo].[sent_emails]  WITH CHECK ADD  CONSTRAINT [sent_emails_status_FK] FOREIGN KEY([email_delivery_status_id])
REFERENCES [dbo].[email_delivery_status] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[sent_emails] CHECK CONSTRAINT [sent_emails_status_FK]
GO
ALTER TABLE [dbo].[sent_emails]  WITH CHECK ADD  CONSTRAINT [sent_emails_type_FK] FOREIGN KEY([type_id])
REFERENCES [dbo].[sent_email_types] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[sent_emails] CHECK CONSTRAINT [sent_emails_type_FK]
GO
ALTER TABLE [dbo].[sessions]  WITH CHECK ADD  CONSTRAINT [FK__sessions__user_i__4FC94AD5] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[sessions] CHECK CONSTRAINT [FK__sessions__user_i__4FC94AD5]
GO
ALTER TABLE [dbo].[ui_carousels_slides]  WITH CHECK ADD  CONSTRAINT [ui_carousels_slides_FK] FOREIGN KEY([slide_id])
REFERENCES [dbo].[ui_slides] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ui_carousels_slides] CHECK CONSTRAINT [ui_carousels_slides_FK]
GO
ALTER TABLE [dbo].[ui_carousels_slides]  WITH CHECK ADD  CONSTRAINT [ui_carousels_slides_FK2] FOREIGN KEY([carousel_id])
REFERENCES [dbo].[ui_carousels] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ui_carousels_slides] CHECK CONSTRAINT [ui_carousels_slides_FK2]
GO
ALTER TABLE [dbo].[user_career_videos_watched]  WITH CHECK ADD  CONSTRAINT [FK_user_career_videos_watched_careers] FOREIGN KEY([career_guid])
REFERENCES [dbo].[careers] ([guid])
GO
ALTER TABLE [dbo].[user_career_videos_watched] CHECK CONSTRAINT [FK_user_career_videos_watched_careers]
GO
ALTER TABLE [dbo].[user_career_videos_watched]  WITH CHECK ADD  CONSTRAINT [FK_user_career_videos_watched_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[user_career_videos_watched] CHECK CONSTRAINT [FK_user_career_videos_watched_users]
GO
ALTER TABLE [dbo].[user_employability_videos_watched]  WITH CHECK ADD  CONSTRAINT [FK_user_employability_videos_watched_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[user_employability_videos_watched] CHECK CONSTRAINT [FK_user_employability_videos_watched_users]
GO
ALTER TABLE [dbo].[user_employability_videos_watched]  WITH CHECK ADD  CONSTRAINT [FK_user_employability_videos_watched_vjs_license] FOREIGN KEY([license_id])
REFERENCES [dbo].[vjs_license] ([LicenseID])
GO
ALTER TABLE [dbo].[user_employability_videos_watched] CHECK CONSTRAINT [FK_user_employability_videos_watched_vjs_license]
GO
ALTER TABLE [dbo].[user_lesson_assignment]  WITH CHECK ADD  CONSTRAINT [FK_user_lesson_assigment_lesson_assignment] FOREIGN KEY([assignment_id])
REFERENCES [dbo].[lesson_assignment] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_lesson_assignment] CHECK CONSTRAINT [FK_user_lesson_assigment_lesson_assignment]
GO
ALTER TABLE [dbo].[user_lesson_assignment]  WITH CHECK ADD  CONSTRAINT [FK_user_lesson_assignment_lesson_segment] FOREIGN KEY([last_segment_id])
REFERENCES [dbo].[lesson_segment] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[user_lesson_assignment] CHECK CONSTRAINT [FK_user_lesson_assignment_lesson_segment]
GO
ALTER TABLE [dbo].[user_page_views]  WITH CHECK ADD  CONSTRAINT [FK_user_page_views_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[user_page_views] CHECK CONSTRAINT [FK_user_page_views_users]
GO
ALTER TABLE [dbo].[user_time_on_site]  WITH CHECK ADD  CONSTRAINT [FK_user_time_on_site_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[user_time_on_site] CHECK CONSTRAINT [FK_user_time_on_site_user_id]
GO
ALTER TABLE [dbo].[uar_sync_processes]  WITH CHECK ADD  CONSTRAINT [valid_event_types] CHECK  (([event_type_id]=(2) OR [event_type_id]=(1)))
GO
ALTER TABLE [dbo].[uar_sync_processes] CHECK CONSTRAINT [valid_event_types]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'create|click (can be used for any link)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kpi_tracking', @level2type=N'COLUMN',@level2name=N'link_action'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of the usage data being tracked (each kpi_tracking row can contain different usage data info)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kpi_tracking_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'process was killed by another instance' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uar_sync_processes', @level2type=N'COLUMN',@level2name=N'process_killed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'json of all request_ids fetched from UAR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uar_sync_processes', @level2type=N'COLUMN',@level2name=N'request_ids'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'number of GET requests to UARs Event API' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uar_sync_processes', @level2type=N'COLUMN',@level2name=N'total_uar_events_requests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table holds pd_formatted_scholarship data (not 100% horizontally or vertically) of all scholarships that were once favorited by any student. This allows the favorited scholarship to be displayed to the user even when the scholarship was deleted by Peterson.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user_favorite_scholarships'
GO
