use master 
go 
create database QL_HocSinh
go 
use QL_HocSinh
go 
CREATE TABLE Lop (
    MaLop NVARCHAR(10) PRIMARY KEY,
    TenLop NVARCHAR(50)
);
CREATE TABLE HocSinh (
    MaHS NVARCHAR(10) PRIMARY KEY,
    HoTen NVARCHAR(100),
    NgaySinh DATE,
    GioiTinh NVARCHAR(10), 
    ConTBLS NVARCHAR(10),
    MaLop NVARCHAR(10),
    FOREIGN KEY (MaLop) REFERENCES Lop(MaLop)
);
INSERT INTO Lop (MaLop, TenLop) VALUES ('L01', N'Lớp 10A')
INSERT INTO Lop (MaLop, TenLop) VALUES ('L02', N'Lớp 11B')
INSERT INTO Lop (MaLop, TenLop) VALUES ('L03', N'Lớp 12C')

INSERT INTO HocSinh (MaHS, HoTen, NgaySinh, GioiTinh, ConTBLS, MaLop) VALUES ('HS01',N'Nguyễn Văn A','2005-05-01',N'Nam',N'Có','L01')
INSERT INTO HocSinh (MaHS, HoTen, NgaySinh, GioiTinh, ConTBLS, MaLop) VALUES ('HS02',N'Trần Thị B','2004-07-15',N'Nữ',N'Không','L01')
INSERT INTO HocSinh (MaHS, HoTen, NgaySinh, GioiTinh, ConTBLS, MaLop) VALUES ('HS03',N'Lê Văn C','2003-09-20',N'Nam',N'Không','L03')

-- truy xuất dữ liệu 
select * from lop 
select * from HocSinh 