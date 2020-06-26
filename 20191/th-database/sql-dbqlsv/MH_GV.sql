/*
   Tuesday, December 10, 201912:44:36 AM
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
CREATE TABLE dbo.MH_GV
	(
	MSMH nvarchar(50) NOT NULL,
	TenGV nvarchar(50) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.MH_GV SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.MH_GV', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.MH_GV', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.MH_GV', 'Object', 'CONTROL') as Contr_Per 