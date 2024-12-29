use master
go
if DB_ID('QLBanHang') is not null
	drop database QLBanHang
go
create database QLBanHang
go
use QLBanHang
go
create table LoaiSanPham(
MaLoai char(10) primary key,
TenLoai nvarchar(50))
 
go
insert into LoaiSanPham values('L1',N'Quần áo') 
insert into LoaiSanPham values('L2',N'Gia dụng')
 
go
create table SanPham(
MaSP char(10) primary key,
TenSP nvarchar(50),
DonGia float,
SoLuong int,
MaLoai char(10) foreign key references LoaiSanPham(MaLoai))
go 

insert into SanPham values('01',N'Áo sơ mi',600,100,'L1')
insert into SanPham values('02',N'Áo Khoác',800,120,'L1')
insert into SanPham values('03',N'Quạt cây',900,50,'L2')
insert into SanPham values('04',N'Nồi cơm điện',1400,50,'L2')


go
--select * FROM LoaiSanPham
--select * from SanPham
