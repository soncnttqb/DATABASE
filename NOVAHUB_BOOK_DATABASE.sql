USE [BookLibrary]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 2017-10-04 07:46:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[CoverPhoto] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreateTime] [datetime] NULL,
	[LastUpdateTime] [datetime] NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book]    Script Date: 2017-10-04 07:46:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[CoverPhoto] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Publisher] [nvarchar](255) NULL,
	[Year] [int] NULL,
	[CreateTime] [datetime] NULL,
	[LastUpdateTime] [datetime] NULL,
	[CategoryId] [int] NULL,
	[AuthorId] [int] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 2017-10-04 07:46:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CreateTime] [datetime] NULL,
	[LastUpdateTime] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 2017-10-04 07:46:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleType] [nvarchar](5) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 2017-10-04 07:46:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[FirstName] [nvarchar](25) NULL,
	[LastName] [nvarchar](25) NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([Id], [Title], [CoverPhoto], [Description], [CreateTime], [LastUpdateTime]) VALUES (2, N'Son Author', N'D:\STUDY\NOVAHUB\BookLibrary\BookLibrary\bin\Debug\ServerImageFolder\8899cb7c35604ddf916e7d095ffdb2fe.PNG', N'fsd
dfgfdg', CAST(0x0000A80001715635 AS DateTime), CAST(0x0000A80001715635 AS DateTime))
INSERT [dbo].[Author] ([Id], [Title], [CoverPhoto], [Description], [CreateTime], [LastUpdateTime]) VALUES (3, N'author new', N'D:\STUDY\NOVAHUB\BookLibrary\BookLibrary\bin\Debug\ServerImageFolder\e25d14cfa08145c5ae9d560d13fc6cd4.jpg', N'sdfsdf', CAST(0x0000A8010134513A AS DateTime), CAST(0x0000A8010134513A AS DateTime))
INSERT [dbo].[Author] ([Id], [Title], [CoverPhoto], [Description], [CreateTime], [LastUpdateTime]) VALUES (4, N'fdsfsdfsdf', N'D:\STUDY\NOVAHUB\BookLibrary\BookLibrary\bin\Debug\ServerImageFolder\14bb83e246e64b139975e59baaec586c.jpg', N'dfsd', CAST(0x0000A8010181AD81 AS DateTime), CAST(0x0000A8010181AD81 AS DateTime))
INSERT [dbo].[Author] ([Id], [Title], [CoverPhoto], [Description], [CreateTime], [LastUpdateTime]) VALUES (5, N'fsdfsdf', NULL, N'', CAST(0x0000A801018511F7 AS DateTime), CAST(0x0000A801018511F7 AS DateTime))
SET IDENTITY_INSERT [dbo].[Author] OFF
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([Id], [Title], [CoverPhoto], [Description], [Publisher], [Year], [CreateTime], [LastUpdateTime], [CategoryId], [AuthorId]) VALUES (1, N'ngoi nha nho tren thao nguyen', N'D:\STUDY\NOVAHUB\BookLibrary\BookLibrary\bin\Debug\ServerImageFolder\7094862ae59340d395610ab0be86d468.jpg', N'fsadf
fadsf
fas
fsafsfsf
fasfdsdfsfsa', N'Pufsdfs', 2000, CAST(0x0000A800017222CF AS DateTime), CAST(0x0000A8000184529B AS DateTime), 7, 2)
INSERT [dbo].[Book] ([Id], [Title], [CoverPhoto], [Description], [Publisher], [Year], [CreateTime], [LastUpdateTime], [CategoryId], [AuthorId]) VALUES (2, N'fsdfs', N'D:\STUDY\NOVAHUB\BookLibrary\BookLibrary\bin\Debug\ServerImageFolder\dcd3cd63a1f44397a76ef508b3edcd60.jpg', N'fsdfsdfs', N'fsdf', 2000, CAST(0x0000A800017D2D5F AS DateTime), CAST(0x0000A8010134AA7F AS DateTime), 5, 3)
INSERT [dbo].[Book] ([Id], [Title], [CoverPhoto], [Description], [Publisher], [Year], [CreateTime], [LastUpdateTime], [CategoryId], [AuthorId]) VALUES (3, N'fdfsdf', NULL, N'fsdfsdfsdfsdfsdfsd', N'sdfsdffsdfs', 2017, CAST(0x0000A8010137C0D8 AS DateTime), CAST(0x0000A8010155E8A9 AS DateTime), 7, 2)
SET IDENTITY_INSERT [dbo].[Book] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Title], [Description], [CreateTime], [LastUpdateTime]) VALUES (5, N'fad', N'fasd', CAST(0x0000A7FF013F25E8 AS DateTime), CAST(0x0000A7FF0142E00F AS DateTime))
INSERT [dbo].[Category] ([Id], [Title], [Description], [CreateTime], [LastUpdateTime]) VALUES (6, N'fadf', N'dfdsf', CAST(0x0000A7FF0142EF98 AS DateTime), CAST(0x0000A7FF0142EF98 AS DateTime))
INSERT [dbo].[Category] ([Id], [Title], [Description], [CreateTime], [LastUpdateTime]) VALUES (7, N'fdsfsfsdfsdfvcvx', N'fsafsadfsafsafsafsa
fsdfs
fsdf
fsdfsdfsdf', CAST(0x0000A7FF01430F33 AS DateTime), CAST(0x0000A7FF0145690D AS DateTime))
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [RoleType]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id], [RoleType]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Email], [Password], [FirstName], [LastName], [RoleId]) VALUES (1, N'admin@gmail.com', N'c135a10ea66667319f9dcd2b3c5d9957', N'Admin', N'Admin', 1)
INSERT [dbo].[User] ([Id], [Email], [Password], [FirstName], [LastName], [RoleId]) VALUES (2, N'user@gmail.com', N'c135a10ea66667319f9dcd2b3c5d9957', N'User', N'User', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Author] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
