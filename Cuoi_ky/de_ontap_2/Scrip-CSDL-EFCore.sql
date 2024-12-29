USE master
GO
CREATE DATABASE QLBanHang
GO
USE QLBanHang
GO
CREATE TABLE LoaiSanPham
(MaLoai char(3) PRIMARY KEY,
 TenLoai nvarchar(50))
GO
INSERT INTO LoaiSanPham 
VALUES('L01',N'Điện tử')
INSERT INTO LoaiSanPham 
VALUES('L02',N'Điện Lạnh')
INSERT INTO LoaiSanPham 
VALUES('L03',N'Nông sản')
INSERT INTO LoaiSanPham 
VALUES('L04',N'Gia dụng')
GO
CREATE TABLE SanPham
(MaSP char(4) PRIMARY KEY,
 TenSP nvarchar(50),
 MaLoai char(3) FOREIGN KEY REFERENCES LoaiSanPham(MaLoai),
 ChatLuongCao nvarchar(30),
 NhapKhau nvarchar(30),
 NgayNhap datetime,
 DonGia int,
 SoLuong int)
GO
INSERT INTO SanPham
VALUES('SP01',N'Robot hút bụi','L04',N'Có',N'Nhập khẩu','20241222',10,20)
INSERT INTO SanPham
VALUES('SP02',N'Tủ lạnh','L02',N'Không',N'Nội địa','20241122',20,30)
INSERT INTO SanPham
VALUES('SP03',N'Điều hòa','L02',N'Không',N'Nhập khẩu','20241210',30,40)
INSERT INTO SanPham
VALUES('SP04',N'Loa','L01',N'Có',N'Nội địa','20241208',40,50)
GO
SELECT * FROM LoaiSanPham
SELECT * FROM SanPham