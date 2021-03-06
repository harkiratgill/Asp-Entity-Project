USE [master]
GO
/****** Object:  Database [Video]    Script Date: 4/23/2019 10:13:26 AM ******/
CREATE DATABASE [Video]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Video', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Video.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Video_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Video_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Video] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Video].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Video] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Video] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Video] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Video] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Video] SET ARITHABORT OFF 
GO
ALTER DATABASE [Video] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Video] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Video] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Video] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Video] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Video] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Video] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Video] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Video] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Video] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Video] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Video] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Video] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Video] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Video] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Video] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Video] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Video] SET RECOVERY FULL 
GO
ALTER DATABASE [Video] SET  MULTI_USER 
GO
ALTER DATABASE [Video] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Video] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Video] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Video] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Video] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Video', N'ON'
GO
ALTER DATABASE [Video] SET QUERY_STORE = OFF
GO
USE [Video]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/23/2019 10:13:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 4/23/2019 10:13:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nchar](10) NULL,
	[Password] [nchar](10) NULL,
	[R_id] [int] NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 4/23/2019 10:13:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieID] [int] IDENTITY(1,1) NOT NULL,
	[Rating] [nvarchar](50) NULL,
	[Title] [nvarchar](255) NULL,
	[Year] [nvarchar](255) NULL,
	[Rental_Cost] [money] NULL,
	[Copies] [nvarchar](50) NULL,
	[Plot] [ntext] NULL,
	[Genre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 4/23/2019 10:13:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[FirstName] [nchar](10) NULL,
	[LastName] [nchar](10) NULL,
	[Age] [int] NULL,
	[R_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[R_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustID], [FirstName], [LastName], [Address], [Phone]) VALUES (2, N'harkirat', N'gill', N'ghgj', N'7897897897')
INSERT [dbo].[Customer] ([CustID], [FirstName], [LastName], [Address], [Phone]) VALUES (5, N'summit', N'sardul', N'kent road', N'0273637467')
INSERT [dbo].[Customer] ([CustID], [FirstName], [LastName], [Address], [Phone]) VALUES (6, N'askaran', N'singh', N'east tamki', N'0278367537')
INSERT [dbo].[Customer] ([CustID], [FirstName], [LastName], [Address], [Phone]) VALUES (7, N'simer', N'singh', N'russel road', N'0278347537')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([UserId], [UserName], [Password], [R_id]) VALUES (1, N'k         ', N'K         ', NULL)
INSERT [dbo].[Login] ([UserId], [UserName], [Password], [R_id]) VALUES (2, N'brice     ', N'brice     ', NULL)
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([MovieID], [Rating], [Title], [Year], [Rental_Cost], [Copies], [Plot], [Genre]) VALUES (1, N'5', N'The Spiderman', N'1998', 2.0000, N'34', N'Spideman', N'action')
INSERT [dbo].[Movies] ([MovieID], [Rating], [Title], [Year], [Rental_Cost], [Copies], [Plot], [Genre]) VALUES (2, N'5', N'Limitless', N'2012', 2.0000, N'38', N'drug', N'action')
INSERT [dbo].[Movies] ([MovieID], [Rating], [Title], [Year], [Rental_Cost], [Copies], [Plot], [Genre]) VALUES (3, N'4', N'getout', N'2012', 2.0000, N'20', N'out', N'action')
INSERT [dbo].[Movies] ([MovieID], [Rating], [Title], [Year], [Rental_Cost], [Copies], [Plot], [Genre]) VALUES (6, N'3', N'hulk', N'1999', 2.0000, N'21', N'action', N'action')
SET IDENTITY_INSERT [dbo].[Movies] OFF
SET IDENTITY_INSERT [dbo].[Register] ON 

INSERT [dbo].[Register] ([FirstName], [LastName], [Age], [R_id]) VALUES (N'K         ', N'K         ', 1, 1)
INSERT [dbo].[Register] ([FirstName], [LastName], [Age], [R_id]) VALUES (N'be        ', N'gh        ', 21, 2)
SET IDENTITY_INSERT [dbo].[Register] OFF
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Register] FOREIGN KEY([R_id])
REFERENCES [dbo].[Register] ([R_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Register]
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_Register1] FOREIGN KEY([R_id])
REFERENCES [dbo].[Register] ([R_id])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_Register1]
GO
USE [master]
GO
ALTER DATABASE [Video] SET  READ_WRITE 
GO
