USE [AttendDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Lecturer]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Lecturer](
	[username] [varchar](150) NOT NULL,
	[lid] [int] NOT NULL,
 CONSTRAINT [PK_Account_Lecturer] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Student]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Student](
	[username] [varchar](150) NOT NULL,
	[stdid] [int] NOT NULL,
 CONSTRAINT [PK_Account_Student] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[sessionId] [int] NOT NULL,
	[studentId] [int] NOT NULL,
	[attend] [bit] NULL,
	[comment] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[sessionId] ASC,
	[studentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fid] [int] NOT NULL,
	[fname] [varchar](150) NOT NULL,
	[url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[id] [int] NOT NULL,
	[class] [nvarchar](10) NOT NULL,
	[subjectCode] [int] NOT NULL,
	[lectureId] [int] NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[id] [int] NOT NULL,
	[dob] [date] NULL,
	[gender] [bit] NOT NULL,
	[address] [nvarchar](100) NULL,
	[phone] [nvarchar](20) NULL,
	[email] [nvarchar](100) NULL,
	[salary] [float] NULL,
	[lname] [varchar](150) NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Account]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Account](
	[rid] [int] NOT NULL,
	[username] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role_Account] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[rid] [int] NOT NULL,
	[fid] [int] NOT NULL,
 CONSTRAINT [PK_Role_Feature] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[id] [int] NOT NULL,
	[building] [nchar](10) NULL,
	[size] [int] NULL,
	[status] [bit] NOT NULL,
	[name] [nvarchar](10) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[id] [int] NOT NULL,
	[groupId] [int] NOT NULL,
	[roomId] [int] NOT NULL,
	[timeSlotId] [int] NOT NULL,
	[date] [date] NOT NULL,
	[index] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[attanded] [int] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] NOT NULL,
	[address] [nvarchar](100) NULL,
	[phone] [nvarchar](20) NULL,
	[email] [nvarchar](100) NULL,
	[major] [nvarchar](10) NULL,
	[name] [nvarchar](150) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[groupId] [int] NOT NULL,
	[studentId] [int] NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[groupId] ASC,
	[studentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[noCredit] [int] NULL,
	[description] [nvarchar](100) NULL,
	[createdTime] [datetime] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 1/31/2023 9:27:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[id] [int] NOT NULL,
	[description] [varchar](50) NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'mra', N'mra', N'Mr A')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'mrb', N'mrb', N'Mr B')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'sonnt', N'123', N'Superman')
