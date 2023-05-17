USE [master]
GO
/****** Object:  Database [QLTH_REP_NB]    Script Date: 2023-05-11 6:46:29 PM ******/
CREATE DATABASE [QLTH_REP_NB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTH_REP_NB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CSDLPTNHOM5\MSSQL\DATA\QLTH_REP_NB.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLTH_REP_NB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CSDLPTNHOM5\MSSQL\DATA\QLTH_REP_NB_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLTH_REP_NB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTH_REP_NB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTH_REP_NB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTH_REP_NB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTH_REP_NB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLTH_REP_NB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTH_REP_NB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET RECOVERY FULL 
GO
ALTER DATABASE [QLTH_REP_NB] SET  MULTI_USER 
GO
ALTER DATABASE [QLTH_REP_NB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTH_REP_NB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTH_REP_NB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTH_REP_NB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLTH_REP_NB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLTH_REP_NB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLTH_REP_NB', N'ON'
GO
ALTER DATABASE [QLTH_REP_NB] SET QUERY_STORE = OFF
GO
USE [QLTH_REP_NB]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 2023-05-11 6:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[id_branch] [varchar](50) NOT NULL,
	[address] [nvarchar](255) NULL,
	[phoneNumber] [varchar](100) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__Branch__ECC84CD983A49A9C] PRIMARY KEY CLUSTERED 
(
	[id_branch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2023-05-11 6:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [varchar](50) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[phoneNumber] [varchar](100) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__Customer__3213E83FB12310FA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2023-05-11 6:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id_e] [varchar](50) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Role] [varchar](50) NOT NULL,
	[phoneNumber] [varchar](100) NOT NULL,
	[id_branch] [varchar](50) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__Employee__9DB7D2F87E964740] PRIMARY KEY CLUSTERED 
(
	[id_e] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Station]    Script Date: 2023-05-11 6:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Station](
	[Name] [varchar](50) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Train_station_class] [nvarchar](100) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__Station__737584F7441CF3F5] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 2023-05-11 6:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__sysdiagr__C2B05B61ECA75566] PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED 
(
	[principal_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 2023-05-11 6:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[id] [varchar](50) NOT NULL,
	[ticketPrice] [float] NOT NULL,
	[discount] [float] NOT NULL,
	[seatType] [nvarchar](50) NOT NULL,
	[IdCustomer] [varchar](50) NOT NULL,
	[IdEmployee] [varchar](50) NOT NULL,
	[IdTrainRide] [varchar](50) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__Ticket__3213E83F9A6268D2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Train]    Script Date: 2023-05-11 6:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Train](
	[ID] [varchar](50) NOT NULL,
	[Manufacturing] [nvarchar](max) NOT NULL,
	[Class_1_seats] [int] NOT NULL,
	[Class_2_seats] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__Train__3214EC272015573D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainRide]    Script Date: 2023-05-11 6:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainRide](
	[id] [varchar](50) NOT NULL,
	[DepatureTime] [datetime] NOT NULL,
	[DepatureStation] [varchar](50) NOT NULL,
	[Destination] [varchar](50) NOT NULL,
	[IdTrain] [varchar](50) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__TrainRid__3213E83F2C47F534] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_933578364]    Script Date: 2023-05-11 6:46:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_933578364] ON [dbo].[Branch]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_741577680]    Script Date: 2023-05-11 6:46:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_741577680] ON [dbo].[Customer]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_965578478]    Script Date: 2023-05-11 6:46:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_965578478] ON [dbo].[Employee]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_709577566]    Script Date: 2023-05-11 6:46:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_709577566] ON [dbo].[Station]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1977774103]    Script Date: 2023-05-11 6:46:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1977774103] ON [dbo].[sysdiagrams]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_853578079]    Script Date: 2023-05-11 6:46:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_853578079] ON [dbo].[Ticket]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_661577395]    Script Date: 2023-05-11 6:46:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_661577395] ON [dbo].[Train]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_773577794]    Script Date: 2023-05-11 6:46:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_773577794] ON [dbo].[TrainRide]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Branch] ADD  CONSTRAINT [MSmerge_df_rowguid_FD621929A13C435694F8344386302A5D]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [MSmerge_df_rowguid_2F174C74965F4603B9A91B2845D00DF8]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [MSmerge_df_rowguid_638B3B7695BC41DD830535651C81989F]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Station] ADD  CONSTRAINT [MSmerge_df_rowguid_0A97AAE3E0A8402B83C7350092B05FA0]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[sysdiagrams] ADD  CONSTRAINT [MSmerge_df_rowguid_238D56005D7F413ABDF8C971990662CE]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Ticket] ADD  CONSTRAINT [MSmerge_df_rowguid_45CF65FEB05F4FE2AC5E0560B56ECF6B]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Train] ADD  CONSTRAINT [MSmerge_df_rowguid_626B7D2047304908B00CF31440A3E59F]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[TrainRide] ADD  CONSTRAINT [MSmerge_df_rowguid_2C683933A91745B7BB1B681095222765]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [FK__Employee__id_bra__3B75D760] FOREIGN KEY([id_branch])
