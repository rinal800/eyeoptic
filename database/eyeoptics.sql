USE [master]
GO
/****** Object:  Database [eyeoptics]    Script Date: 17-02-2020 16:21:51 ******/
CREATE DATABASE [eyeoptics]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eyeoptics', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\eyeoptics.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'eyeoptics_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\eyeoptics_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [eyeoptics] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eyeoptics].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eyeoptics] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eyeoptics] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eyeoptics] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eyeoptics] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eyeoptics] SET ARITHABORT OFF 
GO
ALTER DATABASE [eyeoptics] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eyeoptics] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eyeoptics] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eyeoptics] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eyeoptics] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eyeoptics] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eyeoptics] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eyeoptics] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eyeoptics] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eyeoptics] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eyeoptics] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eyeoptics] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eyeoptics] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eyeoptics] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eyeoptics] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eyeoptics] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eyeoptics] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eyeoptics] SET RECOVERY FULL 
GO
ALTER DATABASE [eyeoptics] SET  MULTI_USER 
GO
ALTER DATABASE [eyeoptics] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eyeoptics] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eyeoptics] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eyeoptics] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [eyeoptics] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'eyeoptics', N'ON'
GO
USE [eyeoptics]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 17-02-2020 16:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[uname] [varchar](50) NULL,
	[email] [varchar](max) NULL,
	[pname] [varchar](max) NULL,
	[price] [int] NULL,
	[stat] [varchar](50) NULL,
	[paid] [varchar](50) NULL,
 CONSTRAINT [PK__cart__3214EC075C922505] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[category]    Script Date: 17-02-2020 16:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categ] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contact]    Script Date: 17-02-2020 16:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[mobno] [varchar](50) NULL,
	[msgs] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[faqs]    Script Date: 17-02-2020 16:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[faqs](
	[Id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[ques] [varchar](max) NULL,
	[answ] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[feed]    Script Date: 17-02-2020 16:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feed](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[mobno] [varchar](50) NULL,
	[sugg] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[offers]    Script Date: 17-02-2020 16:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[offers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[offers] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[prod]    Script Date: 17-02-2020 16:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[prod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](max) NULL,
	[pcate] [varchar](50) NULL,
	[pimg] [varchar](max) NULL,
	[price] [varchar](50) NULL,
	[pdesc] [varchar](max) NULL,
 CONSTRAINT [PK__prod__3214EC077C12F917] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reg]    Script Date: 17-02-2020 16:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[uname] [varchar](50) NULL,
	[pword] [varchar](50) NULL,
	[cpword] [varchar](50) NULL,
	[email] [varchar](max) NULL,
	[mobno] [varchar](50) NULL,
	[utype] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [eyeoptics] SET  READ_WRITE 
GO
