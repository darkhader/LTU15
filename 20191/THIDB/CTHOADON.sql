/*
   Tuesday, December 10, 20198:42:17 AM
   User: 
   Server: THIENND-LAPTOP
   Database: QL_Khachhang
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.CTHOADON
	(
	SOHD int NOT NULL,
	MASP nvarchar(50) NOT NULL,
	SL int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.CTHOADON SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.CTHOADON', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.CTHOADON', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.CTHOADON', 'Object', 'CONTROL') as Contr_Per 