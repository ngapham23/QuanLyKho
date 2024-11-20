-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2024 lúc 01:01 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom2_qlkho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bienbanyeucauboithuong`
--

CREATE TABLE `bienbanyeucauboithuong` (
  `MaBienBan` int(11) NOT NULL,
  `ngayLap` date NOT NULL,
  `ThongTinSuCo` varchar(255) NOT NULL,
  `MaSanPham` int(11) DEFAULT NULL,
  `HinhAnhHoacTaiLieuMinhHoa` varchar(255) NOT NULL,
  `GhiChu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bienbanyeucauboithuong`
--

INSERT INTO `bienbanyeucauboithuong` (`MaBienBan`, `ngayLap`, `ThongTinSuCo`, `MaSanPham`, `HinhAnhHoacTaiLieuMinhHoa`, `GhiChu`) VALUES
(1, '2023-12-12', 'Hàng bị vỡ', 1, 'suatuoi.jpg', 'Ghi chú demo1'),
(2, '2023-12-13', 'Hàng bị đổi màu', 2, 'suatuoi.jpg', 'Ghi chú ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhapnvl`
--

CREATE TABLE `chitietphieunhapnvl` (
  `ID` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `NgaySX` date NOT NULL,
  `NgayHH` date NOT NULL,
  `MaNVL` int(11) NOT NULL,
  `MaPhieuNhapKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhapnvl`
--

INSERT INTO `chitietphieunhapnvl` (`ID`, `SoLuong`, `NgaySX`, `NgayHH`, `MaNVL`, `MaPhieuNhapKho`) VALUES
(1, 10, '2020-10-13', '2023-11-08', 1, 1),
(2, 30, '2023-08-09', '2023-11-14', 4, 2),
(3, 220, '2022-01-01', '2024-01-01', 1, 3),
(4, 20, '2022-01-21', '2024-01-21', 7, 3),
(5, 110, '2022-01-13', '2024-01-13', 6, 4),
(6, 30, '2022-04-01', '2024-04-01', 5, 5),
(7, 70, '2022-06-01', '2024-06-01', 2, 5),
(8, 40, '2022-05-01', '2024-05-01', 11, 6),
(9, 20, '2022-07-01', '2024-07-01', 10, 7),
(10, 60, '2022-09-01', '2024-09-01', 8, 7),
(11, 240, '2022-11-01', '2024-11-01', 9, 7),
(12, 100, '2022-12-01', '2024-12-01', 12, 8),
(13, 50, '2022-12-21', '2024-12-21', 3, 9),
(14, 80, '2022-11-16', '2024-11-16', 4, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhapsanpham`
--

CREATE TABLE `chitietphieunhapsanpham` (
  `ID` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `NgaySX` date NOT NULL,
  `NgayHH` date NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `MaPhieuNhapKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhapsanpham`
--

INSERT INTO `chitietphieunhapsanpham` (`ID`, `SoLuong`, `NgaySX`, `NgayHH`, `MaSanPham`, `MaPhieuNhapKho`) VALUES
(1, 100, '2022-01-01', '2024-01-01', 1, 6),
(2, 100, '2022-01-01', '2024-01-01', 2, 6),
(3, 50, '2022-01-01', '2024-01-01', 3, 6),
(4, 100, '2022-01-01', '2024-01-01', 4, 7),
(5, 300, '2022-01-01', '2024-01-01', 5, 8),
(6, 60, '2022-01-01', '2024-01-01', 6, 9),
(7, 60, '2022-01-01', '2024-01-01', 7, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieuxuatnvl`
--

CREATE TABLE `chitietphieuxuatnvl` (
  `ID` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `NgaySX` date NOT NULL,
  `MaNVL` int(11) NOT NULL,
  `MaPhieuXuatKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieuxuatnvl`
--

INSERT INTO `chitietphieuxuatnvl` (`ID`, `SoLuong`, `NgaySX`, `MaNVL`, `MaPhieuXuatKho`) VALUES
(1, 10, '2022-01-01', 1, 2),
(2, 10, '2022-03-03', 6, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieuxuatsanpham`
--

CREATE TABLE `chitietphieuxuatsanpham` (
  `ID` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `NgaySanXuat` date NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `MaPhieuXuatKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieuxuatsanpham`
--

INSERT INTO `chitietphieuxuatsanpham` (`ID`, `SoLuong`, `NgaySanXuat`, `MaSanPham`, `MaPhieuXuatKho`) VALUES
(1, 10, '2023-06-06', 4, 1),
(2, 100, '2024-06-02', 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dieuphoinhapnvl`
--

CREATE TABLE `dieuphoinhapnvl` (
  `MaDpnnvl` int(11) NOT NULL,
  `TenNVL` varchar(225) NOT NULL,
  `MaNVL` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MaKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dieuphoinhapnvl`
--

INSERT INTO `dieuphoinhapnvl` (`MaDpnnvl`, `TenNVL`, `MaNVL`, `SoLuong`, `MaKho`) VALUES
(1, 'Duong', 1, 5, 1),
(2, 'Mach Nha', 2, 10, 1),
(3, 'Sua Khong Duong', 5, 10, 2),
(4, 'Bo', 6, 10, 2),
(5, 'Tinh Dau', 10, 5, 3),
(6, 'Vani', 11, 5, 3),
(7, 'Duong', 14, 10, 4),
(8, 'Bot Mi', 15, 10, 5),
(1, 'Duong', 1, 5, 1),
(2, 'Mach Nha', 2, 10, 1),
(3, 'Sua Khong Duong', 5, 10, 2),
(4, 'Bo', 6, 10, 2),
(5, 'Tinh Dau', 10, 5, 3),
(6, 'Vani', 11, 5, 3),
(7, 'Duong', 14, 10, 4),
(8, 'Bot Mi', 15, 10, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dieuphoinhapsanpham`
--

CREATE TABLE `dieuphoinhapsanpham` (
  `MaDpnsp` int(11) NOT NULL,
  `TenSanPham` varchar(225) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MaKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dieuphoinhapsanpham`
--

INSERT INTO `dieuphoinhapsanpham` (`MaDpnsp`, `TenSanPham`, `MaSanPham`, `SoLuong`, `MaKho`) VALUES
(1, 'Keo huong cam', 1, 10, 6),
(2, 'Keo huong vai', 2, 10, 6),
(3, 'Keo huong nho', 3, 10, 6),
(4, 'Keo mut', 4, 10, 7),
(5, 'Banh gao', 5, 10, 8),
(1, 'Keo huong cam', 1, 10, 6),
(2, 'Keo huong vai', 2, 10, 6),
(3, 'Keo huong nho', 3, 10, 6),
(4, 'Keo mut', 4, 10, 7),
(5, 'Banh gao', 5, 10, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dieuphoixuatnvl`
--

CREATE TABLE `dieuphoixuatnvl` (
  `MaDpxnvl` int(11) NOT NULL,
  `TenNvl` varchar(255) NOT NULL,
  `MaNvl` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MaKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dieuphoixuatnvl`
--

INSERT INTO `dieuphoixuatnvl` (`MaDpxnvl`, `TenNvl`, `MaNvl`, `SoLuong`, `MaKho`) VALUES
(1, 'Duong', 1, 10, 1),
(2, 'Sua khong duong', 5, 5, 2),
(1, 'Duong', 1, 10, 1),
(2, 'Sua khong duong', 5, 5, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dieuphoixuatsanpham`
--

CREATE TABLE `dieuphoixuatsanpham` (
  `MaDpxsp` int(11) NOT NULL,
  `TenSanPham` varchar(225) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MaKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dieuphoixuatsanpham`
--

INSERT INTO `dieuphoixuatsanpham` (`MaDpxsp`, `TenSanPham`, `MaSanPham`, `SoLuong`, `MaKho`) VALUES
(1, 'Keo huong cam', 1, 10, 6),
(2, 'Keo huong vai', 2, 10, 6),
(3, 'Keo huong nho', 3, 10, 6),
(4, 'Keo mut', 4, 10, 7),
(5, 'Keo gao', 5, 10, 8),
(6, 'Banh Quy ', 6, 10, 9),
(7, 'Banh Xop', 7, 10, 10),
(1, 'Keo huong cam', 1, 10, 6),
(2, 'Keo huong vai', 2, 10, 6),
(3, 'Keo huong nho', 3, 10, 6),
(4, 'Keo mut', 4, 10, 7),
(5, 'Keo gao', 5, 10, 8),
(6, 'Banh Quy ', 6, 10, 9),
(7, 'Banh Xop', 7, 10, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangtrave`
--

CREATE TABLE `hangtrave` (
  `MaHangTraVe` int(11) NOT NULL,
  `TenHangTraVe` varchar(255) NOT NULL,
  `SoLuongHangTraVe` int(11) NOT NULL,
  `NgaySanXuat` date NOT NULL,
  `HanSD` date NOT NULL,
  `MaPhieuHangTraVe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kho`
--

CREATE TABLE `kho` (
  `MaKho` int(11) NOT NULL,
  `TenKho` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `DungLuong` int(11) NOT NULL,
  `MaNhanVien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `kho`
--

INSERT INTO `kho` (`MaKho`, `TenKho`, `DiaChi`, `DungLuong`, `MaNhanVien`) VALUES
(1, 'Kho nguyên liệu 1', 'Cơ sở 03 Quang Trung, Q. Hải Châu, Tp. Đà Nẵng', 500, 2),
(2, 'Kho nguyên liệu 2', 'Cơ sở 03 Quang Trung, Q. Hải Châu, Tp. Đà Nẵng', 300, 10),
(3, 'Kho nguyên liệu 3', 'Cơ sở 03 Quang Trung, Q. Hải Châu, Tp. Đà Nẵng', 450, 9),
(4, 'Kho nguyên liệu 4', 'Cơ sở 03 Quang Trung, Q. Hải Châu, Tp. Đà Nẵng', 300, 1),
(5, 'Kho nguyên liệu 5', 'Cơ sở 03 Quang Trung, Q. Hải Châu, Tp. Đà Nẵng', 600, 3),
(6, 'Kho sản phẩm 1', 'Cơ sở 03 Quang Trung, Q. Hải Châu, Tp. Đà Nẵng', 200, 5),
(7, 'Kho sản phẩm 2', 'Cơ sở 03 Quang Trung, Q. Hải Châu, Tp. Đà Nẵng', 400, 4),
(8, 'Kho sản phẩm 3', 'Cơ sở 03 Quang Trung, Q. Hải Châu, Tp. Đà Nẵng', 350, 8),
(9, 'Kho sản phẩm 4', 'Cơ sở 03 Quang Trung, Q. Hải Châu, Tp. Đà Nẵng', 280, 7),
(10, 'Kho sản phẩm 5', 'Cơ sở 03 Quang Trung, Q. Hải Châu, Tp. Đà Nẵng', 330, 6),
(11, 'Kho NVL 11', '123', 200, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguyenvatlieu`
--

CREATE TABLE `nguyenvatlieu` (
  `MaNVL` int(11) NOT NULL,
  `NgayNhap` date NOT NULL,
  `TenNVL` varchar(255) NOT NULL,
  `Gia` float NOT NULL,
  `DonViTinh` varchar(255) DEFAULT NULL,
  `MaKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguyenvatlieu`
--

INSERT INTO `nguyenvatlieu` (`MaNVL`, `NgayNhap`, `TenNVL`, `Gia`, `DonViTinh`, `MaKho`) VALUES
(1, '2022-11-08', 'Duong', 20000, 'Bao', 1),
(2, '2022-10-08', 'Mach Nha', 50000, 'Lit', 1),
(3, '2022-10-09', 'Bot mi', 10000, 'Bao', 1),
(4, '2022-10-10', 'Hat dieu', 10000, 'Lit', 1),
(5, '2023-11-14', 'Sua khong duong', 8000, 'Thung', 2),
(6, '2023-10-14', 'Bo', 50000, 'Thung', 2),
(7, '2023-10-15', 'Trung', 50000, 'Qua', 2),
(8, '2023-10-16', 'Huong vi', 100000, 'Thung', 2),
(9, '2023-09-08', 'Muoi', 30000, 'Bao', 3),
(10, '2023-10-06', 'Tinh dau', 100000, 'Chai', 3),
(11, '2023-09-11', 'Vani', 10000, 'Chai', 4),
(12, '2023-09-12', 'Huong lieu', 100000, 'Lit', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguyenvatlieukiemke`
--

CREATE TABLE `nguyenvatlieukiemke` (
  `ID` int(11) NOT NULL,
  `TenNVL` varchar(100) NOT NULL,
  `MaPhieuKiemKe` int(11) NOT NULL,
  `SoLuongTonHeThong` int(11) NOT NULL,
  `SoLuongThucTe` int(11) NOT NULL,
  `GhiChu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguyenvatlieukiemke`
--

INSERT INTO `nguyenvatlieukiemke` (`ID`, `TenNVL`, `MaPhieuKiemKe`, `SoLuongTonHeThong`, `SoLuongThucTe`, `GhiChu`) VALUES
(4, 'Mach Nha', 10, 30, 10, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvienkho`
--

CREATE TABLE `nhanvienkho` (
  `MaNhanVien` int(11) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `ViTriLamViec` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvienkho`
--

INSERT INTO `nhanvienkho` (`MaNhanVien`, `HoTen`, `ViTriLamViec`, `NgaySinh`, `GioiTinh`, `DiaChi`, `SDT`, `Email`) VALUES
(1, 'Đỗ Đăng Thành Luân', 'Hà Nội', '1990-09-03', 'Nam', '30 Phan Thúc Duyện, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '0987654321', 'cccc@gmail.com'),
(2, 'Hoàng Thành Nghĩa', 'Quảng Ngãi', '2001-09-02', 'Nam', '60 Ngô Quyền, phường 3, quận 9, TP.HCM', '0987654321', 'cccc@gmail.com'),
(3, 'Nguyễn Thị Cẩm Tú', 'Tây Ninh', '1998-08-01', 'Nữ', '9HH9+F87, Unnamed Road, Minh Long, Chơn Thành, Bình Phước, Việt Nam', '0987654321', 'cccc@gmail.com'),
(4, 'Nguyễn Hoàng Hải Đăng', 'Bình Dương', '1997-01-02', 'Nam', 'Chà Là, Dương Minh Châu, Tây Ninh, Việt Nam', '0987654321', 'cccc@gmail.com'),
(5, 'Nguyễn Đức Thịnh', 'Bình Phước', '2003-08-02', 'Nam', 'ĐT751, Chơn Thành, Bình Phước, Việt Nam', '0987654321', 'cccc@gmail.com'),
(6, 'Đỗ Trường Sơn', 'Bình Dương', '1988-02-01', 'Nam', 'QL20, KP. Trần Cao Vân, TT, Thống Nhất, Đồng Nai, Việt Nam', '0987654321', 'cccc@gmail.com'),
(7, 'Trần Thị Hải Đăng', 'Quảng Nam', '1990-02-03', 'Nữ', '2J7C+V93, ĐT720, Tanh Linh, Tánh Linh, Bình Thuận, Việt Nam', '0987654321', 'cccc@gmail.com'),
(8, 'Nguyễn Thanh Sang', 'Bắc Kạn', '1995-10-03', 'Nam', '49 Đường Trần Hưng Đạo, Tân Thành, Tân Phú, Thành phố Hồ Chí Minh 700000, Việt Nam', '0987654321', 'cccc@gmail.com'),
(9, 'Nguyễn Trọng Tú', 'TP.HCM', '1999-12-25', 'Nam', 'F757+M58, Tân Lập 1, Tân Phước, Tiền Giang, Việt Nam', '0987654321', 'cccc@gmail.com'),
(10, 'Phạm Thị Trúc Linh', 'Tuyên Quang', '1991-10-03', 'Nữ', 'Lê Minh Xuân, Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', '0987654321', 'cccc@gmail.com'),
(11, 'An', 'kiem ke', '0000-00-00', 'nam', 'abcccccc', '0987654321', 'cccc@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvienkiemke`
--

CREATE TABLE `nhanvienkiemke` (
  `MaNVKK` int(11) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `SDT` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudonhangtrave`
--

CREATE TABLE `phieudonhangtrave` (
  `MaPhieuHangTraVe` int(11) NOT NULL,
  `SanPhamCanHoanTra` varchar(255) NOT NULL,
  `SoLuongDonHang` int(11) NOT NULL,
  `NgayTraVe` date NOT NULL,
  `LiDoTraVe` varchar(255) NOT NULL,
  `MaNhanVien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieukiemke`
--

CREATE TABLE `phieukiemke` (
  `MaPhieuKiemKe` int(11) NOT NULL,
  `NgayKiemKe` date NOT NULL,
  `NguoiKiemKe` varchar(255) NOT NULL,
  `GhiChu` varchar(255) NOT NULL,
  `MaNVKK` int(11) NOT NULL,
  `MaKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieukiemke`
--

INSERT INTO `phieukiemke` (`MaPhieuKiemKe`, `NgayKiemKe`, `NguoiKiemKe`, `GhiChu`, `MaNVKK`, `MaKho`) VALUES
(10, '2023-12-03', 'Đỗ Đăng Thành Luân', '', 1, 1),
(11, '2023-12-07', 'Đỗ Đăng Thành Luân', '', 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhapkho`
--

CREATE TABLE `phieunhapkho` (
  `MaPhieuNhapKho` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `MaKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhapkho`
--

INSERT INTO `phieunhapkho` (`MaPhieuNhapKho`, `NgayLap`, `MaKho`) VALUES
(1, '2023-01-11', 1),
(2, '2023-02-11', 2),
(3, '2023-03-11', 3),
(4, '2023-04-11', 4),
(5, '2023-05-11', 5),
(6, '2023-06-11', 6),
(7, '2023-07-11', 7),
(8, '2023-08-11', 8),
(9, '2023-09-11', 9),
(10, '2023-10-11', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuatkho`
--

CREATE TABLE `phieuxuatkho` (
  `MaPhieuXuatKho` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `MaKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuatkho`
--

INSERT INTO `phieuxuatkho` (`MaPhieuXuatKho`, `NgayLap`, `MaKho`) VALUES
(1, '2023-11-18', 7),
(2, '2023-11-22', 1),
(3, '2023-11-28', 4),
(4, '2024-06-02', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(10) UNSIGNED NOT NULL,
  `NgayXuatKho` date NOT NULL,
  `TenSanPham` varchar(255) NOT NULL,
  `Gia` float NOT NULL,
  `MaKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `NgayXuatKho`, `TenSanPham`, `Gia`, `MaKho`) VALUES
(1, '2023-11-21', 'Keo huong cam', 2000, 6),
(2, '2023-11-21', 'Keo huong vai', 2000, 6),
(3, '2023-11-21', 'Keo huong nho', 2000, 6),
(4, '2023-11-21', 'keo mut', 3000, 7),
(5, '2023-11-08', 'banh gao', 20000, 8),
(6, '2023-11-08', 'banh quy', 20000, 9),
(7, '2023-11-08', 'banh xop', 20000, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `LoaiTaiKhoan` varchar(255) NOT NULL,
  `MaNVKK` int(11) NOT NULL,
  `MaNhanVien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`Username`, `Password`, `LoaiTaiKhoan`, `MaNVKK`, `MaNhanVien`) VALUES
('admin', '123456', '', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bienbanyeucauboithuong`
--
ALTER TABLE `bienbanyeucauboithuong`
  ADD PRIMARY KEY (`MaBienBan`);

--
-- Chỉ mục cho bảng `chitietphieunhapnvl`
--
ALTER TABLE `chitietphieunhapnvl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_chitiet_nvl` (`MaNVL`);

--
-- Chỉ mục cho bảng `chitietphieunhapsanpham`
--
ALTER TABLE `chitietphieunhapsanpham`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `chitietphieuxuatnvl`
--
ALTER TABLE `chitietphieuxuatnvl`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `chitietphieuxuatsanpham`
--
ALTER TABLE `chitietphieuxuatsanpham`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaSanPham` (`MaSanPham`);

--
-- Chỉ mục cho bảng `hangtrave`
--
ALTER TABLE `hangtrave`
  ADD PRIMARY KEY (`MaHangTraVe`);

--
-- Chỉ mục cho bảng `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`MaKho`);

--
-- Chỉ mục cho bảng `nguyenvatlieu`
--
ALTER TABLE `nguyenvatlieu`
  ADD PRIMARY KEY (`MaNVL`),
  ADD KEY `MaKho` (`MaKho`);

--
-- Chỉ mục cho bảng `nguyenvatlieukiemke`
--
ALTER TABLE `nguyenvatlieukiemke`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_KiemKe` (`MaPhieuKiemKe`);

--
-- Chỉ mục cho bảng `nhanvienkho`
--
ALTER TABLE `nhanvienkho`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Chỉ mục cho bảng `nhanvienkiemke`
--
ALTER TABLE `nhanvienkiemke`
  ADD PRIMARY KEY (`MaNVKK`);

--
-- Chỉ mục cho bảng `phieudonhangtrave`
--
ALTER TABLE `phieudonhangtrave`
  ADD PRIMARY KEY (`MaPhieuHangTraVe`);

--
-- Chỉ mục cho bảng `phieukiemke`
--
ALTER TABLE `phieukiemke`
  ADD PRIMARY KEY (`MaPhieuKiemKe`),
  ADD KEY `FK_Kho` (`MaKho`);

--
-- Chỉ mục cho bảng `phieunhapkho`
--
ALTER TABLE `phieunhapkho`
  ADD PRIMARY KEY (`MaPhieuNhapKho`);

--
-- Chỉ mục cho bảng `phieuxuatkho`
--
ALTER TABLE `phieuxuatkho`
  ADD PRIMARY KEY (`MaPhieuXuatKho`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `MaKho` (`MaKho`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bienbanyeucauboithuong`
--
ALTER TABLE `bienbanyeucauboithuong`
  MODIFY `MaBienBan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhapnvl`
--
ALTER TABLE `chitietphieunhapnvl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhapsanpham`
--
ALTER TABLE `chitietphieunhapsanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `chitietphieuxuatnvl`
--
ALTER TABLE `chitietphieuxuatnvl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `chitietphieuxuatsanpham`
--
ALTER TABLE `chitietphieuxuatsanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hangtrave`
--
ALTER TABLE `hangtrave`
  MODIFY `MaHangTraVe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `kho`
--
ALTER TABLE `kho`
  MODIFY `MaKho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `nguyenvatlieu`
--
ALTER TABLE `nguyenvatlieu`
  MODIFY `MaNVL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `nguyenvatlieukiemke`
--
ALTER TABLE `nguyenvatlieukiemke`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nhanvienkho`
--
ALTER TABLE `nhanvienkho`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `nhanvienkiemke`
--
ALTER TABLE `nhanvienkiemke`
  MODIFY `MaNVKK` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieudonhangtrave`
--
ALTER TABLE `phieudonhangtrave`
  MODIFY `MaPhieuHangTraVe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieukiemke`
--
ALTER TABLE `phieukiemke`
  MODIFY `MaPhieuKiemKe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `phieunhapkho`
--
ALTER TABLE `phieunhapkho`
  MODIFY `MaPhieuNhapKho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `phieuxuatkho`
--
ALTER TABLE `phieuxuatkho`
  MODIFY `MaPhieuXuatKho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietphieunhapnvl`
--
ALTER TABLE `chitietphieunhapnvl`
  ADD CONSTRAINT `chitietphieunhapnvl_ibfk_1` FOREIGN KEY (`MaNVL`) REFERENCES `nguyenvatlieu` (`MaNVL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
