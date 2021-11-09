USE [PRN211_TechnologyNews]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 9/11/2021 7:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[fullname] [nvarchar](255) NOT NULL,
	[avatar] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Action]    Script Date: 9/11/2021 7:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Action](
	[action_id] [int] NOT NULL,
	[action_name] [nvarchar](255) NOT NULL,
	[controller_id] [int] NOT NULL,
 CONSTRAINT [PK_Action] PRIMARY KEY CLUSTERED 
(
	[action_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 9/11/2021 7:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[image] [varchar](255) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[released_date] [datetime] NOT NULL,
	[view] [int] NOT NULL,
	[created_account_username] [varchar](255) NOT NULL,
	[short_content] [nvarchar](255) NOT NULL,
	[category_id] [int] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 9/11/2021 7:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[id] [int] NOT NULL,
	[big_image] [varchar](max) NOT NULL,
	[intro_title] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 9/11/2021 7:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 9/11/2021 7:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[article_id] [int] NOT NULL,
	[account_username] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 9/11/2021 7:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[city] [nvarchar](255) NOT NULL,
	[country] [nvarchar](255) NOT NULL,
	[tel] [char](10) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[map_url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Controller]    Script Date: 9/11/2021 7:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Controller](
	[controller_id] [int] NOT NULL,
	[controller_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Controller] PRIMARY KEY CLUSTERED 
(
	[controller_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 9/11/2021 7:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Action]    Script Date: 9/11/2021 7:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Action](
	[role_id] [int] NOT NULL,
	[action_id] [int] NOT NULL,
 CONSTRAINT [PK_Role_Controller] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[action_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMedia]    Script Date: 9/11/2021 7:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedia](
	[id] [int] NOT NULL,
	[url] [varchar](max) NOT NULL,
	[icon] [varchar](max) NOT NULL,
	[title] [varchar](255) NOT NULL,
 CONSTRAINT [PK_SocialMedia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [fullname], [avatar], [email], [role_id]) VALUES (N'admin', N'123', N'snt', N'avt_admin', N'admin@mail.com', 1)
INSERT [dbo].[Account] ([username], [password], [fullname], [avatar], [email], [role_id]) VALUES (N'mod', N'123', N'tvm', N'avt_tvm', N'mod@mail.com', 2)
INSERT [dbo].[Account] ([username], [password], [fullname], [avatar], [email], [role_id]) VALUES (N'user', N'123', N'md', N'avt_md', N'user@mail.com', 3)
GO
INSERT [dbo].[Action] ([action_id], [action_name], [controller_id]) VALUES (1, N'Index', 1)
INSERT [dbo].[Action] ([action_id], [action_name], [controller_id]) VALUES (2, N'SignIn', 2)
INSERT [dbo].[Action] ([action_id], [action_name], [controller_id]) VALUES (3, N'SignUp', 2)
INSERT [dbo].[Action] ([action_id], [action_name], [controller_id]) VALUES (4, N'MobileNews', 3)
INSERT [dbo].[Action] ([action_id], [action_name], [controller_id]) VALUES (5, N'DetailNewsMoblie', 3)
INSERT [dbo].[Action] ([action_id], [action_name], [controller_id]) VALUES (6, N'PCnews', 4)
INSERT [dbo].[Action] ([action_id], [action_name], [controller_id]) VALUES (7, N'DetailNewPC', 4)
INSERT [dbo].[Action] ([action_id], [action_name], [controller_id]) VALUES (8, N'Review', 5)
INSERT [dbo].[Action] ([action_id], [action_name], [controller_id]) VALUES (9, N'Videos', 6)
GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([id], [title], [image], [content], [released_date], [view], [created_account_username], [short_content], [category_id]) VALUES (2, N'Article A Title', N'article_a.img', N'Article A Content', CAST(N'2021-01-01T00:00:00.000' AS DateTime), 0, N'mod', N'Article A Short content', 1)
INSERT [dbo].[Article] ([id], [title], [image], [content], [released_date], [view], [created_account_username], [short_content], [category_id]) VALUES (3, N'Article B Title', N'article_b.img', N'Article B Content', CAST(N'2021-12-31T00:00:00.000' AS DateTime), 0, N'admin', N'Article B Short content', 2)
SET IDENTITY_INSERT [dbo].[Article] OFF
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Mobile')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'PC')
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([id], [content], [article_id], [account_username]) VALUES (6, N'Good times 1 from Admin', 2, N'admin')
INSERT [dbo].[Comment] ([id], [content], [article_id], [account_username]) VALUES (7, N'Good times 2 from Admin', 2, N'admin')
INSERT [dbo].[Comment] ([id], [content], [article_id], [account_username]) VALUES (8, N'Good times 1 from Mod', 3, N'mod')
INSERT [dbo].[Comment] ([id], [content], [article_id], [account_username]) VALUES (9, N'Good times 1 from User', 3, N'user')
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
INSERT [dbo].[Contact] ([id], [address], [city], [country], [tel], [email], [map_url]) VALUES (1, N'address', N'city', N'country', N'0123456789', N'mail@mail.com', N'123')
GO
INSERT [dbo].[Controller] ([controller_id], [controller_name]) VALUES (1, N'Home')
INSERT [dbo].[Controller] ([controller_id], [controller_name]) VALUES (2, N'Account')
INSERT [dbo].[Controller] ([controller_id], [controller_name]) VALUES (3, N'NewsMobile')
INSERT [dbo].[Controller] ([controller_id], [controller_name]) VALUES (4, N'NewsPC')
INSERT [dbo].[Controller] ([controller_id], [controller_name]) VALUES (5, N'Review')
INSERT [dbo].[Controller] ([controller_id], [controller_name]) VALUES (6, N'Videos')
GO
INSERT [dbo].[Role] ([id], [title]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([id], [title]) VALUES (2, N'mod')
INSERT [dbo].[Role] ([id], [title]) VALUES (3, N'user')
GO
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (1, 1)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (1, 2)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (1, 3)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (1, 4)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (1, 5)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (1, 6)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (1, 7)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (1, 8)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (1, 9)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (2, 1)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (2, 2)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (2, 3)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (2, 4)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (2, 5)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (2, 6)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (2, 7)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (2, 8)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (2, 9)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (3, 1)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (3, 2)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (3, 3)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (3, 4)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (3, 5)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (3, 6)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (3, 7)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (3, 8)
INSERT [dbo].[Role_Action] ([role_id], [action_id]) VALUES (3, 9)
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Action]  WITH CHECK ADD  CONSTRAINT [FK_Action_Controller] FOREIGN KEY([controller_id])
REFERENCES [dbo].[Controller] ([controller_id])
GO
ALTER TABLE [dbo].[Action] CHECK CONSTRAINT [FK_Action_Controller]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_Account] FOREIGN KEY([created_account_username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_Account]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_Category]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Account] FOREIGN KEY([account_username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Account]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Article] FOREIGN KEY([article_id])
REFERENCES [dbo].[Article] ([id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Article]
GO
ALTER TABLE [dbo].[Role_Action]  WITH CHECK ADD  CONSTRAINT [FK_Role_Action_Action] FOREIGN KEY([action_id])
REFERENCES [dbo].[Action] ([action_id])
GO
ALTER TABLE [dbo].[Role_Action] CHECK CONSTRAINT [FK_Role_Action_Action]
GO
ALTER TABLE [dbo].[Role_Action]  WITH CHECK ADD  CONSTRAINT [FK_Role_Controller_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Role_Action] CHECK CONSTRAINT [FK_Role_Controller_Role]
GO
