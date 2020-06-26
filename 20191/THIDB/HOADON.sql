/*
   Tuesday, December 10, 20198:41:45 AM
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
CREATE TABLE dbo.HOADON
	(
	SOHD int NOT NULL,
	NGAYHD date NOT NULL,
	MAKH nvarchar(50) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.HOADON ADD CONSTRAINT
	PK_HOADON PRIMARY KEY CLUSTERED 
	(
	SOHD
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.HOADON SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.HOADON', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.HOADON', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.HOADON', 'Object', 'CONTROL') as Contr_Per 