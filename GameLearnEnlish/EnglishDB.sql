USE [master]
GO
/****** Object:  Database [EnglishGame]    Script Date: 7/20/2020 11:05:10 PM ******/
CREATE DATABASE [EnglishGame]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EnglishGame', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.ADMIN\MSSQL\DATA\EnglishGame.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EnglishGame_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.ADMIN\MSSQL\DATA\EnglishGame_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EnglishGame] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EnglishGame].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EnglishGame] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EnglishGame] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EnglishGame] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EnglishGame] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EnglishGame] SET ARITHABORT OFF 
GO
ALTER DATABASE [EnglishGame] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EnglishGame] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EnglishGame] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EnglishGame] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EnglishGame] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EnglishGame] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EnglishGame] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EnglishGame] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EnglishGame] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EnglishGame] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EnglishGame] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EnglishGame] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EnglishGame] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EnglishGame] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EnglishGame] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EnglishGame] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EnglishGame] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EnglishGame] SET RECOVERY FULL 
GO
ALTER DATABASE [EnglishGame] SET  MULTI_USER 
GO
ALTER DATABASE [EnglishGame] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EnglishGame] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EnglishGame] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EnglishGame] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EnglishGame] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EnglishGame', N'ON'
GO
USE [EnglishGame]
GO
/****** Object:  Table [dbo].[Choice]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](128) NULL,
	[Voice] [nvarchar](128) NULL,
 CONSTRAINT [PK_Choice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChoiceOfUnit]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChoiceOfUnit](
	[Id_Unit] [int] NOT NULL,
	[Id_Choice] [int] NOT NULL,
 CONSTRAINT [PK_ChoiceOfUnit] PRIMARY KEY CLUSTERED 
(
	[Id_Unit] ASC,
	[Id_Choice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Concentration]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Concentration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](128) NULL,
	[Voice] [varchar](128) NULL,
 CONSTRAINT [PK_Word] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConcentrationOfUnit]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConcentrationOfUnit](
	[Id_Unit] [int] NOT NULL,
	[Id_Concentration] [int] NOT NULL,
 CONSTRAINT [PK_WordOfUnit] PRIMARY KEY CLUSTERED 
(
	[Id_Unit] ASC,
	[Id_Concentration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LookAndFind]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LookAndFind](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](128) NULL,
	[Title] [varchar](128) NULL,
	[Voice] [varchar](128) NULL,
	[ImageCover] [varchar](128) NULL,
 CONSTRAINT [PK_LookAndFind] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LookAndFindOfUnit]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookAndFindOfUnit](
	[Id_Unit] [int] NOT NULL,
	[Id_LookAndFind] [int] NOT NULL,
 CONSTRAINT [PK_LookAndFindOfUnit] PRIMARY KEY CLUSTERED 
(
	[Id_Unit] ASC,
	[Id_LookAndFind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Matching]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matching](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](128) NULL,
	[Voice] [nvarchar](128) NULL,
 CONSTRAINT [PK_Matching] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MatchingOfUnit]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchingOfUnit](
	[Id_Unit] [int] NOT NULL,
	[Id_Matching] [int] NOT NULL,
 CONSTRAINT [PK_MatchingOfUnit] PRIMARY KEY CLUSTERED 
(
	[Id_Unit] ASC,
	[Id_Matching] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Painting]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Painting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](128) NULL,
	[ImagePainted] [varchar](128) NULL,
	[Request] [varchar](128) NULL,
	[Color] [int] NULL,
 CONSTRAINT [PK_Painting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaintingOfUnit]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaintingOfUnit](
	[Id_Painting] [int] NOT NULL,
	[Id_Unit] [int] NOT NULL,
 CONSTRAINT [PK_PaintingOfUnit] PRIMARY KEY CLUSTERED 
(
	[Id_Painting] ASC,
	[Id_Unit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sorting]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sorting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](128) NULL,
	[Voice] [varchar](128) NULL,
 CONSTRAINT [PK_Sorting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SortingOfUnit]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SortingOfUnit](
	[Id_Unit] [int] NOT NULL,
	[Id_Sorting] [int] NOT NULL,
 CONSTRAINT [PK_SortingOfUnit] PRIMARY KEY CLUSTERED 
(
	[Id_Unit] ASC,
	[Id_Sorting] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Storytime]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Storytime](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sound] [varchar](128) NULL,
	[Image] [varchar](128) NULL,
	[Text] [varchar](256) NULL,
 CONSTRAINT [PK_Sentence] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StorytimeOfUnit]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorytimeOfUnit](
	[Id_Unit] [int] NOT NULL,
	[Id_Storytime] [int] NOT NULL,
 CONSTRAINT [PK_SentenceOfUnit] PRIMARY KEY CLUSTERED 
(
	[Id_Unit] ASC,
	[Id_Storytime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Unit]    Script Date: 7/20/2020 11:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NULL,
	[VoiceUnit] [varchar](128) NULL,
	[Title] [varchar](128) NULL,
	[VoiceTitle] [varchar](128) NULL,
	[Image] [varchar](128) NULL,
	[ImageButton] [varchar](128) NULL,
	[ImageButtonOver] [varchar](128) NULL,
	[ImageButtonSel] [varchar](128) NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Choice] ON 

INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (1, N'..\..\media\textures\multiplechoice\act1\img1.png', N'..\..\media\audio\multiplechoice\act1\sound1.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (2, N'..\..\media\textures\multiplechoice\act1\img2.png', N'..\..\media\audio\multiplechoice\act1\sound2.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (3, N'..\..\media\textures\multiplechoice\act1\img3.png', N'..\..\media\audio\multiplechoice\act1\sound3.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (4, N'..\..\media\textures\multiplechoice\act2\img1.png', N'..\..\media\audio\multiplechoice\act2\sound1.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (5, N'..\..\media\textures\multiplechoice\act2\img2.png', N'..\..\media\audio\multiplechoice\act2\sound2.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (6, N'..\..\media\textures\multiplechoice\act2\img3.png', N'..\..\media\audio\multiplechoice\act2\sound3.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (7, N'..\..\media\textures\multiplechoice\act3\img1.png', N'..\..\media\audio\multiplechoice\act3\sound1.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (8, N'..\..\media\textures\multiplechoice\act3\img2.png', N'..\..\media\audio\multiplechoice\act3\sound2.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (9, N'..\..\media\textures\multiplechoice\act3\img3.png', N'..\..\media\audio\multiplechoice\act3\sound3.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (10, N'..\..\media\textures\multiplechoice\act4\img1.png', N'..\..\media\audio\multiplechoice\act4\sound1.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (11, N'..\..\media\textures\multiplechoice\act4\img2.png', N'..\..\media\audio\multiplechoice\act4\sound2.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (12, N'..\..\media\textures\multiplechoice\act4\img3.png', N'..\..\media\audio\multiplechoice\act4\sound3.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (13, N'..\..\media\textures\multiplechoice\act5\img1.png', N'..\..\media\audio\multiplechoice\act5\sound1.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (14, N'..\..\media\textures\multiplechoice\act5\img2.png', N'..\..\media\audio\multiplechoice\act5\sound2.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (15, N'..\..\media\textures\multiplechoice\act5\img3.png', N'..\..\media\audio\multiplechoice\act5\sound3.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (16, N'..\..\media\textures\multiplechoice\act6\img1.png', N'..\..\media\audio\multiplechoice\act6\sound1.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (17, N'..\..\media\textures\multiplechoice\act6\img2.png', N'..\..\media\audio\multiplechoice\act6\sound2.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (18, N'..\..\media\textures\multiplechoice\act6\img3.png', N'..\..\media\audio\multiplechoice\act6\sound3.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (19, N'..\..\media\textures\multiplechoice\act7\img1.png', N'..\..\media\audio\multiplechoice\act7\sound1.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (20, N'..\..\media\textures\multiplechoice\act7\img2.png', N'..\..\media\audio\multiplechoice\act7\sound2.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (21, N'..\..\media\textures\multiplechoice\act7\img3.png', N'..\..\media\audio\multiplechoice\act7\sound3.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (22, N'..\..\media\textures\multiplechoice\act8\img1.png', N'..\..\media\audio\multiplechoice\act8\sound1.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (23, N'..\..\media\textures\multiplechoice\act8\img2.png', N'..\..\media\audio\multiplechoice\act8\sound2.mp3')
INSERT [dbo].[Choice] ([Id], [Image], [Voice]) VALUES (24, N'..\..\media\textures\multiplechoice\act8\img3.png', N'..\..\media\audio\multiplechoice\act8\sound3.mp3')
SET IDENTITY_INSERT [dbo].[Choice] OFF
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (1, 1)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (1, 2)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (1, 3)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (2, 4)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (2, 5)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (2, 6)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (3, 7)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (3, 8)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (3, 9)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (4, 10)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (4, 11)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (4, 12)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (5, 13)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (5, 14)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (5, 15)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (6, 16)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (6, 17)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (6, 18)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (7, 19)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (7, 20)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (7, 21)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (8, 22)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (8, 23)
INSERT [dbo].[ChoiceOfUnit] ([Id_Unit], [Id_Choice]) VALUES (8, 24)
SET IDENTITY_INSERT [dbo].[Concentration] ON 

INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (1, N'..\..\media\textures\concentration\act1\img1.png', N'..\..\media\audio\concentration\act1\sound1.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (2, N'..\..\media\textures\concentration\act1\img2.png', N'..\..\media\audio\concentration\act1\sound2.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (3, N'..\..\media\textures\concentration\act1\img3.png', N'..\..\media\audio\concentration\act1\sound3.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (4, N'..\..\media\textures\concentration\act2\img1.png', N'..\..\media\audio\concentration\act2\sound1.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (5, N'..\..\media\textures\concentration\act2\img2.png', N'..\..\media\audio\concentration\act2\sound2.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (6, N'..\..\media\textures\concentration\act2\img3.png', N'..\..\media\audio\concentration\act2\sound3.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (7, N'..\..\media\textures\concentration\act3\img1.png', N'..\..\media\audio\concentration\act3\sound1.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (8, N'..\..\media\textures\concentration\act3\img2.png', N'..\..\media\audio\concentration\act3\sound2.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (9, N'..\..\media\textures\concentration\act3\img3.png', N'..\..\media\audio\concentration\act3\sound3.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (10, N'..\..\media\textures\concentration\act4\img1.png', N'..\..\media\audio\concentration\act4\sound1.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (11, N'..\..\media\textures\concentration\act4\img2.png', N'..\..\media\audio\concentration\act4\sound2.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (12, N'..\..\media\textures\concentration\act4\img3.png', N'..\..\media\audio\concentration\act4\sound3.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (13, N'..\..\media\textures\concentration\act5\img1.png', N'..\..\media\audio\concentration\act5\sound1.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (14, N'..\..\media\textures\concentration\act5\img2.png', N'..\..\media\audio\concentration\act5\sound2.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (15, N'..\..\media\textures\concentration\act5\img3.png', N'..\..\media\audio\concentration\act5\sound3.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (16, N'..\..\media\textures\concentration\act6\img1.png', N'..\..\media\audio\concentration\act6\sound1.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (17, N'..\..\media\textures\concentration\act6\img2.png', N'..\..\media\audio\concentration\act6\sound2.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (18, N'..\..\media\textures\concentration\act6\img3.png', N'..\..\media\audio\concentration\act6\sound3.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (19, N'..\..\media\textures\concentration\act7\img1.png', N'..\..\media\audio\concentration\act7\sound1.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (20, N'..\..\media\textures\concentration\act7\img2.png', N'..\..\media\audio\concentration\act7\sound2.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (21, N'..\..\media\textures\concentration\act7\img3.png', N'..\..\media\audio\concentration\act7\sound3.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (22, N'..\..\media\textures\concentration\act8\img1.png', N'..\..\media\audio\concentration\act8\sound1.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (23, N'..\..\media\textures\concentration\act8\img2.png', N'..\..\media\audio\concentration\act8\sound2.mp3')
INSERT [dbo].[Concentration] ([Id], [Image], [Voice]) VALUES (24, N'..\..\media\textures\concentration\act8\img3.png', N'..\..\media\audio\concentration\act8\sound3.mp3')
SET IDENTITY_INSERT [dbo].[Concentration] OFF
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (1, 1)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (1, 2)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (1, 3)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (2, 4)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (2, 5)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (2, 6)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (3, 7)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (3, 8)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (3, 9)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (4, 10)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (4, 11)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (4, 12)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (5, 13)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (5, 14)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (5, 15)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (6, 16)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (6, 17)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (6, 18)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (7, 19)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (7, 20)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (7, 21)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (8, 22)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (8, 23)
INSERT [dbo].[ConcentrationOfUnit] ([Id_Unit], [Id_Concentration]) VALUES (8, 24)
SET IDENTITY_INSERT [dbo].[LookAndFind] ON 

INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (1, N'..\..\media\textures\lookandfind\act1\obj1.png', N'Look and fine. Click on each chair you see', N'..\..\media\audio\lookandfind\act1\description.mp3', N'..\..\media\textures\lookandfind\act1\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (2, N'..\..\media\textures\lookandfind\act1\obj2.png', N'Look and fine. Click on each chair you see', N'..\..\media\audio\lookandfind\act1\description.mp3', N'..\..\media\textures\lookandfind\act1\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (3, N'..\..\media\textures\lookandfind\act1\obj3.png', N'Look and fine. Click on each chair you see', N'..\..\media\audio\lookandfind\act1\description.mp3', N'..\..\media\textures\lookandfind\act1\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (4, N'..\..\media\textures\lookandfind\act2\obj1.png', N'Look and fine. Click on each bee you see', N'..\..\media\audio\lookandfind\act2\description.mp3', N'..\..\media\textures\lookandfind\act2\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (5, N'..\..\media\textures\lookandfind\act2\obj2.png', N'Look and fine. Click on each bee you see', N'..\..\media\audio\lookandfind\act2\description.mp3', N'..\..\media\textures\lookandfind\act2\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (6, N'..\..\media\textures\lookandfind\act2\obj3.png', N'Look and fine. Click on each bee you see', N'..\..\media\audio\lookandfind\act2\description.mp3', N'..\..\media\textures\lookandfind\act2\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (7, N'..\..\media\textures\lookandfind\act3\obj1.png', N'Look and fine. Click on each blue crayon you see', N'..\..\media\audio\lookandfind\act3\description.mp3', N'..\..\media\textures\lookandfind\act3\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (8, N'..\..\media\textures\lookandfind\act3\obj2.png', N'Look and fine. Click on each blue crayon you see', N'..\..\media\audio\lookandfind\act3\description.mp3', N'..\..\media\textures\lookandfind\act3\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (9, N'..\..\media\textures\lookandfind\act3\obj3.png', N'Look and fine. Click on each blue crayon you see', N'..\..\media\audio\lookandfind\act3\description.mp3', N'..\..\media\textures\lookandfind\act3\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (10, N'..\..\media\textures\lookandfind\act4\obj1.png', N'Look and fine. Click on each butterfly you see', N'..\..\media\audio\lookandfind\act4\description.mp3', N'..\..\media\textures\lookandfind\act4\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (11, N'..\..\media\textures\lookandfind\act4\obj2.png', N'Look and fine. Click on each butterfly you see', N'..\..\media\audio\lookandfind\act4\description.mp3', N'..\..\media\textures\lookandfind\act4\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (12, N'..\..\media\textures\lookandfind\act4\obj3.png', N'Look and fine. Click on each butterfly you see', N'..\..\media\audio\lookandfind\act4\description.mp3', N'..\..\media\textures\lookandfind\act4\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (13, N'..\..\media\textures\lookandfind\act5\obj1.png', N'Look and fine. Click on each red rectangle you see', N'..\..\media\audio\lookandfind\act5\description.mp3', N'..\..\media\textures\lookandfind\act5\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (14, N'..\..\media\textures\lookandfind\act5\obj2.png', N'Look and fine. Click on each red rectangle you see', N'..\..\media\audio\lookandfind\act5\description.mp3', N'..\..\media\textures\lookandfind\act5\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (15, N'..\..\media\textures\lookandfind\act5\obj3.png', N'Look and fine. Click on each red rectangle you see', N'..\..\media\audio\lookandfind\act5\description.mp3', N'..\..\media\textures\lookandfind\act5\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (16, N'..\..\media\textures\lookandfind\act6\obj1.png', N'Look and fine. Click on each toy car you see', N'..\..\media\audio\lookandfind\act6\description.mp3', N'..\..\media\textures\lookandfind\act6\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (17, N'..\..\media\textures\lookandfind\act6\obj2.png', N'Look and fine. Click on each toy car you see', N'..\..\media\audio\lookandfind\act6\description.mp3', N'..\..\media\textures\lookandfind\act6\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (18, N'..\..\media\textures\lookandfind\act6\obj3.png', N'Look and fine. Click on each toy car you see', N'..\..\media\audio\lookandfind\act6\description.mp3', N'..\..\media\textures\lookandfind\act6\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (19, N'..\..\media\textures\lookandfind\act7\obj1.png', N'Look and fine. Click on each white bird you see', N'..\..\media\audio\lookandfind\act7\description.mp3', N'..\..\media\textures\lookandfind\act7\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (20, N'..\..\media\textures\lookandfind\act7\obj2.png', N'Look and fine. Click on each white bird you see', N'..\..\media\audio\lookandfind\act7\description.mp3', N'..\..\media\textures\lookandfind\act7\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (21, N'..\..\media\textures\lookandfind\act7\obj3.png', N'Look and fine. Click on each white bird you see', N'..\..\media\audio\lookandfind\act7\description.mp3', N'..\..\media\textures\lookandfind\act7\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (22, N'..\..\media\textures\lookandfind\act8\obj1.png', N'Look and fine. Click on each cat you see', N'..\..\media\audio\lookandfind\act8\description.mp3', N'..\..\media\textures\lookandfind\act8\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (23, N'..\..\media\textures\lookandfind\act8\obj2.png', N'Look and fine. Click on each cat you see', N'..\..\media\audio\lookandfind\act8\description.mp3', N'..\..\media\textures\lookandfind\act8\cover.png')
INSERT [dbo].[LookAndFind] ([Id], [Image], [Title], [Voice], [ImageCover]) VALUES (24, N'..\..\media\textures\lookandfind\act8\obj3.png', N'Look and fine. Click on each cat you see', N'..\..\media\audio\lookandfind\act8\description.mp3', N'..\..\media\textures\lookandfind\act8\cover.png')
SET IDENTITY_INSERT [dbo].[LookAndFind] OFF
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (1, 1)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (1, 2)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (1, 3)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (2, 4)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (2, 5)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (2, 6)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (3, 7)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (3, 8)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (3, 9)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (4, 10)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (4, 11)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (4, 12)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (5, 13)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (5, 14)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (5, 15)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (6, 16)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (6, 17)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (6, 18)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (7, 19)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (7, 20)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (7, 21)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (8, 22)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (8, 23)
INSERT [dbo].[LookAndFindOfUnit] ([Id_Unit], [Id_LookAndFind]) VALUES (8, 24)
SET IDENTITY_INSERT [dbo].[Matching] ON 

INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (1, N'..\..\media\textures\matching\act1\img1.png', N'..\..\media\audio\matching\act1\sound1.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (2, N'..\..\media\textures\matching\act1\img2.png', N'..\..\media\audio\matching\act1\sound2.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (3, N'..\..\media\textures\matching\act1\img3.png', N'..\..\media\audio\matching\act1\sound3.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (4, N'..\..\media\textures\matching\act2\img1.png', N'..\..\media\audio\matching\act2\sound1.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (5, N'..\..\media\textures\matching\act2\img2.png', N'..\..\media\audio\matching\act2\sound2.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (6, N'..\..\media\textures\matching\act2\img3.png', N'..\..\media\audio\matching\act2\sound3.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (7, N'..\..\media\textures\matching\act3\img1.png', N'..\..\media\audio\matching\act3\sound1.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (8, N'..\..\media\textures\matching\act3\img2.png', N'..\..\media\audio\matching\act3\sound2.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (9, N'..\..\media\textures\matching\act3\img3.png', N'..\..\media\audio\matching\act3\sound3.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (10, N'..\..\media\textures\matching\act4\img1.png', N'..\..\media\audio\matching\act4\sound1.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (11, N'..\..\media\textures\matching\act4\img2.png', N'..\..\media\audio\matching\act4\sound2.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (12, N'..\..\media\textures\matching\act4\img3.png', N'..\..\media\audio\matching\act4\sound3.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (13, N'..\..\media\textures\matching\act5\img1.png', N'..\..\media\audio\matching\act5\sound1.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (14, N'..\..\media\textures\matching\act5\img2.png', N'..\..\media\audio\matching\act5\sound2.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (15, N'..\..\media\textures\matching\act5\img3.png', N'..\..\media\audio\matching\act5\sound3.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (16, N'..\..\media\textures\matching\act6\img1.png', N'..\..\media\audio\matching\act6\sound1.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (17, N'..\..\media\textures\matching\act6\img2.png', N'..\..\media\audio\matching\act6\sound2.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (18, N'..\..\media\textures\matching\act6\img3.png', N'..\..\media\audio\matching\act6\sound3.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (19, N'..\..\media\textures\matching\act7\img1.png', N'..\..\media\audio\matching\act7\sound1.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (20, N'..\..\media\textures\matching\act7\img2.png', N'..\..\media\audio\matching\act7\sound2.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (21, N'..\..\media\textures\matching\act7\img3.png', N'..\..\media\audio\matching\act7\sound3.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (22, N'..\..\media\textures\matching\act8\img1.png', N'..\..\media\audio\matching\act8\sound1.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (23, N'..\..\media\textures\matching\act8\img2.png', N'..\..\media\audio\matching\act8\sound2.mp3')
INSERT [dbo].[Matching] ([Id], [Image], [Voice]) VALUES (24, N'..\..\media\textures\matching\act8\img3.png', N'..\..\media\audio\matching\act8\sound3.mp3')
SET IDENTITY_INSERT [dbo].[Matching] OFF
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (1, 1)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (1, 2)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (1, 3)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (2, 4)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (2, 5)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (2, 6)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (3, 7)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (3, 8)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (3, 9)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (4, 10)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (4, 11)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (4, 12)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (5, 13)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (5, 14)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (5, 15)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (6, 16)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (6, 17)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (6, 18)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (7, 19)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (7, 20)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (7, 21)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (8, 22)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (8, 23)
INSERT [dbo].[MatchingOfUnit] ([Id_Unit], [Id_Matching]) VALUES (8, 24)
SET IDENTITY_INSERT [dbo].[Painting] ON 

INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (1, N'..\..\media\textures\painting\act1\img1.png', N'..\..\media\textures\painting\act1\coloredimg1.png', N'..\..\media\audio\painting\act1\sound1.mp3', 1)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (2, N'..\..\media\textures\painting\act1\img2.png', N'..\..\media\textures\painting\act1\coloredimg2.png', N'..\..\media\audio\painting\act1\sound2.mp3', 1)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (3, N'..\..\media\textures\painting\act1\img3.png', N'..\..\media\textures\painting\act1\coloredimg3.png', N'..\..\media\audio\painting\act1\sound3.mp3', 1)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (4, N'..\..\media\textures\painting\act2\img1.png', N'..\..\media\textures\painting\act2\coloredimg1.png', N'..\..\media\audio\painting\act2\sound1.mp3', 2)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (5, N'..\..\media\textures\painting\act2\img2.png', N'..\..\media\textures\painting\act2\coloredimg2.png', N'..\..\media\audio\painting\act2\sound2.mp3', 1)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (6, N'..\..\media\textures\painting\act2\img3.png', N'..\..\media\textures\painting\act2\coloredimg3.png', N'..\..\media\audio\painting\act2\sound3.mp3', 2)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (7, N'..\..\media\textures\painting\act3\img1.png', N'..\..\media\textures\painting\act3\coloredimg1.png', N'..\..\media\audio\painting\act3\sound1.mp3', 2)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (8, N'..\..\media\textures\painting\act3\img2.png', N'..\..\media\textures\painting\act3\coloredimg2.png', N'..\..\media\audio\painting\act3\sound2.mp3', 1)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (9, N'..\..\media\textures\painting\act3\img3.png', N'..\..\media\textures\painting\act3\coloredimg3.png', N'..\..\media\audio\painting\act3\sound3.mp3', 3)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (10, N'..\..\media\textures\painting\act4\img1.png', N'..\..\media\textures\painting\act4\coloredimg1.png', N'..\..\media\audio\painting\act4\sound1.mp3', 2)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (11, N'..\..\media\textures\painting\act4\img2.png', N'..\..\media\textures\painting\act4\coloredimg2.png', N'..\..\media\audio\painting\act4\sound2.mp3', 4)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (12, N'..\..\media\textures\painting\act4\img3.png', N'..\..\media\textures\painting\act4\coloredimg3.png', N'..\..\media\audio\painting\act4\sound3.mp3', 3)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (13, N'..\..\media\textures\painting\act5\img1.png', N'..\..\media\textures\painting\act5\coloredimg1.png', N'..\..\media\audio\painting\act5\sound1.mp3', 6)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (14, N'..\..\media\textures\painting\act5\img2.png', N'..\..\media\textures\painting\act5\coloredimg2.png', N'..\..\media\audio\painting\act5\sound2.mp3', 5)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (15, N'..\..\media\textures\painting\act5\img3.png', N'..\..\media\textures\painting\act5\coloredimg3.png', N'..\..\media\audio\painting\act5\sound3.mp3', 1)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (16, N'..\..\media\textures\painting\act6\img1.png', N'..\..\media\textures\painting\act6\coloredimg1.png', N'..\..\media\audio\painting\act6\sound1.mp3', 5)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (17, N'..\..\media\textures\painting\act6\img2.png', N'..\..\media\textures\painting\act6\coloredimg2.png', N'..\..\media\audio\painting\act6\sound2.mp3', 8)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (18, N'..\..\media\textures\painting\act6\img3.png', N'..\..\media\textures\painting\act6\coloredimg3.png', N'..\..\media\audio\painting\act6\sound3.mp3', 7)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (19, N'..\..\media\textures\painting\act7\img1.png', N'..\..\media\textures\painting\act7\coloredimg1.png', N'..\..\media\audio\painting\act7\sound1.mp3', 4)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (20, N'..\..\media\textures\painting\act7\img2.png', N'..\..\media\textures\painting\act7\coloredimg2.png', N'..\..\media\audio\painting\act7\sound2.mp3', 9)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (21, N'..\..\media\textures\painting\act7\img3.png', N'..\..\media\textures\painting\act7\coloredimg3.png', N'..\..\media\audio\painting\act7\sound3.mp3', 5)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (22, N'..\..\media\textures\painting\act8\img1.png', N'..\..\media\textures\painting\act8\coloredimg1.png', N'..\..\media\audio\painting\act8\sound1.mp3', 3)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (23, N'..\..\media\textures\painting\act8\img2.png', N'..\..\media\textures\painting\act8\coloredimg2.png', N'..\..\media\audio\painting\act8\sound2.mp3', 5)
INSERT [dbo].[Painting] ([Id], [Image], [ImagePainted], [Request], [Color]) VALUES (24, N'..\..\media\textures\painting\act8\img3.png', N'..\..\media\textures\painting\act8\coloredimg3.png', N'..\..\media\audio\painting\act8\sound3.mp3', 4)
SET IDENTITY_INSERT [dbo].[Painting] OFF
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (1, 1)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (2, 1)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (3, 1)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (4, 2)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (5, 2)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (6, 2)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (7, 3)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (8, 3)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (9, 3)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (10, 4)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (11, 4)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (12, 4)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (13, 5)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (14, 5)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (15, 5)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (16, 6)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (17, 6)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (18, 6)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (19, 7)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (20, 7)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (21, 7)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (22, 8)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (23, 8)
INSERT [dbo].[PaintingOfUnit] ([Id_Painting], [Id_Unit]) VALUES (24, 8)
SET IDENTITY_INSERT [dbo].[Sorting] ON 

INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (1, N'..\..\media\textures\sequence\act1\img1.png', N'..\..\media\audio\sequence\act1\sound1.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (2, N'..\..\media\textures\sequence\act1\img2.png', N'..\..\media\audio\sequence\act1\sound2.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (3, N'..\..\media\textures\sequence\act1\img3.png', N'..\..\media\audio\sequence\act1\sound3.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (4, N'..\..\media\textures\sequence\act2\img1.png', N'..\..\media\audio\sequence\act2\sound1.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (5, N'..\..\media\textures\sequence\act2\img2.png', N'..\..\media\audio\sequence\act2\sound2.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (6, N'..\..\media\textures\sequence\act2\img3.png', N'..\..\media\audio\sequence\act2\sound3.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (7, N'..\..\media\textures\sequence\act3\img1.png', N'..\..\media\audio\sequence\act3\sound1.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (8, N'..\..\media\textures\sequence\act3\img2.png', N'..\..\media\audio\sequence\act3\sound2.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (9, N'..\..\media\textures\sequence\act3\img3.png', N'..\..\media\audio\sequence\act3\sound3.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (10, N'..\..\media\textures\sequence\act4\img1.png', N'..\..\media\audio\sequence\act4\sound1.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (11, N'..\..\media\textures\sequence\act4\img2.png', N'..\..\media\audio\sequence\act4\sound2.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (12, N'..\..\media\textures\sequence\act4\img3.png', N'..\..\media\audio\sequence\act4\sound3.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (13, N'..\..\media\textures\sequence\act5\img1.png', N'..\..\media\audio\sequence\act5\sound1.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (14, N'..\..\media\textures\sequence\act5\img2.png', N'..\..\media\audio\sequence\act5\sound2.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (15, N'..\..\media\textures\sequence\act5\img3.png', N'..\..\media\audio\sequence\act5\sound3.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (16, N'..\..\media\textures\sequence\act6\img1.png', N'..\..\media\audio\sequence\act6\sound1.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (17, N'..\..\media\textures\sequence\act6\img2.png', N'..\..\media\audio\sequence\act6\sound2.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (18, N'..\..\media\textures\sequence\act6\img3.png', N'..\..\media\audio\sequence\act6\sound3.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (19, N'..\..\media\textures\sequence\act7\img1.png', N'..\..\media\audio\sequence\act7\sound1.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (20, N'..\..\media\textures\sequence\act7\img2.png', N'..\..\media\audio\sequence\act7\sound2.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (21, N'..\..\media\textures\sequence\act7\img3.png', N'..\..\media\audio\sequence\act7\sound3.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (22, N'..\..\media\textures\sequence\act8\img1.png', N'..\..\media\audio\sequence\act8\sound1.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (23, N'..\..\media\textures\sequence\act8\img2.png', N'..\..\media\audio\sequence\act8\sound2.mp3')
INSERT [dbo].[Sorting] ([Id], [Image], [Voice]) VALUES (24, N'..\..\media\textures\sequence\act8\img3.png', N'..\..\media\audio\sequence\act8\sound3.mp3')
SET IDENTITY_INSERT [dbo].[Sorting] OFF
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (1, 1)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (1, 2)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (1, 3)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (2, 4)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (2, 5)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (2, 6)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (3, 7)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (3, 8)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (3, 9)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (4, 10)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (4, 11)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (4, 12)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (5, 13)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (5, 14)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (5, 15)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (6, 16)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (6, 17)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (6, 18)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (7, 19)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (7, 20)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (7, 21)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (8, 22)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (8, 23)
INSERT [dbo].[SortingOfUnit] ([Id_Unit], [Id_Sorting]) VALUES (8, 24)
SET IDENTITY_INSERT [dbo].[Storytime] ON 

INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (1, N'..\..\media\audio\storytime\act1\sound1.mp3', N'..\..\media\textures\storytime\act1\img1.png', N'School Days')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (2, N'..\..\media\audio\storytime\act1\sound2.mp3', N'..\..\media\textures\storytime\act1\img2.png', N'-What is this?')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (3, N'..\..\media\audio\storytime\act1\sound3.mp3', N'..\..\media\textures\storytime\act1\img3.png', N'-It is a puppet.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (4, N'..\..\media\audio\storytime\act1\sound4.mp3', N'..\..\media\textures\storytime\act1\img4.png', N'-Oh! It''s a puppet.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (5, N'..\..\media\audio\storytime\act2\sound1.mp3', N'..\..\media\textures\storytime\act2\img1.png', N'What Is This?')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (6, N'..\..\media\audio\storytime\act2\sound2.mp3', N'..\..\media\textures\storytime\act2\img2.png', N'-What is this?')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (7, N'..\..\media\audio\storytime\act2\sound3.mp3', N'..\..\media\textures\storytime\act2\img2.png', N'-It is a square.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (8, N'..\..\media\audio\storytime\act2\sound4.mp3', N'..\..\media\textures\storytime\act2\img3.png', N'-They are Circles.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (9, N'..\..\media\audio\storytime\act2\sound5.mp3', N'..\..\media\textures\storytime\act2\img3.png', N'-They are Circles.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (10, N'..\..\media\audio\storytime\act2\sound6.mp3', N'..\..\media\textures\storytime\act2\img4.png', N'-It is a face!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (11, N'..\..\media\audio\storytime\act3\sound1.mp3', N'..\..\media\textures\storytime\act3\img1.png', N'My Family')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (12, N'..\..\media\audio\storytime\act3\sound2.mp3', N'..\..\media\textures\storytime\act3\img1.png', N'-This is my mother.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (13, N'..\..\media\audio\storytime\act3\sound3.mp3', N'..\..\media\textures\storytime\act3\img2.png', N'-This is my sister.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (14, N'..\..\media\audio\storytime\act3\sound4.mp3', N'..\..\media\textures\storytime\act3\img3.png', N'-Hello!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (15, N'..\..\media\audio\storytime\act3\sound5.mp3', N'..\..\media\textures\storytime\act3\img4.png', N'-This is my brother.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (16, N'..\..\media\audio\storytime\act3\sound6.mp3', N'..\..\media\textures\storytime\act3\img4.png', N'-What?')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (17, N'..\..\media\audio\storytime\act3\sound7.mp3', N'..\..\media\textures\storytime\act3\img4.png', N'-Hi!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (18, N'..\..\media\audio\storytime\act4\sound1.mp3', N'..\..\media\textures\storytime\act4\img1.png', N'Dollhouse')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (19, N'..\..\media\audio\storytime\act4\sound2.mp3', N'..\..\media\textures\storytime\act4\img1.png', N'-I want dolls.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (20, N'..\..\media\audio\storytime\act4\sound3.mp3', N'..\..\media\textures\storytime\act4\img1.png', N'-Let find dolls.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (21, N'..\..\media\audio\storytime\act4\sound4.mp3', N'..\..\media\textures\storytime\act4\img2.png', N'-Look!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (22, N'..\..\media\audio\storytime\act4\sound5.mp3', N'..\..\media\textures\storytime\act4\img1.png', N'-Yay!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (23, N'..\..\media\audio\storytime\act4\sound6.mp3', N'..\..\media\textures\storytime\act4\img3.png', N'-This is the mother.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (24, N'..\..\media\audio\storytime\act4\sound7.mp3', N'..\..\media\textures\storytime\act4\img3.png', N'-I want a doll family!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (25, N'..\..\media\audio\storytime\act4\sound8.mp3', N'..\..\media\textures\storytime\act4\img4.png', N'-We have BIG baby dolls!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (26, N'..\..\media\audio\storytime\act5\sound1.mp3', N'..\..\media\textures\storytime\act5\img1.png', N'A Surprise')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (27, N'..\..\media\audio\storytime\act5\sound2.mp3', N'..\..\media\textures\storytime\act5\img1.png', N'-I have milk.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (28, N'..\..\media\audio\storytime\act5\sound3.mp3', N'..\..\media\textures\storytime\act5\img2.png', N'-I have carrots.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (29, N'..\..\media\audio\storytime\act5\sound4.mp3', N'..\..\media\textures\storytime\act5\img3.png', N'-What do you have?')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (30, N'..\..\media\audio\storytime\act5\sound5.mp3', N'..\..\media\textures\storytime\act5\img4.png', N'-We have lunch and... a surprise!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (31, N'..\..\media\audio\storytime\act6\sound1.mp3', N'..\..\media\textures\storytime\act6\img1.png', N'Let''s Play')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (32, N'..\..\media\audio\storytime\act6\sound2.mp3', N'..\..\media\textures\storytime\act6\img1.png', N'-Let''s play.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (33, N'..\..\media\audio\storytime\act6\sound3.mp3', N'..\..\media\textures\storytime\act6\img2.png', N'-Yes! Yes!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (34, N'..\..\media\audio\storytime\act6\sound4.mp3', N'..\..\media\textures\storytime\act6\img2.png', N'-I want it!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (35, N'..\..\media\audio\storytime\act6\sound5.mp3', N'..\..\media\textures\storytime\act6\img2.png', N'-No! I want it!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (36, N'..\..\media\audio\storytime\act6\sound6.mp3', N'..\..\media\textures\storytime\act6\img3.png', N'-Look at you!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (37, N'..\..\media\audio\storytime\act6\sound7.mp3', N'..\..\media\textures\storytime\act6\img4.png', N'-I want a picture, please!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (38, N'..\..\media\audio\storytime\act7\sound1.mp3', N'..\..\media\textures\storytime\act7\img1.png', N'Where''s Lucy?')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (39, N'..\..\media\audio\storytime\act7\sound2.mp3', N'..\..\media\textures\storytime\act7\img1.png', N'-Where''s Lucy?')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (40, N'..\..\media\audio\storytime\act7\sound3.mp3', N'..\..\media\textures\storytime\act7\img2.png', N'-I don''t know.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (41, N'..\..\media\audio\storytime\act7\sound4.mp3', N'..\..\media\textures\storytime\act7\img2.png', N'-I see a crayon.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (42, N'..\..\media\audio\storytime\act7\sound5.mp3', N'..\..\media\textures\storytime\act7\img3.png', N'-I see a fish, but where''s Lucy?')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (43, N'..\..\media\audio\storytime\act7\sound6.mp3', N'..\..\media\textures\storytime\act7\img4.png', N'-I see Lucy. I see her new puppies, too!')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (44, N'..\..\media\audio\storytime\act8\sound1.mp3', N'..\..\media\textures\storytime\act8\img1.png', N'Hospital')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (45, N'..\..\media\audio\storytime\act8\sound2.mp3', N'..\..\media\textures\storytime\act8\img1.png', N'-I see one doctor.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (46, N'..\..\media\audio\storytime\act8\sound3.mp3', N'..\..\media\textures\storytime\act8\img2.png', N'-I see two nurses.')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (47, N'..\..\media\audio\storytime\act8\sound4.mp3', N'..\..\media\textures\storytime\act8\img3.png', N'-I see...')
INSERT [dbo].[Storytime] ([Id], [Sound], [Image], [Text]) VALUES (48, N'..\..\media\audio\storytime\act8\sound5.mp3', N'..\..\media\textures\storytime\act8\img4.png', N'-One, two, three balloons!')
SET IDENTITY_INSERT [dbo].[Storytime] OFF
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (1, 1)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (1, 2)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (1, 3)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (1, 4)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (2, 5)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (2, 6)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (2, 7)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (2, 8)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (2, 9)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (2, 10)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (3, 11)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (3, 12)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (3, 13)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (3, 14)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (3, 15)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (3, 16)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (3, 17)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (4, 18)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (4, 19)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (4, 20)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (4, 21)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (4, 22)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (4, 23)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (4, 24)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (4, 25)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (5, 26)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (5, 27)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (5, 28)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (5, 29)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (5, 30)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (6, 31)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (6, 32)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (6, 33)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (6, 34)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (6, 35)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (6, 36)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (6, 37)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (7, 38)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (7, 39)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (7, 40)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (7, 41)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (7, 42)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (7, 43)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (8, 44)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (8, 45)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (8, 46)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (8, 47)
INSERT [dbo].[StorytimeOfUnit] ([Id_Unit], [Id_Storytime]) VALUES (8, 48)
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([Id], [Number], [VoiceUnit], [Title], [VoiceTitle], [Image], [ImageButton], [ImageButtonOver], [ImageButtonSel]) VALUES (1, 1, N'..\..\media\audio\global\BigF1_cdau_menu_U01.mp3', N'My Class', N'..\..\media\audio\global\Activity_1.mp3', N'\media\textures\global\Menu_Globe_U1.png', N'\media\textures\global\Bt_unit_1.png', N'\media\textures\global\Bt_unit_1_over.png', N'\media\textures\global\Bt_unit_1_sel.png')
INSERT [dbo].[Unit] ([Id], [Number], [VoiceUnit], [Title], [VoiceTitle], [Image], [ImageButton], [ImageButtonOver], [ImageButtonSel]) VALUES (2, 2, N'..\..\media\audio\global\BigF1_cdau_menu_U02.mp3', N'My Body', N'..\..\media\audio\global\Activity_2.mp3', N'\media\textures\global\Menu_Globe_U2.png', N'\media\textures\global\Bt_unit_2.png', N'\media\textures\global\Bt_unit_2_over.png', N'\media\textures\global\Bt_unit_2_sel.png')
INSERT [dbo].[Unit] ([Id], [Number], [VoiceUnit], [Title], [VoiceTitle], [Image], [ImageButton], [ImageButtonOver], [ImageButtonSel]) VALUES (3, 3, N'..\..\media\audio\global\BigF1_cdau_menu_U03.mp3', N'My Family', N'..\..\media\audio\global\Activity_3.mp3', N'\media\textures\global\Menu_Globe_U3.png', N'\media\textures\global\Bt_unit_3.png', N'\media\textures\global\Bt_unit_3_over.png', N'\media\textures\global\Bt_unit_3_sel.png')
INSERT [dbo].[Unit] ([Id], [Number], [VoiceUnit], [Title], [VoiceTitle], [Image], [ImageButton], [ImageButtonOver], [ImageButtonSel]) VALUES (4, 4, N'..\..\media\audio\global\BigF1_cdau_menu_U04.mp3', N'My Toys', N'..\..\media\audio\global\Activity_4.mp3', N'\media\textures\global\Menu_Globe_U4.png', N'\media\textures\global\Bt_unit_4.png', N'\media\textures\global\Bt_unit_4_over.png', N'\media\textures\global\Bt_unit_4_sel.png')
INSERT [dbo].[Unit] ([Id], [Number], [VoiceUnit], [Title], [VoiceTitle], [Image], [ImageButton], [ImageButtonOver], [ImageButtonSel]) VALUES (5, 5, N'..\..\media\audio\global\BigF1_cdau_menu_U05.mp3', N'My Lunch', N'..\..\media\audio\global\Activity_5.mp3', N'\media\textures\global\Menu_Globe_U5.png', N'\media\textures\global\Bt_unit_5.png', N'\media\textures\global\Bt_unit_5_over.png', N'\media\textures\global\Bt_unit_5_sel.png')
INSERT [dbo].[Unit] ([Id], [Number], [VoiceUnit], [Title], [VoiceTitle], [Image], [ImageButton], [ImageButtonOver], [ImageButtonSel]) VALUES (6, 6, N'..\..\media\audio\global\BigF1_cdau_menu_U06.mp3', N'My Clothes', N'..\..\media\audio\global\Activity_6.mp3', N'\media\textures\global\Menu_Globe_U6.png', N'\media\textures\global\Bt_unit_6.png', N'\media\textures\global\Bt_unit_6_over.png', N'\media\textures\global\Bt_unit_6_sel.png')
INSERT [dbo].[Unit] ([Id], [Number], [VoiceUnit], [Title], [VoiceTitle], [Image], [ImageButton], [ImageButtonOver], [ImageButtonSel]) VALUES (7, 7, N'..\..\media\audio\global\BigF1_cdau_menu_U07.mp3', N'Animals', N'..\..\media\audio\global\Activity_7.mp3', N'\media\textures\global\Menu_Globe_U7.png', N'\media\textures\global\Bt_unit_7.png', N'\media\textures\global\Bt_unit_7_over.png', N'\media\textures\global\Bt_unit_7_sel.png')
INSERT [dbo].[Unit] ([Id], [Number], [VoiceUnit], [Title], [VoiceTitle], [Image], [ImageButton], [ImageButtonOver], [ImageButtonSel]) VALUES (8, 8, N'..\..\media\audio\global\BigF1_cdau_menu_U08.mp3', N'My World', N'..\..\media\audio\global\Activity_8.mp3', N'\media\textures\global\Menu_Globe_U8.png', N'\media\textures\global\Bt_unit_8.png', N'\media\textures\global\Bt_unit_8_over.png', N'\media\textures\global\Bt_unit_8_sel.png')
SET IDENTITY_INSERT [dbo].[Unit] OFF
ALTER TABLE [dbo].[ChoiceOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_ChoiceOfUnit_Choice] FOREIGN KEY([Id_Choice])
REFERENCES [dbo].[Choice] ([Id])
GO
ALTER TABLE [dbo].[ChoiceOfUnit] CHECK CONSTRAINT [FK_ChoiceOfUnit_Choice]
GO
ALTER TABLE [dbo].[ChoiceOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_ChoiceOfUnit_Unit] FOREIGN KEY([Id_Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[ChoiceOfUnit] CHECK CONSTRAINT [FK_ChoiceOfUnit_Unit]
GO
ALTER TABLE [dbo].[ConcentrationOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_WordOfUnit_Unit] FOREIGN KEY([Id_Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[ConcentrationOfUnit] CHECK CONSTRAINT [FK_WordOfUnit_Unit]
GO
ALTER TABLE [dbo].[ConcentrationOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_WordOfUnit_Word] FOREIGN KEY([Id_Concentration])
REFERENCES [dbo].[Concentration] ([Id])
GO
ALTER TABLE [dbo].[ConcentrationOfUnit] CHECK CONSTRAINT [FK_WordOfUnit_Word]
GO
ALTER TABLE [dbo].[LookAndFindOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_LookAndFindOfUnit_LookAndFind] FOREIGN KEY([Id_LookAndFind])
REFERENCES [dbo].[LookAndFind] ([Id])
GO
ALTER TABLE [dbo].[LookAndFindOfUnit] CHECK CONSTRAINT [FK_LookAndFindOfUnit_LookAndFind]
GO
ALTER TABLE [dbo].[LookAndFindOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_LookAndFindOfUnit_Unit] FOREIGN KEY([Id_Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[LookAndFindOfUnit] CHECK CONSTRAINT [FK_LookAndFindOfUnit_Unit]
GO
ALTER TABLE [dbo].[MatchingOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_MatchingOfUnit_Matching] FOREIGN KEY([Id_Matching])
REFERENCES [dbo].[Matching] ([Id])
GO
ALTER TABLE [dbo].[MatchingOfUnit] CHECK CONSTRAINT [FK_MatchingOfUnit_Matching]
GO
ALTER TABLE [dbo].[MatchingOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_MatchingOfUnit_Unit] FOREIGN KEY([Id_Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[MatchingOfUnit] CHECK CONSTRAINT [FK_MatchingOfUnit_Unit]
GO
ALTER TABLE [dbo].[PaintingOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_PaintingOfUnit_Painting] FOREIGN KEY([Id_Painting])
REFERENCES [dbo].[Painting] ([Id])
GO
ALTER TABLE [dbo].[PaintingOfUnit] CHECK CONSTRAINT [FK_PaintingOfUnit_Painting]
GO
ALTER TABLE [dbo].[PaintingOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_PaintingOfUnit_Unit] FOREIGN KEY([Id_Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[PaintingOfUnit] CHECK CONSTRAINT [FK_PaintingOfUnit_Unit]
GO
ALTER TABLE [dbo].[SortingOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_SortingOfUnit_Sorting] FOREIGN KEY([Id_Sorting])
REFERENCES [dbo].[Sorting] ([Id])
GO
ALTER TABLE [dbo].[SortingOfUnit] CHECK CONSTRAINT [FK_SortingOfUnit_Sorting]
GO
ALTER TABLE [dbo].[SortingOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_SortingOfUnit_Unit] FOREIGN KEY([Id_Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[SortingOfUnit] CHECK CONSTRAINT [FK_SortingOfUnit_Unit]
GO
ALTER TABLE [dbo].[StorytimeOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_SentenceOfUnit_Sentence] FOREIGN KEY([Id_Storytime])
REFERENCES [dbo].[Storytime] ([Id])
GO
ALTER TABLE [dbo].[StorytimeOfUnit] CHECK CONSTRAINT [FK_SentenceOfUnit_Sentence]
GO
ALTER TABLE [dbo].[StorytimeOfUnit]  WITH CHECK ADD  CONSTRAINT [FK_SentenceOfUnit_Unit] FOREIGN KEY([Id_Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[StorytimeOfUnit] CHECK CONSTRAINT [FK_SentenceOfUnit_Unit]
GO
USE [master]
GO
ALTER DATABASE [EnglishGame] SET  READ_WRITE 
GO
