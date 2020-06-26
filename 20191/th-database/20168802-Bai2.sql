--DROP DATABASE

CREATE DATABASE QLBONGDA

CREATE TABLE [QUOCGIA]
(
    [MAQG] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [TENQG] NVARCHAR(50) 
)
CREATE TABLE [CAUTHU]
(
    [MACT] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [HOTEN] NVARCHAR(100) ,
    [VITRI] NVARCHAR(100) ,
    [NGAYSINH] DATE ,
    [DIACHI] NVARCHAR(100),
    [MACLB] INT ,
    [MAQG] INT 
)

CREATE TABLE [TINH]
(
    [MATINH] INT NOT NULL PRIMARY KEY,
    [TENTINH] NVARCHAR(100),
) 

CREATE TABLE [TRANDAU]
(
    [MATRAN] INT NOT NULL PRIMARY KEY,
    [NAM] INT ,
    [VONG] INT ,
    [NGAYTD] DATE ,
    [MACLB1] INT ,
    [MACLB2] INT ,
    [MASAN] INT ,
    [KETQUA] INT ,

)

CREATE TABLE [SANVD]
(
    [MASAN] INT NOT NULL PRIMARY KEY,
    [TENSAN] INT ,
    [DIACHI] NVARCHAR(100)  
)

CREATE TABLE [HUANLUYENVIEN]
(
    [MAHLV] INT NOT NULL PRIMARY KEY,
    [TENHLV] NVARCHAR(100) ,
    [NGAYSINH] DATE ,
    [DIACHI] NVARCHAR(100) ,
    [DIENTHOAI] VARCHAR(20) ,
    [MAQG] INT ,

)

CREATE TABLE [CAULACBO]
(
	[MACLB] INT NOT NULL PRIMARY KEY,
	[TENCLB] NVARCHAR(100),
	[MASAN] INT ,
	[MATINH] INT ,
	
	
)

CREATE TABLE [HLV_CLB]
(
	[MAHLV] INT NOT NULL,
	[MACLB] INT NOT NULL,
	[VAITRO] NVARCHAR(100),
	PRIMARY KEY (MAHLV, MACLB)
)

CREATE TABLE [BANGXH]
(
	[MACLB] INT NOT NULL,
	[NAM] INT NOT NULL,
	[VONG] INT NOT NULL,
	[SOTRAN] INT,
	[THANG] INT,
	[HOA] INT,
	[THUA] INT,
	[HIEUSO] INT,
	[DIEM] INT,
	[HANG] INT,
	PRIMARY KEY (MACLB,NAM,VONG),
	
)
-- USUAL DATATYPE
-- DATE 
-- NVARCHAR
-- BINARY
-- INT
-- FLOAT 


-- connect foreign key

-- ALTER TABLE [CAUTHU]
-- ADD FOREIGN KEY [MA] REFERENCES Persons(PersonID);

ALTER TABLE [CAUTHU]
ADD FOREIGN KEY (MAQG) REFERENCES QUOCGIA(MAQG)

ALTER TABLE [CAUTHU]
ADD FOREIGN KEY (MACLB) REFERENCES CAULACBO(MACLB)

ALTER TABLE [CAULACBO]
ADD FOREIGN KEY (MATINH) REFERENCES TINH(MATINH)

ALTER TABLE [CAULACBO]
ADD FOREIGN KEY (MASAN) REFERENCES SANVD(MASAN)

ALTER TABLE [HLV_CLB]
ADD FOREIGN KEY (MAHLV) REFERENCES HUANLUYENVIEN(MAHLV)

ALTER TABLE [HLV_CLB]
ADD FOREIGN KEY (MACLB) REFERENCES CAULACBO(MACLB)

ALTER TABLE [HUANLUYENVIEN]
ADD FOREIGN KEY (MAQG) REFERENCES QUOCGIA(MAQG)

ALTER TABLE [TRANDAU] 
ADD FOREIGN KEY (MACLB1) REFERENCES CAULACBO(MACLB)

ALTER TABLE [TRANDAU] 
ADD FOREIGN KEY (MACLB2) REFERENCES CAULACBO(MACLB)

ALTER TABLE [TRANDAU] 
ADD FOREIGN KEY (MASAN) REFERENCES SANVD(MASAN)

ALTER TABLE [BANGXH] 
ADD FOREIGN KEY (MACLB) REFERENCES CAULACBO(MACLB)

-- add data

-- end add data

-- 3a

ALTER TABLE CAUTHU
ADD COLUMN [SO] INT

SELECT MACT,HOTEN,VITRI,NGAYSINH,SO,DIACHI FROM CAUTHU

SELECT * FROM CAUTHU 
WHERE SO=7 AND VITRI='Ti?n v?'


SELECT TENHLV,NGAYSINH,DIACHI,DIENTHOAI FROM HUANLUYENVIEN

SELECT * FROM CAUTHU
WHERE MAQG='VN' AND MACLB='BBD'

SELECT * FROM CAUTHU
WHERE MAQG='BRA' AND MACLB='SDN'


SELECT * FROM CAUTHU,CAULACBO
WHERE CAUTHU.MACLB=CAULACBO.MACLB
AND CAULACBO.MASAN='LA'

-- SHOW DATA 

SELECT * FROM CAULACBO

