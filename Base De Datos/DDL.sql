USE [master]
GO
/****** Object:  Database [V_Vuelos_Main]    Script Date: 7/18/2022 6:10:51 PM ******/
CREATE DATABASE [V_Vuelos_Main]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'V_Vuelos_Main', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\V_Vuelos_Main.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'V_Vuelos_Main_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\V_Vuelos_Main_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [V_Vuelos_Main] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [V_Vuelos_Main].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [V_Vuelos_Main] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET ARITHABORT OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [V_Vuelos_Main] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [V_Vuelos_Main] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET  DISABLE_BROKER 
GO
ALTER DATABASE [V_Vuelos_Main] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [V_Vuelos_Main] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET RECOVERY FULL 
GO
ALTER DATABASE [V_Vuelos_Main] SET  MULTI_USER 
GO
ALTER DATABASE [V_Vuelos_Main] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [V_Vuelos_Main] SET DB_CHAINING OFF 
GO
ALTER DATABASE [V_Vuelos_Main] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [V_Vuelos_Main] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [V_Vuelos_Main] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [V_Vuelos_Main] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'V_Vuelos_Main', N'ON'
GO
ALTER DATABASE [V_Vuelos_Main] SET QUERY_STORE = OFF
GO
USE [V_Vuelos_Main]
GO
/****** Object:  Table [dbo].[Aerolinea]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aerolinea](
	[id] [varchar](10) NOT NULL,
	[nombre] [varbinary](8000) NOT NULL,
	[Imagen] [varbinary](8000) NOT NULL,
	[pais] [varchar](10) NULL,
 CONSTRAINT [PK_Aerolinea] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[id] [decimal](12, 0) IDENTITY(1,1) NOT NULL,
	[fecha] [varbinary](8000) NOT NULL,
	[hora] [varbinary](8000) NOT NULL,
	[registro_detalle] [varbinary](8000) NOT NULL,
	[usuario] [varchar](40) NOT NULL,
	[operacion] [decimal](2, 0) NOT NULL,
	[descripcion] [varbinary](8000) NOT NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boleto](
	[id] [varchar](10) NOT NULL,
	[forma_pago] [decimal](2, 0) NOT NULL,
	[tipo_transaccion] [decimal](2, 0) NOT NULL,
	[vuelo] [varchar](10) NOT NULL,
	[cliente] [varchar](40) NOT NULL,
	[precio] [varbinary](8000) NOT NULL,
 CONSTRAINT [PK_Boleto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClienteToken]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteToken](
	[correo] [varchar](40) NOT NULL,
 CONSTRAINT [PK_ClienteToken_1] PRIMARY KEY CLUSTERED 
(
	[correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClienteWeb]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteWeb](
	[usuario] [varchar](40) NOT NULL,
	[nombre] [varbinary](8000) NOT NULL,
	[primer_apellido] [varbinary](8000) NOT NULL,
	[segundo_apellido] [varbinary](8000) NULL,
	[correo] [varbinary](8000) NOT NULL,
	[contrasena] [varbinary](8000) NOT NULL,
	[pregunta_seguridad] [decimal](2, 0) NOT NULL,
	[respuesta_seguridad] [varbinary](8000) NOT NULL,
 CONSTRAINT [PK_ClienteWeb] PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consecutivo]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consecutivo](
	[id] [decimal](8, 0) IDENTITY(1,1) NOT NULL,
	[valor] [varbinary](8000) NOT NULL,
	[descripcion] [varbinary](8000) NOT NULL,
	[prefijo] [varbinary](8000) NOT NULL,
	[rango_inicial] [varbinary](8000) NULL,
	[rango_final] [varbinary](8000) NULL,
 CONSTRAINT [PK_Consecutivo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Error]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Error](
	[id] [decimal](2, 0) IDENTITY(1,1) NOT NULL,
	[fecha] [varbinary](8000) NOT NULL,
	[hora] [varbinary](8000) NOT NULL,
	[numero_error] [varbinary](8000) NOT NULL,
	[mensaje_error] [varbinary](8000) NOT NULL,
 CONSTRAINT [PK_Error] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoPuerta]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoPuerta](
	[id] [decimal](2, 0) IDENTITY(1,1) NOT NULL,
	[descripcion] [varbinary](8000) NOT NULL,
 CONSTRAINT [PK_EstadoPuerta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoVuelo]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoVuelo](
	[id] [decimal](2, 0) IDENTITY(1,1) NOT NULL,
	[descripcion] [varbinary](8000) NOT NULL,
 CONSTRAINT [PK_EstadoVuelo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormaPago]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormaPago](
	[id] [decimal](2, 0) IDENTITY(1,1) NOT NULL,
	[descripcion] [varbinary](8000) NOT NULL,
 CONSTRAINT [PK_FormaPago] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operacion]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operacion](
	[id] [decimal](2, 0) IDENTITY(1,1) NOT NULL,
	[descripcion] [varbinary](8000) NULL,
 CONSTRAINT [PK_Operacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[id] [varchar](10) NOT NULL,
	[nombre] [varbinary](8000) NOT NULL,
	[imagen] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pregunta]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pregunta](
	[id] [decimal](2, 0) IDENTITY(1,1) NOT NULL,
	[descripcion] [varbinary](8000) NULL,
 CONSTRAINT [PK_Pregunta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puerta]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puerta](
	[id] [varchar](10) NOT NULL,
	[numero] [varbinary](8000) NOT NULL,
	[estado] [decimal](2, 0) NOT NULL,
 CONSTRAINT [PK_Puerta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[id] [decimal](2, 0) IDENTITY(1,1) NOT NULL,
	[descripcion] [varbinary](8000) NOT NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarjeta]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarjeta](
	[numero_tarjeta] [varbinary](900) NOT NULL,
	[fecha_expiracion] [varbinary](8000) NULL,
	[tipo_tarjeta] [decimal](2, 0) NULL,
	[cliente] [varchar](40) NULL,
	[cvv] [varbinary](50) NULL,
 CONSTRAINT [PK_Tarjeta_1] PRIMARY KEY CLUSTERED 
(
	[numero_tarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTarjeta]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTarjeta](
	[id] [decimal](2, 0) IDENTITY(1,1) NOT NULL,
	[descripcion] [varbinary](8000) NULL,
 CONSTRAINT [PK_TipoTarjeta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTransaccion]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTransaccion](
	[id] [decimal](2, 0) IDENTITY(1,1) NOT NULL,
	[descripcion] [varbinary](8000) NOT NULL,
 CONSTRAINT [PK_TipoTransaccion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[usuario] [varchar](40) NOT NULL,
	[contrasena] [varbinary](8000) NOT NULL,
	[correo] [varbinary](8000) NOT NULL,
	[rol] [decimal](2, 0) NULL,
	[pregunta_seguridad] [decimal](2, 0) NOT NULL,
	[respuesta_seguridad] [varbinary](8000) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vuelo]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vuelo](
	[id] [varchar](10) NOT NULL,
	[fecha_partida] [varbinary](8000) NOT NULL,
	[hora_partida] [varbinary](8000) NOT NULL,
	[fecha_llegada] [varbinary](8000) NOT NULL,
	[hora_llegada] [varbinary](8000) NOT NULL,
	[aerolinea] [varchar](10) NOT NULL,
	[puerta] [varchar](10) NOT NULL,
	[estado] [decimal](2, 0) NOT NULL,
	[parte_de] [varchar](10) NOT NULL,
	[llega_a] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Vuelo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Aerolinea]  WITH CHECK ADD  CONSTRAINT [FK_Aerolinea_Pais] FOREIGN KEY([pais])
REFERENCES [dbo].[Pais] ([id])
GO
ALTER TABLE [dbo].[Aerolinea] CHECK CONSTRAINT [FK_Aerolinea_Pais]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_Operacion] FOREIGN KEY([operacion])
REFERENCES [dbo].[Operacion] ([id])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_Operacion]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_Usuario] FOREIGN KEY([usuario])
REFERENCES [dbo].[Usuario] ([usuario])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_Usuario]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_ClienteToken] FOREIGN KEY([cliente])
REFERENCES [dbo].[ClienteToken] ([correo])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_ClienteToken]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_ClienteWeb] FOREIGN KEY([cliente])
REFERENCES [dbo].[ClienteWeb] ([usuario])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_ClienteWeb]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_FormaPago] FOREIGN KEY([forma_pago])
REFERENCES [dbo].[FormaPago] ([id])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_FormaPago]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_TipoTransaccion] FOREIGN KEY([tipo_transaccion])
REFERENCES [dbo].[TipoTransaccion] ([id])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_TipoTransaccion]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Vuelo] FOREIGN KEY([vuelo])
REFERENCES [dbo].[Vuelo] ([id])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Vuelo]
GO
ALTER TABLE [dbo].[ClienteWeb]  WITH CHECK ADD  CONSTRAINT [FK_ClienteWeb_Pregunta] FOREIGN KEY([pregunta_seguridad])
REFERENCES [dbo].[Pregunta] ([id])
GO
ALTER TABLE [dbo].[ClienteWeb] CHECK CONSTRAINT [FK_ClienteWeb_Pregunta]
GO
ALTER TABLE [dbo].[Puerta]  WITH CHECK ADD  CONSTRAINT [FK_Puerta_EstadoPuerta] FOREIGN KEY([estado])
REFERENCES [dbo].[EstadoPuerta] ([id])
GO
ALTER TABLE [dbo].[Puerta] CHECK CONSTRAINT [FK_Puerta_EstadoPuerta]
GO
ALTER TABLE [dbo].[Tarjeta]  WITH CHECK ADD  CONSTRAINT [FK_Tarjeta_ClienteToken] FOREIGN KEY([cliente])
REFERENCES [dbo].[ClienteToken] ([correo])
GO
ALTER TABLE [dbo].[Tarjeta] CHECK CONSTRAINT [FK_Tarjeta_ClienteToken]
GO
ALTER TABLE [dbo].[Tarjeta]  WITH CHECK ADD  CONSTRAINT [FK_Tarjeta_ClienteWeb] FOREIGN KEY([cliente])
REFERENCES [dbo].[ClienteWeb] ([usuario])
GO
ALTER TABLE [dbo].[Tarjeta] CHECK CONSTRAINT [FK_Tarjeta_ClienteWeb]
GO
ALTER TABLE [dbo].[Tarjeta]  WITH CHECK ADD  CONSTRAINT [FK_Tarjeta_TipoTarjeta] FOREIGN KEY([tipo_tarjeta])
REFERENCES [dbo].[TipoTarjeta] ([id])
GO
ALTER TABLE [dbo].[Tarjeta] CHECK CONSTRAINT [FK_Tarjeta_TipoTarjeta]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Pregunta] FOREIGN KEY([pregunta_seguridad])
REFERENCES [dbo].[Pregunta] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Pregunta]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol] FOREIGN KEY([rol])
REFERENCES [dbo].[Rol] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Rol]
GO
ALTER TABLE [dbo].[Vuelo]  WITH CHECK ADD  CONSTRAINT [FK_Vuelo_Aerolinea] FOREIGN KEY([aerolinea])
REFERENCES [dbo].[Aerolinea] ([id])
GO
ALTER TABLE [dbo].[Vuelo] CHECK CONSTRAINT [FK_Vuelo_Aerolinea]
GO
ALTER TABLE [dbo].[Vuelo]  WITH CHECK ADD  CONSTRAINT [FK_Vuelo_EstadoVuelo] FOREIGN KEY([estado])
REFERENCES [dbo].[EstadoVuelo] ([id])
GO
ALTER TABLE [dbo].[Vuelo] CHECK CONSTRAINT [FK_Vuelo_EstadoVuelo]
GO
ALTER TABLE [dbo].[Vuelo]  WITH CHECK ADD  CONSTRAINT [FK_Vuelo_Pais1] FOREIGN KEY([parte_de])
REFERENCES [dbo].[Pais] ([id])
GO
ALTER TABLE [dbo].[Vuelo] CHECK CONSTRAINT [FK_Vuelo_Pais1]
GO
ALTER TABLE [dbo].[Vuelo]  WITH CHECK ADD  CONSTRAINT [FK_Vuelo_Pais2] FOREIGN KEY([llega_a])
REFERENCES [dbo].[Pais] ([id])
GO
ALTER TABLE [dbo].[Vuelo] CHECK CONSTRAINT [FK_Vuelo_Pais2]
GO
ALTER TABLE [dbo].[Vuelo]  WITH CHECK ADD  CONSTRAINT [FK_Vuelo_Puerta] FOREIGN KEY([puerta])
REFERENCES [dbo].[Puerta] ([id])
GO
ALTER TABLE [dbo].[Vuelo] CHECK CONSTRAINT [FK_Vuelo_Puerta]
GO
/****** Object:  StoredProcedure [dbo].[uspAgregarAerolinea]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspAgregarAerolinea]
(
	@nombre varchar(40), 
	@imagen varbinary(MAX),
	@pais varchar(10)
)
as
begin
	Declare @phrase varchar(20)
	Declare @valor varchar(5)
	Declare @prefijo varchar(10)

	set @phrase = 'brandonEsElMejor'
	set @valor = (SELECT CONVERT(varchar(5), DECRYPTBYPASSPHRASE(@phrase, valor)) FROM Consecutivo WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Aerolineas');
	set @prefijo = (SELECT CONVERT(varchar(10), DECRYPTBYPASSPHRASE(@phrase, prefijo)) FROM Consecutivo WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Aerolineas');

	INSERT INTO Aerolinea VALUES 
	(
		CONCAT(@prefijo, '-', @valor), 
		ENCRYPTBYPASSPHRASE(@phrase, @nombre),
		@imagen,
		@pais
	);

	UPDATE Consecutivo SET valor = ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(8), (CONVERT(decimal(8,0), @valor) + 1))) WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Aerolineas'
end

GO
/****** Object:  StoredProcedure [dbo].[uspAgregarBoleto]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspAgregarBoleto]
(
	@formaPago decimal(2,0), 
	@tipoTransaccion decimal (2,0), 
	@vuelo varchar(10), 
	@cliente varchar(40), 
	@precio decimal(12, 0)
)
as
begin
	Declare @phrase varchar(20)
	Declare @valor varchar(5)
	Declare @prefijo varchar(10) 

	set @phrase = 'brandonEsElMejor'
	set @valor = (SELECT CONVERT(varchar(5), DECRYPTBYPASSPHRASE(@phrase, valor)) FROM Consecutivo WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Boletos');
	set @prefijo = (SELECT CONVERT(varchar(10), DECRYPTBYPASSPHRASE(@phrase, prefijo)) FROM Consecutivo WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Boletos');

	INSERT INTO Boleto VALUES 
	(
		CONCAT(@prefijo, '-', @valor),
		@formaPago,
		@tipoTransaccion, 
		@vuelo, 
		@cliente,
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(20), @precio))
	);

	UPDATE Consecutivo SET valor = ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(8), (CONVERT(decimal(8,0), @valor) + 1))) WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Boletos'
end

GO
/****** Object:  StoredProcedure [dbo].[uspAgregarConsecutivo]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspAgregarConsecutivo] 
(
	@valor decimal(8,0),
	@descripcion varchar(50),
	@prefijo varchar(20), 
	@rangoInicial decimal(5,0), 
	@rangoFinal decimal(5,0)
)
as
begin
	Declare @phrase varchar(20)
	set @phrase = 'brandonEsElMejor'

	INSERT INTO Consecutivo VALUES 
	(
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(10), @valor)),
		ENCRYPTBYPASSPHRASE(@phrase, @descripcion),
		ENCRYPTBYPASSPHRASE(@phrase, @prefijo),
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(10), @rangoInicial)),
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(10), @rangoFinal))
	);
end

GO
/****** Object:  StoredProcedure [dbo].[uspAgregarError]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspAgregarError] 
(
	@fecha date,
	@hora time, 
	@numeroDeError varchar(300),
	@mensajeDeError varchar(5000)
)
as
begin
	Declare @phrase varchar(20)
	set @phrase = 'brandonEsElMejor'

	INSERT INTO Error VALUES 
	(
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(40), @fecha)),
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(25), @hora)),
		ENCRYPTBYPASSPHRASE(@phrase, @numeroDeError),
		ENCRYPTBYPASSPHRASE(@phrase, @mensajeDeError)
	);
end

GO
/****** Object:  StoredProcedure [dbo].[uspAgregarPais]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspAgregarPais]
(
	@nombre varchar(40), 
	@imagen varbinary(MAX)
)
as
begin
	Declare @phrase varchar(20)
	Declare @valor varchar(5)
	Declare @prefijo varchar(10) 

	set @phrase = 'brandonEsElMejor'
	set @valor = (SELECT CONVERT(varchar(5), DECRYPTBYPASSPHRASE(@phrase, valor)) FROM Consecutivo WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Paises');
	set @prefijo = (SELECT CONVERT(varchar(10), DECRYPTBYPASSPHRASE(@phrase, prefijo)) FROM Consecutivo WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Paises');

	INSERT INTO Pais VALUES 
	(
		CONCAT(@prefijo, '-', @valor),
		ENCRYPTBYPASSPHRASE(@phrase, @nombre),
		@imagen
	);

	UPDATE Consecutivo SET valor = ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(8), (CONVERT(decimal(8,0), @valor) + 1))) WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Paises'
end
GO
/****** Object:  StoredProcedure [dbo].[uspAgregarPuerta]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspAgregarPuerta]
(
	@nombre varchar(40), 
	@estado decimal(2,0)
)
as
begin
	Declare @phrase varchar(20)
	Declare @valor varchar(5)
	Declare @prefijo varchar(10) 

	set @phrase = 'brandonEsElMejor'
	set @valor = (SELECT CONVERT(varchar(5), DECRYPTBYPASSPHRASE(@phrase, valor)) FROM Consecutivo WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Puertas');
	set @prefijo = (SELECT CONVERT(varchar(10), DECRYPTBYPASSPHRASE(@phrase, prefijo)) FROM Consecutivo WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Puertas');

	INSERT INTO Puerta VALUES 
	(
		CONCAT(@prefijo, '-', @valor),
		ENCRYPTBYPASSPHRASE(@phrase, @nombre),
		@estado
	);

	UPDATE Consecutivo SET valor = ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(8), (CONVERT(decimal(8,0), @valor) + 1))) WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Puertas'
end
GO
/****** Object:  StoredProcedure [dbo].[uspAgregarTarjeta]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspAgregarTarjeta]
(
	@numeroDeTarjeta decimal(19,0), 
	@fechaExpiracion date, 
	@tipoTarjeta decimal(2,0),
	@cliente varchar(10),
	@cvv decimal (5,0)
)
as
begin
	Declare @phrase varchar(20)
	set @phrase = 'brandonEsElMejor'

	INSERT INTO Tarjeta VALUES 
	(
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(50), @numeroDeTarjeta)),
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(25), @fechaExpiracion)),
		@tipoTarjeta, 
		@cliente,
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(10), @cvv))
	);
end

GO
/****** Object:  StoredProcedure [dbo].[uspAgregarUsuario]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspAgregarUsuario]
(
	@nombreUsuario varchar(20),
	@contrasena varchar(30), 
	@correo varchar(40), 
	@rol decimal(2,0), 
	@preguntaSeguridad decimal(2,0),
	@respuestaSeguridad varchar(100)

)
as
begin
	Declare @phrase varchar(20)
	set @phrase = 'brandonEsElMejor'

	INSERT INTO Usuario VALUES 
	(
		@nombreUsuario,
		ENCRYPTBYPASSPHRASE(@phrase, @contrasena),
		ENCRYPTBYPASSPHRASE(@phrase, @correo), 
		@rol, 
		@preguntaSeguridad,
		ENCRYPTBYPASSPHRASE(@phrase, @respuestaSeguridad)
	);
end

GO
/****** Object:  StoredProcedure [dbo].[uspAgregarVuelo]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspAgregarVuelo] 
(
	@fecha_partida date, 
	@hora_partida time, 
	@fecha_llegada date,
	@hora_llegada time,
	@aerolinea varchar(10), 
	@puerta varchar(10),
	@estado decimal(2,0),
	@parteDe varchar(10),
	@llegaA varchar(10)
)
as
begin
	Declare @phrase varchar(20)
	Declare @valor varchar(5)
	Declare @prefijo varchar(10) 

	set @phrase = 'brandonEsElMejor'
	set @valor = (SELECT CONVERT(varchar(5), DECRYPTBYPASSPHRASE(@phrase, valor)) FROM Consecutivo WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Vuelos');
	set @prefijo = (SELECT CONVERT(varchar(10), DECRYPTBYPASSPHRASE(@phrase, prefijo)) FROM Consecutivo WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Vuelos');

	INSERT INTO Vuelo VALUES 
	(
		
		CONCAT(@prefijo, '-', @valor),
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(40), @fecha_partida)), 
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(25), @hora_partida)),
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(40), @fecha_llegada)), 
		ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(25), @hora_llegada)),
		@aerolinea, 
		@puerta,
		@estado,
		@parteDe,
		@llegaA
	);
	UPDATE Consecutivo SET valor = ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(8), (CONVERT(decimal(8,0), @valor) + 1))) WHERE DECRYPTBYPASSPHRASE(@phrase,descripcion) = 'Vuelos'
end

GO
/****** Object:  StoredProcedure [dbo].[uspBorrarAerolinea]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspBorrarAerolinea]
(
	@id varchar(10)
)
as
begin
	DELETE FROM Aerolinea WHERE id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[uspBorrarBoleto]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspBorrarBoleto]
(
	@idBoleto varchar(10)
)
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	DELETE FROM Boleto WHERE DECRYPTBYPASSPHRASE(@phrase, id) = @idBoleto
end

GO
/****** Object:  StoredProcedure [dbo].[uspBorrarPais]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspBorrarPais]
(
	@id varchar(10)
)
as
begin

	DELETE FROM Pais WHERE id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[uspBorrarPuerta]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspBorrarPuerta]
(
	@id varchar(10)
)
as
begin
	DELETE FROM Puerta WHERE id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[uspBorrarTarjeta]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspBorrarTarjeta]
(
	@numeroDeTarjeta decimal(19,0)
)
as
begin
	Declare @phrase varchar(20)
	set @phrase = 'brandonEsElMejor'

	DELETE FROM Tarjeta WHERE CONVERT(decimal(19,0), DECRYPTBYPASSPHRASE(@phrase, numero_tarjeta)) = @numeroDeTarjeta
end

GO
/****** Object:  StoredProcedure [dbo].[uspBorrarUsuario]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspBorrarUsuario]
(
	@nombreUsuario varchar(20)
)
as
begin
	DELETE FROM Usuario WHERE usuario = @nombreUsuario
end

GO
/****** Object:  StoredProcedure [dbo].[uspBorrarVuelo]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspBorrarVuelo] 
(
	@id varchar(10)
)
as
begin
	DELETE FROM Vuelo WHERE id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[uspCambiarContrasenaUsuario]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspCambiarContrasenaUsuario] 
(
	@nombreUsuario varchar(20),
	@nuevaContrasena varchar(30)
)
as
begin
	Declare @phrase varchar(20)
	set @phrase = 'brandonEsElMejor'

	UPDATE Usuario SET
		contrasena = ENCRYPTBYPASSPHRASE(@phrase, @nuevaContrasena)
	WHERE DECRYPTBYPASSPHRASE(@phrase, usuario) = @nombreUsuario
end

GO
/****** Object:  StoredProcedure [dbo].[uspEditarAerolinea]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspEditarAerolinea] 
(
	@id varchar(10), 
	@nombre varchar(40), 
	@imagen varbinary(MAX)
)
as
begin
	Declare @phrase varchar(20)
	set @phrase = 'brandonEsElMejor'

	UPDATE Aerolinea SET
		nombre = ENCRYPTBYPASSPHRASE(@phrase, @nombre),
		imagen = @imagen
	WHERE id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[uspEditarUsuario]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspEditarUsuario] 
(
	@nombreUsuario varchar(20),
	@correo varchar(40), 
	@rol decimal(2,0) 
)
as
begin
	Declare @phrase varchar(20)
	set @phrase = 'brandonEsElMejor'

	UPDATE Usuario SET
		correo = ENCRYPTBYPASSPHRASE(@phrase, @correo),
		rol = @rol
	WHERE usuario = @nombreUsuario
end

GO
/****** Object:  StoredProcedure [dbo].[uspEditarVuelo]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspEditarVuelo] 
(
	@id varchar(10),
	@fecha_partida date, 
	@hora_partida time, 
	@fecha_llegada date,
	@hora_llegada time,
	@aerolinea varchar(10), 
	@pais varchar(10),
	@puerta varchar(10),
	@estado decimal(2,0),
	@parteDe varchar(10), 
	@llegaA varchar(10)
)
as
begin
	Declare @phrase varchar(20)
	set @phrase = 'brandonEsElMejor'

	UPDATE Vuelo SET
		fecha_partida = ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(40), @fecha_partida)), 
		hora_partida = ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(25), @hora_partida)), 
		fecha_llegada = ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(40), @fecha_llegada)),
		hora_llegada = ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(25), @hora_llegada)),
		aerolinea = @aerolinea, 
		puerta = @puerta,
		estado = @estado,
		parte_de = @parteDe,
		llega_a = @llegaA
	WHERE id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[uspModificarConsecutivo]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspModificarConsecutivo] 
(
	@id decimal(2,0),
	@descripcion varchar(50),
	@prefijo varchar(20), 
	@rangoFinal decimal(5,0)
)
as
begin
	Declare @phrase varchar(20)
	set @phrase = 'brandonEsElMejor'

	BEGIN TRY
	IF @rangoFinal < (SELECT CONVERT(decimal(5,0), DECRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(7), rango_inicial))) FROM Consecutivo WHERE CONVERT(decimal(2,0), DECRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(7), id))) = @id)
		THROW 51000, 'El rango final no puede ser menor al inicial', 1;
	
	UPDATE Consecutivo SET 
		descripcion = ENCRYPTBYPASSPHRASE(@phrase, @descripcion),
		prefijo = ENCRYPTBYPASSPHRASE(@phrase, @prefijo),
		rango_final = ENCRYPTBYPASSPHRASE(@phrase, CONVERT(varchar(10), @rangoFinal))
	WHERE id = @id
	END TRY
	BEGIN CATCH
	END CATCH
end

GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarAerolineaPorPais]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarAerolineaPorPais]
(
	@idPais varchar(15)
)
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		Aerolinea.id,
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, Aerolinea.nombre)) as nombre,
		Aerolinea.imagen, 
		Pais.id as CodigoPais,
		CONVERT(varchar(50), DECRYPTBYPASSPHRASE(@phrase, Pais.nombre)) as NombrePais
	FROM Aerolinea
	INNER JOIN Pais ON Aerolinea.pais = Pais.id
	WHERE Aerolinea.pais = @idPais
end

SELECT * FROM Aerolinea

GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarAerolineas]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarAerolineas]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		Aerolinea.id,
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, Aerolinea.nombre)) as nombre,
		Aerolinea.imagen, 
		Pais.id as CodigoPais,
		CONVERT(varchar(50), DECRYPTBYPASSPHRASE(@phrase, Pais.nombre)) as NombrePais
	FROM Aerolinea
	INNER JOIN Pais ON Aerolinea.pais = Pais.id
end

SELECT * FROM Aerolinea

GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarBitacora]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarBitacora]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		bitacora.id, 
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, fecha)) as fecha, 
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, hora)) as hora, 
		CONVERT(varchar(5000), DECRYPTBYPASSPHRASE(@phrase, registro_detalle)) as registro_detalle, 
		usuario, 
		operacion as codigo_operacion,
		CONVERT(varchar(20), DECRYPTBYPASSPHRASE(@phrase, Operacion.descripcion)) as nombre_operacion,
		CONVERT(varchar(5000), DECRYPTBYPASSPHRASE(@phrase, Bitacora.descripcion)) as descripcion
	FROM Bitacora
	INNER JOIN Operacion ON Bitacora.operacion = Operacion.id
end
GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarConsecutivos]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarConsecutivos]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		id,
		CONVERT(varchar(10), DECRYPTBYPASSPHRASE(@phrase, valor)) as valor,
		CONVERT(varchar(500), DECRYPTBYPASSPHRASE(@phrase, descripcion)) as descripcion,
		CONVERT(varchar(15), DECRYPTBYPASSPHRASE(@phrase, prefijo)) as prefijo,
		CONVERT(varchar(10), DECRYPTBYPASSPHRASE(@phrase, rango_inicial)) as rango_inicial,
		CONVERT(varchar(10), DECRYPTBYPASSPHRASE(@phrase, rango_final)) as rango_final
	FROM Consecutivo
end

GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarEstadosPuerta]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarEstadosPuerta]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		id,
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, descripcion)) as descripcion
	FROM EstadoPuerta
end
GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarEstadosVuelo]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarEstadosVuelo]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		id,
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, descripcion)) as descripcion
	FROM EstadoVuelo
end
GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarFormasDePago]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarFormasDePago]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		id,
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, descripcion)) as descripcion
	FROM FormaPago
end
GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarPaises]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarPaises]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		id,
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, nombre)) as nombre,
		imagen
	FROM Pais
end

GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarPreguntasSeguridad]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarPreguntasSeguridad]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		id,
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, descripcion)) as descripcion
	FROM Pregunta
end
GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarPuertas]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarPuertas]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		Puerta.id, 
		CONVERT(varchar(20), DECRYPTBYPASSPHRASE(@phrase, numero))  as numero,
		Puerta.estado as NumeroEstado,
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, EstadoPuerta.descripcion)) as DescripcionEstado 
	FROM Puerta
	INNER JOIN EstadoPuerta ON Puerta.estado = EstadoPuerta.id
end
GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarPuertasActivas]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarPuertasActivas]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		Puerta.id, 
		CONVERT(varchar(20), DECRYPTBYPASSPHRASE(@phrase, numero))  as numero,
		Puerta.estado as NumeroEstado,
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, EstadoPuerta.descripcion)) as DescripcionEstado 
	FROM Puerta
	INNER JOIN EstadoPuerta ON Puerta.estado = EstadoPuerta.id
	WHERE Puerta.estado = 1
end

SELECT * FROM PUERTA
GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarRoles]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarRoles]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		id,
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, descripcion)) as descripcion
	FROM Rol
end
GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarTiposTarjeta]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarTiposTarjeta]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		id,
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, descripcion)) as descripcion
	FROM TipoTarjeta
end
GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarTiposTransaccion]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarTiposTransaccion]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		id,
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, descripcion)) as descripcion
	FROM TipoTransaccion
end
GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarUsuario]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarUsuario]
(
	@idUsuario varchar(30)
)
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		usuario, 
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, correo))  as correo,
		rol as NumeroRol, 
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, Rol.descripcion)) as NombreRol 
	FROM Usuario
	INNER JOIN ROL ON Rol.id = Usuario.rol
	WHERE usuario = @idUsuario
end

SELECT * FROM Usuario

GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarUsuario_Especifico]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarUsuario_Especifico]
(
	@idUsuario varchar(30)
)
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		usuario, 
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, correo))  as correo,
		rol as NumeroRol, 
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, Rol.descripcion)) as NombreRol 
	FROM Usuario
	INNER JOIN ROL ON Rol.id = Usuario.rol
	WHERE usuario = @idUsuario
end

SELECT * FROM Usuario

GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarUsuario_General]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarUsuario_General]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		usuario, 
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, correo))  as correo,
		rol as NumeroRol, 
		CONVERT(varchar(30), DECRYPTBYPASSPHRASE(@phrase, Rol.descripcion)) as NombreRol 
	FROM Usuario
	INNER JOIN ROL ON Rol.id = Usuario.rol
end

SELECT * FROM Usuario

GO
/****** Object:  StoredProcedure [dbo].[uspRecuperarVuelos]    Script Date: 7/18/2022 6:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspRecuperarVuelos]
as
begin
	DECLARE @phrase varchar(25)
	SET @phrase = 'brandonEsElMejor'

	SELECT 
		Vuelo.id, 
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, fecha_partida)) as fecha_partida,
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, hora_partida)) as hora_partida,
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, fecha_llegada)) as fecha_llegada,
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, hora_llegada)) as hora_llegada, 
		Vuelo.aerolinea AS codigo_aerolinea, 
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, Aerolinea.nombre)) as nombre_aerolinea, 
		Vuelo.puerta AS codigo_puerta, 
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, Puerta.numero)) as numero_puerta,
		Vuelo.estado AS codigo_estado,
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, EstadoVuelo.descripcion)) as descripcion_estado,
		parte_de as codigo_pais_parte, 
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, Pais.nombre)) as nombre_pais_parte,
		llega_a as codigo_pais_llega, 
		CONVERT(varchar(40), DECRYPTBYPASSPHRASE(@phrase, llegaA.nombre)) as nombre_pais_llega
	FROM Vuelo
	LEFT OUTER JOIN Aerolinea ON Vuelo.aerolinea = Aerolinea.id
	LEFT OUTER JOIN Puerta ON Vuelo.Puerta = Puerta.id
	LEFT OUTER JOIN EstadoVuelo On Vuelo.estado = EstadoVuelo.id
	LEFT OUTER JOIN Pais ON Vuelo.parte_de = Pais.id
	LEFT OUTER JOIN Pais llegaA ON Vuelo.llega_a = llegaA.id
end
GO
USE [master]
GO
ALTER DATABASE [V_Vuelos_Main] SET  READ_WRITE 
GO
