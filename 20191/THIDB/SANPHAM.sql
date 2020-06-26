/*
   Tuesday, December 10, 20198:38:46 AM
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
CREATE TABLE dbo.SANPHAM
	(
	MASP nvarchar(50) NOT NULL,
	TENSP nvarchar(50) NOT NULL,
	DVT nvarchar(50) NOT NULL,
	NUOCSX nvarchar(50) NOT NULL,
	GIA int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.SANPHAM ADD CONSTRAINT
	PK_SANPHAM PRIMARY KEY CLUSTERED 
	(
	MASP
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.SANPHAM SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.SANPHAM', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.SANPHAM', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.SANPHAM', 'Object', 'CONTROL') as Contr_Per 