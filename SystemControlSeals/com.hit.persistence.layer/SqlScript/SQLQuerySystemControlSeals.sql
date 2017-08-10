-- =========================================
-- Create table template
-- =========================================
USE [SystemControlSeals]
GO
/*--
IF OBJECT_ID('[dbo].[EstadoRow]', 'U') IS NOT NULL
  DROP TABLE [dbo].[EstadoRow]
GO

CREATE TABLE [dbo].[EstadoRow]
(
	IdEstadoRow int not null identity(1,1), 
	Descripcion varchar(500) not null, 	
	FechaCreacion datetime,
	HostName varchar(200), 
    CONSTRAINT PK_IdEstadoRow_EstadoRow PRIMARY KEY (IdEstadoRow)
)


INSERT INTO [dbo].[EstadoRow] SELECT 'Activo',GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[EstadoRow] SELECT 'Inactivo',GETDATE(),'172.17.30.20';

SELECT * FROM [dbo].[EstadoRow];

IF OBJECT_ID('[dbo].[Rol]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Rol]
GO

CREATE TABLE [dbo].[Rol]
(
	IdRol int not null identity(1,1), 
	Descripcion varchar(500) not null, 
	IdEstadoRow int not null,
	FechaCreacion datetime,
	HostName varchar(200), 
    CONSTRAINT PK_IdRol_Rol PRIMARY KEY (IdRol)
)
GO

INSERT INTO [dbo].[Rol] SELECT 'Administrador',1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[Rol] SELECT 'User',1,GETDATE(),'172.17.30.20';

SELECT * FROM [dbo].[Rol]


IF OBJECT_ID('[dbo].[User]', 'U') IS NOT NULL
  DROP TABLE [dbo].[User]
GO

CREATE TABLE [dbo].[User]
(
	IdUser int not null identity(1,1), 
	Usuario varchar(200) not null,
	Pwd varchar(200) not null,
	Nombres varchar(500) not null,
	Apellidos varchar(500) not null,
	Email varchar(800) null,
	IdRol int not null,
	IdEstadoRow int not null,
	FechaCreacion datetime,
	HostName varchar(200), 
    CONSTRAINT PK_IdUser_User PRIMARY KEY (IdUser)
)
GO

INSERT INTO [dbo].[User] SELECT 'jose.encarnacion','abcd.1234','Jose Emmanuel','Encarnacion Santana','jose.encarnacion@hit.com.do',1,1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[User] SELECT 'carlos.marte','abcd.1234','Carlos I','Marte','carlos.marte@hit.com.do',1,1,GETDATE(),'172.17.30.20';


SELECT * FROM [dbo].[User];

--*/