REFERENCES [dbo].[Branch] ([id_branch])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK__Employee__id_bra__3B75D760]
GO
ALTER TABLE [dbo].[Ticket]  WITH NOCHECK ADD  CONSTRAINT [FK__Ticket__IdCustom__34C8D9D1] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK__Ticket__IdCustom__34C8D9D1]
GO
ALTER TABLE [dbo].[Ticket]  WITH NOCHECK ADD  CONSTRAINT [FK__Ticket__IdEmploy__3C69FB99] FOREIGN KEY([IdEmployee])
REFERENCES [dbo].[Employee] ([id_e])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK__Ticket__IdEmploy__3C69FB99]
GO
ALTER TABLE [dbo].[Ticket]  WITH NOCHECK ADD  CONSTRAINT [FK__Ticket__IdTrainR__36B12243] FOREIGN KEY([IdTrainRide])
REFERENCES [dbo].[TrainRide] ([id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK__Ticket__IdTrainR__36B12243]
GO
ALTER TABLE [dbo].[TrainRide]  WITH NOCHECK ADD  CONSTRAINT [FK__TrainRide__Depat__300424B4] FOREIGN KEY([DepatureStation])
REFERENCES [dbo].[Station] ([Name])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[TrainRide] CHECK CONSTRAINT [FK__TrainRide__Depat__300424B4]
GO
ALTER TABLE [dbo].[TrainRide]  WITH NOCHECK ADD  CONSTRAINT [FK__TrainRide__Desti__30F848ED] FOREIGN KEY([Destination])
REFERENCES [dbo].[Station] ([Name])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[TrainRide] CHECK CONSTRAINT [FK__TrainRide__Desti__30F848ED]
GO
ALTER TABLE [dbo].[TrainRide]  WITH NOCHECK ADD  CONSTRAINT [FK__TrainRide__IdTra__31EC6D26] FOREIGN KEY([IdTrain])
REFERENCES [dbo].[Train] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[TrainRide] CHECK CONSTRAINT [FK__TrainRide__IdTra__31EC6D26]
GO
ALTER TABLE [dbo].[sysdiagrams]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_4D500758_6323_455E_BE6E_C80343CA6545] CHECK NOT FOR REPLICATION (([diagram_id]>(134001) AND [diagram_id]<=(135001) OR [diagram_id]>(135001) AND [diagram_id]<=(136001)))
GO
ALTER TABLE [dbo].[sysdiagrams] CHECK CONSTRAINT [repl_identity_range_4D500758_6323_455E_BE6E_C80343CA6545]
GO
USE [master]
GO
ALTER DATABASE [QLTH_REP_NB] SET  READ_WRITE 
GO
