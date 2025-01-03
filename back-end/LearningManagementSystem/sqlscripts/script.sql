USE [master]
GO
/****** Object:  Database [LearningManagementSystem]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE DATABASE [LearningManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LearningManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER2022\MSSQL\DATA\LearningManagementSystem.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LearningManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER2022\MSSQL\DATA\LearningManagementSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [LearningManagementSystem] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LearningManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LearningManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LearningManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LearningManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LearningManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LearningManagementSystem] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [LearningManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [LearningManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [LearningManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LearningManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LearningManagementSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LearningManagementSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LearningManagementSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LearningManagementSystem', N'ON'
GO
ALTER DATABASE [LearningManagementSystem] SET QUERY_STORE = ON
GO
ALTER DATABASE [LearningManagementSystem] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [LearningManagementSystem]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[Id] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[TeacherId] [uniqueidentifier] NOT NULL,
	[SubjectId] [uniqueidentifier] NOT NULL,
	[UpdatedById] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassExercise]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassExercise](
	[Id] [uniqueidentifier] NOT NULL,
	[ClassTopicOpenId] [uniqueidentifier] NOT NULL,
	[SubjectExerciseId] [uniqueidentifier] NOT NULL,
	[ClassId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ClassExercise] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassStudyMaterial]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassStudyMaterial](
	[Id] [uniqueidentifier] NOT NULL,
	[OpenDate] [datetime2](7) NOT NULL,
	[ClassId] [uniqueidentifier] NOT NULL,
	[StudyMaterialId] [uniqueidentifier] NOT NULL,
	[ClassId1] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ClassStudyMaterial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassTopicOpen]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassTopicOpen](
	[Id] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ClassId] [uniqueidentifier] NOT NULL,
	[TopicId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ClassTopicOpen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[UniversityId] [uniqueidentifier] NOT NULL,
	[UpdatedById] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exercise]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exercise](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Requirements] [nvarchar](max) NOT NULL,
	[Difficulty] [int] NOT NULL,
	[TimeLimit] [int] NOT NULL,
	[SpaceLimit] [int] NOT NULL,
	[UpdatedById] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Exercise] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgrammingLanguage]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgrammingLanguage](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[UpdatedById] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ProgrammingLanguage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [uniqueidentifier] NOT NULL,
	[StudentIdString] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentClass]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentClass](
	[Id] [uniqueidentifier] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[StudentId] [uniqueidentifier] NOT NULL,
	[ClassId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_StudentClass] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentSubmission]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentSubmission](
	[Id] [uniqueidentifier] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[StudentId] [uniqueidentifier] NOT NULL,
	[ClassExerciseId] [uniqueidentifier] NOT NULL,
	[SubjectProgrammingLanguageId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_StudentSubmission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudyMaterial]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyMaterial](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[MaterialLink] [nvarchar](max) NOT NULL,
	[SubjectId] [uniqueidentifier] NOT NULL,
	[UpdatedById] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_StudyMaterial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Credit] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[UpdatedById] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectExercise]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectExercise](
	[Id] [uniqueidentifier] NOT NULL,
	[SubjectId] [uniqueidentifier] NOT NULL,
	[ExerciseId] [uniqueidentifier] NOT NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[TopicId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_SubjectExercise] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectProgrammingLanguage]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectProgrammingLanguage](
	[Id] [uniqueidentifier] NOT NULL,
	[SubjectId] [uniqueidentifier] NOT NULL,
	[ProgrammingLanguageId] [uniqueidentifier] NOT NULL,
	[UpdatedById] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_SubjectProgrammingLanguage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestCase]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestCase](
	[Id] [uniqueidentifier] NOT NULL,
	[Input] [nvarchar](max) NOT NULL,
	[ExpectedOutput] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsHidden] [bit] NOT NULL,
	[ExerciseId] [uniqueidentifier] NOT NULL,
	[UpdatedById] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_TestCase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[SubjectId] [uniqueidentifier] NOT NULL,
	[UpdatedById] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ClassId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[University]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[University](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[UpdatedById] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_University] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/7/2024 10:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[PasswordHash] [varbinary](max) NOT NULL,
	[PasswordSalt] [varbinary](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[BirthDate] [datetime2](7) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Position] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241112142109_UpdateDb', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241116132333_updatedb2', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241130045709_UpdateDb4', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241202143621_UpdateDb6', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241202143745_UpdateDb7', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241202143853_UpdateDb8', N'8.0.10')
GO
INSERT [dbo].[Class] ([Id], [StartDate], [EndDate], [TeacherId], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [Name]) VALUES (N'5d45634f-0929-47a1-ce24-08dd12e12d88', CAST(N'2024-12-02T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-26T00:00:00.0000000' AS DateTime2), N'602bf38f-959d-4374-9e17-2e93fc5149bb', N'8c2f5809-5010-4d70-b1ad-56d33970ae33', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:54:09.7239371' AS DateTime2), 0, N'D20-CTDL')
INSERT [dbo].[Class] ([Id], [StartDate], [EndDate], [TeacherId], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [Name]) VALUES (N'2d289fd8-a403-4e4f-47cc-08dd161cb5e9', CAST(N'2024-12-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-02T00:00:00.0000000' AS DateTime2), N'602bf38f-959d-4374-9e17-2e93fc5149bb', N'2f8ab4b9-c5d6-49bb-bc95-d18c513b9db7', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-07T00:37:52.2949057' AS DateTime2), 0, N'D20-Java')
GO
INSERT [dbo].[ClassExercise] ([Id], [ClassTopicOpenId], [SubjectExerciseId], [ClassId]) VALUES (N'7c46ad0a-ec7e-4248-9158-04a073c46251', N'708c7d6b-2698-447a-9693-2186ac5fa296', N'd4a51bcb-09fe-43ea-28fc-08dd12e1bbda', NULL)
INSERT [dbo].[ClassExercise] ([Id], [ClassTopicOpenId], [SubjectExerciseId], [ClassId]) VALUES (N'30e4fa9a-2449-4d5c-a731-154fa0f86efc', N'2557e758-daef-4a22-9447-8a2e9a92ff34', N'15922822-fdda-4282-04c0-08dd161bf81f', NULL)
INSERT [dbo].[ClassExercise] ([Id], [ClassTopicOpenId], [SubjectExerciseId], [ClassId]) VALUES (N'6d32dce5-158c-47db-814e-2cb30f2af81d', N'708c7d6b-2698-447a-9693-2186ac5fa296', N'28369bee-ba65-4d19-28f8-08dd12e1bbda', NULL)
INSERT [dbo].[ClassExercise] ([Id], [ClassTopicOpenId], [SubjectExerciseId], [ClassId]) VALUES (N'7cfbc241-eac3-4bee-8de0-2faf6a69e47f', N'708c7d6b-2698-447a-9693-2186ac5fa296', N'28d817d1-e808-4aa2-28fa-08dd12e1bbda', NULL)
INSERT [dbo].[ClassExercise] ([Id], [ClassTopicOpenId], [SubjectExerciseId], [ClassId]) VALUES (N'6b42a24a-ad29-4d4c-b7a9-3bdcc32c4e42', N'708c7d6b-2698-447a-9693-2186ac5fa296', N'f08fc105-acb5-4637-28f9-08dd12e1bbda', NULL)
INSERT [dbo].[ClassExercise] ([Id], [ClassTopicOpenId], [SubjectExerciseId], [ClassId]) VALUES (N'3e6961f6-0a9e-4807-8bfb-67249054afe5', N'708c7d6b-2698-447a-9693-2186ac5fa296', N'ad2380d2-49c6-4ec5-28fb-08dd12e1bbda', NULL)
INSERT [dbo].[ClassExercise] ([Id], [ClassTopicOpenId], [SubjectExerciseId], [ClassId]) VALUES (N'27b3faca-e29f-41ec-a4eb-76745cfa29a0', N'708c7d6b-2698-447a-9693-2186ac5fa296', N'640d5cfb-e944-4553-28fd-08dd12e1bbda', NULL)
INSERT [dbo].[ClassExercise] ([Id], [ClassTopicOpenId], [SubjectExerciseId], [ClassId]) VALUES (N'42574ba1-9dad-4218-945d-933d1207042e', N'2557e758-daef-4a22-9447-8a2e9a92ff34', N'e5b79221-1305-4394-04bd-08dd161bf81f', NULL)
INSERT [dbo].[ClassExercise] ([Id], [ClassTopicOpenId], [SubjectExerciseId], [ClassId]) VALUES (N'12ed2e85-cd40-4879-8c07-9f86c6fe9752', N'ef502320-346f-4f9a-9445-bd995a14e464', N'd4ae5e13-5e4e-4adb-02b3-08dd16bda095', NULL)
INSERT [dbo].[ClassExercise] ([Id], [ClassTopicOpenId], [SubjectExerciseId], [ClassId]) VALUES (N'f70338e5-51e8-4ecb-b355-b90a5bcec99a', N'd96d4c38-aeba-4ce6-b08f-36d62f8dc514', N'31003e9f-a553-4680-04be-08dd161bf81f', NULL)
INSERT [dbo].[ClassExercise] ([Id], [ClassTopicOpenId], [SubjectExerciseId], [ClassId]) VALUES (N'cd8751ce-9282-4680-b9a0-bc07dc897509', N'ef502320-346f-4f9a-9445-bd995a14e464', N'31003e9f-a553-4680-04be-08dd161bf81f', NULL)
INSERT [dbo].[ClassExercise] ([Id], [ClassTopicOpenId], [SubjectExerciseId], [ClassId]) VALUES (N'ead48014-9931-4163-88d5-c04599d8e0e9', N'2557e758-daef-4a22-9447-8a2e9a92ff34', N'34fa2f92-c5a1-435f-04bf-08dd161bf81f', NULL)
GO
INSERT [dbo].[ClassTopicOpen] ([Id], [StartDate], [EndDate], [CreatedDate], [ClassId], [TopicId]) VALUES (N'708c7d6b-2698-447a-9693-2186ac5fa296', CAST(N'2024-12-02T15:00:41.9680000' AS DateTime2), CAST(N'2024-12-02T15:00:41.9680000' AS DateTime2), CAST(N'2024-12-02T22:02:12.9125052' AS DateTime2), N'5d45634f-0929-47a1-ce24-08dd12e12d88', N'6b149512-5271-4a15-b85c-98073d557232')
INSERT [dbo].[ClassTopicOpen] ([Id], [StartDate], [EndDate], [CreatedDate], [ClassId], [TopicId]) VALUES (N'd96d4c38-aeba-4ce6-b08f-36d62f8dc514', CAST(N'2024-12-07T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-22T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-07T11:40:48.8174656' AS DateTime2), N'2d289fd8-a403-4e4f-47cc-08dd161cb5e9', N'33f03edd-4cd0-4409-4058-08dd161ab77c')
INSERT [dbo].[ClassTopicOpen] ([Id], [StartDate], [EndDate], [CreatedDate], [ClassId], [TopicId]) VALUES (N'2557e758-daef-4a22-9447-8a2e9a92ff34', CAST(N'2024-12-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-07T11:42:21.5478464' AS DateTime2), N'2d289fd8-a403-4e4f-47cc-08dd161cb5e9', N'ec0dccd3-a32b-4ba5-4059-08dd161ab77c')
INSERT [dbo].[ClassTopicOpen] ([Id], [StartDate], [EndDate], [CreatedDate], [ClassId], [TopicId]) VALUES (N'ef502320-346f-4f9a-9445-bd995a14e464', CAST(N'2024-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-05T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-07T19:57:48.3876968' AS DateTime2), N'2d289fd8-a403-4e4f-47cc-08dd161cb5e9', N'33f03edd-4cd0-4409-4058-08dd161ab77c')
GO
INSERT [dbo].[Department] ([Id], [Name], [Description], [UniversityId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'54aaa7ef-db5e-489d-91e0-11d27ca30956', N'Hệ thống Thông tin', N'Nghiên cứu các hệ thống quản lý thông tin và cơ sở dữ liệu.', N'1fc050f9-7cdf-464d-965e-22ea8b9d956c', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291711' AS DateTime2), 0)
INSERT [dbo].[Department] ([Id], [Name], [Description], [UniversityId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'16eaca82-0098-40e6-9b0a-1976d3f2ffd4', N'Khoa học Máy tính', N'Nghiên cứu lý thuyết tính toán, giải thuật, và trí tuệ nhân tạo.', N'1fc050f9-7cdf-464d-965e-22ea8b9d956c', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291705' AS DateTime2), 0)
INSERT [dbo].[Department] ([Id], [Name], [Description], [UniversityId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'2b704c37-3d03-4b28-a15d-f1ac3e2fe2f6', N'Kỹ thuật Phần mềm', N'Tập trung vào phát triển phần mềm và quản lý dự án.', N'1fc050f9-7cdf-464d-965e-22ea8b9d956c', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291708' AS DateTime2), 0)
GO
INSERT [dbo].[Exercise] ([Id], [Title], [Description], [Requirements], [Difficulty], [TimeLimit], [SpaceLimit], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'326c536d-370d-4aad-dc3f-08dd12e09ba4', N'Bài tập tính tổng (Update3)', N'Tính tổng của hai số nguyên.', N'viết chương trình có độ phức tạp thời gian O(n)', 1, 10, 256, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-07T20:43:40.9241308' AS DateTime2), N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:50:04.9472158' AS DateTime2), 0)
INSERT [dbo].[Exercise] ([Id], [Title], [Description], [Requirements], [Difficulty], [TimeLimit], [SpaceLimit], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'2fc678bc-3c5c-4ab5-dc40-08dd12e09ba4', N'Bài tập tìm số nguyên tố', N'Kiểm tra xem một số có phải là số nguyên tố hay không.', N'Nhập vào một số nguyên và xác định xem nó có phải là số nguyên tố không.', 2, 20, 256, NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:50:34.8882905' AS DateTime2), 0)
INSERT [dbo].[Exercise] ([Id], [Title], [Description], [Requirements], [Difficulty], [TimeLimit], [SpaceLimit], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'd6cbd58b-25a1-4e42-dc41-08dd12e09ba4', N'Bài tập tính diện tích hình tròn', N'Tính diện tích của một hình tròn cho trước bán kính.', N'Nhập vào bán kính của hình tròn và tính diện tích.', 1, 15, 128, NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:50:47.5596431' AS DateTime2), 0)
INSERT [dbo].[Exercise] ([Id], [Title], [Description], [Requirements], [Difficulty], [TimeLimit], [SpaceLimit], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'0a68c600-5a0e-4590-dc42-08dd12e09ba4', N'Bài tập tính diện tích hình tròn', N'Tính diện tích của một hình tròn cho trước bán kính.', N'Nhập vào bán kính của hình tròn và tính diện tích.', 1, 15, 128, NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:50:58.5976253' AS DateTime2), 0)
INSERT [dbo].[Exercise] ([Id], [Title], [Description], [Requirements], [Difficulty], [TimeLimit], [SpaceLimit], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'39466308-5be4-4c46-dc43-08dd12e09ba4', N'Bài tập sắp xếp mảng', N'Sắp xếp một mảng số nguyên theo thứ tự tăng dần.', N'Nhập vào một mảng số nguyên và sắp xếp theo thứ tự tăng dần.', 3, 40, 512, NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:51:24.3248112' AS DateTime2), 0)
INSERT [dbo].[Exercise] ([Id], [Title], [Description], [Requirements], [Difficulty], [TimeLimit], [SpaceLimit], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'b1cb0c6c-3ecf-4771-dc44-08dd12e09ba4', N'Bài tập tính giá trị tuyệt đối', N'Tính giá trị tuyệt đối của một số nguyên.', N'Nhập vào một số nguyên và tính giá trị tuyệt đối của nó.', 2, 10, 128, NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:51:37.8397099' AS DateTime2), 0)
INSERT [dbo].[Exercise] ([Id], [Title], [Description], [Requirements], [Difficulty], [TimeLimit], [SpaceLimit], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'4a77f98b-f750-4558-dc45-08dd12e09ba4', N'Bài tập tìm số Fibonacci', N'Tính số Fibonacci thứ n.', N'Nhập vào số n và tính số Fibonacci thứ n.', 3, 60, 1024, NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:51:55.1801235' AS DateTime2), 0)
GO
INSERT [dbo].[ProgrammingLanguage] ([Id], [Name], [Description], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'5680da2a-a132-44e2-8b04-2c653d3f47f8', N'cpp', N'A high-performance, object-oriented programming language.', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-03T23:33:29.1766667' AS DateTime2), 0)
INSERT [dbo].[ProgrammingLanguage] ([Id], [Name], [Description], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'e7f80236-c597-473a-bc3c-f19cd644b07f', N'java', N'A high-level, class-based, object-oriented programming language.', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-03T23:33:29.1766667' AS DateTime2), 0)
INSERT [dbo].[ProgrammingLanguage] ([Id], [Name], [Description], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'459dcb2f-7cea-4f47-bdc1-fb6075fa4a7a', N'python', N'A high-level, interpreted programming language.', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-03T23:33:29.1766667' AS DateTime2), 0)
GO
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'418d2a48-ba61-4ccd-86ee-0a2025cf3605', N'B20DCCN0010')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'59c56315-2fc0-440d-b113-0f8590932043', N'B20DCCN0014')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'507d1a4b-1ca4-4a57-9a8a-1ab3819c0812', N'B20DCCN008')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'a0727f7d-c3d7-4611-a396-1c0884102b8b', N'B20DCCN009')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'9af0d030-6926-409c-a604-2be5704d2930', N'B20DCCN006')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'1df72025-1fb0-4092-960b-3ee16bf522bf', N'B20DCCN0011')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'3f533734-1001-4202-85e0-4360ff5305f8', N'B20DCCN005')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'2b74eb43-814b-4266-9f67-4417118ae057', N'B20DCCN0013')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'a3d5ab77-6abc-422b-952b-4814ecbe45c4', N'B20DCCN003')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'5f0793fd-f64d-4520-a783-6f89abf18a62', N'B20DCCN002')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'02667e38-ab28-4387-923b-8975655d0470', N'B20DCCN007')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'2fe82048-e399-44e4-ad4e-c16ecf2684e2', N'B20DCCN001')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'c6ec585d-9eb5-4aff-8420-e4be202f25bd', N'B20DCCN0012')
INSERT [dbo].[Student] ([Id], [StudentIdString]) VALUES (N'1f74e25b-6de9-4c14-b335-f3f3efd1e47f', N'B20DCCN004')
GO
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'5d585d21-bc50-43e6-b5af-08dd12e12d8d', N'Enrolled', N'9af0d030-6926-409c-a604-2be5704d2930', N'5d45634f-0929-47a1-ce24-08dd12e12d88')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'039d70b2-6999-48a5-b5b0-08dd12e12d8d', N'Enrolled', N'3f533734-1001-4202-85e0-4360ff5305f8', N'5d45634f-0929-47a1-ce24-08dd12e12d88')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'4031a288-e145-4cb3-b5b1-08dd12e12d8d', N'Enrolled', N'a3d5ab77-6abc-422b-952b-4814ecbe45c4', N'5d45634f-0929-47a1-ce24-08dd12e12d88')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'e49624e2-b529-4603-b5b2-08dd12e12d8d', N'Enrolled', N'5f0793fd-f64d-4520-a783-6f89abf18a62', N'5d45634f-0929-47a1-ce24-08dd12e12d88')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'271ff852-0f8f-49fb-b5b3-08dd12e12d8d', N'Enrolled', N'02667e38-ab28-4387-923b-8975655d0470', N'5d45634f-0929-47a1-ce24-08dd12e12d88')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'36c62a41-249d-4632-b5b4-08dd12e12d8d', N'Enrolled', N'2fe82048-e399-44e4-ad4e-c16ecf2684e2', N'5d45634f-0929-47a1-ce24-08dd12e12d88')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'7c78aa03-39a7-474c-b5b5-08dd12e12d8d', N'Enrolled', N'1f74e25b-6de9-4c14-b335-f3f3efd1e47f', N'5d45634f-0929-47a1-ce24-08dd12e12d88')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'55468203-ca27-425b-ef4b-08dd161cb5f3', N'Enrolled', N'9af0d030-6926-409c-a604-2be5704d2930', N'2d289fd8-a403-4e4f-47cc-08dd161cb5e9')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'3fd8e4ed-b288-40b4-ef4c-08dd161cb5f3', N'Enrolled', N'3f533734-1001-4202-85e0-4360ff5305f8', N'2d289fd8-a403-4e4f-47cc-08dd161cb5e9')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'1c3a6a36-4a96-4b6b-ef4d-08dd161cb5f3', N'Enrolled', N'a3d5ab77-6abc-422b-952b-4814ecbe45c4', N'2d289fd8-a403-4e4f-47cc-08dd161cb5e9')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'30406e20-6228-47cd-ef4e-08dd161cb5f3', N'Enrolled', N'5f0793fd-f64d-4520-a783-6f89abf18a62', N'2d289fd8-a403-4e4f-47cc-08dd161cb5e9')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'b393d992-966e-4fbf-ef4f-08dd161cb5f3', N'Enrolled', N'02667e38-ab28-4387-923b-8975655d0470', N'2d289fd8-a403-4e4f-47cc-08dd161cb5e9')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'bb39b95d-e73a-48e6-ef50-08dd161cb5f3', N'Enrolled', N'2fe82048-e399-44e4-ad4e-c16ecf2684e2', N'2d289fd8-a403-4e4f-47cc-08dd161cb5e9')
INSERT [dbo].[StudentClass] ([Id], [Status], [StudentId], [ClassId]) VALUES (N'0b0326ee-dc39-4868-ef51-08dd161cb5f3', N'Enrolled', N'1f74e25b-6de9-4c14-b335-f3f3efd1e47f', N'2d289fd8-a403-4e4f-47cc-08dd161cb5e9')
GO
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [Description], [DepartmentId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'8c2f5809-5010-4d70-b1ad-56d33970ae33', N'Lập trình Python', 3, N'Học về lập trình Python và các ứng dụng của nó.', N'2b704c37-3d03-4b28-a15d-f1ac3e2fe2f6', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291741' AS DateTime2), 0)
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [Description], [DepartmentId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'ab7cd454-95fb-4cc2-a8be-5bd548f068b6', N'Cấu trúc Dữ liệu và Giải thuật', 3, N'Học về cấu trúc dữ liệu và các giải thuật cơ bản.', N'16eaca82-0098-40e6-9b0a-1976d3f2ffd4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291739' AS DateTime2), 0)
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [Description], [DepartmentId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'95b63ce4-2b43-462c-82bf-8bd610f61af2', N'Lập trình C++', 3, N'Học các nguyên lý cơ bản của lập trình C++.', N'2b704c37-3d03-4b28-a15d-f1ac3e2fe2f6', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291744' AS DateTime2), 0)
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [Description], [DepartmentId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'2f8ab4b9-c5d6-49bb-bc95-d18c513b9db7', N'Lập trình Java', 3, N'Học về các khái niệm cơ bản và nâng cao trong Java, lập trình hướng đối tượng, và xây dựng ứng dụng.', N'2b704c37-3d03-4b28-a15d-f1ac3e2fe2f6', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-06T17:23:30.8745358' AS DateTime2), 0)
GO
INSERT [dbo].[SubjectExercise] ([Id], [SubjectId], [ExerciseId], [AddedDate], [TopicId]) VALUES (N'28369bee-ba65-4d19-28f8-08dd12e1bbda', N'8c2f5809-5010-4d70-b1ad-56d33970ae33', N'326c536d-370d-4aad-dc3f-08dd12e09ba4', CAST(N'2024-12-02T21:58:08.5022225' AS DateTime2), N'6b149512-5271-4a15-b85c-98073d557232')
INSERT [dbo].[SubjectExercise] ([Id], [SubjectId], [ExerciseId], [AddedDate], [TopicId]) VALUES (N'f08fc105-acb5-4637-28f9-08dd12e1bbda', N'8c2f5809-5010-4d70-b1ad-56d33970ae33', N'2fc678bc-3c5c-4ab5-dc40-08dd12e09ba4', CAST(N'2024-12-02T21:58:21.6367269' AS DateTime2), N'6b149512-5271-4a15-b85c-98073d557232')
INSERT [dbo].[SubjectExercise] ([Id], [SubjectId], [ExerciseId], [AddedDate], [TopicId]) VALUES (N'28d817d1-e808-4aa2-28fa-08dd12e1bbda', N'8c2f5809-5010-4d70-b1ad-56d33970ae33', N'd6cbd58b-25a1-4e42-dc41-08dd12e09ba4', CAST(N'2024-12-02T21:58:28.2066035' AS DateTime2), N'6b149512-5271-4a15-b85c-98073d557232')
INSERT [dbo].[SubjectExercise] ([Id], [SubjectId], [ExerciseId], [AddedDate], [TopicId]) VALUES (N'ad2380d2-49c6-4ec5-28fb-08dd12e1bbda', N'8c2f5809-5010-4d70-b1ad-56d33970ae33', N'0a68c600-5a0e-4590-dc42-08dd12e09ba4', CAST(N'2024-12-02T21:58:32.9943133' AS DateTime2), N'6b149512-5271-4a15-b85c-98073d557232')
INSERT [dbo].[SubjectExercise] ([Id], [SubjectId], [ExerciseId], [AddedDate], [TopicId]) VALUES (N'd4a51bcb-09fe-43ea-28fc-08dd12e1bbda', N'8c2f5809-5010-4d70-b1ad-56d33970ae33', N'39466308-5be4-4c46-dc43-08dd12e09ba4', CAST(N'2024-12-02T21:58:41.4057765' AS DateTime2), N'6b149512-5271-4a15-b85c-98073d557232')
INSERT [dbo].[SubjectExercise] ([Id], [SubjectId], [ExerciseId], [AddedDate], [TopicId]) VALUES (N'640d5cfb-e944-4553-28fd-08dd12e1bbda', N'8c2f5809-5010-4d70-b1ad-56d33970ae33', N'4a77f98b-f750-4558-dc45-08dd12e09ba4', CAST(N'2024-12-02T21:58:51.7213384' AS DateTime2), N'6b149512-5271-4a15-b85c-98073d557232')
INSERT [dbo].[SubjectExercise] ([Id], [SubjectId], [ExerciseId], [AddedDate], [TopicId]) VALUES (N'e5b79221-1305-4394-04bd-08dd161bf81f', N'2f8ab4b9-c5d6-49bb-bc95-d18c513b9db7', N'39466308-5be4-4c46-dc43-08dd12e09ba4', CAST(N'2024-12-07T00:32:33.8927577' AS DateTime2), N'ec0dccd3-a32b-4ba5-4059-08dd161ab77c')
INSERT [dbo].[SubjectExercise] ([Id], [SubjectId], [ExerciseId], [AddedDate], [TopicId]) VALUES (N'31003e9f-a553-4680-04be-08dd161bf81f', N'2f8ab4b9-c5d6-49bb-bc95-d18c513b9db7', N'b1cb0c6c-3ecf-4771-dc44-08dd12e09ba4', CAST(N'2024-12-07T00:32:40.8518417' AS DateTime2), N'33f03edd-4cd0-4409-4058-08dd161ab77c')
INSERT [dbo].[SubjectExercise] ([Id], [SubjectId], [ExerciseId], [AddedDate], [TopicId]) VALUES (N'34fa2f92-c5a1-435f-04bf-08dd161bf81f', N'2f8ab4b9-c5d6-49bb-bc95-d18c513b9db7', N'4a77f98b-f750-4558-dc45-08dd12e09ba4', CAST(N'2024-12-07T00:32:50.7342213' AS DateTime2), N'ec0dccd3-a32b-4ba5-4059-08dd161ab77c')
INSERT [dbo].[SubjectExercise] ([Id], [SubjectId], [ExerciseId], [AddedDate], [TopicId]) VALUES (N'15922822-fdda-4282-04c0-08dd161bf81f', N'2f8ab4b9-c5d6-49bb-bc95-d18c513b9db7', N'2fc678bc-3c5c-4ab5-dc40-08dd12e09ba4', CAST(N'2024-12-07T00:33:00.8376011' AS DateTime2), N'ec0dccd3-a32b-4ba5-4059-08dd161ab77c')
INSERT [dbo].[SubjectExercise] ([Id], [SubjectId], [ExerciseId], [AddedDate], [TopicId]) VALUES (N'd4ae5e13-5e4e-4adb-02b3-08dd16bda095', N'2f8ab4b9-c5d6-49bb-bc95-d18c513b9db7', N'326c536d-370d-4aad-dc3f-08dd12e09ba4', CAST(N'2024-12-07T19:49:45.5116634' AS DateTime2), N'33f03edd-4cd0-4409-4058-08dd161ab77c')
GO
INSERT [dbo].[SubjectProgrammingLanguage] ([Id], [SubjectId], [ProgrammingLanguageId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'cd156930-ee47-4b9b-1971-08dd161ab78b', N'2f8ab4b9-c5d6-49bb-bc95-d18c513b9db7', N'e7f80236-c597-473a-bc3c-f19cd644b07f', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-06T17:23:36.0739424' AS DateTime2), 0)
INSERT [dbo].[SubjectProgrammingLanguage] ([Id], [SubjectId], [ProgrammingLanguageId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'b7602849-1adf-4d5d-aba8-7a3e289ea1a4', N'8c2f5809-5010-4d70-b1ad-56d33970ae33', N'e7f80236-c597-473a-bc3c-f19cd644b07f', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-04T00:07:20.4133333' AS DateTime2), 0)
INSERT [dbo].[SubjectProgrammingLanguage] ([Id], [SubjectId], [ProgrammingLanguageId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'124a7184-28ef-4931-8693-b229cfe77701', N'8c2f5809-5010-4d70-b1ad-56d33970ae33', N'459dcb2f-7cea-4f47-bdc1-fb6075fa4a7a', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-03T23:34:28.5533333' AS DateTime2), 0)
GO
INSERT [dbo].[Teacher] ([Id]) VALUES (N'602bf38f-959d-4374-9e17-2e93fc5149bb')
INSERT [dbo].[Teacher] ([Id]) VALUES (N'8e1cb926-1f99-4af0-9506-5003475c9ea6')
INSERT [dbo].[Teacher] ([Id]) VALUES (N'13bb5a6a-116d-41dd-83c3-6bf2701c46b0')
INSERT [dbo].[Teacher] ([Id]) VALUES (N'54b232f5-8ab1-4302-86d1-742691e77bd7')
INSERT [dbo].[Teacher] ([Id]) VALUES (N'11d8c420-9db1-4cfa-bd7c-a2d5ddbb3fde')
INSERT [dbo].[Teacher] ([Id]) VALUES (N'3b490f7a-f7cf-4128-b8bd-e4bb8936da77')
INSERT [dbo].[Teacher] ([Id]) VALUES (N'82f0adf3-03d3-42d0-ad99-f53607f1de5a')
GO
INSERT [dbo].[TestCase] ([Id], [Input], [ExpectedOutput], [Description], [IsHidden], [ExerciseId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'28b46181-d566-4bf6-8bdd-08dd12e09baf', N'7', N'Số nguyên tố', N'Kiểm tra số 7 là số nguyên tố.', 0, N'2fc678bc-3c5c-4ab5-dc40-08dd12e09ba4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:50:34.8882976' AS DateTime2), 0)
INSERT [dbo].[TestCase] ([Id], [Input], [ExpectedOutput], [Description], [IsHidden], [ExerciseId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'f85142ea-fb9c-4890-8bde-08dd12e09baf', N'10', N'Không phải số nguyên tố', N'Kiểm tra số 10 không phải là số nguyên tố.', 1, N'2fc678bc-3c5c-4ab5-dc40-08dd12e09ba4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:50:34.8882980' AS DateTime2), 0)
INSERT [dbo].[TestCase] ([Id], [Input], [ExpectedOutput], [Description], [IsHidden], [ExerciseId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'8c2475f1-fa5a-41cf-8bdf-08dd12e09baf', N'5', N'78.54', N'Tính diện tích của hình tròn có bán kính 5.', 0, N'd6cbd58b-25a1-4e42-dc41-08dd12e09ba4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:50:47.5596491' AS DateTime2), 0)
INSERT [dbo].[TestCase] ([Id], [Input], [ExpectedOutput], [Description], [IsHidden], [ExerciseId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'ad9f4cff-8c01-41bb-8be0-08dd12e09baf', N'5', N'78.54', N'Tính diện tích của hình tròn có bán kính 5.', 0, N'0a68c600-5a0e-4590-dc42-08dd12e09ba4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:50:58.5976310' AS DateTime2), 0)
INSERT [dbo].[TestCase] ([Id], [Input], [ExpectedOutput], [Description], [IsHidden], [ExerciseId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'40bc3e75-0b17-4ff2-8be1-08dd12e09baf', N'3 1 4 1 5 9', N'1 1 3 4 5 9', N'Sắp xếp mảng số nguyên theo thứ tự tăng dần.', 0, N'39466308-5be4-4c46-dc43-08dd12e09ba4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:51:24.3248165' AS DateTime2), 0)
INSERT [dbo].[TestCase] ([Id], [Input], [ExpectedOutput], [Description], [IsHidden], [ExerciseId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'76485ab4-0bbc-4dc8-8be2-08dd12e09baf', N'-10', N'10', N'Tính giá trị tuyệt đối của -10.', 0, N'b1cb0c6c-3ecf-4771-dc44-08dd12e09ba4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:51:37.8397185' AS DateTime2), 0)
INSERT [dbo].[TestCase] ([Id], [Input], [ExpectedOutput], [Description], [IsHidden], [ExerciseId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'2ad1c799-1710-4bae-8be3-08dd12e09baf', N'10', N'55', N'Tính số Fibonacci thứ 10.', 0, N'4a77f98b-f750-4558-dc45-08dd12e09ba4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T21:51:55.1801299' AS DateTime2), 0)
INSERT [dbo].[TestCase] ([Id], [Input], [ExpectedOutput], [Description], [IsHidden], [ExerciseId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'149f7858-f3df-4ccf-2c36-08dd16c1fe13', N'5 10', N'15', NULL, 0, N'326c536d-370d-4aad-dc3f-08dd12e09ba4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-07T20:43:40.9247145' AS DateTime2), 0)
INSERT [dbo].[TestCase] ([Id], [Input], [ExpectedOutput], [Description], [IsHidden], [ExerciseId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'381f4bab-4995-44ad-2c37-08dd16c1fe13', N'10 20', N'30', NULL, 0, N'326c536d-370d-4aad-dc3f-08dd12e09ba4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-07T20:43:40.9247160' AS DateTime2), 0)
INSERT [dbo].[TestCase] ([Id], [Input], [ExpectedOutput], [Description], [IsHidden], [ExerciseId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'27011658-14c5-47f7-2c38-08dd16c1fe13', N'-5 50', N'45', NULL, 0, N'326c536d-370d-4aad-dc3f-08dd12e09ba4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-07T20:43:40.9247179' AS DateTime2), 0)
INSERT [dbo].[TestCase] ([Id], [Input], [ExpectedOutput], [Description], [IsHidden], [ExerciseId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'806a31fd-321e-4d0d-2c39-08dd16c1fe13', N'1000 1000', N'2000', NULL, 0, N'326c536d-370d-4aad-dc3f-08dd12e09ba4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-07T20:43:40.9247183' AS DateTime2), 0)
INSERT [dbo].[TestCase] ([Id], [Input], [ExpectedOutput], [Description], [IsHidden], [ExerciseId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'0b7bbbec-17c3-41bd-2c3a-08dd16c1fe13', N'0 0', N'0', NULL, 0, N'326c536d-370d-4aad-dc3f-08dd12e09ba4', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-07T20:43:40.9247188' AS DateTime2), 0)
GO
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'698d29aa-6c1d-4667-b2a0-07bc8ef49a89', N'Thư viện NumPy', N'Sử dụng thư viện NumPy trong Python để xử lý mảng và tính toán khoa học.', N'95b63ce4-2b43-462c-82bf-8bd610f61af2', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291797' AS DateTime2), 0, NULL)
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'33f03edd-4cd0-4409-4058-08dd161ab77c', N'Biến và kiểu dữ liệu', N'Học cách khai báo biến, kiểu dữ liệu cơ bản, kiểu tham chiếu, và các toán tử trong Java.', N'2f8ab4b9-c5d6-49bb-bc95-d18c513b9db7', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-06T17:23:35.9731125' AS DateTime2), 0, NULL)
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'ec0dccd3-a32b-4ba5-4059-08dd161ab77c', N'Câu lệnh điều kiện và vòng lặp', N' Làm quen với các câu lệnh điều kiện (if, switch) và vòng lặp (for, while, do-while) trong Java.', N'2f8ab4b9-c5d6-49bb-bc95-d18c513b9db7', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-06T17:23:35.9731143' AS DateTime2), 0, NULL)
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'13994cf9-0639-46e0-a687-17a5df343a3e', N'Danh sách liên kết', N'Cấu trúc dữ liệu danh sách liên kết và các phép toán cơ bản.', N'ab7cd454-95fb-4cc2-a8be-5bd548f068b6', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291770' AS DateTime2), 0, NULL)
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'be046d27-5f59-4873-bac5-36c5e8a25829', N'Xử lý chuỗi trong Python', N'Các phương pháp xử lý chuỗi và dữ liệu trong Python.', N'95b63ce4-2b43-462c-82bf-8bd610f61af2', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291793' AS DateTime2), 0, NULL)
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'6eb9febd-9da7-44b2-bc42-769f7c7bac69', N'Cây nhị phân', N'Cấu trúc cây nhị phân và các ứng dụng của nó.', N'ab7cd454-95fb-4cc2-a8be-5bd548f068b6', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291773' AS DateTime2), 0, NULL)
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'd7bbf3d9-2983-448b-b420-7da2795c1062', N'Cấu trúc cơ bản trong C++', N'Các kiểu dữ liệu cơ bản và cấu trúc trong C++.', N'95b63ce4-2b43-462c-82bf-8bd610f61af2', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291799' AS DateTime2), 0, NULL)
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'20f6c95d-65f8-4161-9d0c-89313b23f37c', N'Vào ra trên tệp', N'Kiến thức về vào ra trên tệp trong C++.', N'95b63ce4-2b43-462c-82bf-8bd610f61af2', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291780' AS DateTime2), 0, NULL)
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'4d68a27b-2979-4d2b-94cc-8b7e47951cf4', N'Lập trình cơ bản với Python', N'Giới thiệu về ngôn ngữ lập trình Python và các khái niệm cơ bản.', N'95b63ce4-2b43-462c-82bf-8bd610f61af2', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291791' AS DateTime2), 0, NULL)
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'6b149512-5271-4a15-b85c-98073d557232', N'Lập trình hàm', N'Cách thức lập trình hàm trong C++ và các ứng dụng của nó.', N'8c2f5809-5010-4d70-b1ad-56d33970ae33', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291782' AS DateTime2), 0, NULL)
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'69dd21cb-8ca8-4446-b3f2-ef1185cf7186', N'Con trỏ và mảng', N'Các kiến thức về con trỏ và mảng trong C++.', N'95b63ce4-2b43-462c-82bf-8bd610f61af2', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291777' AS DateTime2), 0, NULL)
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'c54bfb21-ff93-4ee0-a0c5-f1bd0d1b5ce1', N'Lập trình đa luồng', N'Cách thức lập trình đa luồng trong C++ và ứng dụng của nó.', N'95b63ce4-2b43-462c-82bf-8bd610f61af2', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291802' AS DateTime2), 0, NULL)
INSERT [dbo].[Topic] ([Id], [Name], [Description], [SubjectId], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted], [ClassId]) VALUES (N'4034863d-8c13-4534-b8e6-f79ca8c7468d', N'Tìm kiếm nhị phân', N'Các thuật toán tìm kiếm nhị phân và ứng dụng trong việc tìm kiếm dữ liệu.', N'ab7cd454-95fb-4cc2-a8be-5bd548f068b6', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291775' AS DateTime2), 0, NULL)
GO
INSERT [dbo].[University] ([Id], [Name], [Address], [Phone], [Description], [UpdatedById], [UpdatedAt], [CreatedById], [CreatedAt], [IsDeleted]) VALUES (N'1fc050f9-7cdf-464d-965e-22ea8b9d956c', N'Học viện Công nghệ Bưu Chính Viễn Thông', N'96A Đường Trần Phú', N'024 3756 2186', N'Học viện là một trong 7 trường Đại học đào tạo nguồn nhân lực An toàn thông tin trọng điểm Quốc gia.', NULL, NULL, N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', CAST(N'2024-12-02T14:38:52.5291674' AS DateTime2), 0)
GO
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'418d2a48-ba61-4ccd-86ee-0a2025cf3605', N'B20DCCN0010', 0x765D9B5556FE39F9E5819784DBC37DCD7697D9C2FF9341616AF8DF4475EF090CB9E0B4B90F6E9A415124383C6FDCB65DCC6EDCD38C2B777AF09462335BCBBFF8, 0x22D5530419719E06C3A184E97B59C89F37E7163327A51C86F0258CD7DA12640776AE80D18931969350AC416600D8D3D5E4B3FB918F64CCB0C855C2F4FD645A7E80642CF6BF869EC447D0C00B5F9D5ADDE6F0EAD484D7B56CB545F236D6B7E5DC377FDE54600EA6D9CCB795DF0CC11731B98230A339534BE54EE963E8A01A059F, N'Nguyễn C', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'59c56315-2fc0-440d-b113-0f8590932043', N'B20DCCN0014', 0x0560DC9BAB90BB71FEDE6E975974497BEF9DEEBFEA2A7B0088CBCEFE102F0D1643A712F45745614E814B481B6C3ED62D3A20194B9D8B2A3E2B3AB0BB82380D23, 0x29EB06A9FA7D6F767A0C65F8CB53D4B25D4FAFDE36482F287192353ADF8B2B07AAA8DD0629B6C70871BE586FED16A72AF26B238248AAB907E7C07E5FD09612BF9218142B5341D6A782D14FC078E407DBB8353AA43E1909332659FBCAC1660178854FAB3DF200BD8963A5E2739B4337CC2EC0ABC5AD53A4327BFE4225F0708475, N'Nguyễn G', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'507d1a4b-1ca4-4a57-9a8a-1ab3819c0812', N'B20DCCN008', 0x4BEB03DA8E53A777CB8BBDF18813BB0B3CD180DF9955425C1708CBC3B5A510C715CD32B27EF5B7DA40C0E940B9B3A4BB77C496EF43D5E498BE4FACCB066EBF2C, 0x3492271A12CB4B00E22E9B0C9F50D65842A9130602415D7E6C54470675653348F8F1051A2B77D472D51DEB08C8AA44F90C161C7C07B4F4CF244D33DED6F3EB1044074E131A492D8AA9EED70C6237D883E01EAAA8E1A9C178771B9DD24488B980EDC41B4BB2A97253D4AD517DF9100E32CCAC2B229254E8C3276AC2C799D72103, N'Nguyễn A', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'a0727f7d-c3d7-4611-a396-1c0884102b8b', N'B20DCCN009', 0xA0C44A4C3D2F38709D4DDDA0372791351F39A599931BBEEBFD9CDF6CA455E222F3ADCDAE8CE24DA84563D8FADED89627FBBCC347882576DEDDD3AB6F64DF4766, 0x4A410F89584D0E555CCE00EB6B958CCBF01B01701C76C33C3587B2E761F064B3C003FD287F1218148304AC914D43551357D9DF705021A5196A327EE7334ED962FA808B53559B6BF01F7533C7CBF22849DA33E8C38A7EEF80E784BFD5F91EBC1FEE5AAD98D6B2DAC5BFD66107FA79249045F082A8760382B2750DA42FBE97F40D, N'Nguyễn B', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'9af0d030-6926-409c-a604-2be5704d2930', N'B20DCCN006', 0xDDD605295B1DFC1CA396C33029C0940CA6C90EA0F05AC7AF2EB335075319C6725BD87C951A4C53A0136B500356A169704213EC9D57DAABCF371E9EF512351B7D, 0xA193DE679CD6F8135021C3785C99E5D3871E76D2A10B3786B6C4107A3CA71AE9C51C653B99D4137D077A4374F3BF255AD859DC663B90A136063567C6D881E70AA2BCA5AAFC849FBCEA9F0E5540CA39AF26E78BC4F2D0B6ECEC6E8636ECECE3E8EB2F7DF13DAD9CCBDC8A58E69966C3EAD13397E4988E459702017029596B4B90, N'Trần E', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'602bf38f-959d-4374-9e17-2e93fc5149bb', N'teacher3', 0x14A8FD7473BFA18A63159B050A0C074269ECC9C9E7AEB813E671F8B8C34AD61A88E65D144A9E5AF4B7BA04209389C54CC4ABC07EA645E0E07B5234081ACCC495, 0x415AE80D8261A5A6D9320A361EF43B45A0E0C3E3D047825B3E7573F9906192590800B4D0DF7CCA8DF2C9367835F61A72B1F82AB4B75EA930B3B19678E71B26C16AD94B82BE3106754A062CB3290F7DAF00D1E0B56013B64BC5AC13362A15DCF47626E0B92B6140490AC7B14EFD64E9676D74953F4A6C0FDD49E01D5796737214, N'Pham Van C', CAST(N'1979-07-24T00:00:00.0000000' AS DateTime2), N'phamvanc@university.edu', N'300 Nguyen Hue St', N'0912345678', NULL, 0)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'1df72025-1fb0-4092-960b-3ee16bf522bf', N'B20DCCN0011', 0x180130BB35BFA536688231E2CBC092C41B6A10805C79E1130FD4E719C37D76DDFC857896591AFDDA69AAEC0E6FC22E0C581FB596D859C5A9E2CC27C749B8F72A, 0xF39B6486A2500512B884AB0266E26C2D434954587417FAF0A2C6DA6CE183FF1E0872ABDC1BC74017F21084C1E2ECB20A15712E2C9294AA88B2EDD50CBAAF00D296A8C702E7479053114038FE34AAFC4E22C8F12D4E658299650C86487BD38A337D59815443070A13B415C412FA174C3B2A08CB9F7EF6C599EBAAF3580FAF55EB, N'Nguyễn D', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'3f533734-1001-4202-85e0-4360ff5305f8', N'B20DCCN005', 0x798697C062A93BB5B8BA1E7A43BAC41F2C08BEAF1C7A5A4E47B3F2778A7119A65286CE0CF299273FACDE9E523A01B788CFE8865E0D0770717D979AEB6D4DA244, 0x812B3E94CFDFD53E25F66E72B750B4E8B0CE25FD85D56A64C499DEBA4FECCCEFDE433D7E2B7BE9A863ABF8F5E436CABCFF08628B374405A42625F295C85A67F6F88A40F1EC8399D2BA76DF523AFC6BB8232C5F4F7BFF509C048D640A123C9DABF95EB96072F7B5B494C208A076DD1EE3C54B75E3BA778CB577CB058E73764A6A, N'Trần D', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'2b74eb43-814b-4266-9f67-4417118ae057', N'B20DCCN0013', 0xAEE423693AA48DE0B21808582351FA7D1E77CE361594D96C81D056A0A9B9EB7724C8FCEE660D44485AB8EFC96B4BC38E42841D5E6008091B07EEEB0F7B52BB62, 0xAFF343C3C85270B81BB30B3DA09B4604A0A1BF61F5ADAA5E9D35D243A3E9626FAD2F34286FEFF959494474C09E6A18E17B917F67FA4947003BF89FC925CA146B501124273344170AD2011B79307ABB4D8ADB00CE6DBA64BCD6B135AA9E4CE6A5CED01C081C80B3B46548C6A20EB0E4E9F50A20AE51C3671CC6F5F09133CA1F2A, N'Nguyễn F', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'a3d5ab77-6abc-422b-952b-4814ecbe45c4', N'B20DCCN003', 0x8D95FE9D4D5B8EAC9C33A3CB8A642E27E258479CC9D9CCEFF570EF30516B24F014915A18B9099676C03E44BBD1FDE12A7573CA4E19087123D22DC79EF3B65E96, 0x5CBAD58B60856FA662B5309428BF24AC308378AB0255160CCFB2EB30397B683C14A026A947C11BB01E9A5EFE2D7E7489003CE4A4942B386983BADA941F6804914731614255BE934633AAED5F04787F6DC7AAC8EC22A3229609D41321D677B4F3C5B8FC4AEA057E4887302E350A05365DC63F4938E785600FBCC0DFDFFF5AC5A0, N'Trần B', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'8e1cb926-1f99-4af0-9506-5003475c9ea6', N'teacher4', 0xD4EDF50A15179EE5C090E8C20E9A96AB90FEF51FE02B60FADF690D93800648FF5FC7689194BBB5979AA25D288A75714AF9EE2F54AE86C90BDCC98C304C9288BC, 0x415AE80D8261A5A6D9320A361EF43B45A0E0C3E3D047825B3E7573F9906192590800B4D0DF7CCA8DF2C9367835F61A72B1F82AB4B75EA930B3B19678E71B26C16AD94B82BE3106754A062CB3290F7DAF00D1E0B56013B64BC5AC13362A15DCF47626E0B92B6140490AC7B14EFD64E9676D74953F4A6C0FDD49E01D5796737214, N'Le Thi D', CAST(N'1987-09-05T00:00:00.0000000' AS DateTime2), N'lethid@university.edu', N'400 Hai Ba Trung St', N'0943216789', NULL, 0)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'cc851dbd-0819-45f6-9031-5bbfe1eb99f3', N'admin', 0x9607EABCDF8991DFF8723C305D2D374B512436AD78DF2872D7853F09B99EDBE58EDB99DD493E234EC4BA70E09D928E79207C9A408A86B896ADFD7234ED960A03, 0x415AE80D8261A5A6D9320A361EF43B45A0E0C3E3D047825B3E7573F9906192590800B4D0DF7CCA8DF2C9367835F61A72B1F82AB4B75EA930B3B19678E71B26C16AD94B82BE3106754A062CB3290F7DAF00D1E0B56013B64BC5AC13362A15DCF47626E0B92B6140490AC7B14EFD64E9676D74953F4A6C0FDD49E01D5796737214, N'Admin User', CAST(N'1990-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'123 Admin St', N'1234567890', NULL, 2)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'13bb5a6a-116d-41dd-83c3-6bf2701c46b0', N'teacher5', 0xE57EA3A1DCCA652E9979EFC89FA86CC276BCB67BDC5CA9F2F32169D3D935CE9D24AF3D75BF86B6E52BF3FBBFB182E0C54CB01CDA6533EBAE41C9F586DEDC22F4, 0x415AE80D8261A5A6D9320A361EF43B45A0E0C3E3D047825B3E7573F9906192590800B4D0DF7CCA8DF2C9367835F61A72B1F82AB4B75EA930B3B19678E71B26C16AD94B82BE3106754A062CB3290F7DAF00D1E0B56013B64BC5AC13362A15DCF47626E0B92B6140490AC7B14EFD64E9676D74953F4A6C0FDD49E01D5796737214, N'Bui Van E', CAST(N'1983-12-12T00:00:00.0000000' AS DateTime2), N'buivane@university.edu', N'500 Ba Trieu St', N'0934567891', NULL, 0)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'5f0793fd-f64d-4520-a783-6f89abf18a62', N'B20DCCN002', 0xDDF049E19BC554FD4A3C015CF08471318DC982B5FBAEE08725F77300A2845E4C040FA8703CB2C1E679262E8E13762A69E74579524A192BE490E14066FB6EA52F, 0x6F744DD243024BAB6BCF283C38788777504967E39240D16B4319B69CCBD5F83D7374C53ABE9696181F9E901A4DB7A0B0456FE0422862F4552FF7AC1AE77E05EB762275FDDA75FB5FD1FA8B1B1E22652D1AADD4B6BFA3A70391B61170DCFC90BEB472AFBECF7F39E5D97074580C3DA9B5D7798967A9031A109FF2BFB553BB8243, N'Trần A', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'54b232f5-8ab1-4302-86d1-742691e77bd7', N'teacher1', 0x5196BB5EE6F5412058A3F229832FFF2DDF54B35F74DB2786E6926603376D206A4201A91C1C48C1F2A83B31892B4EBB34A590D3EB77A4CE204F9E410A43805EDD, 0x415AE80D8261A5A6D9320A361EF43B45A0E0C3E3D047825B3E7573F9906192590800B4D0DF7CCA8DF2C9367835F61A72B1F82AB4B75EA930B3B19678E71B26C16AD94B82BE3106754A062CB3290F7DAF00D1E0B56013B64BC5AC13362A15DCF47626E0B92B6140490AC7B14EFD64E9676D74953F4A6C0FDD49E01D5796737214, N'Nguyen Van A', CAST(N'1985-01-15T00:00:00.0000000' AS DateTime2), N'nguyenvana@university.edu', N'100 Le Loi St', N'0123456789', NULL, 0)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'02667e38-ab28-4387-923b-8975655d0470', N'B20DCCN007', 0x13D0C07E6F7454270F953EA21470C834B63A53A4C36D56F0B070A345A71E30E33963A0C835A166D4D503A9E48A1F15079C3FCEC4F7E237594B41A452DE6D0D3B, 0xAA73B272BA7A451E4A42BF8F383DD399A45B643CF54687BB746678871608C7598D1ED19BF70BCF82FEC94CCE4BB8B3D6EEE8DE3DE43ABC5AC7058DA842EBAC9E06784ED6C38395FE0D9B32FC4F62C6D45D089F4B9B1925F9FE8D614D77B2E840BB36AC4D0D1982BD0282970650EFB62AABCF314FE15F1659CFB258C4C336A8C0, N'Trần F', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'11d8c420-9db1-4cfa-bd7c-a2d5ddbb3fde', N'teacher2', 0xAD948B3F81DF189F76AC78B64B949CD116DCCE646564FB8BADBE6824CE04F33B0B7392BD1802E3A29CC48FBF46833CB6FC9A3E5BC29BA322C8AB463F5D1E7F20, 0x415AE80D8261A5A6D9320A361EF43B45A0E0C3E3D047825B3E7573F9906192590800B4D0DF7CCA8DF2C9367835F61A72B1F82AB4B75EA930B3B19678E71B26C16AD94B82BE3106754A062CB3290F7DAF00D1E0B56013B64BC5AC13362A15DCF47626E0B92B6140490AC7B14EFD64E9676D74953F4A6C0FDD49E01D5796737214, N'Tran Thi B', CAST(N'1980-05-10T00:00:00.0000000' AS DateTime2), N'tranthib@university.edu', N'200 Tran Hung Dao St', N'0987654321', NULL, 0)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'2fe82048-e399-44e4-ad4e-c16ecf2684e2', N'B20DCCN001', 0x0BBCF3FAFC8A8D42C6F00C3DD1620A39C867990017AD674131880AF981FCA4D3B034119BF2C8D8E75447B4729127E2F25A91FF25995239B8214DC1167D958BE4, 0xC35E8D238E15BFB17792CA8C48E0A7559F406FC0CAE65890C6950822B50EAFDD77F20B698D1D568299E8BBEB1195ACD31F486678C3EAFB0A0A4DE0A576DA94314A8013437E76A0620B40A9040D1D56A65D7C4BE8A3587436E52293823DDC64A49D7942DE4021E085E809B387B72AC4482AD5DA859CF5298ED71055D242B7FD2B, N'Trần Khang Huy', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'3b490f7a-f7cf-4128-b8bd-e4bb8936da77', N'teacher7', 0x90B88EF88953C6A06B86CBAB95434F90621A709DC727A72A64CB7CB99650C9983157850A7478B013533C163C5DE83582C43E9877B39DAAA42618223010817AEE, 0x415AE80D8261A5A6D9320A361EF43B45A0E0C3E3D047825B3E7573F9906192590800B4D0DF7CCA8DF2C9367835F61A72B1F82AB4B75EA930B3B19678E71B26C16AD94B82BE3106754A062CB3290F7DAF00D1E0B56013B64BC5AC13362A15DCF47626E0B92B6140490AC7B14EFD64E9676D74953F4A6C0FDD49E01D5796737214, N'Vo Van G', CAST(N'1986-08-20T00:00:00.0000000' AS DateTime2), N'vovang@university.edu', N'700 Ly Thuong Kiet St', N'0916782345', NULL, 0)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'c6ec585d-9eb5-4aff-8420-e4be202f25bd', N'B20DCCN0012', 0x6A9C8760D7C265824C3CCC8E0A38C4BBDB681D5B15CD125FB7DF3FA6F4E6741D21EE1AA7AC0EB97E372D2FDA41B4EC7CD987BFAC85F1F5A05F6B3B77FBB0C150, 0x0CF54373F8400D4F5F0F4A7DECA930A73D4842646DD4BD0682B62E2E5C87CC1577E81691AD43CA5F47C106BFED61FF794A495B1DEAA24F549A43ADF70359081BB0E316B55B8A32AF28139BB4612F22EC27747A50F62DC1E89B07AD3D0BC61A1C2F88A4537DF9B7311DA2523C48C6714A46284F1C95E04621C15301B7B99FC662, N'Nguyễn E', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'1f74e25b-6de9-4c14-b335-f3f3efd1e47f', N'B20DCCN004', 0x7B6D0775721C716050C61A40E5D8742644F16D89306F124F347268D69BFC09992E8506AF486925FC7D38F70E7DF0F45EDB0A4217682E69BBA880D1C0EA09E499, 0x6AB30902816E7FBA732170277D56E6A88A61E1D16F6D9FD338581C3E200919AB23397D789392AC89725061556FE420863F21B51D89330AEB058FC7BA002E00B2EC4FADFEED6709AF9A4A80ADB7D6F7D7938A4F007A542D1FE168C85A0AF7C56121A8885F18AA2B3E90DE4A50A524A06CF0CA5EDAFB6C7DF4D523194F9003CD93, N'Trần C', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), N'k.huytr4n@gmail.com', N'Hà Nội', N'123456789', NULL, 1)
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [PasswordSalt], [Name], [BirthDate], [Email], [Address], [Phone], [Note], [Position]) VALUES (N'82f0adf3-03d3-42d0-ad99-f53607f1de5a', N'teacher6', 0x591EAB43989A27A14A6C8A9CA592504179031CAA38D2B8F18249AE2C86D6E80777D2BFD35D57F7CB913E786F7C13F40E8CB87D272D3FC2B61956BBC025FE7253, 0x415AE80D8261A5A6D9320A361EF43B45A0E0C3E3D047825B3E7573F9906192590800B4D0DF7CCA8DF2C9367835F61A72B1F82AB4B75EA930B3B19678E71B26C16AD94B82BE3106754A062CB3290F7DAF00D1E0B56013B64BC5AC13362A15DCF47626E0B92B6140490AC7B14EFD64E9676D74953F4A6C0FDD49E01D5796737214, N'Hoang Thi F', CAST(N'1990-03-03T00:00:00.0000000' AS DateTime2), N'hoangthif@university.edu', N'600 Vo Thi Sau St', N'0923456782', NULL, 0)
GO
/****** Object:  Index [IX_Class_CreatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Class_CreatedById] ON [dbo].[Class]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Class_SubjectId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Class_SubjectId] ON [dbo].[Class]
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Class_TeacherId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Class_TeacherId] ON [dbo].[Class]
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Class_UpdatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Class_UpdatedById] ON [dbo].[Class]
(
	[UpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassExercise_ClassId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassExercise_ClassId] ON [dbo].[ClassExercise]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassExercise_ClassTopicOpenId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassExercise_ClassTopicOpenId] ON [dbo].[ClassExercise]
(
	[ClassTopicOpenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassExercise_SubjectExerciseId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassExercise_SubjectExerciseId] ON [dbo].[ClassExercise]
(
	[SubjectExerciseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassStudyMaterial_ClassId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassStudyMaterial_ClassId] ON [dbo].[ClassStudyMaterial]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassStudyMaterial_ClassId1]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassStudyMaterial_ClassId1] ON [dbo].[ClassStudyMaterial]
(
	[ClassId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassStudyMaterial_StudyMaterialId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassStudyMaterial_StudyMaterialId] ON [dbo].[ClassStudyMaterial]
(
	[StudyMaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassTopicOpen_ClassId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassTopicOpen_ClassId] ON [dbo].[ClassTopicOpen]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassTopicOpen_TopicId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassTopicOpen_TopicId] ON [dbo].[ClassTopicOpen]
(
	[TopicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Department_CreatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Department_CreatedById] ON [dbo].[Department]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Department_UniversityId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Department_UniversityId] ON [dbo].[Department]
(
	[UniversityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Department_UpdatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Department_UpdatedById] ON [dbo].[Department]
(
	[UpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Exercise_CreatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Exercise_CreatedById] ON [dbo].[Exercise]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Exercise_UpdatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Exercise_UpdatedById] ON [dbo].[Exercise]
(
	[UpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProgrammingLanguage_CreatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProgrammingLanguage_CreatedById] ON [dbo].[ProgrammingLanguage]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProgrammingLanguage_UpdatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProgrammingLanguage_UpdatedById] ON [dbo].[ProgrammingLanguage]
(
	[UpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudentClass_ClassId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudentClass_ClassId] ON [dbo].[StudentClass]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudentClass_StudentId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudentClass_StudentId] ON [dbo].[StudentClass]
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudentSubmission_ClassExerciseId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudentSubmission_ClassExerciseId] ON [dbo].[StudentSubmission]
(
	[ClassExerciseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudentSubmission_StudentId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudentSubmission_StudentId] ON [dbo].[StudentSubmission]
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudentSubmission_SubjectProgrammingLanguageId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudentSubmission_SubjectProgrammingLanguageId] ON [dbo].[StudentSubmission]
(
	[SubjectProgrammingLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudyMaterial_CreatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudyMaterial_CreatedById] ON [dbo].[StudyMaterial]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudyMaterial_SubjectId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudyMaterial_SubjectId] ON [dbo].[StudyMaterial]
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudyMaterial_UpdatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudyMaterial_UpdatedById] ON [dbo].[StudyMaterial]
(
	[UpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subject_CreatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Subject_CreatedById] ON [dbo].[Subject]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subject_DepartmentId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Subject_DepartmentId] ON [dbo].[Subject]
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subject_UpdatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Subject_UpdatedById] ON [dbo].[Subject]
(
	[UpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubjectExercise_ExerciseId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubjectExercise_ExerciseId] ON [dbo].[SubjectExercise]
(
	[ExerciseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubjectExercise_SubjectId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubjectExercise_SubjectId] ON [dbo].[SubjectExercise]
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubjectExercise_TopicId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubjectExercise_TopicId] ON [dbo].[SubjectExercise]
(
	[TopicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubjectProgrammingLanguage_CreatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubjectProgrammingLanguage_CreatedById] ON [dbo].[SubjectProgrammingLanguage]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubjectProgrammingLanguage_ProgrammingLanguageId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubjectProgrammingLanguage_ProgrammingLanguageId] ON [dbo].[SubjectProgrammingLanguage]
(
	[ProgrammingLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubjectProgrammingLanguage_SubjectId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubjectProgrammingLanguage_SubjectId] ON [dbo].[SubjectProgrammingLanguage]
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubjectProgrammingLanguage_UpdatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubjectProgrammingLanguage_UpdatedById] ON [dbo].[SubjectProgrammingLanguage]
(
	[UpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestCase_CreatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_TestCase_CreatedById] ON [dbo].[TestCase]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestCase_ExerciseId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_TestCase_ExerciseId] ON [dbo].[TestCase]
(
	[ExerciseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestCase_UpdatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_TestCase_UpdatedById] ON [dbo].[TestCase]
(
	[UpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Topic_ClassId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Topic_ClassId] ON [dbo].[Topic]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Topic_CreatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Topic_CreatedById] ON [dbo].[Topic]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Topic_SubjectId]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Topic_SubjectId] ON [dbo].[Topic]
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Topic_UpdatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Topic_UpdatedById] ON [dbo].[Topic]
(
	[UpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_University_CreatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_University_CreatedById] ON [dbo].[University]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_University_UpdatedById]    Script Date: 12/7/2024 10:32:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_University_UpdatedById] ON [dbo].[University]
(
	[UpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Class] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_User_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_User_Id]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Subject_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Subject_SubjectId]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Teacher_TeacherId] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Teacher_TeacherId]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_User_CreatedById]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_User_UpdatedById]
GO
ALTER TABLE [dbo].[ClassExercise]  WITH CHECK ADD  CONSTRAINT [FK_ClassExercise_Class_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[ClassExercise] CHECK CONSTRAINT [FK_ClassExercise_Class_ClassId]
GO
ALTER TABLE [dbo].[ClassExercise]  WITH CHECK ADD  CONSTRAINT [FK_ClassExercise_ClassTopicOpen_ClassTopicOpenId] FOREIGN KEY([ClassTopicOpenId])
REFERENCES [dbo].[ClassTopicOpen] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassExercise] CHECK CONSTRAINT [FK_ClassExercise_ClassTopicOpen_ClassTopicOpenId]
GO
ALTER TABLE [dbo].[ClassExercise]  WITH CHECK ADD  CONSTRAINT [FK_ClassExercise_SubjectExercise_SubjectExerciseId] FOREIGN KEY([SubjectExerciseId])
REFERENCES [dbo].[SubjectExercise] ([Id])
GO
ALTER TABLE [dbo].[ClassExercise] CHECK CONSTRAINT [FK_ClassExercise_SubjectExercise_SubjectExerciseId]
GO
ALTER TABLE [dbo].[ClassStudyMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudyMaterial_Class_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[ClassStudyMaterial] CHECK CONSTRAINT [FK_ClassStudyMaterial_Class_ClassId]
GO
ALTER TABLE [dbo].[ClassStudyMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudyMaterial_Class_ClassId1] FOREIGN KEY([ClassId1])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[ClassStudyMaterial] CHECK CONSTRAINT [FK_ClassStudyMaterial_Class_ClassId1]
GO
ALTER TABLE [dbo].[ClassStudyMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudyMaterial_StudyMaterial_StudyMaterialId] FOREIGN KEY([StudyMaterialId])
REFERENCES [dbo].[StudyMaterial] ([Id])
GO
ALTER TABLE [dbo].[ClassStudyMaterial] CHECK CONSTRAINT [FK_ClassStudyMaterial_StudyMaterial_StudyMaterialId]
GO
ALTER TABLE [dbo].[ClassTopicOpen]  WITH CHECK ADD  CONSTRAINT [FK_ClassTopicOpen_Class_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[ClassTopicOpen] CHECK CONSTRAINT [FK_ClassTopicOpen_Class_ClassId]
GO
ALTER TABLE [dbo].[ClassTopicOpen]  WITH CHECK ADD  CONSTRAINT [FK_ClassTopicOpen_Topic_TopicId] FOREIGN KEY([TopicId])
REFERENCES [dbo].[Topic] ([Id])
GO
ALTER TABLE [dbo].[ClassTopicOpen] CHECK CONSTRAINT [FK_ClassTopicOpen_Topic_TopicId]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_University_UniversityId] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_University_UniversityId]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_User_CreatedById]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_User_UpdatedById]
GO
ALTER TABLE [dbo].[Exercise]  WITH CHECK ADD  CONSTRAINT [FK_Exercise_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Exercise] CHECK CONSTRAINT [FK_Exercise_User_CreatedById]
GO
ALTER TABLE [dbo].[Exercise]  WITH CHECK ADD  CONSTRAINT [FK_Exercise_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Exercise] CHECK CONSTRAINT [FK_Exercise_User_UpdatedById]
GO
ALTER TABLE [dbo].[ProgrammingLanguage]  WITH CHECK ADD  CONSTRAINT [FK_ProgrammingLanguage_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProgrammingLanguage] CHECK CONSTRAINT [FK_ProgrammingLanguage_User_CreatedById]
GO
ALTER TABLE [dbo].[ProgrammingLanguage]  WITH CHECK ADD  CONSTRAINT [FK_ProgrammingLanguage_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ProgrammingLanguage] CHECK CONSTRAINT [FK_ProgrammingLanguage_User_UpdatedById]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_User_Id]
GO
ALTER TABLE [dbo].[StudentClass]  WITH CHECK ADD  CONSTRAINT [FK_StudentClass_Class_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[StudentClass] CHECK CONSTRAINT [FK_StudentClass_Class_ClassId]
GO
ALTER TABLE [dbo].[StudentClass]  WITH CHECK ADD  CONSTRAINT [FK_StudentClass_Student_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[StudentClass] CHECK CONSTRAINT [FK_StudentClass_Student_StudentId]
GO
ALTER TABLE [dbo].[StudentSubmission]  WITH CHECK ADD  CONSTRAINT [FK_StudentSubmission_ClassExercise_ClassExerciseId] FOREIGN KEY([ClassExerciseId])
REFERENCES [dbo].[ClassExercise] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentSubmission] CHECK CONSTRAINT [FK_StudentSubmission_ClassExercise_ClassExerciseId]
GO
ALTER TABLE [dbo].[StudentSubmission]  WITH CHECK ADD  CONSTRAINT [FK_StudentSubmission_Student_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[StudentSubmission] CHECK CONSTRAINT [FK_StudentSubmission_Student_StudentId]
GO
ALTER TABLE [dbo].[StudentSubmission]  WITH CHECK ADD  CONSTRAINT [FK_StudentSubmission_SubjectProgrammingLanguage_SubjectProgrammingLanguageId] FOREIGN KEY([SubjectProgrammingLanguageId])
REFERENCES [dbo].[SubjectProgrammingLanguage] ([Id])
GO
ALTER TABLE [dbo].[StudentSubmission] CHECK CONSTRAINT [FK_StudentSubmission_SubjectProgrammingLanguage_SubjectProgrammingLanguageId]
GO
ALTER TABLE [dbo].[StudyMaterial]  WITH CHECK ADD  CONSTRAINT [FK_StudyMaterial_Subject_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudyMaterial] CHECK CONSTRAINT [FK_StudyMaterial_Subject_SubjectId]
GO
ALTER TABLE [dbo].[StudyMaterial]  WITH CHECK ADD  CONSTRAINT [FK_StudyMaterial_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudyMaterial] CHECK CONSTRAINT [FK_StudyMaterial_User_CreatedById]
GO
ALTER TABLE [dbo].[StudyMaterial]  WITH CHECK ADD  CONSTRAINT [FK_StudyMaterial_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[StudyMaterial] CHECK CONSTRAINT [FK_StudyMaterial_User_UpdatedById]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Department_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Department_DepartmentId]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_User_CreatedById]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_User_UpdatedById]
GO
ALTER TABLE [dbo].[SubjectExercise]  WITH CHECK ADD  CONSTRAINT [FK_SubjectExercise_Exercise_ExerciseId] FOREIGN KEY([ExerciseId])
REFERENCES [dbo].[Exercise] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubjectExercise] CHECK CONSTRAINT [FK_SubjectExercise_Exercise_ExerciseId]
GO
ALTER TABLE [dbo].[SubjectExercise]  WITH CHECK ADD  CONSTRAINT [FK_SubjectExercise_Subject_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubjectExercise] CHECK CONSTRAINT [FK_SubjectExercise_Subject_SubjectId]
GO
ALTER TABLE [dbo].[SubjectExercise]  WITH CHECK ADD  CONSTRAINT [FK_SubjectExercise_Topic_TopicId] FOREIGN KEY([TopicId])
REFERENCES [dbo].[Topic] ([Id])
GO
ALTER TABLE [dbo].[SubjectExercise] CHECK CONSTRAINT [FK_SubjectExercise_Topic_TopicId]
GO
ALTER TABLE [dbo].[SubjectProgrammingLanguage]  WITH CHECK ADD  CONSTRAINT [FK_SubjectProgrammingLanguage_ProgrammingLanguage_ProgrammingLanguageId] FOREIGN KEY([ProgrammingLanguageId])
REFERENCES [dbo].[ProgrammingLanguage] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubjectProgrammingLanguage] CHECK CONSTRAINT [FK_SubjectProgrammingLanguage_ProgrammingLanguage_ProgrammingLanguageId]
GO
ALTER TABLE [dbo].[SubjectProgrammingLanguage]  WITH CHECK ADD  CONSTRAINT [FK_SubjectProgrammingLanguage_Subject_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubjectProgrammingLanguage] CHECK CONSTRAINT [FK_SubjectProgrammingLanguage_Subject_SubjectId]
GO
ALTER TABLE [dbo].[SubjectProgrammingLanguage]  WITH CHECK ADD  CONSTRAINT [FK_SubjectProgrammingLanguage_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[SubjectProgrammingLanguage] CHECK CONSTRAINT [FK_SubjectProgrammingLanguage_User_CreatedById]
GO
ALTER TABLE [dbo].[SubjectProgrammingLanguage]  WITH CHECK ADD  CONSTRAINT [FK_SubjectProgrammingLanguage_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[SubjectProgrammingLanguage] CHECK CONSTRAINT [FK_SubjectProgrammingLanguage_User_UpdatedById]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_User_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_User_Id]
GO
ALTER TABLE [dbo].[TestCase]  WITH CHECK ADD  CONSTRAINT [FK_TestCase_Exercise_ExerciseId] FOREIGN KEY([ExerciseId])
REFERENCES [dbo].[Exercise] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TestCase] CHECK CONSTRAINT [FK_TestCase_Exercise_ExerciseId]
GO
ALTER TABLE [dbo].[TestCase]  WITH CHECK ADD  CONSTRAINT [FK_TestCase_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[TestCase] CHECK CONSTRAINT [FK_TestCase_User_CreatedById]
GO
ALTER TABLE [dbo].[TestCase]  WITH CHECK ADD  CONSTRAINT [FK_TestCase_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[TestCase] CHECK CONSTRAINT [FK_TestCase_User_UpdatedById]
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [FK_Topic_Class_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [FK_Topic_Class_ClassId]
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [FK_Topic_Subject_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [FK_Topic_Subject_SubjectId]
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [FK_Topic_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [FK_Topic_User_CreatedById]
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [FK_Topic_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [FK_Topic_User_UpdatedById]
GO
ALTER TABLE [dbo].[University]  WITH CHECK ADD  CONSTRAINT [FK_University_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[University] CHECK CONSTRAINT [FK_University_User_CreatedById]
GO
ALTER TABLE [dbo].[University]  WITH CHECK ADD  CONSTRAINT [FK_University_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[University] CHECK CONSTRAINT [FK_University_User_UpdatedById]
GO
USE [master]
GO
ALTER DATABASE [LearningManagementSystem] SET  READ_WRITE 
GO
