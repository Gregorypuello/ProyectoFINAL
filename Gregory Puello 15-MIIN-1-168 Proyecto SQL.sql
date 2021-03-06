/****** Nombre: Gregory Puello Matricula: 15-miin-1-168 Seccion: 0541 ******/

/****** Object:  Database [AlmacenFerreteroJ]    Script Date: 8/4/18 4:29:51 p. m. ******/
CREATE DATABASE [AlmacenFerreteroJ]

GO
USE [AlmacenFerreteroJ]
GO

/****** Object:  Table [dbo].[Cajeros]    Script Date: 8/4/18 4:29:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cajeros](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_Cajeros] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maquina_registradora]    Script Date: 8/4/18 4:29:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maquina_registradora](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[piso] [int] NULL,
 CONSTRAINT [PK_maquina_registradora] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 8/4/18 4:29:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 8/4/18 4:29:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[cajero] [int] NULL,
	[maquina] [int] NULL,
	[producto] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cajeros] ON 

INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (1, N'Paula Perez')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (2, N'Lidia Santos')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (3, N'Pedro Martinez')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (4, N'Santiago Marte')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (5, N'Mariana Paredes')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (6, N'Luis Santana')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (7, N'Moises Acosta')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (8, N'Laura Diaz')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (9, N'Pedro Lina')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (10, N'Mario Polo')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (11, N'Cintia Casado')
SET IDENTITY_INSERT [dbo].[Cajeros] OFF
SET IDENTITY_INSERT [dbo].[maquina_registradora] ON 

INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (1, 1)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (2, 2)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (3, 3)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (4, 4)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (5, 5)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (6, 6)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (7, 7)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (8, 8)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (9, 9)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (10, 10)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (11, 11)
SET IDENTITY_INSERT [dbo].[maquina_registradora] OFF
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (1, N'Clavo', 1)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (2, N'Tornillos', 3)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (3, N'Tarugos', 5)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (4, N'Martillo', 100)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (5, N'Cinta', 150)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (6, N'Cola', 50)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (7, N'Taladro', 900)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (8, N'Destornillador', 150)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (9, N'Pintura', 450)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (10, N'Thinner', 130)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (11, N'Masilla', 45)
SET IDENTITY_INSERT [dbo].[productos] OFF
INSERT [dbo].[ventas] ([cajero], [maquina], [producto]) VALUES (11, 1, 1)
INSERT [dbo].[ventas] ([cajero], [maquina], [producto]) VALUES (9, 2, 2)
INSERT [dbo].[ventas] ([cajero], [maquina], [producto]) VALUES (1, 3, 3)
INSERT [dbo].[ventas] ([cajero], [maquina], [producto]) VALUES (2, 5, 4)
INSERT [dbo].[ventas] ([cajero], [maquina], [producto]) VALUES (5, 6, 5)
INSERT [dbo].[ventas] ([cajero], [maquina], [producto]) VALUES (4, 4, 6)
INSERT [dbo].[ventas] ([cajero], [maquina], [producto]) VALUES (7, 7, 7)
INSERT [dbo].[ventas] ([cajero], [maquina], [producto]) VALUES (6, 11, 8)
INSERT [dbo].[ventas] ([cajero], [maquina], [producto]) VALUES (8, 9, 9)
INSERT [dbo].[ventas] ([cajero], [maquina], [producto]) VALUES (3, 8, 10)
INSERT [dbo].[ventas] ([cajero], [maquina], [producto]) VALUES (10, 10, 11)
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_Cajeros] FOREIGN KEY([cajero])
REFERENCES [dbo].[Cajeros] ([codigo])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_Cajeros]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_maquina_registradora] FOREIGN KEY([maquina])
REFERENCES [dbo].[maquina_registradora] ([codigo])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_maquina_registradora]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_productos] FOREIGN KEY([producto])
REFERENCES [dbo].[productos] ([codigo])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_productos]
GO
USE [master]
GO
ALTER DATABASE [AlmacenFerreteroJ] SET  READ_WRITE 
GO
