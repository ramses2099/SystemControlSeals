-- =========================================
-- Create table template
-- =========================================
USE [SystemControlSeals]
GO
/*--
IF OBJECT_ID('[dbo].[StateRow]', 'U') IS NOT NULL
  DROP TABLE [dbo].[EstadoRow]
GO

CREATE TABLE [dbo].[StateRow]
(
	IdStateRow int not null identity(1,1), 
	Descripcion varchar(500) not null, 	
	FechaCreacion datetime,
	HostName varchar(200), 
    CONSTRAINT PK_IdStateRow_StateRow PRIMARY KEY (IdStateRow)
)


INSERT INTO [dbo].[StateRow] SELECT 'Activo',GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[StateRow] SELECT 'Inactivo',GETDATE(),'172.17.30.20';

SELECT * FROM [dbo].[StateRow];

IF OBJECT_ID('[dbo].[Rol]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Rol]
GO

CREATE TABLE [dbo].[Rol]
(
	IdRol int not null identity(1,1), 
	Descripcion varchar(500) not null, 
	IdStateRow int not null,
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
	IdStateRow int not null,
	FechaCreacion datetime,
	HostName varchar(200), 
    CONSTRAINT PK_IdUser_User PRIMARY KEY (IdUser)
)
GO

INSERT INTO [dbo].[User] SELECT 'jose.encarnacion','abcd.1234','Jose Emmanuel','Encarnacion Santana','jose.encarnacion@hit.com.do',1,1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[User] SELECT 'carlos.marte','abcd.1234','Carlos I','Marte','carlos.marte@hit.com.do',1,1,GETDATE(),'172.17.30.20';

SELECT * FROM [dbo].[User];


IF OBJECT_ID('[dbo].[Persmission]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Persmission]
GO

CREATE TABLE [dbo].[Persmission]
(
	IdPersmission int not null identity(1,1), 
	IdRol int not null,
	Modulo varchar(800),
	Permitted bit,
	IdStateRow int not null,
	FechaCreacion datetime,
	HostName varchar(200), 
    CONSTRAINT PK_IdPersmission_Persmission PRIMARY KEY (IdPersmission)
)
GO


SELECT * FROM [dbo].[Persmission];

IF OBJECT_ID('[dbo].[LineOperators]', 'U') IS NOT NULL
  DROP TABLE [dbo].[LineOperators]
GO

CREATE TABLE [dbo].[LineOperators]
(
	IdLineOperators int not null identity(1,1), 
	Codigo varchar(100) not null,
	Nombre varchar(800) not null,
	SCACCode varchar(100) null,
	BICCode varchar(100) null,
	ContactName varchar(800) null,
	IdStateRow int not null,
	FechaCreacion datetime,
	HostName varchar(200), 
    CONSTRAINT PK_IdLineOperators_LineOperators PRIMARY KEY (IdLineOperators)
)



INSERT INTO [dbo].[LineOperators] SELECT 'ACT ','AMERICAN CARGO TRANSPORT ','ACT ','ACT ','Francis Jourbet ', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'ALI','ALI','ALI','ALI','Marítima Dominicana', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'AML','ANTILLEAN MARINE LINES ','AML ','AML ','ANTILLANA DOM', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'ANL','AUSTRALIAN NATIONAL LINES','ANL','ANL','AGEPORT', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'APL','AMERICAN PRESIDENT LINES','APL ','APL ','Olaf Heinsen ', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'BAH','BAHRI','BAH','BAH','ET HEINSEN', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'BBL','LINEA IRREGULAR','BBL','BBL','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'BTH ','BERNUTH LINES ','BTH ','BTH ','Francis Jourbet ', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CAT','CAT','CAT','CAT','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CCL','COSCO CONTAINER LINE','CCL','CCL','AGEPORT', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CCN','CCN','CCN','CCN','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CCS','COOL CES','CCS','CCS','Maritima Dominicana', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CES ','CARIBBEAN EXPRESS SERVICES ','CES ','CES ','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CFS','CARIBBEAN FEEDER SERVICES GMBH & CO. KG','CFS','CFS','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CGM ','CGM - COMPAGNIE GENERALE MARITIME ','CGM ','CGM ','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CHI','CHIW','CHI','CHI','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CMA','CMA-COMPAGNIE','CMA','CMA','CMA CGM', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CNL','Continental Line','CNL','CNL','Maritima Dominicana', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'COS','COSIARMA','COS','COS','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CPP ','CP SHIPS ','null','null','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CRL','CARIBBEAN LINE','CRL','CRL','MARITIMA DOMINICANA', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CRO','CROWLEY LINER SERVICES,INC ','CRO','CRO','B&R', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'CSV','CSAV','CSV','CSV','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'DEL','null','null','null','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'DOL','DOLE','DOL','DOL','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'EGA ','EVERGREEN INTERNATIONAL ','null','null','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'EMC','EVERGREEN LINE','EMC','EMC','MARITIMA DOM', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'EWL','null','null','null','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'FLS ','FRONTIER LINE SERVICES ','FLS','FLS','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'FYF','FYFFES','FYF','FYF','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'HAN','Hanjin Shipping','HAN','HAN','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'HIT','Haina Int Terminals','HIT','HIT','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'HJC','null','HJC','HJC','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'HJN','HJN','HJN','HJN','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'HJS','HJS','HJS','HJS','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'HLC','HAPAG LLOYD ','HLC','HLC','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'HMM','HYUNDAI MERCHANT MARINE','HMM','HMM','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'HMS','HOLLAND MAAS CONTAINER LINE','HMS','HMS','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'HOG','HOEGH AUTOLINERS','HOG','HOG','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'HSL','HAMBURGSUD ','HSL','HSL','MARITIMA DOM', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'IBS','ISLA BONITA SHIPING','IBS','IBS','MARITIMA DOMINICANA', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'IRI','null','IRI','IRI','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'ITM','INTER MARINE','ITM','ITM','MARITIMA DOMINICANA', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'KOS','KING OCEAN SERVICES','KOS','KOS','Ageport', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'LIB','LIBRA','LIB','LIB','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'LTD','LTD','LTD','LTD','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'MEL','MELFI MARINE CORPORATION','null','null','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'MLF','MELFI ','MLF','MLF','Edwin Paula  Perez & Cia', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'MMC','MMC','MMC','MMC','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'MOL','MITSUI OSAKA LINE ','MOL ','MOL ','F SCHAD', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'MRB ','MARUBA ','null','null','Francis Joubert', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'MRF','MARFRET COMPAGNIE MARITIME ','MRF','MRF','Francis Jourbet ', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'MSC','MEDITERRANEAN SHIPPING COMPANY','MSC','MSC','MARITIMA DOM', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'MSK ','MAERSK SEALAND ','MSK','MSK','B&R', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'MXP','MARINE EXPRESS SERVICES ','MXP ','MXP ','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'NDL ','NORDANA LINES ','NDL ','NDL ','ET HEINSEN', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'NYK','NYK','NYK','NYK','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'ORC','ORICA','ORC','ORC','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'PRI','null','PRI','PRI','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'SBD','SEABOARD MARINE LINE','SBD','SBD','SEABOARD MARINE', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'SCL','CROWLEY LINER SERVICES, INC','SCL','SCL','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'SEA','MAERSK SEALAND','SEA','SEA','B&R', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'SFL','COSTA CONTAINER LINE','SFL','SFL','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'SHP','SHIPPER OWN','SHP','SHP','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'SLN','SCHUYLER LINE, NAVIGATION COMPANY, LLC','SLN','SLN','Octavio Mueses', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'SOC','SOC','SOC','SOC','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'STL ','STREAM LINES ','STL ','STL ','Ageport', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'STN','STINN','null','null','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'STR','SEATRADE','STR','STR','AGEPORT', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'TCA','TCA','TCA','TCA','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'UNK','null','null','null','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'WEC','WEC Lines','WEC','WEC','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'XPS','X-PRESS CONTAINER LINE PANAMA SA ','XPS','XPS','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'YML','YANG MING LINE','YML','YML','null', 1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[LineOperators] SELECT 'ZIM','ZIM CONTAINER SERVICES ','ZIM','ZIM','B&R', 1,GETDATE(),'172.17.30.20';


SELECT * FROM [dbo].[LineOperators];


IF OBJECT_ID('[dbo].[SealsProcess]', 'U') IS NOT NULL
  DROP TABLE [dbo].[SealsProcess]
GO

CREATE TABLE [dbo].[SealsProcess]
(
	IdSealsProcess int not null identity(1,1), 
	Process varchar(800) not null,
	IdStateRow int not null,
	FechaCreacion datetime,
	HostName varchar(200), 
    CONSTRAINT PK_IdSealsProcess_SealsProcess PRIMARY KEY (IdSealsProcess)
)

INSERT INTO [dbo].[SealsProcess] SELECT 'Zona Franca',1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[SealsProcess] SELECT 'Descarga en Puerto',1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[SealsProcess] SELECT 'Zona de Verificacion',1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[SealsProcess] SELECT 'Despacho Expreso',1,GETDATE(),'172.17.30.20';

--SELECT * FROM [dbo].[SealsProcess];


IF OBJECT_ID('[dbo].[SealsCatogory]', 'U') IS NOT NULL
  DROP TABLE [dbo].[SealsCatogory]
GO

CREATE TABLE [dbo].[SealsCatogory]
(
	IdSealsCatogory int not null identity(1,1), 
	Descripcion varchar(500) not null, 	
	IdStateRow int not null,
	FechaCreacion datetime,
	HostName varchar(200), 
    CONSTRAINT PK_IdSealsCatogory_SealsCatogory PRIMARY KEY (IdSealsCatogory)
)

INSERT INTO [dbo].[SealsCatogory] SELECT 'Botella',1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[SealsCatogory] SELECT 'Plastico',1,GETDATE(),'172.17.30.20';

SELECT * FROM [dbo].[SealsCatogory];

IF OBJECT_ID('[dbo].[SealsType]', 'U') IS NOT NULL
  DROP TABLE [dbo].[SealsType]
GO

CREATE TABLE [dbo].[SealsType]
(
	IdSealsType int not null identity(1,1), 
	Descripcion varchar(500) not null, 	
	IdStateRow int not null,
	FechaCreacion datetime,
	HostName varchar(200), 
    CONSTRAINT PK_IdSealsType_SealsType PRIMARY KEY (IdSealsType)
)

INSERT INTO [dbo].SealsType SELECT 'Sello Hit',1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].SealsType SELECT 'Sello Naviera',1,GETDATE(),'172.17.30.20';

SELECT * FROM [dbo].[SealsType];

IF OBJECT_ID('[dbo].[VesselVisits]', 'U') IS NOT NULL
  DROP TABLE [dbo].[VesselVisits]
GO

CREATE TABLE [dbo].[VesselVisits]
(
	IdVesselVisits int not null identity(1,1), 
	Visits varchar(100) not null,
	Voyage varchar(100) not null,
	VesselName varchar(500) not null, 	
	IdStateRow int not null,
	FechaCreacion datetime,
	HostName varchar(200), 
    CONSTRAINT PK_IdVesselVisits_VesselVisits PRIMARY KEY (IdVesselVisits)
)


INSERT INTO [dbo].[VesselVisits] SELECT 'AGKP-623A','624A','AGGELIKI P',1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[VesselVisits] SELECT 'AGVL-17017','17017','ALGOMA VALUE',1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[VesselVisits] SELECT 'AFMG-01','607A','AFRIVAN MAGNOLIA',1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[VesselVisits] SELECT 'AGLA-7','717B','ANGELA',1,GETDATE(),'172.17.30.20';

SELECT * FROM [dbo].[VesselVisits]


IF OBJECT_ID('[dbo].[SealsState]', 'U') IS NOT NULL
  DROP TABLE [dbo].[SealsState]
GO

CREATE TABLE [dbo].[SealsState]
(
	IdSealsState int not null identity(1,1), 	
	Descripcion varchar(500) not null, 	
	IdStateRow int not null,
	FechaCreacion datetime,
	HostName varchar(200), 
    CONSTRAINT PK_IdSealsState_SealsState PRIMARY KEY (IdSealsState)
)


INSERT INTO [dbo].[SealsState] SELECT 'Disponible',1,GETDATE(),'172.17.30.20';
INSERT INTO [dbo].[SealsState] SELECT 'Entregado',1,GETDATE(),'172.17.30.20';

SELECT * FROM [dbo].[SealsState];

--*/


