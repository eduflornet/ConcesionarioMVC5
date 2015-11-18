USE [Vehiculos]
GO
/****** Object:  Table [dbo].[Tipos]    Script Date: 18/11/2015 11:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos](
	[idTipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](250) NOT NULL,
	[descripcion] [nchar](500) NULL,
 CONSTRAINT [PK_Tipos] PRIMARY KEY CLUSTERED 
(
	[idTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vehiculos]    Script Date: 18/11/2015 11:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculos](
	[matricula] [nchar](10) NOT NULL,
	[marca] [nchar](150) NOT NULL,
	[modelo] [nchar](250) NOT NULL,
	[coste] [decimal](18, 0) NULL,
	[idTipo] [int] NULL,
 CONSTRAINT [PK_Vehiculos] PRIMARY KEY CLUSTERED 
(
	[matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Tipos] ON 

INSERT [dbo].[Tipos] ([idTipo], [nombre], [descripcion]) VALUES (1, N'Furgoneta                                                                                                                                                                                                                                                 ', N'Una furgoneta es un vehículo para transporte de objetos o grupos de personas, con un gran volumen de carga en relación a su batalla. Se asemejan estructuralmente a los monovolúmenes                                                                                                                                                                                                                                                                                                                               ')
INSERT [dbo].[Tipos] ([idTipo], [nombre], [descripcion]) VALUES (2, N'Monovolumen                                                                                                                                                                                                                                               ', N'Un monovolumen o Minivan es un automóvil relativamente alto en el que el compartimiento del motor, la cabina y el maletero están integrados en uno. Esta configuración de diseño pretende aumentar el espacio del habitáculo y el maletero para una longitud exterior dada. En algunos casos, los asientos pueden desplazarse e incluso desmontarse, para configurar el interior del automóvil de acuerdo con las necesidades del usuario en cada momento.                                                          ')
INSERT [dbo].[Tipos] ([idTipo], [nombre], [descripcion]) VALUES (3, N'Turismo                                                                                                                                                                                                                                                   ', N'es un automóvil relativamente clásico, con capacidad para transportar unas cuatro o cinco personas y equipaje. Las carrocerías asociadas a un turismo son hatchback, liftback, sedán y familiar.                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Tipos] ([idTipo], [nombre], [descripcion]) VALUES (4, N'Camioneta                                                                                                                                                                                                                                                 ', N'es un automóvil de carga que tiene en su parte trasera una plataforma descubierta, en que se pueden colocar objetos grandes                                                                                                                                                                                                                                                                                                                                                                                         ')
INSERT [dbo].[Tipos] ([idTipo], [nombre], [descripcion]) VALUES (5, N'Trolebus                                                                                                                                                                                                                                                  ', N'Trolebus                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ')
INSERT [dbo].[Tipos] ([idTipo], [nombre], [descripcion]) VALUES (6, N'Avion                                                                                                                                                                                                                                                     ', N'Avion                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ')
INSERT [dbo].[Tipos] ([idTipo], [nombre], [descripcion]) VALUES (7, N'Submarino                                                                                                                                                                                                                                                 ', N'Submarino                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ')
SET IDENTITY_INSERT [dbo].[Tipos] OFF
INSERT [dbo].[Vehiculos] ([matricula], [marca], [modelo], [coste], [idTipo]) VALUES (N'LU6360X   ', N'Honda                                                                                                                                                 ', N'2014                                                                                                                                                                                                                                                      ', CAST(10000 AS Decimal(18, 0)), 3)
INSERT [dbo].[Vehiculos] ([matricula], [marca], [modelo], [coste], [idTipo]) VALUES (N'M6814ZX   ', N'Ford                                                                                                                                                  ', N'2015                                                                                                                                                                                                                                                      ', CAST(3000 AS Decimal(18, 0)), 3)
ALTER TABLE [dbo].[Vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculos_Tipos] FOREIGN KEY([idTipo])
REFERENCES [dbo].[Tipos] ([idTipo])
GO
ALTER TABLE [dbo].[Vehiculos] CHECK CONSTRAINT [FK_Vehiculos_Tipos]
GO
