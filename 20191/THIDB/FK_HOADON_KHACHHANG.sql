/*
   Tuesday, December 10, 20198:43:11 AM
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
ALTER TABLE dbo.KHACHHANG SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.KHACHHANG', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.KHACHHANG', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.KHACHHANG', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.HOADON ADD CONSTRAINT
	FK_HOADON_KHACHHANG FOREIGN KEY
	(
	MAKH
	) REFERENCES dbo.KHACHHANG
	(
	MAKH
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.HOADON SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.HOADON', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.HOADON', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.HOADON', 'Object', 'CONTROL') as Contr_Per 