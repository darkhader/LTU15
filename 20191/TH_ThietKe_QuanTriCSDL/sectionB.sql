﻿-- CAU 1 

-- CAU 2

SELECT AVG(DIEMCK) AS DIEMTRUNGBINH FROM DANGKY AS DK, SINHVIEN AS SV, LOP 
WHERE DK.MSMH='IT1110' 
AND DK.MSSV=SV.MASV
AND SV.MALOP=LOP.MALOP
AND TENLOP='CNPM K59'

-- CAU 3 - done 
SELECT HOTEN FROM SINHVIEN, LOP 
WHERE SINHVIEN.MALOP = LOP.MALOP
AND HOTEN  LIKE N'%Linh%'

-- CAU 4 - done 

SELECT TENLOP,COUNT(HOTEN) AS SL FROM SINHVIEN,LOP
WHERE SINHVIEN.MALOP = LOP.MALOP
AND LOP.MALOP=33050
GROUP BY SINHVIEN.MALOP, TENLOP

-- CAU 5 - done 

SELECT TENGVCN, COUNT(TENGVCN) AS SOLUONG FROM LOP 
WHERE TENGVCN=N'Nguyễn Duy Hiệp'
GROUP BY TENGVCN

-- CAU 6 
SELECT MASV, HOTEN, NGAYSINH, TENMH FROM SINHVIEN, DANGKY, MONHOC
WHERE MASV=MSSV
AND DANGKY.MSMH=MONHOC.MSMH
AND TENMH=N'Tin học đại cương'