/*
   Tuesday, December 10, 201912:45:43 AM
   User: 
   Server: THIENND-LAPTOP
   Database: DBQLNV
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
CREATE TABLE dbo.DANGKY
	(
	MSSV int NOT NULL,
	MSMH nvarchar(50) NOT NULL,
	KYHOC int NOT NULL,
	DIEMQT real NOT NULL,
	DIEMCK real NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.DANGKY SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.DANGKY', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.DANGKY', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.DANGKY', 'Object', 'CONTROL') as Contr_Per 