GO
INSERT [dbo].[Account_Lecturer] ([username], [lid]) VALUES (N'mra', 2)
INSERT [dbo].[Account_Lecturer] ([username], [lid]) VALUES (N'mrb', 3)
INSERT [dbo].[Account_Lecturer] ([username], [lid]) VALUES (N'sonnt', 1)
GO
INSERT [dbo].[Account_Student] ([username], [stdid]) VALUES (N'mra', 1)
INSERT [dbo].[Account_Student] ([username], [stdid]) VALUES (N'mrb', 2)
GO
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 1, 1, N'aa')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 2, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 3, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 4, 1, N'â')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 5, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 6, 0, N'a')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 7, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 8, 0, N'â')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 9, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 10, 0, N'a')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 12, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 13, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 16, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 19, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 20, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 21, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 24, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 25, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (1, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 1, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 2, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 3, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 4, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 5, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 6, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 7, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 8, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 9, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 10, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 11, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 12, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 13, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 14, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 15, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 16, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 17, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 18, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 19, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 20, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 21, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 22, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 23, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 24, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 25, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 26, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 27, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 28, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 29, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (2, 30, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 2, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 3, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 4, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 6, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 7, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 16, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 22, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 24, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 25, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (3, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 1, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 2, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 3, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 4, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 5, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 6, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 7, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 8, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 9, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 10, 0, N'')
GO
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 11, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 12, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 13, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 14, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 15, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 16, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 17, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 18, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 19, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 20, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 21, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 22, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 23, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 24, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 25, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 26, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 27, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 28, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 29, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (4, 30, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 2, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 3, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 4, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 5, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 7, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 8, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 9, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 11, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 12, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 13, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 14, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 17, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 23, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 25, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (5, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 2, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 3, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 4, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 7, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 9, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 11, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 17, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 19, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 21, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 22, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 24, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (6, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 2, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 3, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 4, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 5, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 6, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 10, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 11, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 12, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 16, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 18, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 20, 0, NULL)
GO
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 22, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 23, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 25, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (7, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 2, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 4, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 10, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 12, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 13, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 15, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 17, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 19, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 21, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 22, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 23, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (8, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 2, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 4, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 7, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 10, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 14, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 18, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 19, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 20, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 22, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 24, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (9, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 2, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 4, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 5, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 7, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 8, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 10, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 11, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 12, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 13, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 15, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 16, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 17, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 18, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 21, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 23, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 25, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (10, 30, 1, NULL)
GO
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 2, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 3, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 4, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 5, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 7, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 9, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 12, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 14, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 19, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 24, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 25, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (11, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 2, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 3, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 4, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 6, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 7, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 9, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 14, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 22, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (12, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 1, 0, N'a')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 2, 0, N's')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 3, 0, N's')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 4, 0, N'ư')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 5, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 6, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 7, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 8, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 9, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 10, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 11, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 12, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 13, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 14, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 15, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 16, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 17, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 18, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 19, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 20, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 21, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 22, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 23, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 24, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 25, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 26, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 27, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 28, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 29, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (13, 30, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 1, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 2, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 3, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 4, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 5, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 6, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 7, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 8, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 9, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 10, 0, N'')
GO
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 11, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 12, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 13, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 14, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 15, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 16, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 17, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 18, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 19, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 20, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 21, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 22, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 23, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 24, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 25, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 26, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 27, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 28, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 29, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (14, 30, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 2, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 4, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 7, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 8, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 9, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 12, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 14, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 20, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 21, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (15, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 2, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 4, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 7, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 17, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 23, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (16, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 2, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 3, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 4, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 8, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 9, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 10, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 12, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 13, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 14, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 15, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 16, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 18, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 20, 1, NULL)
GO
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 21, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (17, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 2, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 4, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 5, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 6, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 9, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 11, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 13, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 15, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 19, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 20, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 21, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 22, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 23, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 24, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 25, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (18, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 2, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 3, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 4, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 8, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 10, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 11, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 12, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 14, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 15, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 16, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 18, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 20, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 22, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 23, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (19, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 2, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 4, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 8, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 9, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 10, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 11, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 16, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 17, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 18, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 21, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 22, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 23, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (20, 30, 1, NULL)
GO
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 2, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 4, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 5, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 7, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 9, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 13, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 14, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 16, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 20, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (21, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 2, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 4, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 5, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 6, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 8, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 9, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 11, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 13, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 15, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 20, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (22, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 2, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 3, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 4, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 6, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 8, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 12, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 15, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 18, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 25, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (23, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 2, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 4, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 5, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 6, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 7, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 8, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 10, 1, NULL)
GO
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 11, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 13, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 14, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 15, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 17, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 18, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 22, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 24, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 26, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (24, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 2, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 3, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 4, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 6, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 8, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 10, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 12, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 16, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 17, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 20, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 21, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 24, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 26, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (25, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 2, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 4, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 6, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 10, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 11, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 12, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 13, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 15, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 16, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 18, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 19, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 21, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 22, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 25, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 26, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (26, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 2, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 4, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 6, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 11, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 13, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 15, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 16, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 17, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 19, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 20, 1, NULL)
GO
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 24, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 25, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 26, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (27, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 2, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 4, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 5, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 6, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 10, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 11, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 13, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 14, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 15, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 16, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 17, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 18, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 19, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 20, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 21, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 22, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 23, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 25, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 26, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (28, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 1, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 2, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 3, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 4, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 5, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 6, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 7, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 8, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 9, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 10, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 11, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 12, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 13, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 14, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 15, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 16, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 17, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 18, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 19, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 20, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 21, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 22, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 23, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 24, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 25, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 26, 0, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 27, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 28, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 29, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (29, 30, 1, NULL)
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 1, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 2, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 3, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 4, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 5, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 6, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 7, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 8, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 9, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 10, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 11, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 12, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 13, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 14, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 15, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 16, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 17, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 18, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 19, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 20, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 21, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 22, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 23, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 24, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 25, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 26, 0, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 27, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 28, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 29, 1, N'')
INSERT [dbo].[Attendance] ([sessionId], [studentId], [attend], [comment]) VALUES (30, 30, 1, N'')
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (1, N'TimeTable', N'/lecturer/timetable')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (2, N'Attendance', N'/lecturer/att')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (3, N'Report', N'/lecturer/report')
GO
INSERT [dbo].[Group] ([id], [class], [subjectCode], [lectureId]) VALUES (1, N'SE1643', 1, 1)
INSERT [dbo].[Group] ([id], [class], [subjectCode], [lectureId]) VALUES (2, N'SE1643', 2, 2)
INSERT [dbo].[Group] ([id], [class], [subjectCode], [lectureId]) VALUES (3, N'SE1643', 3, 3)
GO
INSERT [dbo].[Lecture] ([id], [dob], [gender], [address], [phone], [email], [salary], [lname]) VALUES (1, NULL, 1, NULL, NULL, NULL, NULL, N'Ngo Tung Son')
INSERT [dbo].[Lecture] ([id], [dob], [gender], [address], [phone], [email], [salary], [lname]) VALUES (2, NULL, 0, NULL, NULL, NULL, NULL, N'LT Hai')
INSERT [dbo].[Lecture] ([id], [dob], [gender], [address], [phone], [email], [salary], [lname]) VALUES (3, NULL, 1, NULL, NULL, NULL, NULL, N'Vuong Minh Tuan')
GO
INSERT [dbo].[Role] ([rid], [rname]) VALUES (1, N'Accounting')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (2, N'IT')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (3, N'Student')
GO
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'sonnt')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'mra')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'sonnt')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'mrb')
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 1)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 2)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 3)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 1)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (3, 3)
GO
INSERT [dbo].[Room] ([id], [building], [size], [status], [name]) VALUES (1, N'Alpha     ', 30, 1, N'Room 1')
INSERT [dbo].[Room] ([id], [building], [size], [status], [name]) VALUES (2, N'Beta      ', 30, 0, N'Room 2')
GO
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (1, 1, 1, 1, CAST(N'2022-10-10' AS Date), 1, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (2, 1, 1, 1, CAST(N'2022-10-12' AS Date), 2, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (3, 1, 1, 1, CAST(N'2022-10-14' AS Date), 3, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (4, 1, 1, 1, CAST(N'2022-10-17' AS Date), 4, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (5, 1, 1, 1, CAST(N'2022-10-19' AS Date), 5, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (6, 1, 1, 1, CAST(N'2022-10-21' AS Date), 6, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (7, 1, 1, 1, CAST(N'2022-10-24' AS Date), 7, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (8, 1, 1, 1, CAST(N'2022-10-26' AS Date), 8, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (9, 1, 1, 1, CAST(N'2022-10-28' AS Date), 9, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (10, 1, 1, 1, CAST(N'2022-10-31' AS Date), 10, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (11, 1, 1, 1, CAST(N'2022-11-02' AS Date), 11, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (12, 1, 1, 1, CAST(N'2022-11-04' AS Date), 12, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (13, 1, 1, 1, CAST(N'2022-11-07' AS Date), 13, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (14, 1, 1, 1, CAST(N'2022-11-09' AS Date), 14, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (15, 1, 1, 1, CAST(N'2022-11-11' AS Date), 15, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (16, 1, 1, 1, CAST(N'2022-11-14' AS Date), 16, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (17, 1, 1, 1, CAST(N'2022-11-16' AS Date), 17, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (18, 1, 1, 1, CAST(N'2022-11-18' AS Date), 18, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (19, 1, 1, 1, CAST(N'2022-11-21' AS Date), 19, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (20, 1, 1, 1, CAST(N'2022-11-23' AS Date), 20, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (21, 1, 1, 1, CAST(N'2022-11-25' AS Date), 21, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (22, 1, 1, 1, CAST(N'2022-11-28' AS Date), 22, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (23, 1, 1, 1, CAST(N'2022-11-30' AS Date), 23, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (24, 1, 1, 1, CAST(N'2022-12-02' AS Date), 24, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (25, 1, 1, 1, CAST(N'2022-12-05' AS Date), 25, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (26, 1, 1, 1, CAST(N'2022-12-07' AS Date), 26, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (27, 1, 1, 1, CAST(N'2022-12-09' AS Date), 27, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (28, 1, 1, 1, CAST(N'2022-12-12' AS Date), 28, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (29, 1, 1, 1, CAST(N'2022-12-14' AS Date), 29, 1, 1)
INSERT [dbo].[Session] ([id], [groupId], [roomId], [timeSlotId], [date], [index], [lid], [attanded]) VALUES (30, 1, 1, 1, CAST(N'2022-12-16' AS Date), 30, 1, 1)
GO
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (1, NULL, NULL, NULL, NULL, N'mr A')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (2, NULL, NULL, NULL, NULL, N'mr B')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (3, NULL, NULL, NULL, NULL, N'C')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (4, NULL, NULL, NULL, NULL, N'D')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (5, NULL, NULL, NULL, NULL, N'E')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (6, NULL, NULL, NULL, NULL, N'F')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (7, NULL, NULL, NULL, NULL, N'G')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (8, NULL, NULL, NULL, NULL, N'H')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (9, NULL, NULL, NULL, NULL, N'I')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (10, NULL, NULL, NULL, NULL, N'K')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (11, NULL, NULL, NULL, NULL, N'L')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (12, NULL, NULL, NULL, NULL, N'M')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (13, NULL, NULL, NULL, NULL, N'O')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (14, NULL, NULL, NULL, NULL, N'mr C')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (15, NULL, NULL, NULL, NULL, N'mr D')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (16, NULL, NULL, NULL, NULL, N'mr E')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (17, NULL, NULL, NULL, NULL, N'mr F')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (18, NULL, NULL, NULL, NULL, N'mr ABC')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (19, NULL, NULL, NULL, NULL, N'mr AB')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (20, NULL, NULL, NULL, NULL, N'mr ac ')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (21, NULL, NULL, NULL, NULL, N'mr ad')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (22, NULL, NULL, NULL, NULL, N'mr minh')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (23, NULL, NULL, NULL, NULL, N'mr minh')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (24, NULL, NULL, NULL, NULL, N'mr mh')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (25, NULL, NULL, NULL, NULL, N'mr e')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (26, NULL, NULL, NULL, NULL, N'mr son')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (27, NULL, NULL, NULL, NULL, N'viet')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (28, NULL, NULL, NULL, NULL, N'nam')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (29, NULL, NULL, NULL, NULL, N'vo ')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (30, NULL, NULL, NULL, NULL, N'dich')
INSERT [dbo].[Student] ([id], [address], [phone], [email], [major], [name]) VALUES (31, NULL, NULL, NULL, NULL, N'vo ')
GO
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 1)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 2)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 3)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 4)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 5)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 6)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 7)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 8)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 9)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 10)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 11)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 12)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 13)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 14)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 15)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 16)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 17)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 18)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 19)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 20)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 21)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 22)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 23)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 24)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 25)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 26)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 27)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 28)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 29)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (1, 30)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 1)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 2)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 3)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 4)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 5)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 6)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 7)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 8)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 9)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 10)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 11)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 12)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 13)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 14)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 15)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 16)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 17)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 18)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 19)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 20)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 21)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 22)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 23)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 24)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 25)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 26)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 27)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 28)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 29)
INSERT [dbo].[Student_Group] ([groupId], [studentId]) VALUES (2, 30)
GO
INSERT [dbo].[Subject] ([id], [name], [noCredit], [description], [createdTime]) VALUES (1, N'PRJ301', 3, NULL, NULL)
INSERT [dbo].[Subject] ([id], [name], [noCredit], [description], [createdTime]) VALUES (2, N'MAS291', 3, NULL, NULL)
INSERT [dbo].[Subject] ([id], [name], [noCredit], [description], [createdTime]) VALUES (3, N'LAB211', 3, NULL, NULL)
GO
INSERT [dbo].[TimeSlot] ([id], [description]) VALUES (1, N'7:30-9:00')
INSERT [dbo].[TimeSlot] ([id], [description]) VALUES (2, N'9:10-10:40')
INSERT [dbo].[TimeSlot] ([id], [description]) VALUES (3, N'10:50-12:20')
INSERT [dbo].[TimeSlot] ([id], [description]) VALUES (4, N'12:50-14:20')
INSERT [dbo].[TimeSlot] ([id], [description]) VALUES (5, N'14:30-16:00')
INSERT [dbo].[TimeSlot] ([id], [description]) VALUES (6, N'16:10-17:40')
INSERT [dbo].[TimeSlot] ([id], [description]) VALUES (7, N'17:50-19:20')
INSERT [dbo].[TimeSlot] ([id], [description]) VALUES (8, N'19:30-21:00')
GO
ALTER TABLE [dbo].[Account_Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Account_Lecturer_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Account_Lecturer] CHECK CONSTRAINT [FK_Account_Lecturer_Account]
GO
ALTER TABLE [dbo].[Account_Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Account_Lecturer_Lecture] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecture] ([id])
GO
ALTER TABLE [dbo].[Account_Lecturer] CHECK CONSTRAINT [FK_Account_Lecturer_Lecture]
GO
ALTER TABLE [dbo].[Account_Student]  WITH CHECK ADD  CONSTRAINT [FK_Account_Student_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Account_Student] CHECK CONSTRAINT [FK_Account_Student_Account]
GO
ALTER TABLE [dbo].[Account_Student]  WITH CHECK ADD  CONSTRAINT [FK_Account_Student_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Account_Student] CHECK CONSTRAINT [FK_Account_Student_Student]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Session] FOREIGN KEY([sessionId])
REFERENCES [dbo].[Session] ([id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecture] FOREIGN KEY([lectureId])
REFERENCES [dbo].[Lecture] ([id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecture]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([subjectCode])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Account]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Role]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([fid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([groupId])
REFERENCES [dbo].[Group] ([id])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Lecture] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecture] ([id])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Lecture]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([roomId])
REFERENCES [dbo].[Room] ([id])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([timeSlotId])
REFERENCES [dbo].[TimeSlot] ([id])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
