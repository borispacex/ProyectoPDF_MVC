USE [master]
GO
/****** Object:  Database [DBPRUEBAS2]    Script Date: 21/01/2023 20:37:25 ******/
CREATE DATABASE [DBPRUEBAS2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBPRUEBAS2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVERDEV\MSSQL\DATA\DBPRUEBAS2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBPRUEBAS2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVERDEV\MSSQL\DATA\DBPRUEBAS2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBPRUEBAS2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBPRUEBAS2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBPRUEBAS2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBPRUEBAS2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBPRUEBAS2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBPRUEBAS2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBPRUEBAS2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET RECOVERY FULL 
GO
ALTER DATABASE [DBPRUEBAS2] SET  MULTI_USER 
GO
ALTER DATABASE [DBPRUEBAS2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBPRUEBAS2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBPRUEBAS2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBPRUEBAS2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBPRUEBAS2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBPRUEBAS2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBPRUEBAS2', N'ON'
GO
ALTER DATABASE [DBPRUEBAS2] SET QUERY_STORE = OFF
GO
USE [DBPRUEBAS2]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 21/01/2023 20:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[idDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NULL,
	[nombreProducto] [varchar](100) NULL,
	[cantidad] [int] NULL,
	[precio] [decimal](10, 2) NULL,
	[total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 21/01/2023 20:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[numeroVenta] [varchar](10) NULL,
	[documentoCliente] [varchar](10) NULL,
	[nombreCliente] [varchar](50) NULL,
	[subTotal] [decimal](10, 2) NULL,
	[impuestoTotal] [decimal](10, 2) NULL,
	[total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DetalleVenta] ON 

INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [nombreProducto], [cantidad], [precio], [total]) VALUES (1, 1, N'teclado seasen gamer', 1, CAST(800.00 AS Decimal(10, 2)), CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [nombreProducto], [cantidad], [precio], [total]) VALUES (2, 2, N'laptop lenovo idea pad', 2, CAST(2200.00 AS Decimal(10, 2)), CAST(4400.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [nombreProducto], [cantidad], [precio], [total]) VALUES (3, 3, N'auricular redragon rgb', 1, CAST(950.00 AS Decimal(10, 2)), CAST(950.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [nombreProducto], [cantidad], [precio], [total]) VALUES (4, 4, N'teclado seven gamer', 1, CAST(800.00 AS Decimal(10, 2)), CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [nombreProducto], [cantidad], [precio], [total]) VALUES (5, 5, N'teclado seven gamer', 2, CAST(800.00 AS Decimal(10, 2)), CAST(1600.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [nombreProducto], [cantidad], [precio], [total]) VALUES (6, 6, N'ventilador coder gamer', 2, CAST(200.00 AS Decimal(10, 2)), CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [nombreProducto], [cantidad], [precio], [total]) VALUES (7, 7, N'laptop samsung book', 1, CAST(2500.00 AS Decimal(10, 2)), CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [nombreProducto], [cantidad], [precio], [total]) VALUES (8, 8, N'ventilador cooder master', 1, CAST(200.00 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [nombreProducto], [cantidad], [precio], [total]) VALUES (9, 9, N'monitor toro gamer', 1, CAST(1400.00 AS Decimal(10, 2)), CAST(1400.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [nombreProducto], [cantidad], [precio], [total]) VALUES (10, 10, N'monitor tenga', 1, CAST(1050.00 AS Decimal(10, 2)), CAST(1050.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [nombreProducto], [cantidad], [precio], [total]) VALUES (11, 11, N'mini ventiladora', 1, CAST(2100.00 AS Decimal(10, 2)), CAST(2100.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [nombreProducto], [cantidad], [precio], [total]) VALUES (12, 12, N'laptop asus zembook', 1, CAST(2200.00 AS Decimal(10, 2)), CAST(2200.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[DetalleVenta] OFF
GO
SET IDENTITY_INSERT [dbo].[Venta] ON 

INSERT [dbo].[Venta] ([idVenta], [numeroVenta], [documentoCliente], [nombreCliente], [subTotal], [impuestoTotal], [total]) VALUES (1, N'000001', N'5435', N'thalia', CAST(677.97 AS Decimal(10, 2)), CAST(122.03 AS Decimal(10, 2)), CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[Venta] ([idVenta], [numeroVenta], [documentoCliente], [nombreCliente], [subTotal], [impuestoTotal], [total]) VALUES (2, N'000002', N'8989', N'juan', CAST(3728.81 AS Decimal(10, 2)), CAST(671.19 AS Decimal(10, 2)), CAST(4400.00 AS Decimal(10, 2)))
INSERT [dbo].[Venta] ([idVenta], [numeroVenta], [documentoCliente], [nombreCliente], [subTotal], [impuestoTotal], [total]) VALUES (3, N'000003', N'898901', N'oscar', CAST(805.08 AS Decimal(10, 2)), CAST(144.92 AS Decimal(10, 2)), CAST(950.00 AS Decimal(10, 2)))
INSERT [dbo].[Venta] ([idVenta], [numeroVenta], [documentoCliente], [nombreCliente], [subTotal], [impuestoTotal], [total]) VALUES (4, N'000004', N'898910', N'jhon', CAST(677.97 AS Decimal(10, 2)), CAST(122.03 AS Decimal(10, 2)), CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[Venta] ([idVenta], [numeroVenta], [documentoCliente], [nombreCliente], [subTotal], [impuestoTotal], [total]) VALUES (5, N'000005', N'9090', N'marisol', CAST(1355.93 AS Decimal(10, 2)), CAST(244.07 AS Decimal(10, 2)), CAST(1600.00 AS Decimal(10, 2)))
INSERT [dbo].[Venta] ([idVenta], [numeroVenta], [documentoCliente], [nombreCliente], [subTotal], [impuestoTotal], [total]) VALUES (6, N'000006', N'77671', N'marisol', CAST(2457.63 AS Decimal(10, 2)), CAST(442.37 AS Decimal(10, 2)), CAST(2900.00 AS Decimal(10, 2)))
INSERT [dbo].[Venta] ([idVenta], [numeroVenta], [documentoCliente], [nombreCliente], [subTotal], [impuestoTotal], [total]) VALUES (7, N'000007', N'7888', N'kumiko', CAST(169.49 AS Decimal(10, 2)), CAST(30.51 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[Venta] ([idVenta], [numeroVenta], [documentoCliente], [nombreCliente], [subTotal], [impuestoTotal], [total]) VALUES (8, N'000008', N'887866', N'amelia', CAST(1186.44 AS Decimal(10, 2)), CAST(213.56 AS Decimal(10, 2)), CAST(1400.00 AS Decimal(10, 2)))
INSERT [dbo].[Venta] ([idVenta], [numeroVenta], [documentoCliente], [nombreCliente], [subTotal], [impuestoTotal], [total]) VALUES (9, N'000009', N'757578', N'tokio', CAST(889.83 AS Decimal(10, 2)), CAST(160.17 AS Decimal(10, 2)), CAST(1050.00 AS Decimal(10, 2)))
INSERT [dbo].[Venta] ([idVenta], [numeroVenta], [documentoCliente], [nombreCliente], [subTotal], [impuestoTotal], [total]) VALUES (10, N'000010', N'1112223', N'sheyla', CAST(169.49 AS Decimal(10, 2)), CAST(30.51 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[Venta] ([idVenta], [numeroVenta], [documentoCliente], [nombreCliente], [subTotal], [impuestoTotal], [total]) VALUES (11, N'000011', N'87865', N'jose', CAST(1779.66 AS Decimal(10, 2)), CAST(320.34 AS Decimal(10, 2)), CAST(2100.00 AS Decimal(10, 2)))
INSERT [dbo].[Venta] ([idVenta], [numeroVenta], [documentoCliente], [nombreCliente], [subTotal], [impuestoTotal], [total]) VALUES (12, N'000012', N'3435345', N'matias', CAST(1864.41 AS Decimal(10, 2)), CAST(335.59 AS Decimal(10, 2)), CAST(2200.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Venta] OFF
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
USE [master]
GO
ALTER DATABASE [DBPRUEBAS2] SET  READ_WRITE 
GO
