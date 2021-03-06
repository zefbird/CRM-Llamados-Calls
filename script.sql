USE [ABM11]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NULL,
	[ProvinciaId] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](15) NOT NULL,
	[Apellido] [varchar](15) NOT NULL,
	[RubroId] [tinyint] NULL,
	[FechaNacimiento] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientesDirecciones]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientesDirecciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Calle] [varchar](30) NOT NULL,
	[Altura] [smallint] NOT NULL,
	[Dpto] [varchar](4) NULL,
	[Piso] [tinyint] NULL,
	[CiudadId] [int] NOT NULL,
	[ClienteId] [smallint] NULL,
 CONSTRAINT [PK_ClientesDirecciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Clientes__082A4AB72C4A9F74] UNIQUE NONCLUSTERED 
(
	[Calle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientesFuentesContacto]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientesFuentesContacto](
	[ClienteId] [smallint] NOT NULL,
	[FuenteContactoId] [tinyint] NOT NULL,
	[fc] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC,
	[FuenteContactoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientesTelefonos]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientesTelefonos](
	[Telefono] [varchar](13) NOT NULL,
	[ClienteId] [smallint] NOT NULL,
	[CiudadId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Telefono] ASC,
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuentesContacto]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuentesContacto](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Llamados]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Llamados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [smallint] NULL,
	[Fecha] [smalldatetime] NULL,
	[DescripcionLLamado] [varchar](300) NULL,
	[UsuarioAtiendeId] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LlamadosDestinatarios]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LlamadosDestinatarios](
	[UsuarioId] [tinyint] NOT NULL,
	[LlamadoId] [int] NOT NULL,
	[Comentarios] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC,
	[LlamadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LlamadosMotivosLlamados]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LlamadosMotivosLlamados](
	[LlamadoId] [int] NOT NULL,
	[MotivoLlamadoId] [tinyint] NOT NULL,
	[b] [bit] NOT NULL,
 CONSTRAINT [PK__Llamados__DDF9BE93F3085D13] PRIMARY KEY CLUSTERED 
(
	[LlamadoId] ASC,
	[MotivoLlamadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mails]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mails](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[ClienteId] [smallint] NULL,
	[Mail] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotivosLlamado]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivosLlamado](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](12) NOT NULL,
 CONSTRAINT [PK__MotivosL__3214EC070D05BEF1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__MotivosL__75E3EFCF9B3EF7D5] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[PaisId] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rubros]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rubros](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 16/7/2020 3:55:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](12) NOT NULL,
	[Login] [varchar](12) NOT NULL,
	[Clave] [varchar](15) NOT NULL,
	[Mail] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LlamadosMotivosLlamados] ADD  CONSTRAINT [DF_LlamadosMotivosLlamados_bit]  DEFAULT ((0)) FOR [b]
GO
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD FOREIGN KEY([ProvinciaId])
REFERENCES [dbo].[Provincias] ([Id])
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD FOREIGN KEY([RubroId])
REFERENCES [dbo].[Rubros] ([Id])
GO
ALTER TABLE [dbo].[ClientesDirecciones]  WITH CHECK ADD  CONSTRAINT [FK__ClientesD__Ciuda__45F365D3] FOREIGN KEY([CiudadId])
REFERENCES [dbo].[Ciudades] ([Id])
GO
ALTER TABLE [dbo].[ClientesDirecciones] CHECK CONSTRAINT [FK__ClientesD__Ciuda__45F365D3]
GO
ALTER TABLE [dbo].[ClientesDirecciones]  WITH CHECK ADD  CONSTRAINT [FK__ClientesD__Clien__46E78A0C] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[ClientesDirecciones] CHECK CONSTRAINT [FK__ClientesD__Clien__46E78A0C]
GO
ALTER TABLE [dbo].[ClientesFuentesContacto]  WITH CHECK ADD FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[ClientesFuentesContacto]  WITH CHECK ADD FOREIGN KEY([FuenteContactoId])
REFERENCES [dbo].[FuentesContacto] ([Id])
GO
ALTER TABLE [dbo].[ClientesTelefonos]  WITH CHECK ADD FOREIGN KEY([CiudadId])
REFERENCES [dbo].[Ciudades] ([Id])
GO
ALTER TABLE [dbo].[ClientesTelefonos]  WITH CHECK ADD FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[Llamados]  WITH CHECK ADD FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[Llamados]  WITH CHECK ADD FOREIGN KEY([UsuarioAtiendeId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[LlamadosDestinatarios]  WITH CHECK ADD FOREIGN KEY([LlamadoId])
REFERENCES [dbo].[Llamados] ([Id])
GO
ALTER TABLE [dbo].[LlamadosDestinatarios]  WITH CHECK ADD FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[LlamadosMotivosLlamados]  WITH CHECK ADD  CONSTRAINT [FK__LlamadosM__Llama__5EBF139D] FOREIGN KEY([LlamadoId])
REFERENCES [dbo].[Llamados] ([Id])
GO
ALTER TABLE [dbo].[LlamadosMotivosLlamados] CHECK CONSTRAINT [FK__LlamadosM__Llama__5EBF139D]
GO
ALTER TABLE [dbo].[LlamadosMotivosLlamados]  WITH CHECK ADD  CONSTRAINT [FK__LlamadosM__Motiv__5FB337D6] FOREIGN KEY([MotivoLlamadoId])
REFERENCES [dbo].[MotivosLlamado] ([Id])
GO
ALTER TABLE [dbo].[LlamadosMotivosLlamados] CHECK CONSTRAINT [FK__LlamadosM__Motiv__5FB337D6]
GO
ALTER TABLE [dbo].[Mails]  WITH CHECK ADD FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[Provincias]  WITH CHECK ADD FOREIGN KEY([PaisId])
REFERENCES [dbo].[Paises] ([Id])
GO
