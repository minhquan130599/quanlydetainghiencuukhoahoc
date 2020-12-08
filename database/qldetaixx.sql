-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 08, 2020 lúc 08:55 AM
-- Phiên bản máy phục vụ: 10.1.39-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qldetaixx`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `pk_imacomment` int(11) NOT NULL,
  `pk_imatin` int(11) NOT NULL,
  `pk_smacanbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thoigian` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hethong`
--

CREATE TABLE `hethong` (
  `pk_imahethong` int(11) NOT NULL,
  `sgiatri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stenhethong` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hethong`
--

INSERT INTO `hethong` (`pk_imahethong`, `sgiatri`, `stenhethong`) VALUES
(37, '1452445200-1467219600', 'Đăng ký đề tài nghiên cứu khoa học'),
(38, '1452099600-1452790800', 'Thời gian nghiệm thu đề tài');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_08_28_152830_PhuongThemRememberToken', 1),
('2016_08_29_011825_PhuongThemCotCanBo_HocVan', 2),
('2016_08_30_105702_PhuongSuaTenBangLoaiDeTai', 3),
('2016_09_06_070203_PhuongThemBangLoaiHoiDong', 4),
('2016_09_17_234049_PhuongSuaBangBaoCaoTienDo', 5),
('2016_09_21_095918_PhuongThemBangDangKyBaoVe', 6),
('2016_09_22_110914_PhuongSuaBangHoiDongDetai', 7),
('2016_09_22_111534_PhuongThemKhoaChinhBangHDDT', 8),
('2016_09_22_144133_PhuongSuaBangXepLoai', 9),
('2016_09_23_111051_PhuongSuaCotBangNghiemThu', 10),
('2016_09_26_082230_PhuongThemThuocTinhBangDeTai', 11),
('2016_09_28_140152_PhuongSuaCauTrucBangDeTai', 12),
('2016_10_03_122041_PhuongThemCotBangChungNhan', 13),
('2016_08_28_152830_PhuongThemRememberToken', 1),
('2016_08_29_011825_PhuongThemCotCanBo_HocVan', 2),
('2016_08_30_105702_PhuongSuaTenBangLoaiDeTai', 3),
('2016_09_06_070203_PhuongThemBangLoaiHoiDong', 4),
('2016_09_17_234049_PhuongSuaBangBaoCaoTienDo', 5),
('2016_09_21_095918_PhuongThemBangDangKyBaoVe', 6),
('2016_09_22_110914_PhuongSuaBangHoiDongDetai', 7),
('2016_09_22_111534_PhuongThemKhoaChinhBangHDDT', 8),
('2016_09_22_144133_PhuongSuaBangXepLoai', 9),
('2016_09_23_111051_PhuongSuaCotBangNghiemThu', 10),
('2016_09_26_082230_PhuongThemThuocTinhBangDeTai', 11),
('2016_09_28_140152_PhuongSuaCauTrucBangDeTai', 12),
('2016_10_03_122041_PhuongThemCotBangChungNhan', 13),
('2016_08_28_152830_PhuongThemRememberToken', 1),
('2016_08_29_011825_PhuongThemCotCanBo_HocVan', 2),
('2016_08_30_105702_PhuongSuaTenBangLoaiDeTai', 3),
('2016_09_06_070203_PhuongThemBangLoaiHoiDong', 4),
('2016_09_17_234049_PhuongSuaBangBaoCaoTienDo', 5),
('2016_09_21_095918_PhuongThemBangDangKyBaoVe', 6),
('2016_09_22_110914_PhuongSuaBangHoiDongDetai', 7),
('2016_09_22_111534_PhuongThemKhoaChinhBangHDDT', 8),
('2016_09_22_144133_PhuongSuaBangXepLoai', 9),
('2016_09_23_111051_PhuongSuaCotBangNghiemThu', 10),
('2016_09_26_082230_PhuongThemThuocTinhBangDeTai', 11),
('2016_09_28_140152_PhuongSuaCauTrucBangDeTai', 12),
('2016_10_03_122041_PhuongThemCotBangChungNhan', 13),
('2016_08_28_152830_PhuongThemRememberToken', 1),
('2016_08_29_011825_PhuongThemCotCanBo_HocVan', 2),
('2016_08_30_105702_PhuongSuaTenBangLoaiDeTai', 3),
('2016_09_06_070203_PhuongThemBangLoaiHoiDong', 4),
('2016_09_17_234049_PhuongSuaBangBaoCaoTienDo', 5),
('2016_09_21_095918_PhuongThemBangDangKyBaoVe', 6),
('2016_09_22_110914_PhuongSuaBangHoiDongDetai', 7),
('2016_09_22_111534_PhuongThemKhoaChinhBangHDDT', 8),
('2016_09_22_144133_PhuongSuaBangXepLoai', 9),
('2016_09_23_111051_PhuongSuaCotBangNghiemThu', 10),
('2016_09_26_082230_PhuongThemThuocTinhBangDeTai', 11),
('2016_09_28_140152_PhuongSuaCauTrucBangDeTai', 12),
('2016_10_03_122041_PhuongThemCotBangChungNhan', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblanpham`
--

CREATE TABLE `tblanpham` (
  `pk_smaanpham` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fk_smacanbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fk_imachuyenmuc` int(11) NOT NULL,
  `fk_smanguoiduyet` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stenanpham` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `stomtat` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `snoidung` text COLLATE utf8_unicode_ci NOT NULL,
  `dngaydang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dngayduyet` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `iview` int(11) NOT NULL DEFAULT '0',
  `sghichu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itrangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblanpham_binhluan`
--

CREATE TABLE `tblanpham_binhluan` (
  `pk_maapbinhluan` int(11) NOT NULL,
  `fk_maanpham` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fk_imatk` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbaocaotiendo`
--

CREATE TABLE `tblbaocaotiendo` (
  `pk_imabctd` int(11) NOT NULL,
  `fk_imahdkh` int(11) NOT NULL,
  `iloaiduyet` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `dngaybc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `snoidung` text COLLATE utf8_unicode_ci NOT NULL,
  `bketqua` tinyint(4) DEFAULT NULL,
  `sghichu` text COLLATE utf8_unicode_ci NOT NULL,
  `bsendmail` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblbaocaotiendo`
--

INSERT INTO `tblbaocaotiendo` (`pk_imabctd`, `fk_imahdkh`, `iloaiduyet`, `dngaybc`, `snoidung`, `bketqua`, `sghichu`, `bsendmail`, `created_at`, `updated_at`) VALUES
(52, 76, '1', '16/10/2020', '<p>312125</p>\r\n', 1, '<p>32</p>\r\n', NULL, '2020-10-15 10:29:19', '2020-10-15 10:29:19'),
(53, 77, '2', '22/10/2020', '<p>45324</p>\r\n', 1, '<p>453</p>\r\n', NULL, '2020-10-15 10:32:57', '2020-10-15 10:32:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcanbo`
--

CREATE TABLE `tblcanbo` (
  `pk_smacanbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pk_imadantoc` int(11) DEFAULT NULL,
  `pk_imatongiao` int(11) DEFAULT NULL,
  `pk_imahh` int(11) DEFAULT NULL,
  `pk_imacn` int(11) DEFAULT NULL,
  `pk_imahv` int(11) DEFAULT NULL,
  `pk_imanhomcb` int(11) DEFAULT NULL,
  `pk_imadv` int(11) DEFAULT NULL,
  `sanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shodem` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sten` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sngaysinh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sgioitinh` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `semail` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdienthoai` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sdiachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shokhautt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `squequan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stendn` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shocvan` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcanbo`
--

INSERT INTO `tblcanbo` (`pk_smacanbo`, `pk_imadantoc`, `pk_imatongiao`, `pk_imahh`, `pk_imacn`, `pk_imahv`, `pk_imanhomcb`, `pk_imadv`, `sanh`, `shodem`, `sten`, `sngaysinh`, `sgioitinh`, `semail`, `sdienthoai`, `sdiachi`, `shokhautt`, `squequan`, `stendn`, `password`, `sghichu`, `remember_token`, `shocvan`) VALUES
('CB_01', 47, 2, 4, 3, 1, 3, 3, '\\upload\\avatar\\CB_245.jpg', 'Đỗ Văn Quân', 'Quân', '11/08/1995', 'Nam', 'minhquan@gmail.com', '01673959614', 'hn', '', 'th', 'admin', '$2y$10$BzEjeUgI5r/NZvuJSESH/ucf/CbOCkLIl.SQvII2.cjRGuqiVJlFG', '', 'ojDiPQpEXMzOqEjWmUTM7KcIKrZFPxqJ51J1yBE6zNifNAUMyKrZXlSiBNxr', '4.1.Đỗ Văn Quân'),
('CB_124', 33, 3, 4, 7, 4, 4, 4, 'upload/avatar/user.jpg', 'Nguyễn Xuân Bảo', 'Cán bộ 124', '11/10/1970', 'Nữ', 'huu.phuong195@gmail.com', '01639886067', NULL, NULL, NULL, 'tkn47R3F', '$2y$10$buTWMpX/CyxtEKfuKOsU4u4Hv7KOASIJ2NW51DJtxfjKV.zZKvs9a', '', '', 'Ths.Nguyễn Xuân Bảo'),
('CB_125', 73, 3, 4, 3, 3, 4, 5, 'upload/avatar/user.jpg', 'Lê Thị Thuỷ', 'Cán bộ 125', '31/01/1971', 'Nam', 'huu.phuong195@gmail.com', '01266329210', NULL, NULL, NULL, 'QZgx6kc9', '$2y$10$60472t/cn01S6hq50z5jgONG64JJTuL2ta7zP6RJat1O0D5ka7pSe', '', '', 'Ths.Cán bộ 125'),
('CB_126', 65, 3, 4, 3, 1, 4, 10, 'upload/avatar/user.jpg', 'Trần Thị Hiền Lương', 'Lương', '10/02/1972', 'Nam', 'huu.phuong195@gmail.com', '01269557020', '', '', '', 'Ewl4Te78', '$2y$10$SUm7XClup9ZQoJHIUpX/Rezm/eX3s7i5RLAV8Z7Ozl31WPJAtwPX6', '', '', 'Ths.Trần Thị Hiền Lương'),
('CB_127', 37, 3, 4, 6, 1, 4, 11, '', 'Nguyễn Tuyết Nga', 'Nga', '03/12/1978', 'Nữ', 'huu.phuong195@gmail.com', '01247293836', '', '', '', 'JPbxSzNn', '$2y$10$xWsZFqqfwTyippg.ShtRiOxppXcmyywa3NCANl2g2Dtj1oWq2WF5i', '', '', 'Ths.Nguyễn Tuyết Nga'),
('CB_128', 49, 4, 4, 1, 4, 4, 3, 'upload/avatar/user.jpg', 'Đỗ Thu Hà', 'Cán bộ 128', '09/12/1970', 'Nam', 'huu.phuong195@gmail.com', '01688576660', NULL, NULL, NULL, 'DXKdU17x', '$2y$10$p8u5hWvdz2ue1S6YiRpe5evIHa53muQibgWBrMe9sfc0TT3nETo9W', '', '', 'Ths.Đỗ Thu Hà'),
('CB_129', 76, 4, 4, 5, 4, 4, 3, 'upload/avatar/user.jpg', 'Phan Trọng Nam', 'Cán bộ 129', '10/06/1973', 'Nữ', 'huu.phuong195@gmail.com', '01639163140', NULL, NULL, NULL, 'PSaMA7qj', '$2y$10$11KGUM4RDQ4ZB1f8DuHPo.4SH/Xa1e.Nbn6vNjvGvBoKO99f76W96', '', '', 'Ths.Phan Trọng Nam'),
('CB_130', 64, 3, 4, 4, 2, 4, 13, 'upload/avatar/user.jpg', 'Phan Minh Hiền', 'Cán bộ 130', '24/10/1977', 'Nam', 'huu.phuong195@gmail.com', '01232074652', NULL, NULL, NULL, 'nezAso3F', '$2y$10$LQ3GBigx9nvxj8qZqdWwiO2zz4IGZnZjKgtoJXeIaxO3LDq.xEu7.', '', '', 'Ths.Phan Minh Hiền'),
('CB_131', 30, 5, 4, 1, 4, 4, 4, 'upload/avatar/user.jpg', 'Đỗ Thị Hòa', 'Cán bộ 131', '09/06/1983', 'Nữ', 'huu.phuong195@gmail.com', '0916510959', NULL, NULL, NULL, '2APPRYfE', '$2y$10$j330Dcu1qI/Gnb6bmkhC7ujyGAgVbQXxy02mKJfEa4x0f/PPCAyna', '', '', 'Ths.Đỗ Thị Hòa'),
('CB_132', 46, 3, 4, 6, 4, 4, 1, 'upload/avatar/user.jpg', 'Phạm Quang Sáng', 'Cán bộ 132', '10/12/1976', 'Nữ', 'huu.phuong195@gmail.com', '01204128146', NULL, NULL, NULL, 'dq6m2moL', '$2y$10$Tz9qNhPgg753QGMhQLY3K.hSJwL8w5.8cw/E.DM979AK.NOrKd/wO', '', '', 'Ths.Phạm Quang Sáng'),
('CB_133', 45, 3, 4, 4, 1, 4, 3, 'upload/avatar/user.jpg', 'Trần Yến Mai', 'Mai', '27/07/1982', 'Nữ', 'huu.phuong195@gmail.com', '0962454426', '', '', '', 'l3hyP4xS', '$2y$10$AbM/5vyIdSsQsO2R9ehyWObAcHrLIEkcN6M5H5AuBl54hHQKGAvMS', '', '', 'Ths.Trần Yến Mai'),
('CB_134', 71, 4, 4, 1, 2, 4, 6, 'upload/avatar/user.jpg', 'Tô Bá Trượng', 'Trượng', '29/03/1976', 'Nam', 'huu.phuong195@gmail.com', '01248983561', '', '', '', '67xD94lU', '$2y$10$ddfjhEmAY5.dFm/uOucY3e3J3Eeysl8pVep5CKpWo/W3VuPgo.ICq', '', '', 'Ths.Tô Bá Trượng'),
('CB_135', 67, 4, 4, 3, 2, 4, 10, '\\upload\\avatar\\CB_251.jpg', 'Bế Hồng Hạnh', 'Hạnh', '01/05/1980', 'Nữ', 'huu.phuong195@gmail.com', '01672466091', '', '', '', 'LWvbD04Z', '$2y$10$5.r9PxyF6KueW/sVTGMDt.i.jelHKsvpJCbKQs0ttAgcYwSuddzjG', '', '', 'Ths.Bế Hồng Hạnh'),
('CB_136', 31, 4, 1, 2, 2, 4, 5, 'upload/avatar/user.jpg', 'Vũ Thị Ngọc Minh', 'Minh', '23/10/1981', 'Nữ', 'huu.phuong195@gmail.com', '0979158528', '', '', '', 'UswNjNxV', '$2y$10$ZcjFe6tMWM2RBL5LSZDOHu.ONMJIcguvWwANGD9VNscpUk8FSVn4i', '', '', 'Ths.Vũ Thị Ngọc Minh'),
('CB_137', 29, 1, 1, 2, 1, 4, 7, '\\upload\\avatar\\CB_251.jpg', 'Nguyễn Tiến Hùng', 'Hùng', '13/11/1972', 'Nữ', 'huu.phuong195@gmail.com', '01672093098', '', '', '', 'fN1HEoK4', '$2y$10$binlu28oReCOSbCbwijOlOrTot3VI6E0iRbqQCoswcLX1nRrQeJCG', '', '', 'Ths.Nguyễn Tiến Hùng'),
('CB_138', 36, 3, 1, 3, 1, 4, 7, 'upload/avatar/user.jpg', 'Phạm Ngọc Định', 'Định', '28/01/1974', 'Nam', 'huu.phuong195@gmail.com', '01206416558', '', '', '', 'ngz7lQY2', '$2y$10$rAxYZ0evodnjdLk8gFltze1LtShhARaBKClwTXHfwxOxfVyobfmJ.', '', '', 'Ths.Phạm Ngọc Định'),
('CB_139', 56, 3, 4, 9, 2, 4, 1, '\\upload\\avatar\\CB_251.jpg', 'Hồ Thị Hương', 'Hương', '21/05/1984', 'Nữ', 'huu.phuong195@gmail.com', '0972203504', '', '', '', 'MVh753r2', '$2y$10$u4NsM3m..BqD6S40L9Es0OGVl49N5AtB3U8efJBXgZHV./9n7IGj6', '', '', 'Ths.Hồ Thị Hương'),
('CB_140', 63, 2, 4, 6, 3, 4, 3, 'upload/avatar/user.jpg', 'Nguyễn Như Sang', 'Sang', '31/05/1974', 'Nữ', 'huu.phuong195@gmail.com', '01209289822', '', '', '', '61pVRKjl', '$2y$10$pNzYB36Jd9rVYkvKnynfZe7JbQn8pmgTjkExYCkSZ/tuoCaIwUY.2', '', '', 'Ths.Nguyễn Như Sang'),
('CB_141', 72, 4, 4, 1, 1, 4, 4, '\\upload\\avatar\\CB_251.jpg', 'Lương Thị Thanh Phương', 'Phương', '13/06/1970', 'Nam', 'huu.phuong195@gmail.com', '01639922960', '', '', '', '0ZkCfjNY', '$2y$10$in/IDPC2MCazeqUROsFCaeJvucX2BsfoRgap6NWqs0rWBkkfhVGsO', '', '', 'Ths.Lương Thị Thanh Phương'),
('CB_142', 53, 5, 4, 9, 1, 4, 8, '\\upload\\avatar\\CB_251.jpg', 'Phạm Ngọc Định', 'Định', '15/07/1971', 'Nam', 'huu.phuong195@gmail.com', '0962051594', '', '', '', 'uB3U9Vb4', '$2y$10$sGnCbYrnN7dHjMvam7ZJH.kjq0q2tXo5n9RCEQjF8jh9mceY78EMm', '', '', 'Ths.Phạm Ngọc Định'),
('CB_143', 36, 5, 4, 10, 3, 4, 7, 'upload/avatar/user.jpg', 'Phạm Thị Bích Đào', 'Cán bộ 143', '17/02/1974', 'Nữ', 'huu.phuong195@gmail.com', '0914406738', NULL, NULL, NULL, 'LeLcGFPs', '$2y$10$vZ7g8YnF4GgOTWaoKRoDQOalrIeQR4rTJ9z9gu.uIj7RRKDmbVn4a', '', '', 'Ths.Phạm Thị Bích Đào'),
('CB_144', 74, 4, 4, 2, 3, 4, 4, 'upload/avatar/user.jpg', 'Phạm Đức Quang', 'Cán bộ 144', '30/01/1984', 'Nam', 'huu.phuong195@gmail.com', '01652194281', NULL, NULL, NULL, 'qdxsQ2Jb', '$2y$10$8Y.f8KD9wiqeEzWyrdMddO1kOA2s2L1/GyNxCd0cciNikbxrJBJcq', '', '', 'Ths.Phạm Đức Quang'),
('CB_145', 55, 3, 4, 10, 4, 4, 11, 'upload/avatar/user.jpg', 'Cao Thị Thặng', 'Cán bộ 145', '12/01/1985', 'Nữ', 'huu.phuong195@gmail.com', '01671858452', NULL, NULL, NULL, '9swGTAXv', '$2y$10$Rmx3IhhY83n3y041521KCuuYejUCUezsTOujTmP4UwGGGGwsS6hsy', '', '', 'Ths.Cao Thị Thặng'),
('CB_146', 24, 3, 4, 3, 2, 4, 13, 'upload/avatar/user.jpg', 'Vương Thị Phương Hạnh', 'Cán bộ 146', '16/12/1984', 'Nam', 'huu.phuong195@gmail.com', '01671515299', NULL, NULL, NULL, 'Rqy22OkM', '$2y$10$LaALONGzqC6dCTNEEtpdP.sDQvYbBgL6LU7hCM5mnEsnu0WsUU2Ni', '', '', 'Ths.Vương Thị Phương Hạnh'),
('CB_147', 63, 5, 4, 4, 1, 4, 13, 'upload/avatar/user.jpg', 'Nguyễn Thị Hồng Vân', 'Cán bộ 147', '17/02/1970', 'Nam', 'huu.phuong195@gmail.com', '01638953721', NULL, NULL, NULL, 'YDDR9mvq', '$2y$10$rA3hMIKPlvK2DvQ9G4IY4uW4eZ3tgLen0KKQgTTUENGV9EnWYPxN6', '', '', 'Ths.Nguyễn Thị Hồng Vân'),
('CB_148', 70, 3, 4, 2, 1, 4, 10, 'upload/avatar/user.jpg', 'Phan Thị Luyến', 'Cán bộ 148', '12/07/1971', 'Nam', 'huu.phuong195@gmail.com', '01671504177', NULL, NULL, NULL, 'BrS4pbm8', '$2y$10$ItA4bX9iB0XgxA7xm/PrGeXFwmYMEvN5Xi7XP9lhHrg3/3IweJMDu', '', '', 'Ths.Phan Thị Luyến'),
('CB_149', 39, 4, 4, 6, 2, 4, 9, 'upload/avatar/user.jpg', 'Phùng Thị Thu Trang', 'Cán bộ 149', '16/07/1970', 'Nam', 'huu.phuong195@gmail.com', '01666745876', NULL, NULL, NULL, 'YiqxjCc4', '$2y$10$UApe3iKvWbI2fhy7fZ9oJuiizw8b9MJcwF1u0HxDqHhcLher1ixX.', '', '', 'Ths.Phùng Thị Thu Trang'),
('CB_150', 54, 2, 4, 4, 4, 4, 3, 'upload/avatar/user.jpg', 'Trịnh Thị Anh Hoa', 'Cán bộ 150', '05/11/1985', 'Nam', 'huu.phuong195@gmail.com', '01262751464', NULL, NULL, NULL, 'HDezjLPW', '$2y$10$8VAvMaKIMa3jMIf.gb0Knukc61bxd7F2wGb1mqGxwUnSNI9bXKtee', '', '', 'Ths.Trịnh Thị Anh Hoa'),
('CB_151', 40, 2, 4, 3, 4, 4, 4, 'upload/avatar/user.jpg', ' Nguyễn Thế Thắng', 'Cán bộ 151', '15/01/1983', 'Nam', 'huu.phuong195@gmail.com', '01638817816', NULL, NULL, NULL, '69NnjOlB', '$2y$10$vzCxoC.ktUpF1E3ryCTUwuOssDZJRelj3bY7.8Qqww.7MsTX/83Ae', '', '', 'Ths. Nguyễn Thế Thắng'),
('CB_152', 65, 5, 4, 3, 2, 4, 3, 'upload/avatar/user.jpg', 'Nguyễn Thị Bảo Hòa', 'Cán bộ 152', '07/08/1980', 'Nam', 'huu.phuong195@gmail.com', '0962836642', NULL, NULL, NULL, 'EZ0pd7mX', '$2y$10$9.DD.LURF8O3a5BsW6Brs.aqGBNBZQQi82gOS.Gqrvg4cwc55p//a', '', '', 'Ths.Nguyễn Thị Bảo Hòa'),
('CB_153', 40, 5, 4, 4, 3, 4, 10, 'upload/avatar/user.jpg', 'Nguyễn Trọng Đức', 'Cán bộ 153', '27/02/1985', 'Nữ', 'huu.phuong195@gmail.com', '01299076063', NULL, NULL, NULL, 'EsXuQBU3', '$2y$10$1cMByG3k23ffdiD0lGJTuuUrbVU7aXOaWlDp3cuYvqIJI5qft//wO', '', '', 'Ths.Nguyễn Trọng Đức'),
('CB_154', 69, 2, 4, 1, 4, 4, 10, 'upload/avatar/user.jpg', 'Vũ Minh Tuấn', 'Cán bộ 154', '04/03/1975', 'Nữ', 'huu.phuong195@gmail.com', '01215636121', NULL, NULL, NULL, 'RLdgfQCY', '$2y$10$r6PztnJ4uSFHwFK6q.nereA0RYP4NvKE279RAHYa..sJSBSep1p/q', '', '', 'Ths.Vũ Minh Tuấn'),
('CB_155', 45, 5, 4, 1, 4, 4, 12, 'upload/avatar/user.jpg', 'Hoàng Gia Trang', 'Cán bộ 155', '04/11/1985', 'Nữ', 'huu.phuong195@gmail.com', '0946013726', NULL, NULL, NULL, 'o68hLE4U', '$2y$10$vE6TcxxNO9Br6Ygs3oh3Su03t6jqUkmxRVTA5mOu2D1u1U6FjNbiC', '', '', 'Ths.Cán bộ 155'),
('CB_156', 73, 2, 4, 10, 1, 4, 13, 'upload/avatar/user.jpg', 'Nguyễn Minh Tuấn', 'Cán bộ 156', '25/07/1970', 'Nữ', 'huu.phuong195@gmail.com', '01642371690', NULL, NULL, NULL, 'pDlvMk9S', '$2y$10$iLACK6uZ.d4IHrxr/hXxMev6Mo2/bWHar/r.0Z3tSBMt6BSP43dF2', '', '', 'Ths.Cán bộ 156'),
('CB_157', 30, 3, 4, 10, 4, 4, 12, 'upload/avatar/user.jpg', 'Trần Thị Bích Trà', 'Cán bộ 157', '26/02/1979', 'Nữ', 'huu.phuong195@gmail.com', '0931915690', NULL, NULL, NULL, 'Od6q3orF', '$2y$10$qjChfazPJ.zBvUMHNkWNaOHQ3UwIUhEeafuJeJ.695xaHewEcywi6', '', '', 'Ths.Cán bộ 157'),
('CB_158', 53, 5, 4, 7, 3, 4, 5, 'upload/avatar/user.jpg', 'Lê Vân Anh', 'Cán bộ 158', '17/06/1971', 'Nữ', 'huu.phuong195@gmail.com', '01225946994', NULL, NULL, NULL, 'dLftFWHK', '$2y$10$YFTr4Qb7d8SegKm6kM/7/O0u/iMowyGiqV7YFBc.UBDaYicqPn3.2', '', '', 'Ths.Cán bộ 158'),
('CB_159', 58, 4, 4, 6, 3, 4, 10, 'upload/avatar/user.jpg', 'Phan Văn Nhân', 'Cán bộ 159', '03/10/1971', 'Nam', 'huu.phuong195@gmail.com', '01245550943', NULL, NULL, NULL, 'URr82Jc4', '$2y$10$KfdWOTKb/u7jVaYajrFAKefiOBuNuJm7zkxA4SxNHObONPHn9mMny', '', '', 'Ths.Cán bộ 159'),
('CB_160', 50, 5, 4, 9, 4, 4, 4, 'upload/avatar/user.jpg', 'Trần Thị Bích Trà', 'Cán bộ 160', '21/09/1974', 'Nam', 'huu.phuong195@gmail.com', '0932235785', NULL, NULL, NULL, 'LlOviqdG', '$2y$10$yqnK9SQu5f/Sr7VvxiAcr.Pbs.PCUqCJ7ghA5oMQQnilvd3Agn3Di', '', '', 'Ths.Cán bộ 160'),
('CB_161', 68, 3, 4, 7, 3, 4, 3, 'upload/avatar/user.jpg', 'Hoàng Gia Trang', 'Cán bộ 161', '04/10/1982', 'Nữ', 'huu.phuong195@gmail.com', '01296743977', NULL, NULL, NULL, 'brkDAe2b', '$2y$10$vg5JkOY1w8POP.Efj0PmTO41D/SEUNQ6CuyDNgN5UZbFIKpB5gt4.', '', '', 'Ths.Cán bộ 161'),
('CB_162', 49, 2, 4, 6, 2, 4, 11, 'upload/avatar/user.jpg', 'Nguyễn Công Giáp', 'Cán bộ 162', '17/04/1982', 'Nam', 'huu.phuong195@gmail.com', '0972509765', NULL, NULL, NULL, '4PHS6ssj', '$2y$10$Lsydq5BunLuBJJylSqK6uOCaPNUXUphvH3ohbsc3HFxaYgXCFA33e', '', '', 'Ths.Cán bộ 162'),
('CB_163', 72, 3, 4, 7, 3, 4, 12, 'upload/avatar/user.jpg', 'Phan Văn Kha', 'Cán bộ 163', '04/10/1970', 'Nam', 'huu.phuong195@gmail.com', '0919347330', NULL, NULL, NULL, 'XzNflUt2', '$2y$10$YE9ea5uhwFwGxPD3.1yQ9.d3nB16jME0iT6v2UxwAlR0zuXBLeW3O', '', '', 'Ths.Cán bộ 163'),
('CB_164', 44, 3, 4, 7, 4, 4, 6, 'upload/avatar/user.jpg', 'Đào Thái Lai', 'Cán bộ 164', '28/04/1985', 'Nam', 'huu.phuong195@gmail.com', '01251418456', NULL, NULL, NULL, 'YfkY7FuT', '$2y$10$i/kLzzMnAmS2P00bfqtsb.Bo4uPmNdghlGhEv3aPTkv6keMi0BHIW', '', '', 'Ths.Cán bộ 164'),
('CB_165', 36, 1, 4, 5, 3, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 165', 'Cán bộ 165', '16/03/1979', 'Nữ', 'huu.phuong195@gmail.com', '0986656087', NULL, NULL, NULL, 'SpLJNw3B', '$2y$10$nuxyCUcTo.aEyu4s30Xcv.cXCm1VyBbto1qsK.d8CSqUXQtFCY7rO', '', '', 'Ths.Cán bộ 165'),
('CB_166', 51, 1, 4, 5, 1, 4, 7, 'upload/avatar/user.jpg', 'Cán bộ 166', 'Cán bộ 166', '13/12/1978', 'Nữ', 'huu.phuong195@gmail.com', '01207867024', NULL, NULL, NULL, 'L1ZoB348', '$2y$10$Pc4lgIkbZ0OfAMpaIui3De1fQSL2WnPthXFzUdaxHebExmNffVqXa', '', '', 'Ths.Cán bộ 166'),
('CB_167', 76, 3, 4, 8, 4, 4, 2, 'upload/avatar/user.jpg', 'Trần Kiều', 'Cán bộ 167', '23/01/1980', 'Nữ', 'huu.phuong195@gmail.com', '01256082899', NULL, NULL, NULL, 'uo5dJr5B', '$2y$10$Ewh70ewCNnO2VYCqqOKVvOMZ4JUGVSAno3v5LSuWAMZX3Hib8/VXC', '', '', 'Ths.Cán bộ 167'),
('CB_168', 53, 3, 4, 3, 4, 4, 5, 'upload/avatar/user.jpg', 'Nguyễn Thị Minh Phương', 'Cán bộ 168', '30/05/1978', 'Nữ', 'huu.phuong195@gmail.com', '01202449815', NULL, NULL, NULL, 'rocwP06w', '$2y$10$YHxnbxVDvVfJ/wHwM0B2wuMA7eYrxVX6f9nG43SwAIqOY7.y/Fq.m', '', '', 'Ths.Cán bộ 168'),
('CB_169', 46, 5, 4, 1, 2, 4, 10, 'upload/avatar/user.jpg', 'Nguyễn Thị Quyên', 'Cán bộ 169', '13/03/1975', 'Nam', 'huu.phuong195@gmail.com', '01631446126', NULL, NULL, NULL, 'uldHJcsv', '$2y$10$b4wlNG9faR7VBHEzqwFhHuUYRyHrziA21GqLfz6WFSAKJnFXlcJlO', '', '', 'Ths.Cán bộ 169'),
('CB_17', 75, 4, 4, 6, 3, 4, 10, 'upload/avatar/user.jpg', 'Nguyễn Văn Tuyển', 'Tuyển', '23/09/1983', 'Nữ', 'huu.phuong195@gmail.com', '0912558051', '', '', '', 'rgteLrxt', '$2y$10$hCLjwSjnByAoA47K4bNYRezq2.LjMDq.WK5tYbCvQALjn2Y7ZU3pO', '', '', 'Ths.Nguyễn Văn Tuyển'),
('CB_170', 49, 3, 4, 7, 1, 4, 11, 'upload/avatar/user.jpg', 'Nguyễn Đăng Trụ', 'Cán bộ 170', '11/01/1971', 'Nam', 'huu.phuong195@gmail.com', '0913881835', NULL, NULL, NULL, '4pdeYf4F', '$2y$10$HvCQLV4yOk656vRmOmbia.jvaf6mFjLIYthXv8/tao4dMm7Ew/tay', '', '', 'Ths.Cán bộ 170'),
('CB_171', 51, 4, 4, 6, 1, 4, 9, 'upload/avatar/user.jpg', 'Tô Bá Trượng', 'Cán bộ 171', '14/08/1981', 'Nữ', 'huu.phuong195@gmail.com', '01235981445', NULL, NULL, NULL, 'VuWQLlRn', '$2y$10$G1j6r601CggKOUIe0msn9.iVHRfqVL0iyYd6MbOs/KTwm.FgfS.FW', '', '', 'Ths.Cán bộ 171'),
('CB_172', 68, 4, 4, 7, 2, 4, 5, 'upload/avatar/user.jpg', 'Trần Thị Ngọc Trâm', 'Cán bộ 172', '28/11/1985', 'Nữ', 'huu.phuong195@gmail.com', '01225910101', NULL, NULL, NULL, 'uYw1lf02', '$2y$10$jSxrKYfsBVRbeb1So0WyZOaH0.MPgDMY8WJtvgDRUfjOrBIaTbNX6', '', '', 'Ths.Cán bộ 172'),
('CB_173', 49, 3, 4, 8, 3, 4, 13, 'upload/avatar/user.jpg', 'Thái Duy Tuyên', 'Cán bộ 173', '17/02/1972', 'Nữ', 'huu.phuong195@gmail.com', '0968875325', NULL, NULL, NULL, 'iGaTTaU3', '$2y$10$nWuL1qy9LXKD2CSCT2X8iuIoRGE/jTEQan.bDAHX6K8KtAA9qkYFS', '', '', 'Ths.Cán bộ 173'),
('CB_174', 68, 1, 4, 9, 2, 4, 2, 'upload/avatar/user.jpg', 'Nguyễn Đức Minh', 'Cán bộ 174', '02/03/1982', 'Nam', 'huu.phuong195@gmail.com', '01232288682', 'sadsad', 'asdasd', 'asdsad', 'wfTJXutl', '$2y$10$z0bABPgEws4OkR0C00xLXOP4ytpbz6KxbyGkEjd253AkPNe0ou5XO', '', '', 'Ths.Cán bộ 174'),
('CB_175', 72, 5, 4, 2, 2, 4, 11, 'upload/avatar/user.jpg', 'Nguyễn Thị Mai Hà', 'Cán bộ 175', '24/06/1974', 'Nam', 'huu.phuong195@gmail.com', '01201830512', NULL, NULL, NULL, '51u8jQnF', '$2y$10$NAlBkgnbxfPe929wO1XFH.m1BWvWkZk52j2ANznj4bxgYf8Wy8YCK', '', '', 'Ths.Cán bộ 175'),
('CB_176', 77, 5, 4, 10, 3, 4, 3, 'upload/avatar/user.jpg', 'Nguyễn Bá Thái', 'Cán bộ 176', '29/09/1975', 'Nam', 'huu.phuong195@gmail.com', '01234293890', NULL, NULL, NULL, 'jW38yPrz', '$2y$10$lcW2pau048bkSNX/9wQ5r.yQlS522eBujqZIxokjw3a54PDIkbHFm', '', '', 'Ths.Cán bộ 176'),
('CB_177', 34, 3, 4, 5, 2, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 177', 'Cán bộ 177', '28/10/1979', 'Nam', 'huu.phuong195@gmail.com', '01699369574', NULL, NULL, NULL, 'CJ2zf6cK', '$2y$10$9PhUGDjy.rOfe42KH5tSBOGsUkm.fWwTItyoh0gffe1RiH49u2Y8.', '', '', 'Ths.Cán bộ 177'),
('CB_178', 61, 3, 4, 3, 1, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 178', 'Cán bộ 178', '09/06/1980', 'Nam', 'huu.phuong195@gmail.com', '01291586642', NULL, NULL, NULL, '9xY0dSfB', '$2y$10$IcDgWCiJ70MbhaDykCt7ZuaYfD7AfjayNJ2k3hsBkWRa/RZ89aupq', '', '', 'Ths.Cán bộ 178'),
('CB_179', 44, 2, 4, 1, 2, 4, 6, 'upload/avatar/user.jpg', 'Nguyễn Đông Hanh', 'Cán bộ 179', '04/05/1980', 'Nam', 'huu.phuong195@gmail.com', '01636287706', NULL, NULL, NULL, 'iaH41cKk', '$2y$10$nHOQ6ku81isGvoRbOqDKFe9Z1XjLwRbHCNaQcuRJo7Ig6BC96ntfC', '', '', 'Ths.Cán bộ 179'),
('CB_18', 45, 4, 4, 4, 4, 4, 2, 'upload/avatar/user.jpg', 'Phan Việt Hoa', 'Cán bộ 18', '07/10/1974', 'Nữ', 'huu.phuong195@gmail.com', '01276253255', NULL, NULL, NULL, 'UVayoR6k', '$2y$10$7b3ZuF9Zg9MfgmyDQX/hIeJOKSj753A.RjV5p1dYhFRlA71eWoKA2', '', '', 'Ths.Cán bộ 18'),
('CB_180', 66, 4, 4, 7, 1, 4, 3, 'upload/avatar/user.jpg', 'Cán bộ 180', 'Cán bộ 180', '20/12/1983', 'Nữ', 'huu.phuong195@gmail.com', '0938866102', NULL, NULL, NULL, 'DJAvqWvb', '$2y$10$nnGTYWdh3124gxX4Qlg7CuyU1oRS9nIxCEWjyHZGH2.omJvKaWlmK', '', '', 'Ths.Cán bộ 180'),
('CB_181', 40, 3, 4, 2, 3, 4, 13, 'upload/avatar/user.jpg', 'Cán bộ 181', 'Cán bộ 181', '21/09/1970', 'Nam', 'huu.phuong195@gmail.com', '01284763726', NULL, NULL, NULL, 'hCj6zxIO', '$2y$10$fSIpww98g5JK9D/WRcn9mOtQN6hP0PKq54cT1ohs9NNFN.zgGXYNq', '', '', 'Ths.Cán bộ 181'),
('CB_182', 57, 3, 4, 7, 4, 4, 10, 'upload/avatar/user.jpg', 'Cán bộ 182', 'Cán bộ 182', '16/07/1975', 'Nam', 'huu.phuong195@gmail.com', '0911531304', NULL, NULL, NULL, 'IJs66hqt', '$2y$10$CDICg9tFlKyPrsaKD8xkbOKb1vNkg0bxca7CeH9vU3gll5z.cL5iu', '', '', 'Ths.Cán bộ 182'),
('CB_183', 34, 2, 4, 10, 2, 4, 10, 'upload/avatar/user.jpg', 'Cán bộ 183', 'Cán bộ 183', '09/06/1979', 'Nam', 'huu.phuong195@gmail.com', '01292848307', NULL, NULL, NULL, 'xwrn7DWx', '$2y$10$dGbJ6RJPh1TTYzJaJzwhYOQZ0huSl9PJ1.CV2mZps8c3WFENp3Om6', '', '', 'Ths.Cán bộ 183'),
('CB_184', 58, 5, 4, 8, 3, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 184', 'Cán bộ 184', '10/06/1980', 'Nam', 'huu.phuong195@gmail.com', '0912231173', NULL, NULL, NULL, 'MmnyALjm', '$2y$10$0VDQpuhOOBDCJUifYoCPJeVSgOLQtiTJKIdsKq9OkBkv/333StQzm', '', '', 'Ths.Cán bộ 184'),
('CB_185', 38, 5, 4, 8, 2, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 185', 'Cán bộ 185', '12/09/1977', 'Nam', 'huu.phuong195@gmail.com', '0936444227', NULL, NULL, NULL, 'sSsLWbKq', '$2y$10$Z9qzE7YB/x/Z9sDFMFDWQOQOO/U8qXee8Mz5EYoWwU4uRlIo8dGYG', '', '', 'Ths.Cán bộ 185'),
('CB_186', 33, 5, 4, 6, 2, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 186', 'Cán bộ 186', '28/06/1984', 'Nam', 'huu.phuong195@gmail.com', '01214653048', NULL, NULL, NULL, 'br476yHa', '$2y$10$6Ih3Im9wj4.Bc2o/B5uuyeZ.7mPAZZC0UZpB7NVG398gJScQiaQDe', '', '', 'Ths.Cán bộ 186'),
('CB_187', 43, 1, 4, 4, 1, 4, 13, 'upload/avatar/user.jpg', 'Cán bộ 187', 'Cán bộ 187', '16/08/1974', 'Nam', 'huu.phuong195@gmail.com', '01666244303', NULL, NULL, NULL, 'OtUmMHRA', '$2y$10$da1u0r9/LKdRk8iCKhy7JuwqqxL8i3lPMftWv/u/RBT.N8Uf8oQci', '', '', 'Ths.Cán bộ 187'),
('CB_188', 45, 4, 4, 3, 4, 4, 2, 'upload/avatar/user.jpg', 'Cán bộ 188', 'Cán bộ 188', '08/05/1971', 'Nữ', 'huu.phuong195@gmail.com', '0919635145', NULL, NULL, NULL, 'fKe4IX1J', '$2y$10$glDZuNd6Y1CgJTdqnPoTHe7.jDo5u8MUOIXyCKCiApNYUO9mJmRkO', '', '', 'Ths.Cán bộ 188'),
('CB_189', 55, 5, 4, 4, 1, 4, 3, 'upload/avatar/user.jpg', 'Cán bộ 189', 'Cán bộ 189', '28/07/1972', 'Nam', 'huu.phuong195@gmail.com', '0934761284', NULL, NULL, NULL, 'ftmUj8Jx', '$2y$10$p2lGTM4l.Rj0X1iQdKgaH.VO0QlrTQnFfQmHPzpRLobdM0apsas4y', '', '', 'Ths.Cán bộ 189'),
('CB_19', 35, 1, 4, 9, 3, 4, 2, 'upload/avatar/user.jpg', 'Cán bộ 19', 'Cán bộ 19', '13/05/1970', 'Nữ', 'huu.phuong195@gmail.com', '01643946397', NULL, NULL, NULL, 'rOHsZh8F', '$2y$10$nIMT8Camg6.t9GIswMIt7.eeORzulOzMOGYd1wJwY3fta9KtAphFO', '', '', 'Ths.Cán bộ 19'),
('CB_190', 74, 1, 4, 2, 3, 4, 8, 'upload/avatar/user.jpg', 'Cán bộ 190', 'Cán bộ 190', '28/03/1980', 'Nữ', 'huu.phuong195@gmail.com', '0974443630', NULL, NULL, NULL, '6DGXEQmN', '$2y$10$WyXh/nyQzqLu76A0CZQGPuO.e7mQoFSdgLUYn/UWz9oRG73GF57ZW', '', '', 'Ths.Cán bộ 190'),
('CB_191', 66, 1, 4, 2, 4, 4, 4, 'upload/avatar/user.jpg', 'Cán bộ 191', 'Cán bộ 191', '12/09/1973', 'Nam', 'huu.phuong195@gmail.com', '01682522243', NULL, NULL, NULL, 'LMgkHpe8', '$2y$10$Bl.JLxF.UT/oe1f3ARWfv.On4xFrzhevl5swawKn.TeHIQLT9HR6q', '', '', 'Ths.Cán bộ 191'),
('CB_192', 57, 1, 4, 6, 2, 4, 12, 'upload/avatar/user.jpg', 'Cán bộ 192', 'Cán bộ 192', '02/10/1985', 'Nữ', 'huu.phuong195@gmail.com', '0911867404', NULL, NULL, NULL, 'fqpJK7fz', '$2y$10$JW9n6TKPPEg7all73IbW1.xf/EUihK2kiZNVRVzPWnUY88X7yHovS', '', '', 'Ths.Cán bộ 192'),
('CB_193', 35, 2, 4, 4, 4, 4, 1, 'upload/avatar/user.jpg', 'Cán bộ 193', 'Cán bộ 193', '29/11/1979', 'Nữ', 'huu.phuong195@gmail.com', '0934680718', NULL, NULL, NULL, 'dCZhp5CN', '$2y$10$NJgE3/zKgnQaWcxThFwfhegOxArCDojY78N2hGWOVhQ.nkEBF6RqS', '', '', 'Ths.Cán bộ 193'),
('CB_194', 69, 5, 4, 8, 1, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 194', 'Cán bộ 194', '16/11/1984', 'Nữ', 'huu.phuong195@gmail.com', '01688977593', NULL, NULL, NULL, '1mJpPpq6', '$2y$10$pBVZzDyoGS/J8F261VOua.tb/BCOr5tNcKDSoR43yRyG.K5gdchvW', '', '', 'Ths.Cán bộ 194'),
('CB_195', 70, 3, 4, 1, 2, 4, 6, 'upload/avatar/user.jpg', 'Cán bộ 195', 'Cán bộ 195', '25/08/1974', 'Nam', 'huu.phuong195@gmail.com', '01673274468', NULL, NULL, NULL, 'aXodMFJ6', '$2y$10$X0H2n9kDLFC1UQtBugK1WeAZYoHABJQYcWMBDUMrjcjPtJCRy5UTG', '', '', 'Ths.Cán bộ 195'),
('CB_196', 48, 2, 4, 8, 4, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 196', 'Cán bộ 196', '04/07/1980', 'Nữ', 'huu.phuong195@gmail.com', '01673838433', NULL, NULL, NULL, '3ChDy7Tj', '$2y$10$WxniGgy/FFK2ldS46mgAA.9tYVEKNeLgQOUNbkn6161zPETWPANTm', '', '', 'Ths.Cán bộ 196'),
('CB_197', 28, 3, 4, 6, 3, 4, 1, 'upload/avatar/user.jpg', 'Cán bộ 197', 'Cán bộ 197', '14/09/1972', 'Nam', 'huu.phuong195@gmail.com', '01699345703', NULL, NULL, NULL, 'ah3etyXX', '$2y$10$58rSQTllNUZiZjeUTIAV4OEQPoKCYAiqMTaA/GBFqJ/tFfau8Lzoi', '', '', 'Ths.Cán bộ 197'),
('CB_198', 52, 5, 4, 5, 2, 4, 10, 'upload/avatar/user.jpg', 'Nguyễn Như Mai', 'Mai', '23/06/1971', 'Nữ', 'huu.phuong195@gmail.com', '0969266764', NULL, NULL, NULL, 'IkTZN6nF', '$2y$10$/l74/eqsdg7WQ6/7Xd5mJOawA2eo5NJP3/lwSpngDQGeV4st9sFWy', '', '', 'Ths.Nguyễn Như Mai'),
('CB_199', 28, 1, 4, 9, 4, 4, 9, 'upload/avatar/user.jpg', 'Cán bộ 199', 'Cán bộ 199', '01/06/1973', 'Nam', 'huu.phuong195@gmail.com', '01276660698', NULL, NULL, NULL, 't8Hvi3EY', '$2y$10$j1jnpGPga0lxhEHud4XVqe4hVSIBPlDNRiZgi7W.7Vsi0vlVBL52.', '', '', 'Ths.Cán bộ 199'),
('CB_20', 74, 2, 4, 7, 4, 4, 3, 'upload/avatar/user.jpg', 'Cán bộ 20', 'Cán bộ 20', '18/07/1980', 'Nam', 'huu.phuong195@gmail.com', '01247365180', NULL, NULL, NULL, 'ejnVFiCm', '$2y$10$1/C10edpVbc1ag2y1ek6gu6d0UsHt0dhxVCG7ftYQFO8LeeyCb1ye', '', '', 'Ths.Cán bộ 20'),
('CB_200', 63, 4, 4, 9, 4, 4, 12, 'upload/avatar/user.jpg', 'Cán bộ 200', 'Cán bộ 200', '01/05/1976', 'Nam', 'huu.phuong195@gmail.com', '0909050292', NULL, NULL, NULL, '5NSF1YoN', '$2y$10$ifsiT8kZyNPK2uGqL4Bh3eFL70ZFkiEBdjkE6f76TtPvKExS8pQh.', '', '', 'Ths.Cán bộ 200'),
('CB_201', 61, 4, 4, 3, 1, 4, 1, 'upload/avatar/user.jpg', 'Cán bộ 201', 'Cán bộ 201', '22/08/1981', 'Nam', 'huu.phuong195@gmail.com', '0901347113', NULL, NULL, NULL, 'vF6FN6uG', '$2y$10$9HnJa9zThilexH77SCrB/u2fNg1jvIkpGdfGlL4eeSTPM.ittRY46', '', '', 'Ths.Cán bộ 201'),
('CB_202', 34, 3, 4, 6, 1, 4, 10, 'upload/avatar/user.jpg', 'Cán bộ 202', 'Cán bộ 202', '22/03/1979', 'Nam', 'huu.phuong195@gmail.com', '01674220377', NULL, NULL, NULL, 'T3Pyis2I', '$2y$10$jdNVxvEM3o1O7tjxDd.XGuSnnNFI71IAmXsYJSZkxA.PT.Ly7mM9C', '', '', 'Ths.Cán bộ 202'),
('CB_203', 25, 1, 4, 10, 4, 4, 13, 'upload/avatar/user.jpg', 'Cán bộ 203', 'Cán bộ 203', '26/01/1983', 'Nam', 'huu.phuong195@gmail.com', '01236907009', NULL, NULL, NULL, '3zgmRaSf', '$2y$10$XUvJtaPihBkekj8lWdvixO7HmItNp0UuYEHVZ6qRsCZ1ICB.QJJOC', '', '', 'Ths.Cán bộ 203'),
('CB_204', 74, 5, 4, 3, 3, 4, 10, 'upload/avatar/user.jpg', 'Cán bộ 204', 'Cán bộ 204', '25/12/1978', 'Nam', 'huu.phuong195@gmail.com', '01635417480', NULL, NULL, NULL, 'ndyOmyh6', '$2y$10$O3WhJm8TkWvMZJvYLbefue.Zq5/aTqa9UjjfGSr7yGmQAp4rwgSBS', '', '', 'Ths.Cán bộ 204'),
('CB_205', 53, 3, 4, 4, 1, 4, 7, 'upload/avatar/user.jpg', 'Cán bộ 205', 'Cán bộ 205', '01/08/1983', 'Nam', 'huu.phuong195@gmail.com', '0939664984', NULL, NULL, NULL, 'Xrzlj2bG', '$2y$10$YYOG3m.eAWOiMiDn0HqNh.eXl2EbvvyYko6tjghYSjzcGDvVTyj1C', '', '', 'Ths.Cán bộ 205'),
('CB_206', 75, 3, 4, 2, 2, 4, 4, 'upload/avatar/user.jpg', 'Cán bộ 206', 'Cán bộ 206', '19/07/1981', 'Nữ', 'huu.phuong195@gmail.com', '01241761610', NULL, NULL, NULL, 'pgUxKRio', '$2y$10$3mNMI5AX/W1modlv4WQR2eOSt7ZCvGAGtY6zqhCOVCg5i6EE2OYDu', '', '', 'Ths.Cán bộ 206'),
('CB_207', 77, 3, 4, 5, 4, 4, 1, 'upload/avatar/user.jpg', 'Cán bộ 207', 'Cán bộ 207', '27/09/1972', 'Nữ', 'huu.phuong195@gmail.com', '01219464789', NULL, NULL, NULL, 'e2C6xtEw', '$2y$10$jlgNvD4T07Rt1Zn/84KCg.Z./VLI1Q8FwzaTKd189Ni6TdNPujyuS', '', '', 'Ths.Cán bộ 207'),
('CB_208', 47, 1, 4, 9, 1, 4, 8, 'upload/avatar/user.jpg', 'Cán bộ 208', 'Cán bộ 208', '16/10/1973', 'Nữ', 'huu.phuong195@gmail.com', '01633119845', NULL, NULL, NULL, 'm6FCp0hR', '$2y$10$UqPreC5i2bj7k/uSVbcu6em.VYE4zvwiol62nDONTuUZINS7wI3oS', '', '', 'Ths.Cán bộ 208'),
('CB_209', 59, 1, 4, 9, 3, 4, 7, 'upload/avatar/user.jpg', 'Cán bộ 209', 'Cán bộ 209', '12/10/1970', 'Nam', 'huu.phuong195@gmail.com', '01271400282', NULL, NULL, NULL, '9pFpk6d2', '$2y$10$noukXsZZkErXxrN6Kp4Lnul66zg5Xi2Gdugxp5ahGCj8EIF9MUbs.', '', '', 'Ths.Cán bộ 209'),
('CB_21', 38, 2, 4, 8, 4, 4, 13, 'upload/avatar/user.jpg', 'Cán bộ 21', 'Cán bộ 21', '09/04/1977', 'Nam', 'huu.phuong195@gmail.com', '0976780327', NULL, NULL, NULL, 'ICHCJDkE', '$2y$10$P5a6kvle7AOs64Etf2qRSelzgpOjb5kVYJ16UVJYrsEsLJNY40nzi', '', '', 'Ths.Cán bộ 21'),
('CB_210', 56, 2, 4, 4, 2, 4, 13, 'upload/avatar/user.jpg', 'Cán bộ 210', 'Cán bộ 210', '21/01/1979', 'Nữ', 'huu.phuong195@gmail.com', '01263992512', NULL, NULL, NULL, 'bKi29Tvt', '$2y$10$6sXquL.8Q.Idy3vjkccbyegeaK1MdBc009icSX.y0MnU2XLFZW3OC', '', '', 'Ths.Cán bộ 210'),
('CB_211', 58, 5, 4, 5, 4, 4, 13, 'upload/avatar/user.jpg', 'Cán bộ 211', 'Cán bộ 211', '08/02/1972', 'Nam', 'huu.phuong195@gmail.com', '01296207410', NULL, NULL, NULL, 'vcLvhb5h', '$2y$10$oRWdB4HXq/oyRlQABMaQB.2QZgFEudjRGZpWORFTmUMU15I/szuq6', '', '', 'Ths.Cán bộ 211'),
('CB_212', 33, 3, 4, 1, 4, 4, 6, 'upload/avatar/user.jpg', 'Cán bộ 212', 'Cán bộ 212', '04/11/1982', 'Nam', 'huu.phuong195@gmail.com', '0933343098', NULL, NULL, NULL, 'cvq8np2M', '$2y$10$5yV.ncc5GNZ8HpqwT691LeCGbIcXFcnAR68IF5CRRwQXMktUH8y5e', '', '', 'Ths.Cán bộ 212'),
('CB_213', 37, 2, 4, 1, 2, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 213', 'Cán bộ 213', '12/05/1970', 'Nữ', 'huu.phuong195@gmail.com', '01271786838', NULL, NULL, NULL, 'avUILBBF', '$2y$10$Bh8yRY4qM9TjT8FipGpPVODLe4GS7Vxcs67hrZ0LSAehWKDgNm.cm', '', '', 'Ths.Cán bộ 213'),
('CB_214', 46, 5, 4, 2, 2, 4, 4, 'upload/avatar/user.jpg', 'Cán bộ 214', 'Cán bộ 214', '17/09/1972', 'Nữ', 'huu.phuong195@gmail.com', '0907111816', NULL, NULL, NULL, 'Ks2PyEYP', '$2y$10$agW5A7.GNuDD.S8FTqfPNe670ZptcbhW/j6RP6cPzMQywpq/GmUP6', '', '', 'Ths.Cán bộ 214'),
('CB_215', 31, 1, 4, 5, 1, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 215', 'Cán bộ 215', '02/02/1984', 'Nữ', 'huu.phuong195@gmail.com', '01249796278', NULL, NULL, NULL, 'EQfvUGfW', '$2y$10$S.RO9ii/DpAl51SfK.CS..zlfSZlmd9V6Zo1Lhoq0M4WdbM1QAvoK', '', '', 'Ths.Cán bộ 215'),
('CB_216', 34, 4, 4, 1, 2, 4, 4, 'upload/avatar/user.jpg', 'Cán bộ 216', 'Cán bộ 216', '07/04/1970', 'Nam', 'huu.phuong195@gmail.com', '0941634928', NULL, NULL, NULL, 'kbtgPQ9n', '$2y$10$zXmmYEEVmb.3gty2kihgEed0XQiAto/OS6ydmtZEOx3fLlCiTA5j6', '', '', 'Ths.Cán bộ 216'),
('CB_217', 47, 2, 2, 9, 3, 4, 10, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_217.jpg', 'Vxcvxcvxvxcv', 'Vxcvxcvxvx', '12/08/2016', 'Nam', 'huu.phuong195@gmail.com', '01673951036', '', '', '', 'phuonghuu', '$2y$10$E2vc/lKK9Q5xWZeYbwGwF.uHHhHu/vaIY3Fbs.FnhedqC1rv9hhn.', '', '', 'Ths.Vxcvxcvxvxcv'),
('CB_218', 47, 2, 4, 9, 2, 2, 2, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_218.jpg', 'Nguyễn Xuân Hải', 'Huu', '12/08/1995', 'Nam', 'huu.phuong195@gmail.com', '01675369841', 'Ha Noi', 'Ha Noi', 'Ha Noi', 'huu.phuong195', '$2y$10$kh.vTfQ4jvkay7mPBKQOZuEYoBGk8nQ7XQJ6J3qC5xH5aCXMzf2IG', 'không có ghi chú', '', 'Ths.Phuong Huu'),
('CB_219', 47, 2, 4, 10, 2, 2, 2, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_219.jpg', 'Lê Minh Duy', 'Huu', '12/08/1995', 'Nam', 'huu.phuong195@gmail.com', '01675369841', 'Ha Noi', 'Ha Noi', 'Ha Noi', 'huu.phuong195', '$2y$10$eYo5unD0Hdl048Dz2NE0ieiILdaEzz5GmbmhOaO6oT5QapgQhm/ae', 'không có ghi chú', '', 'Ths.Phuong Huu'),
('CB_22', 73, 3, 4, 2, 2, 4, 1, 'upload/avatar/user.jpg', 'Cán bộ 22', 'Cán bộ 22', '19/07/1970', 'Nam', 'huu.phuong195@gmail.com', '01205451931', NULL, NULL, NULL, 'mws67JBj', '$2y$10$Pk/wBbqg3d1uwlzEEHSK/e03UegPkHuq/NcT1GnCtTuEN6pymhMHa', '', '', 'Ths.Cán bộ 22'),
('CB_220', 47, 2, 2, 8, 3, 3, 11, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_220.jpg', '213213', '213213', '17/08/2016', 'Nam', 'huu.phuong195@gmail.com', 'sasadsadsad', '', '', '', 'axzqw', '$2y$10$BRUus5To9lf6nl2Wg.t9ke9XQ3glSxcKtxYKG2eu6.7dsVF4rzI2q', '', '', 'Ths.213213'),
('CB_221', 47, 2, 4, 3, 2, 2, 3, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_221.jpg', 'Nguyễn Văn Tuyển', 'Huu', '11/08/2016', 'Nữ', 'huu.phuong195@gmail.com', '01673951036', '', '', '', 'phuonghuu', '$2y$10$mhDLLMwaFnNpawrQqzZTVOGulXLX9ZQRNCGMzH7KnPaDpUtnG3qEq', '', '', 'Ths.Phuong Huu'),
('CB_222', 47, 2, 2, 2, 4, 4, 11, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_222.jpg', 'Nguyễn Văn Anh', 'Huu', '15/09/1995', 'Nữ', 'huu.phuong195@gmail.com', '01673520364', '', '', '', 'phuonghuu1995', '$2y$10$kweh2UUOZwF2oDfjv3JJ/eIJND6.eDI0Zsp9Uqp2PjgKTgOSNbA5G', '', '', 'Ths.Phuong Huu'),
('CB_223', 47, 2, 2, 2, 4, 4, 11, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_223.jpg', 'Nguyễn Khánh', 'Huu', '15/09/1995', 'Nữ', 'huu.phuong195@gmail.com', '01673520364', '', '', '', 'phuonghuu1995', '$2y$10$0HcxevoOJonpUt0nbhs3TeGDEjTsJf.LztN6.94nk5wPasTW8sJYy', '', '', 'Ths.Phuong Huu'),
('CB_224', 47, 2, 2, 10, 4, 4, 11, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_224.jpg', 'Bùi Tiến Anh', 'Huu', '15/09/1995', 'Nữ', 'huu.phuong195@gmail.com', '01673520364', '', '', '', 'phuonghuu1995', '$2y$10$nNHAdCD8i2WdJs8NNz1YauRMjnWl9Hn/cRLaUPNayXtWSpuj3TMSC', '', '', 'Ths.Phuong Huu'),
('CB_225', 47, 2, 2, 7, 4, 4, 11, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_225.jpg', 'Hoàng Duy Hưng', 'Huu', '15/09/1995', 'Nữ', 'huu.phuong195@gmail.com', '01673520364', '', '', '', 'phuonghuu1995', '$2y$10$FYSm1nAOZFbdOcPOZoBYweP9PB3nhd3ohr5ej7AZfgwOBB0aW7ihK', '', '', 'Ths.Phuong Huu'),
('CB_226', 47, 2, 3, 1, 2, 2, 5, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_226.jpg', 'Sadasdasd', 'Sadasdasd', '18/08/2016', 'Nữ', 'huu.phuong195@gmail.com', '', '', '', '', 'phuonghuu195', '$2y$10$4YG9dAJgCGNCjlIiwa2rcemSBllc8rG4ieFqwoztkaUZ2Nm6JRHzK', '', '', 'Ths.Sadasdasd'),
('CB_227', 47, 2, 3, 6, 2, 2, 5, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_227.jpg', 'Sadasdasd', 'Sadasdasd', '18/08/2016', 'Nữ', 'huu.phuong195@gmail.com', '', '', '', '', 'phuonghuu195', '$2y$10$xxLuPYndZhAIp63FLnR/IOjGridiVGaRC2jSxGlSU6OHkm4EuUFhK', '', '', 'Ths.Sadasdasd'),
('CB_228', 47, 2, 3, 6, 2, 2, 5, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_228.jpg', 'Sadasdasd', 'Sadasdasd', '18/08/2016', 'Nữ', 'huu.phuong195@gmail.com', '', '', '', '', 'phuonghuu195', '$2y$10$JHasRSpOl7B2i/4ActqRBuqGAQ9r8vwMq35b0Ea5maKteUdgAyZSO', '', '', 'Ths.Sadasdasd'),
('CB_229', 47, 2, 3, 10, 2, 2, 5, 'E:\\xampp\\htdocs\\quanlykhoahoc\\public\\\\upload\\avatar\\CB_229.jpg', 'Sadasdasd', 'Sadasdasd', '18/08/2016', 'Nữ', 'huu.phuong195@gmail.com', '', '', '', '', 'phuonghuu195', '$2y$10$oIN9hlR4e4Pu3/jPMAXBTeVSGY98COr4F/4YlMRy3LqkAbrvpvsYa', '', '', 'Ths.Sadasdasd'),
('CB_23', 48, 3, 4, 4, 2, 4, 3, 'upload/avatar/user.jpg', 'Cán bộ 23', 'Cán bộ 23', '06/11/1974', 'Nữ', 'huu.phuong195@gmail.com', '01292130262', NULL, NULL, NULL, 'veN5gEo7', '$2y$10$o0kNllF4nVUvwD6g9zJZo.08jYhuyA3dnEARbqOIKny7Uc1R.Nyn.', '', '', 'Ths.Cán bộ 23'),
('CB_230', 47, 2, 4, 6, 3, 3, 10, '', 'Phuon Huu', 'Huu', '', 'Khác', 'huu.phuong195@gmail.com', '', '', '', '', 'phuong1111', '$2y$10$pvSikMoraY2XjJnvhmXVKu8cW3RZ0QluZLF2FXoPQstg6.QZ3hcXS', '', '', 'Ths.Phuon Huu'),
('CB_231', 47, 2, 4, 10, 3, 3, 10, '', 'Phuon Huu', 'Huu', '', 'Khác', 'huu.phuong195@gmail.com', '', '', '', '', 'phuong1111', '$2y$10$suQHXS19EYNuOsSWhTm3eO9OOruei0uM6SNazJjLDgOJ6x7mAxt1q', '', '', 'Ths.Phuon Huu'),
('CB_232', 47, 2, 4, 3, 3, 3, 10, '', 'Phuon Huu', 'Huu', '', 'Khác', 'huu.phuong195@gmail.com', '', '', '', '', 'phuong1111', '$2y$10$H0r3TeC0TMVzZQ6wFqv3DOkQKxnlw8.l8CFR3Jm1EHnrbA8oeYH.m', '', '', 'Ths.Phuon Huu'),
('CB_233', 47, 2, 2, 2, 2, 2, 9, '', 'Nguyễn Tuấn Anh', 'Huu', '', 'Nữ', 'huu.phuong195@gmail.com', '', '', '', '', 'root1147', '$2y$10$tY0OSR9ZrcckIGFFXmmuJuzVFtsBwTlzypXko79Uqh4t0pCMVILBG', '', '', 'Ths.Phuong Huu'),
('CB_234', 47, 2, 2, 3, 2, 2, 9, '', 'Lê Tuấn Vũ', 'Huu', '', 'Nữ', 'huu.phuong195@gmail.com', '', '', '', '', 'root1147', '$2y$10$3L7uEPDAnQmd0iKPvhxJn.RK4JeNrg7BCgMb/TGg89ZslnN1gAv8u', '', '', 'Ths.Phuong Huu'),
('CB_235', 47, 2, 3, 8, 3, 4, 7, '', 'Nguyễn Quang Huy', 'Huu', '', 'Nam', 'huu.phuong195@gmail.com', '', '', '', '', 'phuong9999', '$2y$10$jrkKKHZPtY2Nwr19/Drm/OI3Da8zqdrNwVGgyAqyd9MDtqdjBJ9uG', '', '', 'Ths.Phuong Huu'),
('CB_236', 47, 2, 3, 2, 3, 4, 7, '', 'Nguyễn Thị Bích Hồng', 'Huu', '', 'Nam', 'huu.phuong195@gmail.com', '', '', '', '', 'phuong9999', '$2y$10$bcNnzRTe/dl0I0Xlny5pWuuYxuTGYmQYJfpgCaUG5ugvZCH0OflVa', '', '', 'Ths.Phuong Huu'),
('CB_237', 47, 2, 3, 3, 3, 4, 7, '', 'Nguyễn Thị Nga', 'Huu', '', 'Nam', 'huu.phuong195@gmail.com', '', '', '', '', 'phuong9999', '$2y$10$6vOcQSxuc39uSMgYjl02jeaVX0M6TU9sw6NwBsdLctqh2YA4SHG26', '', '', 'Ths.Phuong Huu'),
('CB_238', 47, 2, 3, 9, 3, 4, 7, '', 'Nguyễn Thùy Dương', 'Huu', '', 'Nam', 'huu.phuong195@gmail.com', '', '', '', '', 'phuong9999', '$2y$10$n96.ekpgDqvb4zlE9jjpDurwBB54u3RcpirPZVAffuy9vq7Nxg3ti', '', '', 'Ths.Phuong Huu'),
('CB_239', 47, 2, 3, 5, 3, 4, 7, '', 'Đỗ Thị Minh Châm', 'Huu', '', 'Nam', 'huu.phuong195@gmail.com', '', '', '', '', 'phuong9999', '$2y$10$8MUjU7zW4miWTMWa4FJzGugKE9xGhetGcwU0Z4wPHvVGSr/yECRU6', '', '', 'Ths.Phuong Huu'),
('CB_24', 27, 2, 4, 10, 4, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 24', 'Cán bộ 24', '30/05/1973', 'Nam', 'huu.phuong195@gmail.com', '01236359049', NULL, NULL, NULL, 'tc7aCy4D', '$2y$10$zmHkffdwJ1Z1uwpwFamG0OSq55GgSnswoddDQ7vw.AURzGaW0jtF.', '', '', 'Ths.Cán bộ 24'),
('CB_240', 47, 2, 3, 2, 3, 4, 7, '', 'Bùi Ngọc Hà', 'Huu', '', 'Nam', 'huu.phuong195@gmail.com', '', '', '', '', 'phuong9999', '$2y$10$L.HGGwfXLxDBOrpdGzJKCu8NlrtI.NBJQtbUROlfYN/D.bGy2QaQ2', '', '', 'Ths.Phuong Huu'),
('CB_241', 47, 2, 2, 1, 2, 2, 10, '', 'Nguyễn Thị Tính', 'Huu', '', 'Nữ', 'huu.phuong195@gmail.com', '', '', '', '', 'kakaka', '$2y$10$DhR0giCeSl9etT9h0b0tz.UtWWWkj3qLVdQMXKx7WgcLdVfa.64mW', '', '', 'Ths.Phuong Huu'),
('CB_242', 47, 2, 2, 6, 2, 2, 10, '', 'Nguyễn Thị Tâm', 'Huu', '', 'Nữ', 'huu.phuong195@gmail.com', '', '', '', '', 'kakaka', '$2y$10$OZJbiVV9EeSMwLnyRq3CweHS8NnAIPGNGY/7vmgCaFaj.wYC2fl2a', '', '', 'Ths.Phuong Huu'),
('CB_243', 47, 2, 2, 7, 3, 4, 7, '', 'Đỗ Văn Hoàng', 'Hoàng', '12/08/2016', 'Khác', 'huu.phuong195@gmail.com', '', '', '', '', 'hoangdo123', '$2y$10$safqmXw8FNmBCOMh1Zkp7.WYf4NiGJDKdPJbNGpOS8I7MHXqf07fy', '', '', 'Ths.Đỗ Văn Hoàng'),
('CB_244', 47, 2, 4, 9, 2, 4, 4, '\\upload\\avatar\\CB_245.jpg', 'Nguyễn Văn Tâm', 'Tâm', '15/08/1996', 'Nam', 'huu.phuong195@gmail.com', '01678539841', 'Hà Nội', 'Hà Nội', 'Hà Nội', '', '$2y$10$U.D/v8xpZ1pieO414FdPqeX0bA7cTpOceLq4b3Cdw9IouMEX58O/y', 'Không có ghi chú', '', 'Ths.Nguyễn Văn Tâm'),
('CB_245', 47, 2, 2, 1, 2, 3, 1, '', 'Nguyễn Thị Ly Tâm', 'Tâm', '12/03/1995', 'Nam', 'huu.phuong195@gmail.com', '0165789652', '', '', '', 'quantrihethong', '$2y$10$HdjFIt0gF3s6nWdsEM2FG.S3ajnf4NQBEg2FlkwKhyh/B37FYFHRy', '', '', 'Ths.Nguyễn Thị Ly Tâm'),
('CB_246', 47, 2, 4, 10, 2, 4, 2, '\\upload\\avatar\\CB_246.jpg', 'Nguyễn Xuân Hải', 'Hải', '11/03/1995', 'Nam', 'huu.phuong195@gmail.com', '01678901923', 'Bắc Giang', 'Bắc Giang', 'Bắc Giang', 'nxhai133', '$2y$10$8rvWUM40/LRQ5LkZ1H3zR.3M8FY.zhoGJV64sbZwJGeGOxaFWRA9m', '', '40VAJUIAzuNESL1ZEKrvNnrWo8jgtkVAMbnzafU7SMm9Ns5PLfILKDJUrnQ7', 'Ths.Nguyễn Xuân Hải'),
('CB_247', 47, 2, 2, 5, 2, 4, 4, '\\upload\\avatar\\CB_247.jpg', 'Lê Minh Duy', 'Duy', '11/01/1995', 'Nam', 'huu.phuong195@gmail.com', '01658903209', 'Hà Nội', '', '', 'leminhduy1995', '$2y$10$49rUBH3QHTfKo8dpF0yGUex/3Qg1ou8ibdrDD2zc1ZRu/cz6CEbjC', 'Bên ngoài Viện', '', 'Ths.Lê Minh Duy'),
('CB_248', 64, 2, 4, 5, 2, 4, 3, '\\upload\\avatar\\CB_248.jpg', 'Lê Tuấn Vũ', 'Vũ', '11/07/1995', 'Khác', 'huu.phuong195@gmail.com', '0987618192', 'Hưng Yên', 'Hưng Yên', 'Hưng Yên', 'letuanvu', '$2y$10$ZS/tmRbhk8rMbgCHNSKBaOIQqW3owogNPRSnA3.YBHofMJAt5FCje', '', '', 'Ths.Lê Tuấn Vũ'),
('CB_249', 47, 2, 2, 8, 1, 4, 1, '\\upload\\avatar\\CB_249.jpg', 'Nguyễn Quang Huy', 'Huy', '01/08/1995', 'Nam', 'huu.phuong195@gmail.com', '0164789321', '', '', '', 'nguyenquanghuy', '$2y$10$PK0EuALPyw9a0b1jxRW9HueiIyNOre4JkuqPPlIdaTExKyt8jupYC', '', '', 'Ths.Nguyễn Quang Huy'),
('CB_25', 35, 5, 4, 4, 4, 4, 4, 'upload/avatar/user.jpg', 'Cán bộ 25', 'Cán bộ 25', '24/11/1978', 'Nữ', 'huu.phuong195@gmail.com', '0948302137', NULL, NULL, NULL, '5bUMR6Nr', '$2y$10$qL5dG7dWD7Mo/8S7pD6ItOq1HdnGPdApsFmhHexy9La3S/BIwymjK', '', '', 'Ths.Cán bộ 25'),
('CB_250', 47, 2, 2, 7, 3, 4, 9, '\\upload\\avatar\\CB_250.jpg', 'Lê Minh Duy', 'Duy', '16/09/2016', 'Nữ', 'huu.phuong195@gmail.com', '01782130192', '', '', '', 'duyle', '$2y$10$q6MK.QH/VDBJVuGn7Pfxgu5HtrpxxeNocWaI8MK0Cr60ve7odXUD.', '', '', 'Ths.Lê Minh Duy'),
('CB_251', 47, 2, 2, 2, 1, 4, 2, '\\upload\\avatar\\CB_251.jpg', 'Nguyễn Văn Đoàn', 'Đoàn', '20/06/1990', 'Nam', 'huu.phuong195@gmail.com', '01675369842', '', '', '', 'doantruong', '$2y$10$qzVF5f8NzkQHM5L0/0tTnelUSp69mkeIsEfqH2s1ruBP2HnMB03oC', '', '', 'Ths.Nguyễn Văn Đoàn'),
('CB_252', 47, 2, 2, 2, 1, 2, 1, '\\upload\\avatar\\CB_252.jpg', 'Nguyễn Việt Hùng', 'Hùng', '23/10/1970', 'Nữ', 'huu.phuong195@gmail.com', '01652369851', '', '', '', 'viethung', '$2y$10$uM3AZpTy1IebESqiKieXteTgNOUJaF0r2cD9FP6qj4zYBaB6eES4K', '', '', 'Ths.Nguyễn Việt Hùng'),
('CB_253', 47, 2, 1, 1, 2, 1, 1, '\\upload\\avatar\\CB_253.jpg', 'Hoàng Mạnh Tuấn', 'Tuấn', '15/09/2016', 'Nữ', 'huu.phuong195@gmail.com', '01236521452', '', '', '', 'manhtuan', '$2y$10$jnhk9El8knAO5aGuPlwI0urMqRM4P88aW9/mNd6BMi4oUPDy/hO4G', '', '', 'Ths.Hoàng Mạnh Tuấn'),
('CB_254', 47, 2, 2, 3, 2, 1, 1, '', 'Ádsad', 'Ádsad', '24/09/2016', 'Nữ', 'huu.phuong195@gmail.com', '01675236941', '', '', '', 'asdsad', '$2y$10$Aul1bmmhMCOLpBAwo1U4Tey/7nwMW8kLv4EBHhc0j/hWln8tO4m6K', '', '', 'Ths.Ádsad'),
('CB_255', 47, 2, 2, 1, 1, 1, 1, '', 'Asdsadasd', 'Asdsadasd', '11/09/1993', 'Nữ', 'huu.phuong195@gmail.com', '9874564654', '', '', '', 'sadsad', '$2y$10$w6lb9zkgh2JXWpVn92SZAuAAG/2t7JrtVUkYp..bE9h2zqEOQQIm2', '', '', 'Ths.Asdsadasd'),
('CB_256', 47, 2, 1, 1, 1, 1, 1, '', 'Minh Thư', 'Thư', '11/09/1995', 'Nam', 'huu.phuong195@gmail.com', '132165465465', '', '', '', 'sadasdasd', '$2y$10$7eNVA/X1Ass7FjAfKyt7We/qI.MG3KO67QE/JouRIS9Gv/ekyBdfe', '', '', 'Ths.Minh Thư'),
('CB_257', 47, 2, 2, 2, 1, 1, 7, '', 'Sadsadasd', 'Sadsadasd', '20/09/1997', 'Nữ', 'huu.phuong195@gmail.com', '65542313244874', '', '', '', 'aaaaaa', '$2y$10$RP8gdSmVf9ewmnaWTZk17OFK7ZDjG1B4NcLmJebTO4BlQbAcQk9Gi', '', '', 'Ths.Sadsadasd'),
('CB_258', 47, 2, 2, 2, 1, 2, 11, '', 'Assadasd', 'Assadasd', '16/09/2016', 'Nam', 'huu.phuong195@gmail.com', '6549879797', '', '', '', 'tungsomn', '$2y$10$S3RFd4hi24cLGJe8V/A1BOGA7vVME9tDejTqxiMtXmRbPmOcrllF2', '', '', 'Ths.Assadasd'),
('CB_259', 47, 2, 2, 4, 2, 3, 12, '', 'Nguyen Ngoc Nga', 'Nga', '29/09/1991', 'Nam', 'huu.phuong195@gmail.com', '01652365217', '', '', '', 'tungson', '$2y$10$FcpE8BQA9panKjGsnxZQ/ejdRFSQP9YU3VaqlY7ZkxlIpDNJlDq2S', '', '', 'Ths.Nguyen Ngoc Nga'),
('CB_26', 43, 1, 4, 2, 3, 4, 4, 'upload/avatar/user.jpg', 'Cán bộ 26', 'Cán bộ 26', '02/12/1984', 'Nam', 'huu.phuong195@gmail.com', '01294474012', NULL, NULL, NULL, 'UL5muKLk', '$2y$10$nlQPJx4nFcUySW6hMz.M7uHqxfEjHstwIRYidnF3yuaNlypxSADZm', '', '', 'Ths.Cán bộ 26'),
('CB_260', 47, 2, 2, 5, 2, 2, 6, '', 'Adassasad', 'Adassasad', '09/09/1995', 'Nam', 'huu.phuong195@gmail.com', '654684654', '', '', '', 'adasd', '$2y$10$t2LyfqBqjW89kwSmkc2HH.Qpu1yfkTWyyIv30SKctB5h0DdjLzOxm', '', '', 'Ths.Adassasad'),
('CB_261', 47, 2, 2, 1, 1, 1, 1, '', 'Sadasd', 'Sadasd', '22/09/1990', 'Nữ', 'huu.phuong195@gmail.com', '01675236514', '', '', '', 'asdasdasd', '$2y$10$YuhqJDAnQkiAWhHJi2dQFO.HgNjAmC2K7eUH5Ck9KS30862/X/L0.', '', '', 'Ths.Sadasd'),
('CB_262', 47, 2, 1, 4, 2, 4, 11, '', 'Sdfsdfsdf', 'Sdfsdfsdf', '16/09/1990', 'Nữ', 'huu.phuong195@gmail.com', '01652365236', '', '', '', 'asdasd', '$2y$10$Rcg7IdaRVwQkagmhjGc8quxTBW6GeNKjpKbc0NBlWD1Wy8ko0AUJq', '', '', 'Ths.Sdfsdfsdf'),
('CB_263', 47, 2, 3, 2, 2, 2, 2, '', 'Nguyen Ngoc Nga', 'Nga', '16/09/1994', 'Nữ', 'huu.phuong195@gmail.com', '0126523652', '', '', '', 'ahihi', '$2y$10$Dcn9j075FrDd9V78c5qN7.8wN6JsVi.8FNygn/vU64Lk94pW2RRa.', '', '', 'Ths.Nguyen Ngoc Nga'),
('CB_264', 47, 2, 3, 3, 3, 3, 11, '', 'Sdasdasd', 'Sdasdasd', '18/09/1993', 'Nữ', 'huu.phuong195@gmail.com', '01652036985', '', '', '', 'mkji1h', '$2y$10$lnYPnjctEq.fJA1sCP.sc.OlIegHKRFWbidoBZZz/bmG96trWu7NC', '', '', 'Ths.Sdasdasd'),
('CB_265', 47, 2, 1, 3, 2, 3, 11, '', 'Sdfsdfsdfsdf', 'Sdfsdfsdfs', '23/09/1990', 'Nam', 'huu.phuong195@gmail.com', '01675236984', '', '', '', 'sadasd111', '$2y$10$IHve8SWI/mPmQyXLPF1rOOgBFg1xx6togpYaiIGj1qvMVT45xaz1m', '', '', 'Ths.Sdfsdfsdfsdf'),
('CB_266', 47, 2, 2, 4, 3, 4, 10, '', 'Nguyen Viet Linh', 'Linh', '17/09/1990', 'Nam', 'huu.phuong195@gmail.com', '01652365214', '', '', '', 'sadasdasd11', '$2y$10$fLkA7LkuF.mcUdTv/skNSur4ADMY9SCJ0IP2ymOeRFGzhE/GoNHtu', '', '', 'Ths.Nguyen Viet Linh'),
('CB_267', 47, 2, 2, 4, 3, 4, 10, '', 'Nguyen Viet Linh', 'Linh', '17/09/1990', 'Nam', 'huu.phuong195@gmail.com', '01652365214', '', '', '', 'sadasdasd11111', '$2y$10$nhSme/THUFhPSW2cNc9ggOtDynlHEi/vw3knPRjwM7Slrkr86WZfa', '', '', 'Ths.Nguyen Viet Linh'),
('CB_268', 47, 2, 1, 3, 2, 3, 8, '', 'Asdsad', 'Asdsad', '14/09/1990', 'Nữ', 'huu.phuong195@gmail.com', 'sadasdasdasd', '', '', '', 'azxsa1', '$2y$10$ghO31p1D5G.whHeYy/weZu6KLgHPLCApuM/BfH4/VdAaYsLpTZGsS', '', '', 'Ths.Asdsad'),
('CB_269', 47, 2, 1, 3, 2, 3, 8, '', 'Asdsad', 'Asdsad', '14/09/1990', 'Nữ', 'huu.phuong195@gmail.com', 'sadasdasdasd', '', '', '', 'azxsa11', '$2y$10$IJN.e0H2w5cEUcZU.fn0L.wYJxgudkECtxNqL0R9HWW5KNDKSy.7i', '', '', 'Ths.Asdsad'),
('CB_27', 67, 5, 4, 9, 4, 4, 1, 'upload/avatar/user.jpg', 'Cán bộ 27', 'Cán bộ 27', '22/06/1970', 'Nam', 'huu.phuong195@gmail.com', '0941650933', NULL, NULL, NULL, '6ddzatUN', '$2y$10$sJunqhifQfgBFuoye5z24OVPHKWohAZC4GUQJ9VXTvJ4QlVdgXJce', '', '', 'Ths.Cán bộ 27'),
('CB_270', 47, 2, 2, 4, 2, 2, 8, '', 'Asdasdsadasd', 'Asdasdsada', '15/09/1990', 'Nam', 'huu.phuong195@gmail.com', '01523652145', '', '', '', 'sadsadsad', '$2y$10$5lrlidRc2df6WF5fR/06e.OcksE4INtoErnV9aGwSJ2Y7hHbeVUFy', '', '', 'Ths.Asdasdsadasd'),
('CB_271', 47, 2, 3, 3, 3, 3, 2, '', 'Asdsadasd', 'Asdsadasd', '15/09/1990', 'Nam', 'huu.phuong195@gmail.com', '01203652145', '', '', '', 'sadasd231213', '$2y$10$BMdkcHAamJEDPQCo7hT7Z.KatIOWu7YrblJtnq8Mick8YNhXsJNtK', '', '', 'Ths.Asdsadasd'),
('CB_272', 47, 2, 1, 2, 2, 1, 1, '', 'Nguyen Van Nam', 'Nam', '19/09/1991', 'Nam', 'huu.phuong195@gmail.com', '015236514142', '', '', '', 'sfsdff2', '$2y$10$Bj/o6nKT72dMu1Kl56t1geA3I4zDfWj4rzRWkcmkWRBaSl5kLddyC', '', '', 'Ths.Nguyen Van Nam'),
('CB_273', 60, 5, 4, 2, 1, 4, 2, '\\upload\\avatar\\CB_274.jpg', 'Ngô Thị Bích Hồng', 'Hồng', '15/09/1994', 'Nam', 'huu.phuong195@gmail.com', '016728192019', '', '', '', 'kieutuananh', '$2y$10$avBJuHNAYpLP5tLKn.zNYuYg5llNGY/TWa.u/hliNJVp1WhZz6yHS', '', '', 'TS.Ngô Thị Bích Hồng'),
('CB_274', 47, 2, 4, 5, 2, 4, 3, '\\upload\\avatar\\CB_274.jpg', 'Nguyễn Văn Hùng', 'Hùng', '28/09/1995', 'Nam', 'huu.phuong195@gmail.com', '01672819201', '', '', '', 'nguyenvanhung', '$2y$10$OP9I8f6W31.Rx9CBhOXgzOSgJGewkb92tTq1as4bcJkWRCspusmbC', '', '', 'Ths.Nguyễn Văn Hùng'),
('CB_275', 77, 5, 4, 2, 2, 2, 5, '\\upload\\avatar\\CB_276.jpg', 'Bùi Ngọc Hà', 'Hà', '28/09/1995', 'Nữ', 'huu.phuong195@gmail.com', '01672801928', 'Hoàng Mai, Hà Nội', 'Hoàng Mai, Hà Nội', 'Hà Nội', 'buingocha', '$2y$10$93pPjwfxYCAfC6qqdus49uRe4NmNHpy9Gg1B5mKCWP1zMfE/8mwza', 'Công tác tại Bộ', '', 'Ths.Bùi Ngọc Hà'),
('CB_276', 63, 2, 4, 1, 4, 4, 12, '\\upload\\avatar\\CB_276.jpg', 'Hien12345', 'Hien12345', '13/10/1999', 'Nam', 'hien0923497@gmail.com', '0323232326', '', '', '', 'hientq12345', '$2y$10$nRHWkI19VNjvG6iIPf5.heGwzJggPcCFL5OtWmBfEST1t806bB27.', '', '3LtHkVVmR5gJPPpmeGXXyZGmSjC08NmIvIWL36Lixuwx7PfC4BaKYy7KR5dI', '4.4.Hien12345'),
('CB_277', 64, 4, 4, 10, 4, 4, 12, '', 'Cu Duc Hien', 'Hien', '14/10/2020', 'Nữ', 'HIEN12123@GMAIL.COM', '031224151132', '', '', '', 'test1', '$2y$10$d5unLWCK0ZPNxODM91Oqoe/99djMpl6Qhp7pc3E.6Ba8X43w4U9si', '', '407LenvbKyn7jfUnLE9Q4V9LvdUruNNUJVGkAbAY14PGGnUX0t9o8S5yGRH6', '4.4.Cu Duc Hien'),
('CB_278', 75, 2, 3, 1, 2, 4, 3, '', 'Test1', 'Test1', '21/10/2020', 'Nam', '31313131@gmail.com', '0313131', '', '', '', 'test1', '$2y$10$XgrMgpyjNGK7/dsIqSNLaO9ZUZjLlZP0hVwezTNp8lYDFhrF8Wru.', '', '', ''),
('CB_279', 76, 3, 4, 6, 4, 4, 6, '', 'Test66', 'Test66', '22/10/2020', 'Nam', '3231231@gmail.com', '2133441', '', '', '', 'test66', '$2y$10$nM6JFWnYZKjRslg7JQUDUex0748.dJNrG.vM7WM1NZ7.9QOPwZ2cS', '', '', ''),
('CB_28', 33, 1, 4, 8, 3, 4, 1, 'upload/avatar/user.jpg', 'Cán bộ 28', 'Cán bộ 28', '12/02/1977', 'Nữ', 'huu.phuong195@gmail.com', '01697857530', NULL, NULL, NULL, 'FRUDpA6G', '$2y$10$pfBtzO0KRwQdPTNALaJJCe/PkfUF2jPONMBksh.vMtliYirdxF5b.', '', '', 'Ths.Cán bộ 28'),
('CB_280', 47, 2, 2, 3, 1, 1, 12, '', 'Minhquan', 'Minhquan', '13/05/1999', 'Nam', 'minhquan130599@gmail.com', '0342447444', 'Ha Noi', 'Thanh Hoa', 'Thanh Hoa', 'minhquan', '$2y$10$cpwmm/aaX6C4xLfrWJLV6.u3Cwa8VzIt7CNZqAlS9jb1PzquoZKd2', 'abc', 'XIqtce7XN71zm9rJmg8w0Wuq7FYD7w21zIgKw9wTjc79MEmmAEMHmT8XPUUL', '2.1.Minhquan'),
('CB_281', 75, 5, 3, 1, 4, 4, 4, '', 'Nguyenhoa', 'Nguyenhoa', '08/12/2020', 'Nữ', '1111@gmail.com', '11111', '', '', '', 'nguyenhoa', '$2y$10$jwp6iXgGXUT2j3oF7H9Afe3lkiSyeRX8U3AeYCx4zPLzTC1Zojg2u', '', 'PiQKP5xCjj0NisSp3FZdDg6yhgvDqY40T00YnOCMBwFpufBp1up800dM4zlm', ''),
('CB_29', 32, 1, 4, 1, 3, 4, 4, 'upload/avatar/user.jpg', 'Cán bộ 29', 'Cán bộ 29', '02/08/1970', 'Nam', 'huu.phuong195@gmail.com', '01267353786', NULL, NULL, NULL, 'hlZ1ybna', '$2y$10$wZh4PatXmQ.Q6cPc2Cp.7.3jS7XJJGlI.sfkNbX8Yf4gI1lo/zrNK', '', '', 'Ths.Cán bộ 29'),
('CB_30', 58, 1, 4, 3, 2, 4, 8, 'upload/avatar/user.jpg', 'Cán bộ 30', 'Cán bộ 30', '17/03/1981', 'Nam', 'huu.phuong195@gmail.com', '01211195203', NULL, NULL, NULL, 'woXbGCUw', '$2y$10$TeY4Tf05hBVHa9jWxTj6MeVXZ8UClJPyctaug1kC0IsU.H79Hgdha', '', '', 'Ths.Cán bộ 30'),
('CB_31', 71, 2, 4, 10, 2, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 31', 'Cán bộ 31', '08/07/1970', 'Nam', 'huu.phuong195@gmail.com', '0946062011', NULL, NULL, NULL, 'MPxW0cmI', '$2y$10$WOH0FKPYqg19exwbT5c5ZuiY7vVmkIicyIcnIibits4iQv.Lbh2vO', '', '', 'Ths.Cán bộ 31'),
('CB_32', 45, 1, 4, 10, 4, 4, 6, 'upload/avatar/user.jpg', 'Cán bộ 32', 'Cán bộ 32', '11/03/1979', 'Nữ', 'huu.phuong195@gmail.com', '01268502604', NULL, NULL, NULL, 'f0bEkrQP', '$2y$10$VMX4mNlvmIwTq7bqWCDpGOiGp4acN2LD8U8Xszt6ytHXGnYO36ZOC', '', '', 'Ths.Cán bộ 32'),
('CB_33', 48, 3, 4, 2, 4, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 33', 'Cán bộ 33', '29/09/1973', 'Nam', 'huu.phuong195@gmail.com', '01676165635', NULL, NULL, NULL, 'AHiKIFZ1', '$2y$10$YrmXoMYVXHICFG7jK3/fk.qDDYrSuzpYL6OYToX9SGiGsqhmOkPXK', '', '', 'Ths.Cán bộ 33'),
('CB_34', 25, 1, 4, 8, 2, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 34', 'Cán bộ 34', '23/12/1977', 'Nữ', 'huu.phuong195@gmail.com', '01281975640', NULL, NULL, NULL, 'VBJEZ7it', '$2y$10$vqgl395/GKYic/BR9hW1TuinDqQmjeBQJuQMUWIt8UZEEpzv9YuF.', '', '', 'Ths.Cán bộ 34'),
('CB_35', 35, 1, 4, 3, 4, 4, 13, 'upload/avatar/user.jpg', 'Cán bộ 35', 'Cán bộ 35', '08/01/1981', 'Nam', 'huu.phuong195@gmail.com', '01234982367', NULL, NULL, NULL, 'kpYEktbx', '$2y$10$4o6Nc2/YgeiN2YlC0aVhbOYMCNoBWfQF0yGHQDPIFlLNdvznqUdie', '', '', 'Ths.Cán bộ 35'),
('CB_36', 66, 3, 4, 2, 1, 4, 6, 'upload/avatar/user.jpg', 'Cán bộ 36', 'Cán bộ 36', '23/07/1983', 'Nam', 'huu.phuong195@gmail.com', '01675502929', NULL, NULL, NULL, '4ZzG3Hfn', '$2y$10$.NDxC2pXd83YoJXNFNDBPuQNikBkfJMdad2KvaVmNFtJPxryqWI3e', '', '', 'Ths.Cán bộ 36'),
('CB_37', 47, 5, 4, 9, 4, 4, 2, 'upload/avatar/user.jpg', 'Cán bộ 37', 'Cán bộ 37', '16/05/1979', 'Nam', 'huu.phuong195@gmail.com', '0978051215', NULL, NULL, NULL, 'UhLtTKWS', '$2y$10$QqWG9oZKzvo4Is97m938fuLK7x9UPx7Qv29N2YtZsDlOSQTlmlksu', '', '', 'Ths.Cán bộ 37'),
('CB_38', 60, 1, 4, 7, 3, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 38', 'Cán bộ 38', '21/08/1974', 'Nữ', 'huu.phuong195@gmail.com', '0983967013', NULL, NULL, NULL, '2acodIZy', '$2y$10$ExovcthD4vRzVmGgSLjVs.P0ji9sOM4tD2gQ79PylGu8pCt4m65ii', '', '', 'Ths.Cán bộ 38'),
('CB_39', 28, 4, 4, 9, 4, 4, 1, 'upload/avatar/user.jpg', 'Cán bộ 39', 'Cán bộ 39', '31/03/1977', 'Nữ', 'huu.phuong195@gmail.com', '01637121039', NULL, NULL, NULL, 'tTGyLMWn', '$2y$10$IsmYMqR5nC38jTtRhDWnx.x72tMoTnY7BoKu5FYh9wQgWkG5fwjee', '', '', 'Ths.Cán bộ 39'),
('CB_40', 50, 4, 4, 4, 4, 4, 3, 'upload/avatar/user.jpg', 'Cán bộ 40', 'Cán bộ 40', '04/04/1979', 'Nữ', 'huu.phuong195@gmail.com', '01285617675', NULL, NULL, NULL, 'DEDkyLu6', '$2y$10$CvpSvc/pW.cpdhmWNTi8UOI4DpVP5woFikpUYUFUfbCB1ElMW/JVa', '', '', 'Ths.Cán bộ 40'),
('CB_41', 42, 3, 4, 2, 1, 4, 10, 'upload/avatar/user.jpg', 'Cán bộ 41', 'Cán bộ 41', '30/10/1985', 'Nam', 'huu.phuong195@gmail.com', '01682622884', NULL, NULL, NULL, 'fZdp0cM0', '$2y$10$vVmh94Oh20UAeUa0hT41kuG9lxnKj7bH8x5YDSCPCq3PR/biZbpB.', '', '', 'Ths.Cán bộ 41'),
('CB_42', 63, 1, 4, 9, 4, 4, 13, 'upload/avatar/user.jpg', 'Cán bộ 42', 'Cán bộ 42', '23/05/1974', 'Nữ', 'huu.phuong195@gmail.com', '01231436903', NULL, NULL, NULL, 'EeMDBCQK', '$2y$10$fuk4Xk0cfS9VEMuGgR7CdOc1Yes269kmrF0.tmO3KoQWgS8aX8MxG', '', '', 'Ths.Cán bộ 42');
INSERT INTO `tblcanbo` (`pk_smacanbo`, `pk_imadantoc`, `pk_imatongiao`, `pk_imahh`, `pk_imacn`, `pk_imahv`, `pk_imanhomcb`, `pk_imadv`, `sanh`, `shodem`, `sten`, `sngaysinh`, `sgioitinh`, `semail`, `sdienthoai`, `sdiachi`, `shokhautt`, `squequan`, `stendn`, `password`, `sghichu`, `remember_token`, `shocvan`) VALUES
('CB_43', 76, 1, 4, 6, 3, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 43', 'Cán bộ 43', '27/02/1977', 'Nam', 'huu.phuong195@gmail.com', '0983833550', NULL, NULL, NULL, 'Et1zK5Gi', '$2y$10$fvKVu6qVgt8PrGDGF.uXHebTLfA.LDFsgJ/cKQRKmz2eE6SaTUUvW', '', '', 'Ths.Cán bộ 43'),
('CB_44', 68, 1, 4, 4, 2, 4, 2, 'upload/avatar/user.jpg', 'Cán bộ 44', 'Cán bộ 44', '30/04/1984', 'Nam', 'huu.phuong195@gmail.com', '0904936252', NULL, NULL, NULL, 'tzg41b2W', '$2y$10$cMNeUxWU.EjqRwl/gqOVuudgI28kxKKxsWs8lch5sxSskVMUkH2q2', '', '', 'Ths.Cán bộ 44'),
('CB_45', 43, 4, 4, 10, 4, 4, 9, 'upload/avatar/user.jpg', 'Cán bộ 45', 'Cán bộ 45', '01/08/1983', 'Nam', 'huu.phuong195@gmail.com', '01689803602', NULL, NULL, NULL, 'F06aeYOK', '$2y$10$khSiBewke.JZURRVMIjT0ekCsYC.9Q1i7.cihpfFwK1Iq6YmTJ4v6', '', '', 'Ths.Cán bộ 45'),
('CB_46', 33, 4, 4, 6, 2, 4, 7, 'upload/avatar/user.jpg', 'Cán bộ 46', 'Cán bộ 46', '03/09/1975', 'Nữ', 'huu.phuong195@gmail.com', '01278115776', NULL, NULL, NULL, 'WwWgvWXe', '$2y$10$lRsUX8wELqK/7NkSW7oRDej7CC9Zn3rtFQefe6b5Cw1MzBaIyEa6G', '', '', 'Ths.Cán bộ 46'),
('CB_47', 71, 1, 4, 3, 4, 4, 10, 'upload/avatar/user.jpg', 'Cán bộ 47', 'Cán bộ 47', '18/10/1972', 'Nữ', 'huu.phuong195@gmail.com', '01685206434', NULL, NULL, NULL, '48As2F7R', '$2y$10$XNj.vlgJP5ezWEf1j.B1oOTnqqtTHYHib0xYAGzh2l//VRjWXkFiW', '', '', 'Ths.Cán bộ 47'),
('CB_48', 36, 2, 4, 6, 4, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 48', 'Cán bộ 48', '06/08/1973', 'Nam', 'huu.phuong195@gmail.com', '01293115505', NULL, NULL, NULL, '6MLUypCh', '$2y$10$PwhDI6XqhHLy5J46Tvjz.OK7lYqIAaEOCH9oLiGnbTjeGA52AEtCK', '', '', 'Ths.Cán bộ 48'),
('CB_49', 67, 5, 4, 8, 4, 4, 2, 'upload/avatar/user.jpg', 'Cán bộ 49', 'Cán bộ 49', '02/03/1981', 'Nữ', 'huu.phuong195@gmail.com', '0987157931', NULL, NULL, NULL, 'f42r1mxY', '$2y$10$e8S3EIM.5mT11vd2UmM40eQ6VFgCALD3F/3jQ8wPZoxgFlo9hY7by', '', '', 'Ths.Cán bộ 49'),
('CB_50', 73, 2, 4, 4, 4, 4, 8, 'upload/avatar/user.jpg', 'Cán bộ 50', 'Cán bộ 50', '10/10/1971', 'Nam', 'huu.phuong195@gmail.com', '01224655490', NULL, NULL, NULL, 'n8GvOPa0', '$2y$10$7K7WbX/HQFC6BxH6VIPu5Oy7qbQmL4k.R.QJxNCU5mkieZYYUJmQu', '', '', 'Ths.Cán bộ 50'),
('CB_51', 24, 3, 4, 4, 4, 4, 10, 'upload/avatar/user.jpg', 'Cán bộ 51', 'Cán bộ 51', '17/05/1971', 'Nữ', 'huu.phuong195@gmail.com', '01258792588', NULL, NULL, NULL, 'J5zIJz2m', '$2y$10$qP98Qu/RlDyMJUIDa5K2TepJKvrsCUFF27EjJ3ZPo0UtBLEgf.t6S', '', '', 'Ths.Cán bộ 51'),
('CB_52', 48, 5, 4, 9, 3, 4, 3, 'upload/avatar/user.jpg', 'Cán bộ 52', 'Cán bộ 52', '15/10/1980', 'Nam', 'huu.phuong195@gmail.com', '01231809895', NULL, NULL, NULL, 'V2zOEJNt', '$2y$10$Cwv248vJ06ddRX4ZW4Iec.emVVWSYPPF7Dsgoc4cN5NPLFYqCdMeK', '', '', 'Ths.Cán bộ 52'),
('CB_53', 35, 5, 4, 2, 4, 4, 2, 'upload/avatar/user.jpg', 'Cán bộ 53', 'Cán bộ 53', '26/10/1975', 'Nữ', 'huu.phuong195@gmail.com', '01665001085', NULL, NULL, NULL, '8siGPcA9', '$2y$10$f5qwV1mV/1Fv7svjTq0DIe4JFfCQVhVW387sc87NTo2sftu8er/FW', '', '', 'Ths.Cán bộ 53'),
('CB_54', 68, 3, 4, 2, 2, 4, 7, 'upload/avatar/user.jpg', 'Cán bộ 54', 'Cán bộ 54', '03/10/1985', 'Nữ', 'huu.phuong195@gmail.com', '0916883951', NULL, NULL, NULL, 'u21qIu4n', '$2y$10$rFixdU54Ujxkiw1DEyRxYOM.Gu3aOPBbt3I6RipbxmhCUPy03BEuq', '', '', 'Ths.Cán bộ 54'),
('CB_55', 43, 3, 4, 5, 3, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 55', 'Cán bộ 55', '04/02/1971', 'Nam', 'huu.phuong195@gmail.com', '0967022026', NULL, NULL, NULL, 'HKXCP9uX', '$2y$10$aCjI4vULAGdWYmZcK8MiQ.K.BjgcxairTZrSYzP6sHbnLsFrtDLTm', '', '', 'Ths.Cán bộ 55'),
('CB_56', 47, 3, 4, 8, 4, 4, 8, 'upload/avatar/user.jpg', 'Cán bộ 56', 'Cán bộ 56', '19/09/1980', 'Nam', 'huu.phuong195@gmail.com', '01639998914', NULL, NULL, NULL, 'AFN6TW8h', '$2y$10$TEOVBdLpvMoKviPGoiD20.MHnn/ZJvUM13x2oWtRR10o86vPAtfFG', '', '', 'Ths.Cán bộ 56'),
('CB_57', 48, 5, 4, 2, 4, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 57', 'Cán bộ 57', '22/05/1971', 'Nữ', 'huu.phuong195@gmail.com', '0981872015', NULL, NULL, NULL, 'Uivx1M8V', '$2y$10$1n7glVhgzJJdvMXPvKOqrOouFCwWCaoKMLEyUoN/17Dv6XoWkdZqG', '', '', 'Ths.Cán bộ 57'),
('CB_58', 32, 2, 4, 9, 3, 4, 1, 'upload/avatar/user.jpg', 'Cán bộ 58', 'Cán bộ 58', '23/07/1979', 'Nam', 'huu.phuong195@gmail.com', '01259761827', NULL, NULL, NULL, '5SUhcmVg', '$2y$10$dM0lMnzomct2/y4QdyYkmuPuKtLZuSEoKHIV.haT85H3pxlujamuy', '', '', 'Ths.Cán bộ 58'),
('CB_59', 52, 4, 4, 8, 4, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 59', 'Cán bộ 59', '22/03/1981', 'Nam', 'huu.phuong195@gmail.com', '01661927354', NULL, NULL, NULL, '2P2cQsa4', '$2y$10$T6qtHXIzDMeBVEJ5NjpQouBJ260jcK6e4hJ4LllwdwEn3qyyEGnCi', '', '', 'Ths.Cán bộ 59'),
('CB_60', 33, 2, 4, 1, 4, 4, 6, 'upload/avatar/user.jpg', 'Cán bộ 60', 'Cán bộ 60', '04/08/1978', 'Nữ', 'huu.phuong195@gmail.com', '01299904785', NULL, NULL, NULL, '7w88FVy9', '$2y$10$NFeP1oIxIYdi.N/0uCgnt.gBAQmuU/a78a3H4xFlpByNweQKk8PAa', '', '', 'Ths.Cán bộ 60'),
('CB_61', 60, 2, 4, 1, 3, 4, 6, 'upload/avatar/user.jpg', 'Cán bộ 61', 'Cán bộ 61', '27/08/1975', 'Nam', 'huu.phuong195@gmail.com', '01274029134', NULL, NULL, NULL, '2QaXeGJs', '$2y$10$0OyLQqde61GpfrxwPZqgs.kRN7MISY4194Qfo5XF1.JCUNTkCrMfy', '', '', 'Ths.Cán bộ 61'),
('CB_62', 59, 1, 4, 2, 1, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 62', 'Cán bộ 62', '06/03/1977', 'Nam', 'huu.phuong195@gmail.com', '0966250813', NULL, NULL, NULL, 'ZLy9iGxO', '$2y$10$IUw5lUq/9I8GNS8XgwPQ5u.jZjc6t0DVNQzSM04Xkng50IZh.Iyci', '', '', 'Ths.Cán bộ 62'),
('CB_63', 24, 3, 4, 5, 1, 4, 3, 'upload/avatar/user.jpg', 'Cán bộ 63', 'Cán bộ 63', '28/01/1976', 'Nam', 'huu.phuong195@gmail.com', '01646508789', NULL, NULL, NULL, 'sIMoIisy', '$2y$10$4XC50zRhDehELZV.X4iOCeMfrKa/CgpJdzmuASCelL3bXnHKa0frm', '', '', 'Ths.Cán bộ 63'),
('CB_64', 30, 1, 4, 1, 1, 4, 10, 'upload/avatar/user.jpg', 'Cán bộ 64', 'Cán bộ 64', '12/12/1978', 'Nữ', 'huu.phuong195@gmail.com', '0977086588', NULL, NULL, NULL, 'TczAvi2t', '$2y$10$/C9Q6rLTTgSiFvB3ONVXr.w2Z9SRZNGWrSZAj1h7t8KSy2ea.tz7G', '', '', 'Ths.Cán bộ 64'),
('CB_65', 62, 4, 4, 7, 2, 4, 9, 'upload/avatar/user.jpg', 'Cán bộ 65', 'Cán bộ 65', '26/03/1985', 'Nữ', 'huu.phuong195@gmail.com', '01201409233', NULL, NULL, NULL, 'dc7vDnK3', '$2y$10$k4.qe3z8y6JXORN1goNXK.Qygbubr5GQvYNaiHDG6EBmNrsqUX1dq', '', '', 'Ths.Cán bộ 65'),
('CB_66', 26, 2, 4, 1, 1, 4, 7, 'upload/avatar/user.jpg', 'Cán bộ 66', 'Cán bộ 66', '04/05/1980', 'Nữ', 'huu.phuong195@gmail.com', '01663792317', NULL, NULL, NULL, 'PuVCATjF', '$2y$10$WLLbq2tAaNnHe5qV38VA3.15RK.bJgMc2kMVDz0Eg94Yqvvwzguiu', '', '', 'Ths.Cán bộ 66'),
('CB_67', 56, 2, 4, 4, 3, 4, 7, 'upload/avatar/user.jpg', 'Cán bộ 67', 'Cán bộ 67', '18/02/1983', 'Nam', 'huu.phuong195@gmail.com', '01644788953', NULL, NULL, NULL, '3GD2hpzx', '$2y$10$HJOY/frJvPlCEPGtB549aOhkdeRQpnXeCFtH1M7xOf2k7dsce7sH6', '', '', 'Ths.Cán bộ 67'),
('CB_68', 45, 2, 4, 5, 4, 4, 7, 'upload/avatar/user.jpg', 'Cán bộ 68', 'Cán bộ 68', '12/07/1979', 'Nam', 'huu.phuong195@gmail.com', '01298200954', NULL, NULL, NULL, 'fjzfQBUc', '$2y$10$XQK33YzymrVyioIgsfslu.bV4PGVl.c5CI2uGpRIiP90HYmn6OEs2', '', '', 'Ths.Cán bộ 68'),
('CB_69', 59, 1, 4, 4, 3, 4, 13, 'upload/avatar/user.jpg', 'Cán bộ 69', 'Cán bộ 69', '24/09/1984', 'Nữ', 'huu.phuong195@gmail.com', '01202293294', NULL, NULL, NULL, 'Ips6OynT', '$2y$10$Jb.Y6eizUsaxGqcENilrbuUfBbgvwco4G1wZ/sXWobOJY5vFHx5Cq', '', '', 'Ths.Cán bộ 69'),
('CB_70', 42, 5, 4, 4, 1, 4, 8, 'upload/avatar/user.jpg', 'Cán bộ 70', 'Cán bộ 70', '13/02/1976', 'Nữ', 'huu.phuong195@gmail.com', '01243976236', NULL, NULL, NULL, 'yNG3KPHo', '$2y$10$ZsTFHG41pg5KVBs.JMisCeI68Y4gyMm4XWGynB.Qg4GvSF2Om.UE.', '', '', 'Ths.Cán bộ 70'),
('CB_71', 76, 4, 4, 9, 4, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 71', 'Cán bộ 71', '01/08/1979', 'Nữ', 'huu.phuong195@gmail.com', '01262620171', NULL, NULL, NULL, 'vo3zibeJ', '$2y$10$SbIiXLfHgzj3ZtB6.0oWAekDzYoPGF55wqLblUwqJV9AYjbD73SDS', '', '', 'Ths.Cán bộ 71'),
('CB_72', 52, 5, 4, 3, 4, 4, 7, 'upload/avatar/user.jpg', 'Cán bộ 72', 'Cán bộ 72', '08/10/1979', 'Nữ', 'huu.phuong195@gmail.com', '0905007595', NULL, NULL, NULL, 'Z5He2AtX', '$2y$10$XNK0z/UW96nzhqAu6zUXxOUsVoffRncHe7LK.uRygQbxwuNwgCHIC', '', '', 'Ths.Cán bộ 72'),
('CB_73', 32, 5, 4, 7, 2, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 73', 'Cán bộ 73', '12/08/1977', 'Nam', 'huu.phuong195@gmail.com', '01281271158', NULL, NULL, NULL, '22vqT8aq', '$2y$10$Ft42O8B30y6eHD3pb2vb1.mBgaWGATVAvwuO6NYS2YpGL.xCmelYm', '', '', 'Ths.Cán bộ 73'),
('CB_74', 43, 2, 4, 6, 1, 4, 12, 'upload/avatar/user.jpg', 'Cán bộ 74', 'Cán bộ 74', '06/02/1971', 'Nữ', 'huu.phuong195@gmail.com', '01292843695', NULL, NULL, NULL, 'WEqmpdMF', '$2y$10$WD.Qn2D2smmVjdpQXN3B3OE/NnIU1mhJgHe/u20oGdZEHRBD4AjPO', '', '', 'Ths.Cán bộ 74'),
('CB_75', 66, 2, 4, 6, 3, 4, 5, 'upload/avatar/user.jpg', 'Cán bộ 75', 'Cán bộ 75', '09/05/1973', 'Nữ', 'huu.phuong195@gmail.com', '01288247070', NULL, NULL, NULL, 'xSoOv8uN', '$2y$10$QWLy6.xlN/mJzVS8LvSIb.zLnAPYTwQCpMmY/.lw7xIXnfiyU1WH2', '', '', 'Ths.Cán bộ 75'),
('CB_76', 76, 1, 4, 5, 4, 4, 9, 'upload/avatar/user.jpg', 'Cán bộ 76', 'Cán bộ 76', '12/01/1975', 'Nam', 'huu.phuong195@gmail.com', '01634869520', NULL, NULL, NULL, 'jlchtd26', '$2y$10$BDRyHyAATVsJa7N2XPQ5seSi.4ltJ2MT9NPvQhGCjm9Kk5y4EQsPy', '', '', 'Ths.Cán bộ 76'),
('CB_77', 67, 2, 4, 5, 1, 4, 6, 'upload/avatar/user.jpg', 'Cán bộ 77', 'Cán bộ 77', '04/02/1981', 'Nam', 'huu.phuong195@gmail.com', '01273598632', NULL, NULL, NULL, 'RUzCMlja', '$2y$10$SvuLm02QDPr.kzRv3T6jlek2W8Iw9wAzb3FITwniQe6lP1v9dfZCa', '', '', 'Ths.Cán bộ 77'),
('CB_78', 74, 5, 4, 8, 3, 4, 12, 'upload/avatar/user.jpg', 'Cán bộ 78', 'Cán bộ 78', '21/11/1971', 'Nữ', 'huu.phuong195@gmail.com', '01692256401', NULL, NULL, NULL, 'nj6kF6VY', '$2y$10$E3d/icSTVwtnpsvs6qxyCuIDMarKhCAtKTsMcBLgiesdkzEaRyJbK', '', '', 'Ths.Cán bộ 78'),
('CB_79', 39, 5, 4, 6, 2, 4, 10, 'upload/avatar/user.jpg', 'Cán bộ 79', 'Cán bộ 79', '25/08/1982', 'Nam', 'huu.phuong195@gmail.com', '01699293891', NULL, NULL, NULL, '59Geg6WK', '$2y$10$JpQpVJvfiobWHDKjP.RdeuoGyl1Ab1gqGLinsuJbj.HBuVD075NpG', '', '', 'Ths.Cán bộ 79'),
('CB_80', 69, 3, 4, 5, 3, 4, 10, 'upload/avatar/user.jpg', 'Cán bộ 80', 'Cán bộ 80', '26/02/1983', 'Nữ', 'huu.phuong195@gmail.com', '01681299099', NULL, NULL, NULL, 'eQBPhgRK', '$2y$10$4A23CCYFRQVIwNxMHouN8eQjtZEnNHbpXY9W1Mk.NuQYuiBXID/06', '', '', 'Ths.Cán bộ 80'),
('CB_81', 38, 1, 4, 4, 2, 4, 8, 'upload/avatar/user.jpg', 'Cán bộ 81', 'Cán bộ 81', '30/05/1970', 'Nữ', 'huu.phuong195@gmail.com', '01245470377', NULL, NULL, NULL, 'Mr9i3wMG', '$2y$10$ZhuA8.L5GbW6egFTn4TGSeMLPtmeqgdFMVqBniDnGU6Vr6.y.JJZS', '', '', 'Ths.Cán bộ 81'),
('CB_82', 60, 2, 4, 8, 1, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 82', 'Cán bộ 82', '28/04/1985', 'Nam', 'huu.phuong195@gmail.com', '01637986653', NULL, NULL, NULL, 'k5WJyNQq', '$2y$10$spRaBJ9U/f1VNPYUNucRjuUbreXHYx2w.GA1Gwbsgz9FF./WOrETS', '', '', 'Ths.Cán bộ 82'),
('CB_83', 43, 1, 4, 8, 2, 4, 1, 'upload/avatar/user.jpg', 'Cán bộ 83', 'Cán bộ 83', '27/09/1981', 'Nữ', 'huu.phuong195@gmail.com', '01637199435', NULL, NULL, NULL, '3hP3GuJs', '$2y$10$Lnzt0Npr6mKwR8TKqkfMoeJUuqrQmQcvtnpysNAkNdxk.PyLtZRSq', '', '', 'Ths.Cán bộ 83'),
('CB_84', 25, 5, 4, 4, 1, 4, 10, 'upload/avatar/user.jpg', 'Cán bộ 84', 'Cán bộ 84', '20/05/1983', 'Nữ', 'huu.phuong195@gmail.com', '01237942979', NULL, NULL, NULL, 'Ywxka9EM', '$2y$10$N25wz61SREj.0iuo8WkMBO.i98GKAInfGgSSJJgdlfdIjzx2hVdB6', '', '', 'Ths.Cán bộ 84'),
('CB_85', 39, 4, 4, 7, 4, 4, 1, 'upload/avatar/user.jpg', 'Cán bộ 85', 'Cán bộ 85', '11/09/1985', 'Nam', 'huu.phuong195@gmail.com', '01695196397', NULL, NULL, NULL, 'ORt2lRSm', '$2y$10$FmJPzlJ4quQ7E1MxWiK2UeZ8jWWYXQmvAWSBjDXDAHLmwisnqTBWO', '', '', 'Ths.Cán bộ 85'),
('CB_86', 68, 4, 4, 1, 2, 4, 9, 'upload/avatar/user.jpg', 'Cán bộ 86', 'Cán bộ 86', '27/05/1980', 'Nữ', 'huu.phuong195@gmail.com', '01239229871', NULL, NULL, NULL, 'Bh7JzMJe', '$2y$10$lZnXhPyheBxYlRzN1CzJZ./k9ajERsaWtBWf70exzxAuYDxT4aAJ.', '', '', 'Ths.Cán bộ 86'),
('CB_87', 30, 4, 4, 4, 3, 4, 8, 'upload/avatar/user.jpg', 'Cán bộ 87', 'Cán bộ 87', '14/09/1970', 'Nữ', 'huu.phuong195@gmail.com', '01273368598', NULL, NULL, NULL, 'Nki7Jp2q', '$2y$10$..JS23klofQubxfghEWERu3BQ12xvlSkJe/j20ffTuPLjjCZJLeDW', '', '', 'Ths.Cán bộ 87'),
('CB_88', 41, 1, 4, 6, 4, 4, 13, 'upload/avatar/user.jpg', 'Cán bộ 88', 'Cán bộ 88', '30/07/1971', 'Nam', 'huu.phuong195@gmail.com', '01266773545', NULL, NULL, NULL, '33NosmL4', '$2y$10$XfMX4t6ymKjRyptbvOVTXOvhC6Ue.84YVCC5bwK2syU02a6l2Jo/y', '', '', 'Ths.Cán bộ 88'),
('CB_89', 25, 1, 4, 10, 1, 4, 2, 'upload/avatar/user.jpg', 'Cán bộ 89', 'Cán bộ 89', '13/01/1977', 'Nữ', 'huu.phuong195@gmail.com', '01667563476', NULL, NULL, NULL, 'Jv5Q54xx', '$2y$10$iyrR3EGzpdu/qnvrUdcAWOC8/ZK1..YmE5/sp.T9sAyvAqPRRj47e', '', '', 'Ths.Cán bộ 89'),
('CB_90', 37, 2, 4, 9, 1, 4, 2, 'upload/avatar/user.jpg', 'Cán bộ 90', 'Cán bộ 90', '29/10/1978', 'Nam', 'huu.phuong195@gmail.com', '0905106608', NULL, NULL, NULL, 'cM64SA1E', '$2y$10$BdEq9ucdfiZAzwP3.e1W0eQf9dGlO09VqfQ9UUFoUAhFNpYWAeNr.', '', '', 'Ths.Cán bộ 90'),
('CB_91', 44, 3, 4, 5, 1, 4, 4, 'upload/avatar/user.jpg', 'Cán bộ 91', 'Cán bộ 91', '26/05/1985', 'Nữ', 'huu.phuong195@gmail.com', '01699868706', NULL, NULL, NULL, 'QuVz12hG', '$2y$10$eZTWCwMFHj1m/iAEEA7hn.skmvh76ZKdWIKsmgLld/ushfULa6ZBq', '', '', 'Ths.Cán bộ 91'),
('CB_92', 26, 2, 4, 7, 2, 4, 8, 'upload/avatar/user.jpg', 'Cán bộ 92', 'Cán bộ 92', '23/09/1975', 'Nữ', 'huu.phuong195@gmail.com', '0981365559', NULL, NULL, NULL, 'FSqCsdep', '$2y$10$rhV8W.p5yACUuWG4O79bIe9MXjjyBtMIih70H7ILwTUoUj0NnkkQy', '', '', 'Ths.Cán bộ 92'),
('CB_93', 38, 3, 4, 9, 3, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 93', 'Cán bộ 93', '18/03/1970', 'Nam', 'huu.phuong195@gmail.com', '01258454047', NULL, NULL, NULL, 'GuXv971y', '$2y$10$KCNys2dJiBoKEspYoEajseXolIsgG7.O2aXz9iopGwXD65eqgeMAW', '', '', 'Ths.Cán bộ 93'),
('CB_94', 50, 5, 4, 3, 1, 4, 9, 'upload/avatar/user.jpg', 'Cán bộ 94', 'Cán bộ 94', '14/11/1985', 'Nữ', 'huu.phuong195@gmail.com', '01638840874', NULL, NULL, NULL, '6Ebzh7vx', '$2y$10$2oR7sN6Kn5ZNhuzL3bDCuO2SllthXEJLnv17K8pYhcUkJDNi.pupa', '', '', 'Ths.Cán bộ 94'),
('CB_95', 51, 3, 4, 8, 1, 4, 1, 'upload/avatar/user.jpg', 'Cán bộ 95', 'Cán bộ 95', '27/10/1975', 'Nam', 'huu.phuong195@gmail.com', '01695701497', NULL, NULL, NULL, 'GkDhHFBK', '$2y$10$ImE2IsHP4m0PG1wQonJWG.TzGFUTJY9nyvipZ/c0DbcQW4WsLceja', '', '', 'Ths.Cán bộ 95'),
('CB_96', 37, 1, 4, 1, 1, 4, 11, 'upload/avatar/user.jpg', 'Cán bộ 96', 'Cán bộ 96', '18/06/1983', 'Nữ', 'huu.phuong195@gmail.com', '01297614203', NULL, NULL, NULL, 'A7jK7mBH', '$2y$10$WL97sWKr1wKD.q7LE6qsMuXkopSblqj2EN4S6f99NWH1DDY7wxzbu', '', '', 'Ths.Cán bộ 96'),
('CB_97', 24, 4, 4, 9, 1, 4, 4, 'upload/avatar/user.jpg', 'Cán bộ 97', 'Cán bộ 97', '29/08/1973', 'Nữ', 'huu.phuong195@gmail.com', '0989589029', NULL, NULL, NULL, '4kA1AhXG', '$2y$10$kuXb8PCQivSUoh/Xil66..Uh98LQTXKInc457eFLTb.TXjDJaJcJO', '', '', 'Ths.Cán bộ 97'),
('CB_98', 31, 5, 4, 2, 2, 4, 2, 'upload/avatar/user.jpg', 'Cán bộ 98', 'Cán bộ 98', '03/08/1970', 'Nam', 'huu.phuong195@gmail.com', '0941943359', NULL, NULL, NULL, 'i7wCxArq', '$2y$10$xXdkJpXCsj5JbRhUNDJZRu4ONIDXXPZ3AN08eiPcjlJ.NlMHekvZ.', '', '', 'Ths.Cán bộ 98'),
('CB_99', 25, 3, 4, 5, 2, 4, 7, 'upload/avatar/user.jpg', 'Cán bộ 99', 'Cán bộ 99', '01/11/1973', 'Nam', 'huu.phuong195@gmail.com', '01674004177', NULL, NULL, NULL, 'lj1CF29B', '$2y$10$ag2Q04sV3XpcIPGniI74lepszHFrrOg9.0ijwgbq5GrbCjDVtd.mK', '', '', 'Ths.Cán bộ 99');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcanbonckh_ap`
--

CREATE TABLE `tblcanbonckh_ap` (
  `pk_imaap` int(11) NOT NULL,
  `pk_smacanbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `stenanpham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `snamxuatban` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcanbonckh_ap`
--

INSERT INTO `tblcanbonckh_ap` (`pk_imaap`, `pk_smacanbo`, `stenanpham`, `snamxuatban`, `sghichu`) VALUES
(1, 'CB_01', 'Sách hướng dẫn', '2015', 'Phát hành nội bộ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcanbonckh_ctdt`
--

CREATE TABLE `tblcanbonckh_ctdt` (
  `pk_imactdt` int(11) NOT NULL,
  `pk_smacanbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `skhoangthoigian` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `stencongtrinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `svitricongviec` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ssanpham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcanbonckh_ctdt`
--

INSERT INTO `tblcanbonckh_ctdt` (`pk_imactdt`, `pk_smacanbo`, `skhoangthoigian`, `stencongtrinh`, `svitricongviec`, `ssanpham`, `sghichu`) VALUES
(1, 'CB_01', '03/2015 - 03-2016', 'Đề xuất công tác chọn mẫu', 'Chủ dự án', 'ABC', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcanbonckh_qtbd`
--

CREATE TABLE `tblcanbonckh_qtbd` (
  `pk_imaqtbd` int(11) NOT NULL,
  `pk_smacanbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `skhoangthoigian` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `skhoahoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shinhthuc` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `schungchi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcanbonckh_qtbd`
--

INSERT INTO `tblcanbonckh_qtbd` (`pk_imaqtbd`, `pk_smacanbo`, `skhoangthoigian`, `skhoahoc`, `shinhthuc`, `schungchi`, `sghichu`) VALUES
(1, 'CB_01', '09/2014/09/2015', 'Lập trình phần mềm', 'Chính quy', 'có giá trị toàn quốc', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcanbonckh_qtcm`
--

CREATE TABLE `tblcanbonckh_qtcm` (
  `pk_imaqtcm` int(11) NOT NULL,
  `pk_smacanbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `skhoangthoigian` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `stentruong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schuyennganhdaotao` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shinhthucdaotao` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `svanbang` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcanbonckh_qtcm`
--

INSERT INTO `tblcanbonckh_qtcm` (`pk_imaqtcm`, `pk_smacanbo`, `skhoangthoigian`, `stentruong`, `schuyennganhdaotao`, `shinhthucdaotao`, `svanbang`, `sghichu`) VALUES
(21, 'CB_01', '10/2015 - 10/2016', 'Viện Mở', 'Công nghệ thông tin', 'Đại học chính quy', 'Cử nhân', 'Đã tốt nghiệp'),
(22, 'CB_01', '10/2015 - 10/2016', '12312312', '23123123', '123213213', '213123', '21312312312');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcanbonckh_qtct`
--

CREATE TABLE `tblcanbonckh_qtct` (
  `pk_imaqtct` int(11) NOT NULL,
  `pk_smacanbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `skhoangthoigian` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `smota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcanbonckh_qtct`
--

INSERT INTO `tblcanbonckh_qtct` (`pk_imaqtct`, `pk_smacanbo`, `skhoangthoigian`, `smota`, `sghichu`) VALUES
(2, 'CB_02', '05/2016 - 12/2016', 'Quá trình công tác', 'Cấp chứng chỉ công tác'),
(5, 'CB_01', '10/2015 - 10/2016', 'Công tác tại Viện ĐH Mở Hà Nội', 'Đã tốt nghiệp'),
(12, 'CB_01', '10/2015 - 10/2016', 'Working Business', 'Note');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcapdv`
--

CREATE TABLE `tblcapdv` (
  `pk_imacapdv` int(11) NOT NULL,
  `stencapdv` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `ivitrihienthi` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcapdv`
--

INSERT INTO `tblcapdv` (`pk_imacapdv`, `stencapdv`, `ivitrihienthi`) VALUES
(1, 'Cấp Nhà nước', 1),
(2, 'Cấp Bộ', 2),
(3, 'Cấp Viện', 3),
(4, 'Cấp trung tâm', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblchuyenmuc`
--

CREATE TABLE `tblchuyenmuc` (
  `pk_imachuyenmuc` int(11) NOT NULL,
  `fk_imalv` int(11) NOT NULL,
  `stenchuyenmuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `smota` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblchuyenmuc`
--

INSERT INTO `tblchuyenmuc` (`pk_imachuyenmuc`, `fk_imalv`, `stenchuyenmuc`, `smota`) VALUES
(1, 1, 'Khoa học và đời sống', 'Khoa học và đời sống'),
(2, 2, 'Trí Tuệ Nhân Tạo', 'Trí Tuệ Nhân Tạo'),
(3, 3, 'Công Nghệ Và Cuộc Sống', 'Công Nghệ Và Cuộc Sống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblchuyennganh`
--

CREATE TABLE `tblchuyennganh` (
  `pk_imacn` int(11) NOT NULL,
  `stencn` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblchuyennganh`
--

INSERT INTO `tblchuyennganh` (`pk_imacn`, `stencn`) VALUES
(1, 'Sở hữu trí tuệ'),
(2, 'Tự nhiên'),
(3, 'Kỹ thuật'),
(4, 'Môi trường'),
(5, 'Kinh tế; XH-NV'),
(6, 'Nông lâm'),
(7, 'ATLĐ'),
(8, 'Giáo dục'),
(9, 'Y dược'),
(10, 'Chuyên ngành khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldangkybaove`
--

CREATE TABLE `tbldangkybaove` (
  `pk_imadkbv` int(10) UNSIGNED NOT NULL,
  `fk_imadt` int(11) NOT NULL,
  `nguoidangky` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldangkybaove`
--

INSERT INTO `tbldangkybaove` (`pk_imadkbv`, `fk_imadt`, `nguoidangky`, `created_at`, `updated_at`) VALUES
(1, 213, 'Ths.Hữu Phương', '2016-09-21 06:05:45', NULL),
(2, 103, 'Ths.Hữu Phương', '2016-09-21 06:05:45', NULL),
(3, 181, 'Ths.Hữu Phương', '2016-09-21 06:05:45', NULL),
(4, 162, 'Ths.Hữu Phương', '2016-09-21 06:05:45', NULL),
(6, 11, 'Ths.Hữu Phương', '2016-09-21 06:05:45', NULL),
(7, 197, 'Ths.Hữu Phương', '2016-09-21 06:05:45', NULL),
(8, 61, 'Ths.Hữu Phương', '2016-09-21 06:05:45', NULL),
(9, 15, 'Ths.Hữu Phương', '2016-09-21 06:05:45', NULL),
(10, 105, 'Ths.Hữu Phương', '2016-10-05 14:45:28', NULL),
(11, 75, 'Ths.Hữu Phương', '2016-10-05 14:45:28', NULL),
(12, 17, 'Ths.Hữu Phương', '2016-10-05 14:45:28', NULL),
(15, 230, '', '2020-10-15 03:33:25', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldantoc`
--

CREATE TABLE `tbldantoc` (
  `pk_imadantoc` int(11) NOT NULL,
  `stendantoc` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ivitrihienthi` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldantoc`
--

INSERT INTO `tbldantoc` (`pk_imadantoc`, `stendantoc`, `ivitrihienthi`) VALUES
(1, 'Ba Na', 0),
(6, 'Bố Y', 0),
(7, 'Brâu', 0),
(8, 'Bru', 0),
(24, 'Cao Lan', 0),
(25, 'Chăm', 0),
(26, 'Chơ Ro', 0),
(27, 'Chu Ru', 0),
(28, 'Chứt', 0),
(29, 'Co', 0),
(30, 'Cơ Ho', 0),
(31, 'Cờ Lao', 0),
(32, 'Cơ Tu', 0),
(33, 'Cống', 0),
(34, 'Dao', 0),
(35, 'Ê đê', 0),
(36, 'Gia Rai', 0),
(37, 'Giáy ', 0),
(38, 'Giẻ Triêng', 0),
(39, 'Hà Nhì', 0),
(40, 'HMông', 0),
(41, 'Hoa', 0),
(42, 'Hrê', 0),
(43, 'Khác', 0),
(44, 'Kháng', 0),
(45, 'Khmer', 0),
(46, 'Khơ Mú', 0),
(47, 'Kinh', 1),
(48, 'La Chí', 0),
(49, 'La Ha', 0),
(50, 'La Hủ', 0),
(51, 'Lào', 0),
(52, 'Lô Lô', 0),
(53, 'Lự', 0),
(54, 'Mạ', 0),
(55, 'Mảng', 0),
(56, 'MNông', 0),
(57, 'Mường', 0),
(58, 'Ngái', 0),
(59, 'Nùng', 0),
(60, 'Ơđu', 0),
(61, 'Pà Thẻn', 0),
(62, 'Phù Lá', 0),
(63, 'Pu Péo', 0),
(64, 'Ra Glai', 0),
(65, 'Rơ Măm', 0),
(66, 'Sán Chay', 0),
(67, 'San Chí', 0),
(68, 'Sán Dìu', 0),
(69, 'Si La', 0),
(70, 'Tà Ôi', 0),
(71, 'Tày', 0),
(72, 'Thái', 0),
(73, 'Thổ', 0),
(74, 'Xinh Mun', 0),
(75, 'Xơ Đăng', 0),
(76, 'XTiêng', 0),
(77, 'H\'mông', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldetai`
--

CREATE TABLE `tbldetai` (
  `pk_imadt` int(11) NOT NULL,
  `fk_smaloainam` int(11) NOT NULL,
  `pk_imatt` int(11) NOT NULL,
  `pk_imattcu` tinyint(4) DEFAULT NULL,
  `pk_smaldt` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pk_smalh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pk_imalv` int(11) NOT NULL,
  `smasodetai` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `stendt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dngaybd` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dngaykt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dngayrahan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `smuctieu` text COLLATE utf8_unicode_ci NOT NULL,
  `ssanpham` text COLLATE utf8_unicode_ci NOT NULL,
  `scapthiet` text COLLATE utf8_unicode_ci NOT NULL,
  `snoidungdaicuong` text COLLATE utf8_unicode_ci NOT NULL,
  `sphuongphap` text COLLATE utf8_unicode_ci NOT NULL,
  `sketcaudetai` text COLLATE utf8_unicode_ci NOT NULL,
  `sdonggopchinh` text COLLATE utf8_unicode_ci,
  `sketluan` text COLLATE utf8_unicode_ci,
  `sphamvi` text COLLATE utf8_unicode_ci,
  `sdcungdung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fcptong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bsendmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dngaycapgiaycn` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldetai`
--

INSERT INTO `tbldetai` (`pk_imadt`, `fk_smaloainam`, `pk_imatt`, `pk_imattcu`, `pk_smaldt`, `pk_smalh`, `pk_imalv`, `smasodetai`, `stendt`, `dngaybd`, `dngaykt`, `dngayrahan`, `smuctieu`, `ssanpham`, `scapthiet`, `snoidungdaicuong`, `sphuongphap`, `sketcaudetai`, `sdonggopchinh`, `sketluan`, `sphamvi`, `sdcungdung`, `fcptong`, `bsendmail`, `updated_at`, `dngaycapgiaycn`) VALUES
(11, 1, 6, 0, 'LDT_01', '1', 3, 'MHN00192019', 'Tác động của quản lý hành chính công đến quản lý nhà nước về giáo dục ở một số nước', '1456808400', '1488344400', '', '<p>Nghi&ecirc;n cứu nhằm chỉ ra những t&aacute;c động của quản l&yacute; h&agrave;nh ch&iacute;nh c&ocirc;ng tới quản l&yacute; nh&agrave; nước về gi&aacute;o dục ở c&aacute;c quốc gia, r&uacute;t ra những b&agrave;i học kinh nghiệm về quản l&yacute; nh&agrave; nước về gi&aacute;o dục.</p>\r\n', '<p style=\"text-align: justify;\">Gi&aacute;o dục l&agrave; một lĩnh vực dịch vụ cả c&ocirc;ng v&agrave; tư, do vậy bị chi phối của hoạt động quản l&yacute; c&ocirc;ng ở bất kỳ quốc gia n&agrave;o, điều n&agrave;y l&agrave;m cho những thay đổi của quản l&ya', '<p style=\"text-align: justify;\">Theo quan điểm hệ thống, quản l&yacute; nh&agrave; nước về gi&aacute;o dục cũng c&oacute; t&iacute;nh hệ thống như c&aacute;c hoạt động quản l&yacute; kh&aacute;c của nh&agrave; nước. Tuy nhi&ecirc;n, quản l&yacute; nh&agrave; nước về gi&aacute;o dục c&oacute; những kh&aacute;c biệt khi c&aacute;c hoạt động - h&agrave;nh vi li&ecirc;n quan đến gi&aacute;o dục v&agrave; vận h&agrave;nh gi&aacute;o dục mang t&iacute;nh đặc th&ugrave;, v&iacute; dụ sản phẩm gi&aacute;o dục l&agrave; nh&acirc;n c&aacute;ch người học. Hơn nữa, mỗi quốc gia lại c&oacute; những đặc trưng kinh tế - x&atilde; hội v&agrave; c&aacute;c yếu tố kh&aacute;c chi phối hoạt động quản l&yacute; nh&agrave; nước về gi&aacute;o dục.<br />\r\n<br />\r\nTrong bối cảnh mới, nền kinh tế nước ta cần một hệ thống gi&aacute;o dục hiện đại, m&ocirc; h&igrave;nh quản l&yacute; nh&agrave; nước về gi&aacute;o dục ph&ugrave; hợp c&oacute; thể tạo điều kiện v&agrave; cơ hội, nhu cầu học tập cho mọi người d&acirc;n, đồng thời nhằm tạo ra sự hội nhập của gi&aacute;o dục nước ta với gi&aacute;o dục c&aacute;c nước trong khu vực v&agrave; thế giới trong tương lai gần. Hiện nay, khi c&ugrave;ng tồn tại hệ thống gi&aacute;o dục tại Việt Nam l&agrave; hệ thống gi&aacute;o dục c&ocirc;ng lập đang thay đổi nhanh ch&oacute;ng; xuất hiện ng&agrave;y c&agrave;ng nhiều c&aacute;c cơ sở/loại h&igrave;nh gi&aacute;o dục tư nh&acirc;n, doanh nghiệp gi&aacute;o dục cả trong nước v&agrave; quốc tế; nhiều lựa chọn hơn nhưng cũng c&oacute; nhiều rủi ro hơn cho người học&hellip; tất cả phụ thuộc chủ yếu v&agrave;o quản l&yacute; nh&agrave; nước về gi&aacute;o dục.<br />\r\n<br />\r\nQuan trọng hơn, gi&aacute;o dục cũng l&agrave; một lĩnh vực dịch vụ, do đ&oacute; n&oacute; chịu sự chi phối của những thay đổi trong quản l&yacute; c&ocirc;ng hiện nay từ c&aacute;c mối quan hệ quốc tế của đất nước cũng như đ&ograve;i hỏi của dịch vụ c&ocirc;ng của gi&aacute;o dục trong nước. Hơn nữa, để x&aacute;c định r&otilde; hơn những ảnh hưởng của quản l&yacute; c&ocirc;ng với gi&aacute;o dục l&agrave;m cơ sở cho những thay đổi về quản l&yacute; nh&agrave; nước đối với gi&aacute;o dục trở n&ecirc;n cấp thiết hơn bao giờ hết. Do vậy, để chỉ ra những ảnh hưởng với nội dung cụ thể l&agrave; g&igrave;? Kinh nghiệm quốc tế về mối quan hệ giữa h&agrave;nh ch&iacute;nh c&ocirc;ng v&agrave; gi&aacute;o dục như thế n&agrave;o m&agrave; Việt Nam cần tiếp biến?... Cho n&ecirc;n đ&acirc;y l&agrave; vấn đề cần được nghi&ecirc;n cứu để g&oacute;p phần đổi mới quản l&yacute; nh&agrave; nước về gi&aacute;o dục của Việt Nam trong bối cảnh hội nhập quốc tế v&agrave; vận h&agrave;nh cơ chế thị trường theo định hướng của Nh&agrave; nước.</p>\r\n', '<p>- Hệ thống kh&aacute;i niệm v&agrave; c&aacute;c thuật ngữ li&ecirc;n quan<br />\r\n- T&aacute;c động của quản l&yacute; h&agrave;nh ch&iacute;nh c&ocirc;ng đến quản l&yacute; nh&agrave; nước về gi&aacute;o dục<br />\r\n- T&aacute;c động của h&agrave;nh ch&iacute;nh c&ocirc;ng tới quản l&yacute; nh&agrave; nước về gi&aacute;o dục ở một số quốc gia<br />\r\n- So s&aacute;nh v&agrave; nhận x&eacute;t.</p>\r\n', '<p>Phương ph&aacute;p nghi&ecirc;n cứu được sử dụng trong đề t&agrave;i gồm: nghi&ecirc;n cứu l&yacute; luận v&agrave; nghi&ecirc;n cứu so s&aacute;nh.</p>\r\n', '<p>Nội dung đề t&agrave;i: đề t&agrave;i gồm 3 chương:<br />\r\n<br />\r\n<em>Chương 1. Quản l&yacute; c&ocirc;ng v&agrave; quản l&yacute; c&ocirc;ng mới</em><br />\r\n<br />\r\n1.1. Tổng quan vấn đề nghi&ecirc;n cứu<br />\r\n1.2. Kh&aacute;i niệm v&agrave; c&aacute;c thuật ngữ li&ecirc;n quan&nbsp;<br />\r\n<br />\r\n<em>Chương 2. T&aacute;c động của quản l&yacute; c&ocirc;ng mới đến quản l&yacute; nh&agrave; nước về gi&aacute;o dục đại học ở một số nước</em><br />\r\n<br />\r\n2.1. C&aacute;c quốc gia ch&acirc;u &Acirc;u&nbsp;<br />\r\n2.2. C&aacute;c quốc gia ch&acirc;u &Aacute;<br />\r\n<br />\r\n<em>Chương 3. So s&aacute;nh</em><br />\r\n<br />\r\n3.1. Những điểm tương đồng<br />\r\n3.2. Những kh&aacute;c biệt</p>\r\n', NULL, NULL, NULL, NULL, '6000000', '', '2020-10-13 21:52:48', ''),
(12, 1, 6, 0, 'LDT_01', '2', 5, 'MHN0012311', 'Định hướng vận dụng chương trình giáo dục phổ thông để xây dựng chương trình giáo dục thường xuyên', '1456808400', '1488344400', '', '<p>Nghi&ecirc;n cứu đề xuất những định hướng vận dụng chương tr&igrave;nh Gi&aacute;o dục phổ th&ocirc;ng để x&acirc;y dựng chương tr&igrave;nh Gi&aacute;o dục thường xuy&ecirc;n sau 2015.&nbsp;</p>\r\n', '<p style=\"text-align: justify;\">Đề t&agrave;i nghi&ecirc;n cứu đ&atilde; l&agrave;m r&otilde; một số vấn đề sau: một số kh&aacute;i niệm v&agrave; thuật ngữ li&ecirc;n quan như: người lớn, gi&aacute;o dục người lớn, gi&aacute;o dục thường xuy&ecirc;n, chư', '<p>Luật Gi&aacute;o dục 2005 lần đầu ti&ecirc;n khẳng định vị tr&iacute; của GDTX với tư c&aacute;ch l&agrave; một trong hai bộ phận của hệ thống gi&aacute;o dục quốc d&acirc;n với nhiệm vụ &ldquo;GDTX gi&uacute;p mọi người vừa l&agrave;m vừa học, học suốt đời nhằm ho&agrave;n thiện nh&acirc;n c&aacute;ch, mở rộng hiểu biết, n&acirc;ng cao tr&igrave;nh độ học vấn, chuy&ecirc;n m&ocirc;n, nghiệp vụ để cải thiện chất lượng cuộc sống, t&igrave;m việc l&agrave;m, tự tạo việc l&agrave;m v&agrave; th&iacute;ch nghi với đời sống x&atilde; hội. Nh&agrave; nước c&oacute; ch&iacute;nh s&aacute;ch ph&aacute;t triển GDTX, thực hiện gi&aacute;o dục cho mọi người, x&acirc;y dựng x&atilde; hội học tập&rdquo;. Với chức năng thay thế, tiếp nối, GDTX c&oacute; nhiệm vụ tạo cơ hội học tập thứ hai cho những người kh&ocirc;ng c&oacute; điều kiện học phổ th&ocirc;ng ch&iacute;nh quy hoặc phải bỏ học dở chừng. Nhằm tạo điều kiện thu&acirc;n lợi cho những người thiệt th&ograve;i về gi&aacute;o dục, trong thời gian qua GDTX đ&atilde; v&agrave; đang rất coi trọng việc đa dạng ho&aacute; c&aacute;c chương tr&igrave;nh ph&ugrave; hợp với nhu cầu v&agrave; điều kiện học tập của c&aacute;c nh&oacute;m đối tượng kh&aacute;c nhau. Nhằm n&acirc;ng cao chất lượng của GDTX từ năm 1992 v&agrave; đặc biệt từ năm 2006, Bộ GD&amp;ĐT chủ trương chỉ x&acirc;y dựng một chương tr&igrave;nh GDTX cấp THPT cho c&aacute;c tất cả c&aacute;c nh&oacute;m đối tượng. Tuy nhi&ecirc;n, tr&ecirc;n thực tế v&agrave; qua kết quả nghi&ecirc;n cứu của một số đề t&agrave;i cho thấy việc thực hiện chương tr&igrave;nh GDTX trong những năm vừa qua vẫn c&ograve;n gặp nhiều kh&oacute; khăn, bất cập, kh&oacute; c&oacute; thể ph&ugrave; hợp với tất cả c&aacute;c nh&oacute;m đối tượng kh&aacute;c nhau của GDTX, đặc biệt đối với nh&oacute;m đối tượng người lớn vừa học, vừa l&agrave;m, kh&ocirc;ng c&oacute; nhu cầu v&agrave; điều kiện học tiếp l&ecirc;n bậc học cao hơn (CĐ, ĐH). Ch&iacute;nh v&igrave; vậy, việc nghi&ecirc;n cứu đề xuất những định hướng vận dụng chương tr&igrave;nh Gi&aacute;o dục phổ th&ocirc;ng để x&acirc;y dựng chương tr&igrave;nh Gi&aacute;o dục thường xuy&ecirc;n sao cho ph&ugrave; hợp v&agrave; khả thi nhất với đối tượng người học hết sức đa dạng của GDTX l&agrave; rất cần thiết v&agrave; cấp b&aacute;ch.<br />\r\n&nbsp;</p>\r\n', '<p style=\"text-align: justify;\">Nghi&ecirc;n cứu cơ sở l&iacute; luận: Đề t&agrave;i l&agrave;m r&otilde; một số kh&aacute;i niệm, thuật ngữ li&ecirc;n quan: người lớn, gi&aacute;o dục thường xuy&ecirc;n, chương tr&igrave;nh, chương tr&igrave;nh GDTX. Kinh nghiệm x&acirc;y dựng chương tr&igrave;nh v&agrave; bi&ecirc;n soạn SGK BTVH trước đ&acirc;y ở Việt Nam. Kinh nghiệm x&acirc;y dựng chương tr&igrave;nh tương đương của một số nước tr&ecirc;n thế giới v&agrave; trong khu vực (Th&aacute;i Lan, Trung Quốc, H&agrave;n Quốc,&hellip;). Đặc điểm đối tượng học vi&ecirc;n, điều kiện CSVC, đội ngũ CBQL, GV GDTX. T&igrave;m hiểu chương tr&igrave;nh gi&aacute;o dục phổ th&ocirc;ng (quan điểm/c&aacute;ch tiếp cận x&acirc;y dựng, mục ti&ecirc;u, cấu tr&uacute;c, chuẩn kiến thức kĩ năng, nội dung dạy học, kiểm tra đ&aacute;nh gi&aacute;, tổ chức thực hiện,&hellip;). Đề xuất một số định hướng vận dụng chương tr&igrave;nh GDPT để x&acirc;y dựng chương tr&igrave;nh GDTX.<br />\r\n<br />\r\nĐịnh hướng vận dụng chương tr&igrave;nh tiểu học để x&acirc;y dựng chương tr&igrave;nh x&oacute;a m&ugrave; chữ v&agrave; gi&aacute;o dục tiếp tục sau khi biết chữ. Chương tr&igrave;nh THCS để x&acirc;y dựng chương tr&igrave;nh GDTX cấp THCS. Chương tr&igrave;nh THPT để x&acirc;y dựng chương tr&igrave;nh GDTX cấp THPT. Tổ chức thực hiện chương tr&igrave;nh, kiểm tra đ&aacute;nh gi&aacute; v&agrave; c&ocirc;ng nhận kết quả học tập sau 2015 v&agrave; kiểm tra đ&aacute;nh gi&aacute;, c&ocirc;ng nhận kết quả v&agrave; c&aacute;c yếu tố đảm bảo t&iacute;nh li&ecirc;n th&ocirc;ng.</p>\r\n', '<p style=\"text-align: justify;\">Trong khu&ocirc;n khổ kinh ph&iacute; v&agrave; thời gian của nhiệm vụ nghi&ecirc;n cứu cấp Viện, nh&oacute;m nghi&ecirc;n cứu chỉ tập trung nghi&ecirc;n cứu, hồi cứu những tư liệu, t&agrave;i liệu c&oacute; li&ecirc;n quan. Nghi&ecirc;n cứu kinh nghiệm bi&ecirc;n soạn chương tr&igrave;nh Bổ t&uacute;c, chương tr&igrave;nh GDTX trước đ&acirc;y v&agrave; kinh nghiệm bi&ecirc;n soạn chương tr&igrave;nh GDTX của một số nước trong khu vực v&agrave; tr&ecirc;n thế giới</p>\r\n', '<p>Nội dung đề t&agrave;i: đề t&agrave;i gồm 3 chương:<br />\r\n<br />\r\n<em>Chương 1. Cơ sở l&yacute; luận</em><br />\r\n<br />\r\n1.1. Một số kh&aacute;i niệm, thuật ngữ li&ecirc;n quan<br />\r\n1.2. Đặc điểm đối tượng học vi&ecirc;n, điều kiện CSVC, đội ngũ CBQL, gi&aacute;o vi&ecirc;n GDTX<br />\r\n1.3. Định hướng x&acirc;y dựng chương tr&igrave;nh v&agrave; SGK sau 2015<br />\r\n<br />\r\n<em>Chương 2. Kinh nghiệm thực tiễn</em><br />\r\n<br />\r\n2.1. Kinh nghiệm x&acirc;y dựng chương tr&igrave;nh v&agrave; s&aacute;ch gi&aacute;o khoa bổ t&uacute;c trước đ&acirc;y ở Việt Nam<br />\r\n2.2. Kinh nghiệm x&acirc;y dựng chương tr&igrave;nh tương đương của một số nước tr&ecirc;n thế giới v&agrave; trong khu vực<br />\r\n<br />\r\n<em>Chương 3. Định hướng vận dụng chương tr&igrave;nh GDPT sau 2015 v&agrave;o x&acirc;y dựng chương tr&igrave;nh GDTX</em><br />\r\n<br />\r\n3.1. Cơ sở v&agrave; quan điểm đề xuất<br />\r\n3.2. Đề xuất định hướng vận dụng chương tr&igrave;nh tiểu học để x&acirc;y dựng chương tr&igrave;nh XMC v&agrave; GDTTSKBC<br />\r\n3.3. Định hướng vận dụng chương tr&igrave;nh GDPT cấp THCS để x&acirc;y dựng chương tr&igrave;nh GDTX cấp THCS<br />\r\n3.4. Định hướng vận dụng chương tr&igrave;nh GDPT cấp THPT để x&acirc;y dựng chương tr&igrave;nh GDTX cấp THPT<br />\r\n3.5. Định hướng tổ chức thực hiện chương tr&igrave;nh GDTX, kiểm tra đ&aacute;nh gi&aacute; v&agrave; c&ocirc;ng nhận kết quả học tập sau 2015</p>\r\n', NULL, NULL, NULL, NULL, '', '', '2020-10-13 21:52:48', ''),
(13, 2, 2, NULL, 'LDT_01', '2', 3, '', 'Xây dựng bộ tiêu chí đánh giá sự hài lòng của người dân đối với dịch vụ giáo dục công', '1456808400', '1488344400', '', '<p>X&acirc;y dựng bộ ti&ecirc;u ch&iacute; v&agrave; bộ c&ocirc;ng cụ để đo lường được sự h&agrave;i l&ograve;ng của người d&acirc;n đối với DVGD c&ocirc;ng.&nbsp;</p>\r\n', '<p>Đo lường sự h&agrave;i l&ograve;ng của người d&acirc;n về dịch vụ gi&aacute;o dục c&ocirc;ng l&agrave; một nội dung ho&agrave;n to&agrave;n mới mẻ ở Việt Nam. Nhiệm vụ nghi&ecirc;n cứu n&agrave;y đ&atilde; thực hiện một số hoạt động v&agrave; thu được ', '<p>Phục vụ nhu cầu của to&agrave;n x&atilde; hội về gi&aacute;o dục, đ&agrave;o tạo, gi&aacute;o dục c&ocirc;ng ở Việt Nam chiếm một vai tr&ograve; đặc biệt quan trọng. Trong hơn hai thập kỷ qua, Đảng v&agrave; Nh&agrave; nước đ&atilde; nỗ lực rất lớn để đảm bảo to&agrave;n d&acirc;n được tiếp cận v&agrave; c&ocirc;ng bằng trong DVGD, thể hiện ở c&aacute;c ch&iacute;nh s&aacute;ch phổ cập, ph&acirc;n luồng hay tăng cường x&atilde; hội h&oacute;a gi&aacute;o dục. Tuy nhi&ecirc;n, bất chấp những nỗ lực n&agrave;y, nguồn lực cho gi&aacute;o dục ở Việt Nam vẫn chưa được sử dụng hiệu quả, việc đảm bảo chất lượng DVGD vẫn đang l&agrave; một th&aacute;ch thức lớn của ng&agrave;nh gi&aacute;o dục, của quốc gia trong qu&aacute; tr&igrave;nh ph&aacute;t triển.&nbsp;<br />\r\n<br />\r\nTrong bối cảnh bất b&igrave;nh đẳng về thu nhập gia tăng, khoảng c&aacute;ch về kinh tế - x&atilde; hội ở c&aacute;c v&ugrave;ng, c&aacute;c địa phương cũng l&agrave; nguy&ecirc;n nh&acirc;n khiến DVGD c&ocirc;ng trở n&ecirc;n thiếu đồng bộ, khả năng tiếp cận dịch vụ n&agrave;y cũng rất kh&aacute;c nhau đối với người d&acirc;n ở c&aacute;c v&ugrave;ng miền, tầng lớp kh&aacute;c nhau. Ngo&agrave;i ra, tiến tr&igrave;nh hội nhập quốc tế đ&atilde; l&agrave;m t&iacute;nh cạnh tranh trong gi&aacute;o dục trở n&ecirc;n khốc liệt, việc mở ra c&aacute;nh cửa cho c&aacute;c nh&agrave; đầu tư nước ngo&agrave;i v&agrave; tư nh&acirc;n trong nước cung cấp DVGD đ&atilde; l&agrave;m tăng cơ hội lựa chọn cho người sử dụng DVGD.&nbsp;<br />\r\n<br />\r\nTất cả những l&yacute; do tr&ecirc;n cho thấy cần c&oacute; sự đ&aacute;nh gi&aacute; tổng thể về chất lượng DVGD c&ocirc;ng, về khả năng tiếp cận DVGD v&agrave; sự h&agrave;i l&ograve;ng của người d&acirc;n ở c&aacute;c v&ugrave;ng miền kh&aacute;c nhau trong qu&aacute; tr&igrave;nh sử dụng dịch vụ n&agrave;y, từ đ&oacute; c&oacute; thể n&acirc;ng cao chất lượng DVGD c&ocirc;ng để đảm bảo khả năng cạnh tranh, đ&aacute;p ứng nhu cầu của x&atilde; hội, mang lại sự h&agrave;i l&ograve;ng cho người d&acirc;n.<br />\r\n<br />\r\nỞ nước ta, nghi&ecirc;n cứu về DVGD c&ocirc;ng chưa nhiều, cũng chưa c&oacute; nghi&ecirc;n cứu khảo s&aacute;t qui m&ocirc; n&agrave;o được thực hiện để đo lường mức độ h&agrave;i l&ograve;ng của người d&acirc;n với DVGD c&ocirc;ng. V&igrave; vậy, việc x&acirc;y dựng bộ ti&ecirc;u ch&iacute; đ&aacute;nh gi&aacute; sự h&agrave;i l&ograve;ng của người d&acirc;n đối với DVGD c&ocirc;ng trở n&ecirc;n cấp thiết hơn bao giờ hết.</p>\r\n', '<p>- Nghi&ecirc;n cứu v&agrave; x&acirc;y dựng cơ sở l&yacute; luận cho việc nghi&ecirc;n cứu mức độ h&agrave;i l&ograve;ng của người d&acirc;n về DVGD c&ocirc;ng.<br />\r\n- Tổng quan kinh nghiệm trong nước v&agrave; quốc tế về x&acirc;y dựng bộ ti&ecirc;u ch&iacute; đ&aacute;nh gi&aacute; mức độ h&agrave;i l&ograve;ng của người d&acirc;n đối với DVGD c&ocirc;ng.<br />\r\n- X&acirc;y dựng bộ ti&ecirc;u ch&iacute; đ&aacute;nh gi&aacute; mức độ h&agrave;i l&ograve;ng của người d&acirc;n đối với DVGD c&ocirc;ng.<br />\r\n- Đề xuất bộ c&ocirc;ng cụ khảo s&aacute;t, phương ph&aacute;p v&agrave; quy tr&igrave;nh đ&aacute;nh gi&aacute; sự h&agrave;i l&ograve;ng của người d&acirc;n đối với DVGD c&ocirc;ng của c&aacute;c cơ sở gi&aacute;o dục v&agrave; đ&agrave;o tạo.</p>\r\n', '<p>Nhiệm vụ hướng tới việc nghi&ecirc;n cứu x&acirc;y dựng bộ ti&ecirc;u ch&iacute;, c&ocirc;ng cụ đo lường mức độ h&agrave;i l&ograve;ng của người d&acirc;n đối với DVGD c&ocirc;ng của c&aacute;c cơ sở gi&aacute;o dục v&agrave; đ&agrave;o tạo từ mầm non, phổ th&ocirc;ng, gi&aacute;o dục thường xuy&ecirc;n đến gi&aacute;o dục nghề nghiệp v&agrave; đại học.<br />\r\n<br />\r\nDo hạn chế về nguồn lực kinh ph&iacute; v&agrave; thời gian n&ecirc;n nhiệm vụ nghi&ecirc;n cứu n&agrave;y chỉ tập trung v&agrave;o những chỉ số cơ bản nhất phản &aacute;nh sự h&agrave;i l&ograve;ng của người d&acirc;n về DVGD c&ocirc;ng v&agrave; x&acirc;y dựng bộ c&ocirc;ng cụ đo lường tr&ecirc;n cơ sở c&aacute;c chỉ số cơ bản n&agrave;y.</p>\r\n', '<p>Nội dung đề t&agrave;i: đề t&agrave;i gồm 4 chương:<br />\r\n<br />\r\n<em>Chương 1. Cơ sở l&yacute; luận</em><br />\r\n<br />\r\n1.1. Tổng quan t&igrave;nh h&igrave;nh nghi&ecirc;n cứu<br />\r\n1.2. Một số kh&aacute;i niệm c&oacute; li&ecirc;n quan đến vấn đề nghi&ecirc;n cứu&nbsp;<br />\r\n1.3. Phương ph&aacute;p tiếp cận đo lường v&agrave; m&ocirc; h&igrave;nh sự h&agrave;i long của người d&acirc;n<br />\r\n<br />\r\n<em>Chương 2. Kinh nghiệm quốc tế</em><br />\r\n<br />\r\n2.1. Kinh nghiệm của Trung Quốc trong nghi&ecirc;n cứu, x&acirc;y dựng ti&ecirc;u ch&iacute; v&agrave; đ&aacute;nh gi&aacute; sự h&agrave;i l&ograve;ng của người d&acirc;n đối với dịch vụ gi&aacute;o dục c&ocirc;ng&nbsp;<br />\r\n2.2. Kinh nghiệm của Nga trong nghi&ecirc;n cứu, x&acirc;y dựng ti&ecirc;u ch&iacute; v&agrave; đ&aacute;nh gi&aacute; sự h&agrave;i long của người d&acirc;n đối với dịch vụ gi&aacute;o dục c&ocirc;ng&nbsp;<br />\r\n2.3. Kinh nghiệm của Canada v&agrave; một số nước kh&aacute;c trong nghi&ecirc;n cứu, x&acirc;y dựng ti&ecirc;u ch&iacute; v&agrave; đ&aacute;nh gi&aacute; sự h&agrave;i l&ograve;ng của người d&acirc;n đối với dịch vụ gi&aacute;o dục c&ocirc;ng&nbsp;<br />\r\n<br />\r\n<em>Chương 3. X&acirc;y dựng ti&ecirc;u ch&iacute; v&agrave; c&ocirc;ng cụ đo lường sự h&agrave;i l&ograve;ng của người d&acirc;n đối với dịch vụ gi&aacute;o dục c&ocirc;ng</em><br />\r\n<br />\r\n3.1. Căn cứ x&acirc;y dựng ti&ecirc;u ch&iacute; đo lường<br />\r\n3.2. Quy tr&igrave;nh x&acirc;y dựng ti&ecirc;u ch&iacute; đo lường<br />\r\n3.3. Nội dung c&aacute;c ti&ecirc;u ch&iacute; đo lường<br />\r\n3.4. X&acirc;y dựng thang đo v&agrave; bộ dụng cụ đo lường<br />\r\n<br />\r\n<em>Chương 4. Thử nghiệm v&agrave; ho&agrave;n thiện bộ c&ocirc;ng cụ khảo s&aacute;t</em><br />\r\n<br />\r\n4.1. Tổ chức khảo s&aacute;t thử<br />\r\n4.2. Kết quả thử nghiệm bộ c&ocirc;ng cụ<br />\r\n4.3. Ho&agrave;n thiện bộ c&ocirc;ng cụ v&agrave; quy tr&igrave;nh khảo s&aacute;t</p>\r\n', NULL, NULL, NULL, NULL, '', '', '2020-10-13 21:52:48', ''),
(14, 1, 1, NULL, 'LDT_02', '2', 3, '', ' Nghiên cứu tổng quan về phát triển chuyên ngành giáo dục sửa tật ngôn ngữ', '1456808400', '1488344400', '', '<p>Phản &aacute;nh một c&aacute;ch tổng quan về sự ph&aacute;t triển chuy&ecirc;n ng&agrave;nh gi&aacute;o dục STNN ở một số nước tr&ecirc;n thế giới v&agrave; ở Việt Nam, so s&aacute;nh chuy&ecirc;n ng&agrave;nh n&agrave;y ở Việt Nam với một số nước, l&agrave;m cơ sở cho việc đề xuất một số định hướng ph&aacute;t triển chuy&ecirc;n ng&agrave;nh trong gi&aacute;o dục đặc biệt ở Việt Nam.<br />\r\n&nbsp;</p>\r\n', '<p>Từ những năm 70, gi&aacute;o dục đặc biệt tại Việt Nam chịu ảnh hưởng mạnh mẽ gi&aacute;o dục đặc biệt của Nga v&agrave; Đ&ocirc;ng &Acirc;u. Lĩnh vực gi&aacute;o dục ph&aacute;t triển ng&ocirc;n ngữ cho trẻ khuyết tật đ&atilde; h&igrave;nh th&agrave;n', '<p>Tr&ecirc;n thế giới, c&ugrave;ng với sự ph&aacute;t triển v&agrave; tiến bộ của x&atilde; hội, chuy&ecirc;n ng&agrave;nh gi&aacute;o dục sửa tật ng&ocirc;n ngữ đ&atilde; h&igrave;nh th&agrave;nh v&agrave; gặt h&aacute;i được nhiều th&agrave;nh tựu, đ&aacute;p ứng nhu cầu của c&aacute; nh&acirc;n v&agrave; x&atilde; hội. Ở nhiều quốc gia, chuy&ecirc;n ng&agrave;nh sửa tật ng&ocirc;n ngữ n&oacute;i chung v&agrave; gi&aacute;o dục sửa tật ng&ocirc;n ngữ n&oacute;i ri&ecirc;ng đ&atilde; c&oacute; qu&aacute; tr&igrave;nh ph&aacute;t triển h&agrave;ng trăm năm nay v&agrave; vẫn kh&ocirc;ng ngừng cải tiến trong nghi&ecirc;n cứu v&agrave; ứng dụng, kh&ocirc;ng ngừng tăng l&ecirc;n về số lượng chuy&ecirc;n gia, kh&ocirc;ng ngừng n&acirc;ng cao về chất lượng dịch vụ... Một số nước ph&aacute;t triển như Nga, Anh, Mỹ,&hellip; gi&aacute;o dục sửa tật ng&ocirc;n ngữ l&agrave; một chuy&ecirc;n ng&agrave;nh c&oacute; bề d&agrave;y truyền thống v&agrave; hiện đang được mở rộng về quy m&ocirc; v&agrave; tiếp tục khai th&aacute;c nghi&ecirc;n cứu theo hướng chuy&ecirc;n s&acirc;u. Ở một nước đang ph&aacute;t triển như nước ta, chuy&ecirc;n ng&agrave;nh n&agrave;y chỉ mới manh nha h&igrave;nh th&agrave;nh c&ugrave;ng với qu&aacute; tr&igrave;nh x&acirc;y dựng v&agrave; ph&aacute;t triển của gi&aacute;o dục đặc biệt trong khoảng hơn ba thập kỉ trở lại đ&acirc;y. Tuy đ&atilde; đạt được một số kết quả nhất định về nghi&ecirc;n cứu l&iacute; thuyết, nghi&ecirc;n cứu ứng dụng v&agrave; bước đầu cung cấp dịch vụ cho trẻ c&oacute; tật ng&ocirc;n ngữ song so với nhu cầu của thực tiễn gi&aacute;o dục đặc biệt ở trong nước cũng như y&ecirc;u cầu hội nhập quốc tế, vẫn tồn tại những khoảng c&aacute;ch đ&aacute;ng kể, đ&ograve;i hỏi phải nỗ lực cập nhật v&agrave; kh&ocirc;ng ngừng đầu tư. Thực tế cho thấy, chuy&ecirc;n ng&agrave;nh gi&aacute;o dục sửa tật ng&ocirc;n ngữ trong gi&aacute;o dục đặc biệt ở Việt Nam vẫn đang tr&ecirc;n con đường đi t&igrave;m chỗ đứng ri&ecirc;ng, độc lập hơn v&agrave; vững chắc hơn. Th&ecirc;m v&agrave;o đ&oacute;, sự ph&aacute;t triển gần đ&acirc;y của chuy&ecirc;n ng&agrave;nh ng&ocirc;n ngữ trị liệu trong lĩnh vực y tế - phục hồi chức năng ở nước ta với những g&oacute;c nh&igrave;n kh&aacute;c đ&ograve;i hỏi c&aacute;c nh&agrave; chuy&ecirc;n m&ocirc;n trong gi&aacute;o dục đặc biệt cần t&igrave;m hiểu, đối chiếu v&agrave; ph&acirc;n t&iacute;ch nhằm đ&uacute;c r&uacute;t những th&ocirc;ng tin cần thiết cho sửa tật ng&ocirc;n ngữ trong gi&aacute;o dục. Đề t&agrave;i nghi&ecirc;n cứu tổng quan về sự ph&aacute;t triển chuy&ecirc;n ng&agrave;nh gi&aacute;o dục sửa tật ng&ocirc;n ngữ được thực hiện sẽ g&oacute;p phần đ&aacute;p ứng những đ&ograve;i hỏi cấp thiết vừa n&ecirc;u.</p>\r\n', '<p>- Nghi&ecirc;n cứu một số vấn đề cơ sở l&yacute; luận về sửa tật ng&ocirc;n ngữ. L&agrave;m r&otilde; c&aacute;c kh&aacute;i niệm li&ecirc;n quan đến đề t&agrave;i: ng&ocirc;n ngữ (theo nghĩa rộng v&agrave; nghĩa hẹp), giao tiếp, lời n&oacute;i, tật ng&ocirc;n ngữ (theo nghĩa rộng v&agrave; nghĩa hẹp), tật lời n&oacute;i, sửa tật ng&ocirc;n ngữ.<br />\r\n- Nghi&ecirc;n cứu sự ph&aacute;t triển về chuy&ecirc;n ng&agrave;nh gi&aacute;o dục sửa tật ng&ocirc;n ngữ của một số quốc gia ti&ecirc;u biểu tr&ecirc;n thế giới (sự ph&aacute;t triển của chuy&ecirc;n ng&agrave;nh được xem x&eacute;t ở c&aacute;c kh&iacute;a cạnh như hoạt động nghi&ecirc;n cứu, đ&agrave;o tạo v&agrave; cung cấp dịch vụ).<br />\r\n- Nghi&ecirc;n cứu sự ph&aacute;t triển về chuy&ecirc;n ng&agrave;nh gi&aacute;o dục sửa tật ng&ocirc;n ngữ ở Việt Nam trong sự đối s&aacute;nh với một số quốc gia tr&ecirc;n thế giới.<br />\r\n- Đưa ra một số khuyến nghị về định hướng ph&aacute;t triển chuy&ecirc;n ng&agrave;nh gi&aacute;o dục STNN tại Việt Nam.<br />\r\n&nbsp;</p>\r\n', '<p>Phương ph&aacute;p nghi&ecirc;n cứu được sử dụng trong đề t&agrave;i gồm: 1/ Hồi cứu tư liệu; 2/ Phương ph&aacute;p lấy &yacute; kiến chuy&ecirc;n gia; 3/ Ph&acirc;n t&iacute;ch, so s&aacute;nh v&agrave; suy luận.</p>\r\n', '<p>Nội dung đề t&agrave;i: đề t&agrave;i gồm 2 chương:<br />\r\n<br />\r\n<em>Chương 1. Cơ sở khoa học của vấn đề nghi&ecirc;n cứu</em><br />\r\n<br />\r\n1.1. Lịch sử v&agrave; nghi&ecirc;n cứu vấn đề&nbsp;<br />\r\n1.2. C&aacute;c kh&aacute;i niệm li&ecirc;n quan đến đề t&agrave;i<br />\r\n<br />\r\n<em>Chương 2. Tổng quan về sự ph&aacute;t triển chuy&ecirc;n ng&agrave;nh gi&aacute;o dục sửa tật ng&ocirc;n ngữ tr&ecirc;n thế giới v&agrave; ở Việt Nam</em><br />\r\n<br />\r\n2.1. Sự ph&aacute;t triển chuy&ecirc;n ng&agrave;nh gi&aacute;o dục sửa tật ng&ocirc;n ngữ tr&ecirc;n thế giới<br />\r\n2.2. Gi&aacute;o dục sửa tật ng&ocirc;n ngữ Việt Nam trong mối tương quan với thế giới</p>\r\n', NULL, NULL, NULL, NULL, '', '', '2020-10-13 21:52:48', ''),
(15, 1, 6, 5, 'LDT_01', '2', 10, 'MHN016523695', 'Nghiên cứu ứng dụng thang kiểm tra phát triển Kyoto tại Việt Nam', '1456808400', '1488344400', '', '<p>Nghi&ecirc;n cứu đề xuất những định hướng vận dụng chương tr&igrave;nh Gi&aacute;o dục phổ th&ocirc;ng để x&acirc;y dựng chương tr&igrave;nh Gi&aacute;o dục thường xuy&ecirc;n sau 2015.&nbsp;</p>\r\n', '<p style=\"text-align:justify\">Đề t&agrave;i nghi&ecirc;n cứu đ&atilde; l&agrave;m r&otilde; một số vấn đề sau: một số kh&aacute;i niệm v&agrave; thuật ngữ li&ecirc;n quan như: người lớn, gi&aacute;o dục người lớn, gi&aacute;o dục thường xuy&ecirc;n, chươn', '<p style=\"text-align:justify\">Luật Gi&aacute;o dục 2005 lần đầu ti&ecirc;n khẳng định vị tr&iacute; của GDTX với tư c&aacute;ch l&agrave; một trong hai bộ phận của hệ thống gi&aacute;o dục quốc d&acirc;n với nhiệm vụ &ldquo;GDTX gi&uacute;p mọi người vừa l&agrave;m vừa học, học suốt đời nhằm ho&agrave;n thiện nh&acirc;n c&aacute;ch, mở rộng hiểu biết, n&acirc;ng cao tr&igrave;nh độ học vấn, chuy&ecirc;n m&ocirc;n, nghiệp vụ để cải thiện chất lượng cuộc sống, t&igrave;m việc l&agrave;m, tự tạo việc l&agrave;m v&agrave; th&iacute;ch nghi với đời sống x&atilde; hội. Nh&agrave; nước c&oacute; ch&iacute;nh s&aacute;ch ph&aacute;t triển GDTX, thực hiện gi&aacute;o dục cho mọi người, x&acirc;y dựng x&atilde; hội học tập&rdquo;. Với chức năng thay thế, tiếp nối, GDTX c&oacute; nhiệm vụ tạo cơ hội học tập thứ hai cho những người kh&ocirc;ng c&oacute; điều kiện học phổ th&ocirc;ng ch&iacute;nh quy hoặc phải bỏ học dở chừng. Nhằm tạo điều kiện thu&acirc;n lợi cho những người thiệt th&ograve;i về gi&aacute;o dục, trong thời gian qua GDTX đ&atilde; v&agrave; đang rất coi trọng việc đa dạng ho&aacute; c&aacute;c chương tr&igrave;nh ph&ugrave; hợp với nhu cầu v&agrave; điều kiện học tập của c&aacute;c nh&oacute;m đối tượng kh&aacute;c nhau. Nhằm n&acirc;ng cao chất lượng của GDTX từ năm 1992 v&agrave; đặc biệt từ năm 2006, Bộ GD&amp;ĐT chủ trương chỉ x&acirc;y dựng một chương tr&igrave;nh GDTX cấp THPT cho c&aacute;c tất cả c&aacute;c nh&oacute;m đối tượng. Tuy nhi&ecirc;n, tr&ecirc;n thực tế v&agrave; qua kết quả nghi&ecirc;n cứu của một số đề t&agrave;i cho thấy việc thực hiện chương tr&igrave;nh GDTX trong những năm vừa qua vẫn c&ograve;n gặp nhiều kh&oacute; khăn, bất cập, kh&oacute; c&oacute; thể ph&ugrave; hợp với tất cả c&aacute;c nh&oacute;m đối tượng kh&aacute;c nhau của GDTX, đặc biệt đối với nh&oacute;m đối tượng người lớn vừa học, vừa l&agrave;m, kh&ocirc;ng c&oacute; nhu cầu v&agrave; điều kiện học tiếp l&ecirc;n bậc học cao hơn (CĐ, ĐH). Ch&iacute;nh v&igrave; vậy, việc nghi&ecirc;n cứu đề xuất những định hướng vận dụng chương tr&igrave;nh Gi&aacute;o dục phổ th&ocirc;ng để x&acirc;y dựng chương tr&igrave;nh Gi&aacute;o dục thường xuy&ecirc;n sao cho ph&ugrave; hợp v&agrave; khả thi nhất với đối tượng người học hết sức đa dạng của GDTX l&agrave; rất cần thiết v&agrave; cấp b&aacute;ch.</p>\r\n', '<p style=\"text-align:justify\">Nghi&ecirc;n cứu cơ sở l&iacute; luận: Đề t&agrave;i l&agrave;m r&otilde; một số kh&aacute;i niệm, thuật ngữ li&ecirc;n quan: người lớn, gi&aacute;o dục thường xuy&ecirc;n, chương tr&igrave;nh, chương tr&igrave;nh GDTX. Kinh nghiệm x&acirc;y dựng chương tr&igrave;nh v&agrave; bi&ecirc;n soạn SGK BTVH trước đ&acirc;y ở Việt Nam. Kinh nghiệm x&acirc;y dựng chương tr&igrave;nh tương đương của một số nước tr&ecirc;n thế giới v&agrave; trong khu vực (Th&aacute;i Lan, Trung Quốc, H&agrave;n Quốc,&hellip;). Đặc điểm đối tượng học vi&ecirc;n, điều kiện CSVC, đội ngũ CBQL, GV GDTX. T&igrave;m hiểu chương tr&igrave;nh gi&aacute;o dục phổ th&ocirc;ng (quan điểm/c&aacute;ch tiếp cận x&acirc;y dựng, mục ti&ecirc;u, cấu tr&uacute;c, chuẩn kiến thức kĩ năng, nội dung dạy học, kiểm tra đ&aacute;nh gi&aacute;, tổ chức thực hiện,&hellip;). Đề xuất một số định hướng vận dụng chương tr&igrave;nh GDPT để x&acirc;y dựng chương tr&igrave;nh GDTX.<br />\r\n<br />\r\nĐịnh hướng vận dụng chương tr&igrave;nh tiểu học để x&acirc;y dựng chương tr&igrave;nh x&oacute;a m&ugrave; chữ v&agrave; gi&aacute;o dục tiếp tục sau khi biết chữ. Chương tr&igrave;nh THCS để x&acirc;y dựng chương tr&igrave;nh GDTX cấp THCS. Chương tr&igrave;nh THPT để x&acirc;y dựng chương tr&igrave;nh GDTX cấp THPT. Tổ chức thực hiện chương tr&igrave;nh, kiểm tra đ&aacute;nh gi&aacute; v&agrave; c&ocirc;ng nhận kết quả học tập sau 2015 v&agrave; kiểm tra đ&aacute;nh gi&aacute;, c&ocirc;ng nhận kết quả v&agrave; c&aacute;c yếu tố đảm bảo t&iacute;nh li&ecirc;n th&ocirc;ng.</p>\r\n', '<p>Trong khu&ocirc;n khổ kinh ph&iacute; v&agrave; thời gian của nhiệm vụ nghi&ecirc;n cứu cấp Viện, nh&oacute;m nghi&ecirc;n cứu chỉ tập trung nghi&ecirc;n cứu, hồi cứu những tư liệu, t&agrave;i liệu c&oacute; li&ecirc;n quan. Nghi&ecirc;n cứu kinh nghiệm bi&ecirc;n soạn chương tr&igrave;nh Bổ t&uacute;c, chương tr&igrave;nh GDTX trước đ&acirc;y v&agrave; kinh nghiệm bi&ecirc;n soạn chương tr&igrave;nh GDTX của một số nước trong khu vực v&agrave; tr&ecirc;n thế giới.<br />\r\n&nbsp;</p>\r\n', '<p>Nội dung đề t&agrave;i: đề t&agrave;i gồm 3 chương:<br />\r\n<br />\r\n<em>Chương 1. Cơ sở l&yacute; luận</em><br />\r\n<br />\r\n1.1. Một số kh&aacute;i niệm, thuật ngữ li&ecirc;n quan<br />\r\n1.2. Đặc điểm đối tượng học vi&ecirc;n, điều kiện CSVC, đội ngũ CBQL, gi&aacute;o vi&ecirc;n GDTX<br />\r\n1.3. Định hướng x&acirc;y dựng chương tr&igrave;nh v&agrave; SGK sau 2015<br />\r\n<br />\r\n<em>Chương 2. Kinh nghiệm thực tiễn</em><br />\r\n<br />\r\n2.1. Kinh nghiệm x&acirc;y dựng chương tr&igrave;nh v&agrave; s&aacute;ch gi&aacute;o khoa bổ t&uacute;c trước đ&acirc;y ở Việt Nam<br />\r\n2.2. Kinh nghiệm x&acirc;y dựng chương tr&igrave;nh tương đương của một số nước tr&ecirc;n thế giới v&agrave; trong khu vực<br />\r\n<br />\r\n<em>Chương 3. Định hướng vận dụng chương tr&igrave;nh GDPT sau 2015 v&agrave;o x&acirc;y dựng chương tr&igrave;nh GDTX</em><br />\r\n<br />\r\n3.1. Cơ sở v&agrave; quan điểm đề xuất<br />\r\n3.2. Đề xuất định hướng vận dụng chương tr&igrave;nh tiểu học để x&acirc;y dựng chương tr&igrave;nh XMC v&agrave; GDTTSKBC<br />\r\n3.3. Định hướng vận dụng chương tr&igrave;nh GDPT cấp THCS để x&acirc;y dựng chương tr&igrave;nh GDTX cấp THCS<br />\r\n3.4. Định hướng vận dụng chương tr&igrave;nh GDPT cấp THPT để x&acirc;y dựng chương tr&igrave;nh GDTX cấp THPT<br />\r\n3.5. Định hướng tổ chức thực hiện chương tr&igrave;nh GDTX, kiểm tra đ&aacute;nh gi&aacute; v&agrave; c&ocirc;ng nhận kết quả học tập sau 2015</p>\r\n', NULL, NULL, NULL, NULL, '', '', '2020-10-13 21:52:48', ''),
(16, 4, 6, 0, 'LDT_01', '1', 7, 'MHN0098901', 'Ứng dụng thuyết đa trí tuệ (đa trí thông minh) (multiple intelligences) vào việc thiết kế một số mẫu dạy học môn Tiếng Việt, Văn, Toán lớp 3 CGD', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5061798', '', '2020-10-13 21:52:48', ''),
(17, 1, 6, 5, 'LDT_01', '2', 3, 'MHN00192491', 'Một số biện pháp hỗ trợ học sinh dân tộc thiểu số phát triển năng lực tính toán trong dạy học bốn phép tính với số tự nhiên ở môn Toán cấp Tiểu học', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10522461', '', '2020-10-13 21:52:48', ''),
(18, 1, 1, NULL, 'LDT_03', '4', 3, '', 'Bước đầu vận dụng bộ công cụ UDN-II vào đánh giá học sinh tiểu học', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14560394', '1', '2020-10-13 21:52:48', ''),
(19, 4, 7, NULL, 'LDT_04', '3', 10, '', 'Xây dựng và thử nghiệm một số chủ đề học tập môn Mỹ thuật lớp 4, 5 theo định hướng tiếp cận năng lực', '1456765200', '1488301200', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', NULL, '18061829', '1', '2020-10-13 21:52:48', ''),
(20, 2, 1, NULL, 'LDT_06', '1', 2, '', '	Nghiên cứu nhu cầu tư vấn hướng nghiệp của học sinh trung học cơ sở', '1456765200', '1488301200', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', NULL, '15086823', '1', '2020-10-13 21:52:48', ''),
(21, 2, 1, NULL, 'LDT_06', '4', 6, '', 'Tìm hiểu kinh nghiệm quốc tế về phương pháp dạy học Toán cho học sinh dân tộc thiểu số ở tiểu học', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '18298951', '1', '2020-10-13 21:52:48', ''),
(23, 2, 1, NULL, 'LDT_06', '4', 5, '', 'Nghiên cứu thực trạng và xu hướng sử dụng sách điện tử trong giáo dục phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '11878357', '1', '2020-10-13 21:52:48', ''),
(24, 5, 1, NULL, 'LDT_05', '3', 7, '', 'Phân tích hệ thống đánh giá học sinh phổ thông Việt Nam theo tiêu chuẩn Saber - Student Assessment', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '9145050', '', '2020-10-13 21:52:48', '');
INSERT INTO `tbldetai` (`pk_imadt`, `fk_smaloainam`, `pk_imatt`, `pk_imattcu`, `pk_smaldt`, `pk_smalh`, `pk_imalv`, `smasodetai`, `stendt`, `dngaybd`, `dngaykt`, `dngayrahan`, `smuctieu`, `ssanpham`, `scapthiet`, `snoidungdaicuong`, `sphuongphap`, `sketcaudetai`, `sdonggopchinh`, `sketluan`, `sphamvi`, `sdcungdung`, `fcptong`, `bsendmail`, `updated_at`, `dngaycapgiaycn`) VALUES
(25, 3, 1, NULL, 'LDT_05', '4', 2, '', 'Tìm hiểu lương giáo viên phổ thông của một số nước', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '12100830', '', '2020-10-13 21:52:48', ''),
(26, 4, 1, NULL, 'LDT_07', '1', 1, '', 'Mô hình sách giáo khoa nhằm đáp ứng yêu cầu của chương tình giáo dục phổ thông Việt Nam sau 2015', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '13340912', '', '2020-10-13 21:52:48', ''),
(27, 3, 1, NULL, 'LDT_07', '1', 4, '', 'Nguyên tắc và phương pháp xác định các lĩnh vực học tập/ mạch kiên thức/ chủ đề dạy học trong chương trình giáo dục phổ thông Việt Nam sau 2015', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '11173401', '', '2020-10-13 21:52:48', ''),
(28, 2, 1, NULL, 'LDT_07', '2', 10, '', 'Nghiên cứu cải tiến thiết kế một số mẫu thiết bị dạy học các môn khoa học tự nhiên trong trường phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '7392730', '', '2020-10-13 21:52:48', ''),
(29, 6, 1, NULL, 'LDT_06', '2', 2, '', 'Nghiên cứu cải tiến thiết kế một số mẫu thiết bị dạy học các môn khoa học xã hội trong trường phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '6459350', '', '2020-10-13 21:52:48', ''),
(30, 5, 1, NULL, 'LDT_09', '2', 11, '', '	Định hướng vận dụng chương trình sách giáo khoa phổ thông cấp tiểu học sau năm 2015 cho học sinh dân tộc thiểu số vùng khó khăn', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10460663', '', '2020-10-13 21:52:48', ''),
(31, 2, 1, NULL, 'LDT_05', '4', 3, '', 'Hoạt động giáo dục của trường tiểu học giai đoạn sau năm 2015', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '11728210', '', '2020-10-13 21:52:48', ''),
(32, 6, 1, NULL, 'LDT_08', '1', 1, '', 'Xây dựng mô hình tư vấn học đường trong nhà trường trung học cơ sở', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '7486114', '', '2020-10-13 21:52:48', ''),
(33, 6, 1, NULL, 'LDT_07', '1', 7, '', 'Xây dựng phương thức, tiêu chí đánh giá chương trình giáo dục phổ thông (Đáp ứng yêu cầu phát triển chương trình giáo dục phổ thông sau năm 2015)', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '8405761', '', '2020-10-13 21:52:48', ''),
(34, 6, 1, NULL, 'LDT_03', '4', 11, '', 'Phương án thực hiện quan điểm tích hợp trong pháp triển chương trình giáo dục phổ thông Việt Nam giai đoạn sau 2015', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5441741', '', '2020-10-13 21:52:48', ''),
(35, 4, 1, NULL, 'LDT_03', '4', 2, '', 'Xác định mô hình dạy học phân hóa trong giáo dục phổ thông giai đoạn sau 2015', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '16824036', '', '2020-10-13 21:52:48', ''),
(37, 5, 1, NULL, 'LDT_08', '2', 7, '', 'Kinh nghiệm quốc tế về chính sách đào tạo và sử dụng đội ngũ giáo viên phổ thông và đề xuất cho Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '17471314', '', '2020-10-13 21:52:48', ''),
(38, 5, 1, NULL, 'LDT_04', '2', 6, '', 'Phương án phối hợp dạy hai chương trình Việt Nam và quốc tế dựa trên chuẩn kiến thức, kỹ năng chương trình giáo dục Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14690399', '', '2020-10-13 21:52:48', ''),
(39, 4, 1, NULL, 'LDT_09', '1', 10, '', 'Một số biện pháp tổ chức hoạt động vận động theo nhạc cho trẻ 24-36 tháng tuổi trong trường mầm non', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '7242126', '', '2020-10-13 21:52:48', ''),
(40, 3, 1, NULL, 'LDT_07', '2', 6, '', 'Tổ chức hoạt động giáo dục kỹ năng xã hội cho trẻ mẫu giáo 5-6 tuổi ở trường mầm non', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '11334991', '', '2020-10-13 21:52:48', ''),
(41, 4, 1, NULL, 'LDT_06', '4', 4, '', 'Nghiên cứu cải tiến thiết kế một số mẫu đồ dùng đồ chơi', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10687256', '', '2020-10-13 21:52:48', ''),
(42, 4, 1, NULL, 'LDT_06', '3', 7, '', 'Nghiên cứu thiết kế băng hình và tài liệu sử dụng về hoạt động giáo dục kỹ năng sống thân thiện với môi trường cho trẻ mẫu giáo', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '17112885', '', '2020-10-13 21:52:48', ''),
(43, 1, 1, NULL, 'LDT_08', '1', 3, '', 'Luận giải về công nghệ giáo dục dưới góc nhìn của khoa học giáo dục hiện đại', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '16263733', '', '2020-10-13 21:52:48', ''),
(44, 4, 1, NULL, 'LDT_02', '2', 9, '', 'Nghiên cứu một số mô hình dự báo cung - cầu nhân lực qua đào tạo trên thế giới', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '17902985', '', '2020-10-13 21:52:48', ''),
(45, 4, 1, NULL, 'LDT_09', '3', 7, '', 'Nghiên cứu bảng phân loại quốc tế giáo dục năm 2011 và khả năng vận dụng trong hệ thống giáo dục Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '17584839', '', '2020-10-13 21:52:48', ''),
(46, 5, 1, NULL, 'LDT_06', '1', 8, '', 'Sự tham gia vào quá trình đào tạo nhân lực của người sử dụng lao động: Kinh nghiệm quốc tế và đề xuất cho Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14115448', '', '2020-10-13 21:52:48', ''),
(47, 1, 7, NULL, 'LDT_08', '3', 11, '', 'Tổ chức cơ sở dữ liệu và tính toán một số chỉ số cốt lõi của giáo dục và nhân lực Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '9670105', '', '2020-10-13 21:52:48', '');
INSERT INTO `tbldetai` (`pk_imadt`, `fk_smaloainam`, `pk_imatt`, `pk_imattcu`, `pk_smaldt`, `pk_smalh`, `pk_imalv`, `smasodetai`, `stendt`, `dngaybd`, `dngaykt`, `dngayrahan`, `smuctieu`, `ssanpham`, `scapthiet`, `snoidungdaicuong`, `sphuongphap`, `sketcaudetai`, `sdonggopchinh`, `sketluan`, `sphamvi`, `sdcungdung`, `fcptong`, `bsendmail`, `updated_at`, `dngaycapgiaycn`) VALUES
(48, 1, 1, NULL, 'LDT_02', '4', 9, '', 'Giải pháp phân luồng và liên thông trong hệ thống giáo dục quốc dân Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '16941681', '', '2020-10-13 21:52:48', ''),
(49, 6, 1, NULL, 'LDT_07', '3', 11, '', 'Phát triển đội ngũ lãnh đạo và quản lý nhà nước về giáo dục các cấp', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '15195313', '', '2020-10-13 21:52:48', ''),
(50, 3, 1, NULL, 'LDT_05', '2', 9, '', 'Đổi mới quản lý nhà nước về hệ thống giáo dục quốc dân trong hội nhập quốc tế và xu thế toàn cầu hóa', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14604340', '', '2020-10-13 21:52:48', ''),
(51, 3, 1, NULL, 'LDT_02', '1', 3, '', 'Giải pháp nân cao chất lượng xét đạt tiêu chuẩn chức danh Giáo sư, Phó Giáo sư và bổ nhiệm chức danh Giáo sư, Phó Giáo sư theo hướng hội nhập quốc tế', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5742492', '', '2020-10-13 21:52:48', ''),
(52, 2, 1, NULL, 'LDT_08', '3', 5, '', '	Triết lý giáo dục Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '13607330', '', '2020-10-13 21:52:48', ''),
(53, 1, 1, NULL, 'LDT_08', '1', 1, '', 'Thực trạng mô hình học tập thường xuyên tại thôn/ xóm ở tỉnh Hòa Bình', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '18049927', '', '2020-10-13 21:52:48', ''),
(54, 2, 1, NULL, 'LDT_02', '4', 4, '', 'Nghiên cứu những khó khăn của người lao động nông thôn tỉnh Hải Dương trong tiếp cận cơ hội học tập suốt đời', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '19985810', '', '2020-10-13 21:52:48', ''),
(55, 3, 1, NULL, 'LDT_08', '3', 5, '', '	Nghiên cứu mô hình giáo dục người lớn của Hàn Quốc', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '15262146', '', '2020-10-13 21:52:48', ''),
(56, 6, 1, NULL, 'LDT_07', '3', 8, '', 'Các giải pháp nâng cao chất lượng giáo dục nông thôn trong thời kỳ chuyển đổi cơ cấu kinh tế', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5556182', '', '2020-10-13 21:52:48', ''),
(57, 5, 1, NULL, 'LDT_08', '3', 4, '', 'Nghiên cứu hành vi ngôn ngữ của trẻ tự kỷ 5-6 tuổi', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '18179932', '', '2020-10-13 21:52:48', ''),
(58, 2, 1, NULL, 'LDT_08', '3', 3, '', 'Thực trạng bồi dưỡng phương pháp giảng dạy cho đội ngũ giảng viên trẻ ở các trường cao đẳng của Hà Nội', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '9166107', '', '2020-10-13 21:52:48', ''),
(59, 4, 1, NULL, 'LDT_09', '3', 10, '', 'Nghiên cứu cơ sở khoa học xây dựng khung trình độ quốc gia Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '11510315', '', '2020-10-13 21:52:48', ''),
(60, 2, 1, NULL, 'LDT_06', '2', 6, '', '	Lập kế hoạch bồi dưỡng phương pháp giảng dạy cho giảng viên các trường đại học ngoài công lập', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '12944489', '', '2020-10-13 21:52:48', ''),
(61, 5, 6, 5, 'LDT_01', '2', 8, 'MHN02365291', 'Thực trạng tuyển sinh các trường cao đẳng nghề trên địa bàn thành phố Hà Nội', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '15116577', '', '2020-10-13 21:52:48', ''),
(62, 1, 2, NULL, 'LDT_01', '4', 1, '', 'Thực trạng rèn luyện kỹ năng hợp tác của sinh viên sư phạm', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '13551483', '', '2020-10-13 21:52:48', ''),
(63, 2, 1, NULL, 'LDT_06', '1', 11, '', 'Thực nghiệm một số biện pháp phát triển năng lực sáng tạo cho sinh viên trong dạy hóa vô cơ ở trường cao đẳng Sư phạm', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5268249', '', '2020-10-13 21:52:48', ''),
(64, 3, 2, NULL, 'LDT_01', '1', 11, '', 'Nghiên cứu mô hình dự báo nhu cầu đào tạo trung cấp chuyên nghiệp', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '18428498', '', '2020-10-13 21:52:48', ''),
(65, 6, 1, NULL, 'LDT_08', '1', 3, '', 'Dự báo xu hướng phát triển giáo dục nghề nghiệp giai đoạn 2011 - 2020', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '15891114', '', '2020-10-13 21:52:48', ''),
(66, 5, 1, NULL, 'LDT_02', '1', 8, '', 'So sánh quốc tế về chương trình môn học nhà trường phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '12048187', '', '2020-10-13 21:52:48', ''),
(67, 1, 2, NULL, 'LDT_01', '3', 11, '', 'Tổng quan kinh nghiệm quốc tế về quản lý nhà trường phổ thông bằng kiểm tra đánh giá', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14817200', '', '2020-10-13 21:52:48', ''),
(68, 3, 1, NULL, 'LDT_02', '3', 9, '', 'Thực trạng công tác tuyển dụng giáo viên trường trung học phổ thông công lập tỉnh Yên Bái theo hướng giao quyền tự chủ cho Hiệu trưởng', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '12164459', '', '2020-10-13 21:52:48', ''),
(69, 5, 1, NULL, 'LDT_04', '1', 1, '', 'Tìm hiểu kinh nghiệm dạy-học tiếng dân tộc cho học sinh tiểu học người Khmer ở tỉnh Trà Vinh', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5034790', '', '2020-10-13 21:52:48', '');
INSERT INTO `tbldetai` (`pk_imadt`, `fk_smaloainam`, `pk_imatt`, `pk_imattcu`, `pk_smaldt`, `pk_smalh`, `pk_imalv`, `smasodetai`, `stendt`, `dngaybd`, `dngaykt`, `dngayrahan`, `smuctieu`, `ssanpham`, `scapthiet`, `snoidungdaicuong`, `sphuongphap`, `sketcaudetai`, `sdonggopchinh`, `sketluan`, `sphamvi`, `sdcungdung`, `fcptong`, `bsendmail`, `updated_at`, `dngaycapgiaycn`) VALUES
(70, 6, 1, NULL, 'LDT_08', '2', 8, '', 'Đánh giá năng lực giáo dục bảo vệ môi trường của giáo viên tiểu học khu vực Bắc miền Trung', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '6062469', '', '2020-10-13 21:52:48', ''),
(71, 3, 2, NULL, 'LDT_01', '1', 4, '', 'Tổ chức triển khai dạy thực nghiệm để đánh giá hiệu quả của phần mềm dạy học Sinh học 10 trung học phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5938415', '', '2020-10-13 21:52:48', ''),
(72, 3, 1, NULL, 'LDT_02', '3', 3, '', 'Khảo sát chất lượng và hiệu quả sử dụng thiết bị dạy học môn Hóa học ở trường trung học cơ sở', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '6808624', '', '2020-10-13 21:52:48', ''),
(73, 1, 1, NULL, 'LDT_04', '1', 5, '', 'Đổi mới công tác quản lý trường phổ thông cơ sở thực nghiệm phục vụ hoạt động nghiên cứu khoa học của Viện Khoa học Giáo dục Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '19578858', '', '2020-10-13 21:52:48', ''),
(74, 5, 1, NULL, 'LDT_04', '4', 11, '', 'Nghiên cứu phương pháp, kỹ thuật đánh giá thường xuyên kết quả học của học sinh tiểu học theo chương trình giáo dục', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '19500580', '', '2020-10-13 21:52:48', ''),
(75, 6, 6, 4, 'LDT_01', '4', 2, 'MHN918201936', 'Một số định hướng về dạy kỹ năng viết sáng tạo cho học sinh tiểu học trong môn Tiếng Việt', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '11913147', '', '2020-10-13 21:52:48', ''),
(76, 3, 1, NULL, 'LDT_02', '4', 1, '', 'Nghiên cứu phương thức đào tạo giáo viên dạy tiếng dân tộc trong trường phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '7517242', '', '2020-10-13 21:52:48', ''),
(77, 4, 1, NULL, 'LDT_08', '2', 2, '', 'Phương thức bồi dưỡng học sinh năng khiếu ở nhà trường phổ thông Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14054566', '', '2020-10-13 21:52:48', ''),
(78, 4, 7, NULL, 'LDT_04', '2', 11, '', 'Thiết kế công nghệ dạy Văn theo thi pháp thể loại ở cấp trung học phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '8768768', '', '2020-10-13 21:52:48', ''),
(79, 5, 1, NULL, 'LDT_08', '1', 2, '', 'Xây dựng tài liệu dạy học tự chọn môn Toán đầu cấp THCS theo hướng thày thiết kế, trò thi công với phương thức học tập hợp tác theo nhóm', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '13522644', '', '2020-10-13 21:52:48', ''),
(80, 4, 1, NULL, 'LDT_06', '2', 5, '', 'Nghiên cứu đánh giá quốc gia về kết quả học tập của học sinh phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '11946564', '', '2020-10-13 21:52:48', ''),
(81, 1, 1, NULL, 'LDT_03', '2', 6, '', 'Xu thế phát triển giáo dục tiểu học của một số nước trên thế giới', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10493164', '', '2020-10-13 21:52:48', ''),
(82, 5, 1, NULL, 'LDT_02', '3', 8, '', 'Nghiên cứu biên soạn sách \"Môi trường với cuộc sống của chúng ta\" dành cho học sinh lớp 12', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '12773285', '', '2020-10-13 21:52:48', ''),
(83, 4, 1, NULL, 'LDT_08', '4', 5, '', 'Thực trạng và giải pháp quản lý việc dạy học tiếng dân tộc ở cấp tiểu học', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14048157', '', '2020-10-13 21:52:48', ''),
(84, 1, 1, NULL, 'LDT_05', '4', 1, '', 'Nghiên cứu biên soạn tài liệu về bảo vệ môi trường biển, đảo cho giáo viên và học sinh cấp tiểu học các tỉnh, thành phố ven biển', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10252838', '', '2020-10-13 21:52:48', ''),
(85, 1, 1, NULL, 'LDT_08', '3', 6, '', 'Đánh giá thực trạng trang bị và sử dụng đồ dùng, đồ chơi, thiết bị tối thiểu dùng cho giáo dục mầm non ở một số trường mầm non Hà Nội', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '8425903', '', '2020-10-13 21:52:48', ''),
(86, 6, 1, NULL, 'LDT_04', '4', 7, '', 'Thực trạng tổ chức hoạt động khám phá khoa học cho trẻ mẫu giáo 5-6 tuổi tại một số trường mầm non trên địa bàn Hà Nội', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '17920380', '', '2020-10-13 21:52:48', ''),
(87, 6, 1, NULL, 'LDT_08', '3', 4, '', 'Biên soạn tài liệu về giáo dục bảo vệ môi trường cho trẻ mẫu giáo và tài liệu hướng dẫn các bậc cha mẹ', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '9270935', '', '2020-10-13 21:52:48', ''),
(88, 6, 1, NULL, 'LDT_03', '2', 2, '', 'Nghiên cứu đề xuất các biện pháp nâng cao chất lượng chăm sóc - giáo dục trẻ từ 0 đến 6 tuổi ở gia đình', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '15092316', '', '2020-10-13 21:52:48', ''),
(89, 4, 1, NULL, 'LDT_02', '3', 5, '', 'Nghiên cứu vận dụng các đặc trưng cơ bản của dãy dữ liệu thống kê vào thống kê giáo dục và dự báo giáo dục', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14884033', '', '2020-10-13 21:52:48', ''),
(90, 5, 1, NULL, 'LDT_03', '4', 9, '', 'Tổng quan một số phương pháp ước lượng hiệu quả đầu tư cho giáo dục', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '18116303', '', '2020-10-13 21:52:48', ''),
(91, 1, 1, NULL, 'LDT_02', '3', 3, '', 'Định hướng phát triển giáo dục Việt Nam trong quá trình hội nhập quốc tế', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '17472229', '', '2020-10-13 21:52:48', '');
INSERT INTO `tbldetai` (`pk_imadt`, `fk_smaloainam`, `pk_imatt`, `pk_imattcu`, `pk_smaldt`, `pk_smalh`, `pk_imalv`, `smasodetai`, `stendt`, `dngaybd`, `dngaykt`, `dngayrahan`, `smuctieu`, `ssanpham`, `scapthiet`, `snoidungdaicuong`, `sphuongphap`, `sketcaudetai`, `sdonggopchinh`, `sketluan`, `sphamvi`, `sdcungdung`, `fcptong`, `bsendmail`, `updated_at`, `dngaycapgiaycn`) VALUES
(92, 1, 1, NULL, 'LDT_08', '2', 6, '', 'Xây dựng mô hình xã hội học tập triển khai ở cấp quận thuộc thành phố', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '16621247', '', '2020-10-13 21:52:48', ''),
(93, 1, 1, NULL, 'LDT_03', '3', 1, '', 'Những vấn đề lý luận cơ bản về phát triển nguồn nhân lực ở Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14398804', '', '2020-10-13 21:52:48', ''),
(94, 3, 1, NULL, 'LDT_05', '1', 6, '', 'Dạy tiếng Việt lớp 2 công nghệ giáo dục cho học sinh dân tộc thiểu số tỉnh Lào Cai', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14767304', '', '2020-10-13 21:52:48', ''),
(95, 4, 1, NULL, 'LDT_06', '4', 7, '', 'Nghiên cứu thực trạng quản lý sinh viên trong đào tạo tự niên chế sang học chế tín chỉ tại trường đại học Xây dựng Hà Nội', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '19433289', '', '2020-10-13 21:52:48', ''),
(96, 6, 1, NULL, 'LDT_07', '1', 3, '', 'Kinh nghiệm quốc tế về nhập khẩu dịch vụ giáo dục', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '12495880', '', '2020-10-13 21:52:48', ''),
(97, 3, 1, NULL, 'LDT_08', '3', 9, '', 'Khả năng và biện pháp thực hiện giảng dạy chuyên môn bằng ngoại ngữ', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14001465', '', '2020-10-13 21:52:48', ''),
(98, 4, 1, NULL, 'LDT_04', '2', 9, '', 'Xác định các tiêu chí xây dựng trường đại học Việt Nam theo chuẩn mực quốc tế', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '16779633', '', '2020-10-13 21:52:48', ''),
(99, 1, 1, NULL, 'LDT_06', '4', 6, '', 'Dạy học phân hóa có hình thức tự chọn cho khối 10 ở trường THPT Thực nghiệm', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '18435364', '', '2020-10-13 21:52:48', ''),
(100, 1, 1, NULL, 'LDT_09', '1', 2, '', 'Định hướng chương trình công nghệ trong chương trình giáo dục phổ thông sau 2015', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '7872467', '', '2020-10-13 21:52:48', ''),
(101, 1, 1, NULL, 'LDT_09', '2', 5, '', 'Đặc điểm quan hệ bạn bè của học sinh trung học cơ sở trong giai đoạn hiện nay', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '13223267', '', '2020-10-13 21:52:48', ''),
(102, 6, 1, NULL, 'LDT_07', '1', 3, '', 'Kỹ năng tự nhận thức của học sinh trung học phổ thông hiện nay', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10559540', '', '2020-10-13 21:52:48', ''),
(103, 4, 6, 5, 'LDT_01', '2', 8, 'MHN102919201', 'Xu thế quản lý nhà trường phổ thông ở một số nước công nghiệp hóa', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10259704', '', '2020-10-13 21:52:48', ''),
(104, 2, 1, NULL, 'LDT_09', '3', 5, '', 'Đánh giá giáo viên trung học phổ thông theo chuẩn nghề nghiệp tại tỉnh Lào Cai', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '15407257', '', '2020-10-13 21:52:48', ''),
(105, 1, 6, 4, 'LDT_01', '4', 5, 'MHN018920123', 'Nghiên cứu công bằng xã hội trong tiếp cận giáo dục trung học cơ sở ở tỉnh Điện Biên', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '19095459', '', '2020-10-13 21:52:48', ''),
(106, 5, 1, NULL, 'LDT_05', '1', 7, '', 'Nghiên cứu kinh nghiệm tổ chức hoạt động ngoài giờ lên lớp ở trường phổ thông dân tộc bán trú tỉnh Lào Cai', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5013275', '', '2020-10-13 21:52:48', ''),
(107, 1, 1, NULL, 'LDT_02', '1', 1, '', 'Nghiên cứu lý thuyết siêu nhận thức (metacognitive theory) và đề xuất khả năng ứng dụng trong giáo dục trung học', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '13187561', '', '2020-10-13 21:52:48', ''),
(108, 1, 1, NULL, 'LDT_06', '1', 9, '', 'Nghiên cứu lý thuyết đa trí tuệ (đa trí thông minh) (multiple intelligences) và khả năng ứng dụng vào giáo dục tiểu học', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10256500', '', '2020-10-13 21:52:48', ''),
(109, 1, 1, NULL, 'LDT_05', '2', 6, '', 'Nghiên cứu một số mô hình phong cách học tập (learning styles) và khả năng ứng dụng vào giáo dục trung học phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '16149292', '', '2020-10-13 21:52:48', ''),
(110, 2, 1, NULL, 'LDT_05', '3', 7, '', 'Xây dựng và thử nghiệm một số chủ đề học tập ở tiểu học theo tiếp cận dạy học dự án', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '16547089', '', '2020-10-13 21:52:48', ''),
(117, 4, 1, NULL, 'LDT_07', '2', 10, '', 'Nghiên cứu việc thể hiện quan điểm tích hợp trong chương trình sách giáo khoa, sách giáo viên môn tìm hiểu xã hội cấp tiểu học của Singapore', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '19426880', '', '2020-10-13 21:52:48', ''),
(118, 2, 1, NULL, 'LDT_08', '3', 4, '', 'Một số giải pháp tổ chức dạy học hai buổi trên ngày ở cấp tiểu học phù hợp đối tượng học sinh các vùng miền', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '13979950', '', '2020-10-13 21:52:48', ''),
(119, 5, 7, NULL, 'LDT_07', '1', 2, '', 'Môi trường với cuộc sống của chúng ta dành cho học sinh lớp 9', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '8904724', '', '2020-10-13 21:52:48', '');
INSERT INTO `tbldetai` (`pk_imadt`, `fk_smaloainam`, `pk_imatt`, `pk_imattcu`, `pk_smaldt`, `pk_smalh`, `pk_imalv`, `smasodetai`, `stendt`, `dngaybd`, `dngaykt`, `dngayrahan`, `smuctieu`, `ssanpham`, `scapthiet`, `snoidungdaicuong`, `sphuongphap`, `sketcaudetai`, `sdonggopchinh`, `sketluan`, `sphamvi`, `sdcungdung`, `fcptong`, `bsendmail`, `updated_at`, `dngaycapgiaycn`) VALUES
(120, 5, 1, NULL, 'LDT_02', '4', 1, '', 'Đổi mới quản lý nhà trường giáo dục nghề nghiệp trong quá trình hội nhập quốc tế', '1456808400', '1488344400', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', NULL, '7753448', '', '2020-10-13 21:52:48', ''),
(121, 5, 1, NULL, 'LDT_03', '1', 4, '', 'Đổi mới quản lý nhà trường phổ thông Việt Nam theo hướng định hướng hiệu quả trong bối cảnh phân cấp quản lý giáo dục', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '17213135', '', '2020-10-13 21:52:48', ''),
(122, 2, 2, NULL, 'LDT_01', '4', 7, '', 'Các giải pháp nâng cao năng lực giáo dục cho đội ngũ giáo viên chủ nhiệm lớp ở trường trung học phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10191498', '', '2020-10-13 21:52:48', ''),
(123, 1, 1, NULL, 'LDT_02', '1', 6, '', 'Giải pháp ngăn ngừa các hành vi bạo lực trong học sinh trung học phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14059143', '', '2020-10-13 21:52:48', ''),
(124, 5, 1, NULL, 'LDT_04', '1', 10, '', 'Thực trạng đánh giá trẻ mẫu giáo 5-6 tuổi cuối chủ đề ở trường mầm non', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '18423005', '', '2020-10-13 21:52:48', ''),
(125, 4, 1, NULL, 'LDT_04', '2', 4, '', 'Thực trạng tổ chức hoạt động nhằm phát triển giác quan cho trẻ em 24-36 tháng tuổi trong trường mầm non', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '19306031', '', '2020-10-13 21:52:48', ''),
(126, 4, 1, NULL, 'LDT_04', '2', 4, '', 'Nghiên cứu cơ sở khoa học và giải pháp cho trẻ mầm non làm quen với ngoại ngữ', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14108124', '', '2020-10-13 21:52:48', ''),
(127, 2, 1, NULL, 'LDT_05', '4', 2, '', 'Đổi mới quản lý cơ sở giáo dục mầm non ngoài công lập trong quá trình hội nhập quốc tế', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '9223327', '', '2020-10-13 21:52:48', ''),
(128, 1, 1, NULL, 'LDT_07', '4', 11, '', 'Nghiên cứu đặc điểm phát triển của trẻ mẫu giáo 5 tuổi', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '19688263', '', '2020-10-13 21:52:48', ''),
(129, 1, 1, NULL, 'LDT_06', '2', 3, '', 'Xây dựng bộ tranh chủ đề và tài liệu hướng dẫn giáo viên sử dụng bộ tranh trong các hoạt động giáo dục trẻ mẫu giáo bảo vệ môi trường', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '17736817', '', '2020-10-13 21:52:48', ''),
(130, 2, 2, NULL, 'LDT_01', '3', 4, '', 'Cơ sở lý luận của việc xây dựng luật giáo dục đại học', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '19636078', '', '2020-10-13 21:52:48', ''),
(131, 2, 1, NULL, 'LDT_02', '2', 1, '', 'Xác định chi phí đào tạo đại học ở Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '12678528', '', '2020-10-13 21:52:48', ''),
(132, 5, 1, NULL, 'LDT_02', '4', 10, '', 'Nghiên cứu xây dựng mô hình vườn trường về giáo dục bảo vệ môi trường trong trường tiểu học', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '16705475', '', '2020-10-13 21:52:48', ''),
(133, 5, 1, NULL, 'LDT_03', '4', 8, '', 'Nghiên cứu biên soạn sách \"Môi trường với cuộc sống của chúng ta\" dành cho học sinh lớp 4', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '12036743', '', '2020-10-13 21:52:48', ''),
(134, 5, 1, NULL, 'LDT_08', '4', 2, '', 'Nghiên cứu thiết kế tranh động theo chủ đề nhằm phát triển ngôn ngữ cho trẻ mẫu giáo 5 - 6 tuổi phục vụ đổi mới chương trình giáo dục mầm non', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '13181610', '', '2020-10-13 21:52:48', ''),
(135, 2, 1, NULL, 'LDT_09', '1', 10, '', 'Một số biện pháp đa dạng hóa bổ sung tài liệu tại Viện Khoa học Giáo dục Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5205993', '', '2020-10-13 21:52:48', ''),
(136, 1, 2, NULL, 'LDT_01', '3', 11, '', 'Nghiên cứu vận dụng phương pháp phân tích hồi quy trong khoa học giáo dục', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '7130890', '', '2020-10-13 21:52:48', ''),
(137, 4, 1, NULL, 'LDT_06', '1', 3, '', 'Xu hướng nghiên cứu giáo dục hiện nay của một số nước trên thế giới', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '9237060', '', '2020-10-13 21:52:48', ''),
(138, 4, 1, NULL, 'LDT_09', '1', 8, '', 'Đánh giá thực trạng hoạt động và sử dụng website Viện Khoa học Giáo dục Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '18650971', '', '2020-10-13 21:52:48', ''),
(139, 5, 1, NULL, 'LDT_02', '3', 8, '', 'Đánh giá quá trình nghiên cứu khoa học của trung tâm nghiên cứu giáo dục dân tộc', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5086975', '', '2020-10-13 21:52:48', ''),
(140, 5, 1, NULL, 'LDT_04', '2', 10, '', 'Thực trạng tính tích cực lao động của công chức phường tại Hà Nội', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '11120758', '', '2020-10-13 21:52:48', ''),
(141, 5, 1, NULL, 'LDT_01', '4', 8, '', 'Số hóa hồ sơ quản lý khoa học của Viện Khoa học Giáo dục Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '8869018', '', '2020-10-13 21:52:48', '');
INSERT INTO `tbldetai` (`pk_imadt`, `fk_smaloainam`, `pk_imatt`, `pk_imattcu`, `pk_smaldt`, `pk_smalh`, `pk_imalv`, `smasodetai`, `stendt`, `dngaybd`, `dngaykt`, `dngayrahan`, `smuctieu`, `ssanpham`, `scapthiet`, `snoidungdaicuong`, `sphuongphap`, `sketcaudetai`, `sdonggopchinh`, `sketluan`, `sphamvi`, `sdcungdung`, `fcptong`, `bsendmail`, `updated_at`, `dngaycapgiaycn`) VALUES
(142, 6, 6, 3, 'LDT_01', '4', 7, 'MHN918201937', 'Nghiên cứu đề xuất mô hình và ứng dụng công nghệ thông tin vào công tác quản lý điều hành của văn phòng Bộ Giáo dục và Đào tạo', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '7450409', '', '2020-10-13 21:52:48', ''),
(143, 2, 1, NULL, 'LDT_06', '1', 2, '', 'Đổi mới hệ thống giáo dục quốc dân Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '8102722', '', '2020-10-13 21:52:48', ''),
(144, 2, 1, NULL, 'LDT_07', '4', 9, '', 'Xác định nội dung học tập vì sự phát triển bền vững ở trung tâm học tập cộng đồng tỉnh Hòa Bình', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '11331329', '', '2020-10-13 21:52:48', ''),
(145, 4, 1, NULL, 'LDT_09', '4', 4, '', 'Hệ thống giáo dục thường xuyên Việt Nam trong những năm đầu của thế kỷ XXI', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '17963868', '', '2020-10-13 21:52:48', ''),
(146, 1, 1, NULL, 'LDT_04', '3', 8, '', 'Phân cấp quản lý giáo dục thường xuyên trong những thập kỷ đầu của thế kỷ XXI', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '18486176', '', '2020-10-13 21:52:48', ''),
(147, 2, 1, NULL, 'LDT_08', '4', 4, '', 'Thực trạng quản lý đào tạo kỹ sư lâm nghiệp ở một số trường đại học Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '17534485', '', '2020-10-13 21:52:48', ''),
(148, 3, 1, NULL, 'LDT_08', '4', 6, '', '	Nghiên cứu việc sử dụng quy thời gian ngoài giờ lên lớp của sinh viên ở một số trường đại học trên địa bàn Hà Nội', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '12918854', '', '2020-10-13 21:52:48', ''),
(149, 3, 1, NULL, 'LDT_05', '4', 1, '', 'Thực trạng tuyển sinh của các trường cao đẳng nghề trên địa bàn thành phố Hà Nội', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '6052856', '', '2020-10-13 21:52:48', ''),
(150, 4, 1, NULL, 'LDT_07', '1', 5, '', 'Các biện pháp nâng cao trí tuệ cảm xúc cho sinh viên trường đại học Đồng Tháp', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '8164520', '', '2020-10-13 21:52:48', ''),
(151, 6, 1, NULL, 'LDT_05', '4', 9, '', 'Thực trạng đào tạo nghề đáp ứng nhu cầu doanh nghiệp trong bối cảnh hiện nay', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14163513', '', '2020-10-13 21:52:48', ''),
(152, 3, 1, NULL, 'LDT_05', '2', 3, '', 'Chính sách phát triển đội ngũ giảng viên các trường đại học ngoài công lập', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '13539581', '1', '2020-10-13 21:52:48', ''),
(153, 2, 1, NULL, 'LDT_03', '4', 2, '', 'Nghiên cứu xây dựng mô hình dự báo phát triển giáo dục đại học Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10167236', '', '2020-10-13 21:52:48', ''),
(154, 4, 1, NULL, 'LDT_02', '4', 10, '', 'Nghiên cứu kỹ năng quá trình khoa học (Science process skills) trong chương trình môn khoa học một số nước', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '15391693', '', '2020-10-13 21:52:48', ''),
(155, 2, 1, NULL, 'LDT_01', '4', 8, '', 'Một số biện pháp giúp giáo viên thiết kế và kiểm tra hiệu quả công cụ đánh giá kết quả học tập của học sinh ở trường phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '16271057', '', '2020-10-13 21:52:48', ''),
(156, 2, 1, NULL, 'LDT_04', '4', 7, '', 'Vận dụng quan điểm tích hợp trong việc phát triển chương trình giáo dục Việt Nam giai đoạn sau 2015', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '18349762', '', '2020-10-13 21:52:48', ''),
(157, 4, 1, NULL, 'LDT_04', '3', 6, '', 'Nâng cao hiệu quả sử dụng bản đồ sách giáo khoa trong dạy học Địa lý ở trường trung học cơ sở', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '14838257', '', '2020-10-13 21:52:48', ''),
(158, 4, 1, NULL, 'LDT_06', '2', 6, '', 'Đánh giá kết quả học tập môn Ngữ Văn của học sinh theo hướng hình thành năng lực', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '11573944', '', '2020-10-13 21:52:48', ''),
(159, 3, 1, NULL, 'LDT_03', '2', 6, '', 'Nghiên cứu so sánh chương trình môn Toán trung học cơ sở của một số nước và Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '19638367', '', '2020-10-13 21:52:48', ''),
(160, 3, 1, NULL, 'LDT_02', '3', 11, '', 'Đánh giá kết quả học tập môn Toán lớp 1 công nghệ giáo dục năm học 2009-2010 của học sinh lớp 1, khối tiểu học - trường PTCS Thực nghiệm, Viện Khoa học Giáo dục Việt Nam', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10005646', '', '2020-10-13 21:52:48', ''),
(161, 2, 1, NULL, 'LDT_04', '2', 6, '', '	Tổng quan kinh nghiệm quốc tế về trường phổ thông hiệu quả', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '12097168', '', '2020-10-13 21:52:48', ''),
(162, 5, 6, 5, 'LDT_01', '2', 2, 'MHN01927182910', '	Cơ sở lý luận về năng lực lãnh đạo của hiệu trưởng nhà trường trung học phổ thông', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5617523', '', '2020-10-13 21:52:48', ''),
(169, 2, 6, 3, 'LDT_01', '3', 1, 'MHN91829101', 'Xu thế phát triển nội dung học vấn phổ thông ở Việt Nam sau năm 2015', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5003662', '', '2020-10-13 21:52:48', '');
INSERT INTO `tbldetai` (`pk_imadt`, `fk_smaloainam`, `pk_imatt`, `pk_imattcu`, `pk_smaldt`, `pk_smalh`, `pk_imalv`, `smasodetai`, `stendt`, `dngaybd`, `dngaykt`, `dngayrahan`, `smuctieu`, `ssanpham`, `scapthiet`, `snoidungdaicuong`, `sphuongphap`, `sketcaudetai`, `sdonggopchinh`, `sketluan`, `sphamvi`, `sdcungdung`, `fcptong`, `bsendmail`, `updated_at`, `dngaycapgiaycn`) VALUES
(170, 2, 1, NULL, 'LDT_08', '1', 2, '', 'Thực trạng đánh giá kết quả học tập của học sinh ở nhà trường phổ thông hiện nay', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '15413666', '', '2020-10-13 21:52:48', ''),
(171, 5, 1, NULL, 'LDT_09', '3', 4, '', '	Nghiên cứu biên soạn sách \"Môi trường với cuộc sống của chúng ta\" dành cho học sinh lớp 11', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '17611390', '', '2020-10-13 21:52:48', ''),
(172, 2, 1, NULL, 'LDT_05', '3', 4, '', 'Nghiên cứu thực trạng và giải pháp phân luồng học sinh các trường phổ thông dân tộc nội trú', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10110016', '', '2020-10-13 21:52:48', ''),
(173, 6, 1, NULL, 'LDT_04', '3', 9, '', 'Đánh giá hiệu quả dạy học song ngữ với trẻ mẫu giáo 5 tuổi trong chương trình giáo dục song ngữ trên cơ sở tiếng mẹ đẻ', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '7213745', '', '2020-10-13 21:52:48', ''),
(174, 3, 1, NULL, 'LDT_09', '4', 11, '', 'Khảo sát thực trạng tổ chức cho sinh viên cao đẳng sư phạm mầm non rèn luyện kỹ năng phát triển chương trình giáo dục cá nhân', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '11478729', '', '2020-10-13 21:52:48', ''),
(175, 6, 1, NULL, 'LDT_04', '3', 11, '', 'Xây dựng tiêu chí trường mầm non chất lượng cao trong xu thế hội nhập quốc tế', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '13830261', '', '2020-10-13 21:52:48', ''),
(176, 3, 1, NULL, 'LDT_03', '1', 6, '', 'Nghiên cứu thực trạng và giải pháp phổ cập giáo dục mẫu giáo 5 tuổi ở vùng đồng bằng sông Cửu Long', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '15711212', '', '2020-10-13 21:52:48', ''),
(177, 6, 1, NULL, 'LDT_01', '4', 7, '', 'Một số biện pháp tăng cường phổ biến thông tin nghiên cứu khoa học giáo dục trong giai đoạn hiện nay', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '15136719', '', '2020-10-13 21:52:48', ''),
(178, 1, 1, NULL, 'LDT_02', '3', 8, '', 'Phân tích một số hình thức hợp tác nhà nước - tư nhân trong giáo dục của một số nước trên thế giới', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '11030121', '', '2020-10-13 21:52:48', ''),
(179, 3, 1, NULL, 'LDT_02', '4', 2, '', 'Hệ thống giáo dục miền nam Việt Nam giai đoạn 1954 - 1975', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '12715149', '', '2020-10-13 21:52:48', ''),
(180, 6, 1, NULL, 'LDT_06', '3', 4, '', 'Giải pháp hoàn thiện hệ thống pháp luật về giáo dục giai đoạn 2010 - 2020', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '18939362', '', '2020-10-13 21:52:48', ''),
(181, 5, 6, 5, 'LDT_01', '2', 2, 'MHN0236529', 'Khảo sát nội dung văn hóa dân tộc trong sách Mỹ thuật lớp 1 chương trình giáo dục song ngữ trên cơ sở tiếng mẹ đẻ', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '13303833', '', '2020-10-13 21:52:48', ''),
(182, 5, 1, NULL, 'LDT_09', '3', 11, '', 'Nguyên cứu động cơ và các yếu tố tác động tới động cơ học tập của người lớn trong giai đoạn hiện nay', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '15474091', '', '2020-10-13 21:52:48', ''),
(183, 4, 1, NULL, 'LDT_02', '1', 4, '', 'Nghiên cứu một số vấn đề lý luận cơ bản của giáo dục người lớn', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '10047302', '', '2020-10-13 21:52:48', ''),
(184, 1, 1, NULL, 'LDT_02', '3', 9, '', 'Tìm hiểu những khó khăn của giám đốc trong quản lý trung tâm học tập cộng đồng', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '17450714', '', '2020-10-13 21:52:48', ''),
(185, 2, 7, NULL, 'LDT_02', '1', 10, '', 'Xây dựng và thử nghiệm bộ công cụ nhận biết khó khăn về đọc ở học sinh tiểu học', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '8746338', '', '2020-10-13 21:52:48', ''),
(186, 5, 1, NULL, 'LDT_07', '4', 6, '', 'Xây dựng một số bài tập về phát hiện sớm và can thiệp sớm cho trẻ khuyết tật ngôn ngữ', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '18716889', '', '2020-10-13 21:52:48', ''),
(187, 6, 1, NULL, 'LDT_08', '4', 8, '', 'Nghiên cứu chính sách đào tạo nhằm đáp ứng nhu cầu xã hội tại một số trường đại học', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '9107971', '', '2020-10-13 21:52:48', ''),
(188, 5, 1, NULL, 'LDT_07', '2', 9, '', 'Tính toán chi phí của học sinh trong các cơ sở giáo dục nghề nghiệp khu vực Hà Nội', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '16401520', '', '2020-10-13 21:52:48', ''),
(189, 6, 1, NULL, 'LDT_02', '1', 7, '', 'Thực trạng tổ chức đào tạo liên thông từ trung cấp chuyên nghiệp lên cao đẳng khối ngành kinh tế trên địa bàn thành phố Hà Nội', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '15995484', '', '2020-10-13 21:52:48', ''),
(190, 3, 1, NULL, 'LDT_02', '2', 1, '', 'Thực trạng việc phối hợp đào tạo giữa trường trung cấp chuyên nghiệp với doanh nghiệp tại Hà Nội', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '7164764', '', '2020-10-13 21:52:48', ''),
(191, 6, 1, NULL, 'LDT_09', '1', 9, '', 'Nghiên cứu việc sử dụng quy thời gian ngoài giờ lên lớp của sinh viên ở một số trường đại học trên địa bàn Hà Nội', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '5678405', '', '2020-10-13 21:52:48', '');
INSERT INTO `tbldetai` (`pk_imadt`, `fk_smaloainam`, `pk_imatt`, `pk_imattcu`, `pk_smaldt`, `pk_smalh`, `pk_imalv`, `smasodetai`, `stendt`, `dngaybd`, `dngaykt`, `dngayrahan`, `smuctieu`, `ssanpham`, `scapthiet`, `snoidungdaicuong`, `sphuongphap`, `sketcaudetai`, `sdonggopchinh`, `sketluan`, `sphamvi`, `sdcungdung`, `fcptong`, `bsendmail`, `updated_at`, `dngaycapgiaycn`) VALUES
(192, 3, 1, NULL, 'LDT_09', '1', 5, '', '	Phân cấp quản lý giáo dục thường xuyên trong những thập kỷ đầu của thế kỷ XXI', '1456808400', '1488344400', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '13448029', '', '2020-10-13 21:52:48', ''),
(193, 5, 1, NULL, 'LDT_09', '1', 7, '', 'Không gian học tập của sinh viên ở một số trường đại học', '1456790400', '1488326400', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', NULL, '12082520', '', '2020-10-13 21:52:48', ''),
(194, 1, 1, NULL, 'LDT_05', '2', 5, '', 'Nghiên cứu xu hướng nhu cầu nhân lực có trình độ đại học của Việt Nam trong quá trình công nghiệp hóa', '1456790400', '1488326400', '', '<p style=\"text-align: justify;\">Nhận biết xu hướng về nhu cầu nh&acirc;n lực c&oacute; tr&igrave;nh độ đại học của Việt Nam trong qu&aacute; tr&igrave;nh c&ocirc;ng nghiệp ho&aacute; v&agrave; đề xuất một số khuyến nghị nhằm tăng cường khả năng đ&aacute;p ứng của GDĐH với nhu cầu nh&acirc;n lực ởViệt Nam.</p>\r\n', '<p style=\"text-align: justify;\">Nghi&ecirc;n cứu xu hướng nhu cầu nh&acirc;n lực c&oacute; tr&igrave;nh độ đại học l&agrave; nội dung cần thiết, đặc biệt trong bối cảnh ph&aacute;t triển hiện nay của Việt Nam. C&aacute;c nghi&ecirc;n cứu, ph&acirc;n t&iacute;ch kh&aacute;i niệm, thuật ngữ ch&iacute;nh li&ecirc;n quan cũng như c&aacute;c yếu tố ảnh hưởng tới xu hướng nhu cầu nh&acirc;n lực trong bối cảnh thực hiện c&ocirc;ng nghiệp h&oacute;a, xem x&eacute;t thực trạng cung-cầu nh&acirc;n lực tr&igrave;nh độ ĐH cho thấy Việt Nam đang v&agrave; sẽ đứng trước nhu cầu nh&acirc;n lực c&oacute; tr&igrave;nh độ (trong đ&oacute; c&oacute; tr&igrave;nh độ ĐH) ng&agrave;y c&agrave;ng cao v&agrave; c&oacute; nhiều thay đổi cả về số lượng, cơ cấu v&agrave; chất lượng. Nh&igrave;n chung, c&oacute; thể n&oacute;i tăng tỉ trọng nh&acirc;n lực c&oacute; tr&igrave;nh độ đại học v&agrave; điều chỉnh cơ cấu nh&acirc;n lực c&oacute; tr&igrave;nh độ đại học theo ng&agrave;nh kinh tế của Việt Nam l&agrave; điều tất yếu v&agrave; cấp b&aacute;ch trong thời điểm hiện nay. Tuy nhi&ecirc;n, l&agrave;m thế n&agrave;o để đ&aacute;p ứng nhu cầu nh&acirc;n lực tr&igrave;nh độ cao theo định hướng đ&uacute;ng đắn nhất, ph&aacute;t huy được hiệu quả cao nhất yếu tố nh&acirc;n lực l&agrave; vấn đề cần được t&igrave;m hiểu tiếp một c&aacute;ch kỹ lưỡng, cẩn trọng hơn. Muốn ph&aacute;t triển nhanh, thực hiện CNH hiệu quả v&agrave; th&agrave;nh c&ocirc;ng, đạt được lợi thế so s&aacute;nh cao Việt Nam cần nhanh ch&oacute;ng ph&aacute;t triển nguồn nh&acirc;n lực c&oacute; chất lượng cao, đặc biệt nh&acirc;n lực c&oacute; tr&igrave;nh độ đại học đ&aacute;p ứng y&ecirc;u cầu của thị trường lao động cả về cơ cấu, số lượng v&agrave; chất lượng. Để l&agrave;m được điều n&agrave;y, cần c&oacute; cơ chế li&ecirc;n kết trao đổi, chia sẻ th&ocirc;ng tin giữa Bộ Lao động Thương binh v&agrave; X&atilde; hội, Tổng cục Thống k&ecirc; v&agrave; Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo về bộ số liệu chuy&ecirc;n s&acirc;u hơn v&agrave; c&oacute; độ tin cậy cao hơn từ dữ liệu Thống k&ecirc; Lao động Việc l&agrave;m, Điều tra doanh nghiệp... để việc ph&acirc;n t&iacute;ch xu hướng hay dự b&aacute;o được ch&iacute;nh x&aacute;c hơn, qua đ&oacute; b&ecirc;n đ&agrave;o tạo c&oacute; một k&ecirc;nh th&ocirc;ng tin tham khảo quan trọng phục vụ việc hoạch định kế hoạch, nội dung đ&agrave;o tạo. Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo cần x&acirc;y dựng bộ ti&ecirc;u ch&iacute;, chỉ số phục vụ cho việc lấy số liệu theo ng&agrave;nh đ&agrave;o tạo tương th&iacute;ch ở một mức độ nhất định với c&aacute;ch ph&acirc;n chia c&aacute;c nh&oacute;m ng&agrave;nh kinh tế hiện nay để tạo điều kiện cho việc ph&acirc;n t&iacute;ch, so s&aacute;nh cung-cầu nh&acirc;n lực đ&agrave;o tạo theo c&aacute;c nh&oacute;m ng&agrave;nh hoặc khu vực kinh tế được khả thi. Những dữ liệu n&agrave;y sẽ rất cần thiết cho cả b&ecirc;n đ&agrave;o tạo - b&ecirc;n cung v&agrave; b&ecirc;n sử dụng - b&ecirc;n cầu lao động, đặc biệt l&agrave; b&ecirc;n đ&agrave;o tạo để c&oacute; thể điều chỉnh quy m&ocirc;, cơ cấu đ&agrave;o tạo cho ph&ugrave; hợp hơn với nhu cầu từ thị trường, chứ kh&ocirc;ng chỉ đ&agrave;o tạo theo chỉ ti&ecirc;u từ Bộ giao xuống như hiện nay.&nbsp;<br />\r\n<br />\r\nCần bổ sung th&ocirc;ng tin về nhu cầu nh&acirc;n lực của doanh nghiệp v&agrave;o nội dung của cuộc Khảo s&aacute;t Doanh nghiệp h&agrave;ng năm do Tổng cục thống k&ecirc; đang tổ chức. Điều n&agrave;y cho ph&eacute;p c&aacute;c cấp quản l&yacute; cũng như ng&agrave;nh GD nắm bắt được xu hướng cụ thể của thị trường lao động để đ&aacute;p ứng được tốt hơn nhu cầu ph&aacute;t triển.</p>\r\n\r\n<p style=\"text-align: justify;\">Tin mới hơn</p>\r\n', '<p style=\"text-align: justify;\">Ph&aacute;t triển nguồn lực con người l&agrave; yếu tố chủ chốt quyết định sự ph&aacute;t triển của quốc gia. Điều n&agrave;y đ&atilde; được x&aacute;c định r&otilde; trong c&aacute;c nhiều văn kiện quan trọng của Việt Nam. Trong Nghị quyết TƯ2 của BCH Trung ương Đảng Kh&oacute;a VIII đ&atilde; n&ecirc;u r&otilde;: &quot;Muốn tiến h&agrave;nh c&ocirc;ng nghiệp h&oacute;a, hiện đại h&oacute;a thắng lợi phải ph&aacute;t triển mạnh gi&aacute;o dục v&agrave; đ&agrave;o tạo, ph&aacute;t huy nguồn lực con người, yếu tố cơ bản của sự ph&aacute;t triển nhanh v&agrave; bền vững&quot;. Chiến lược ph&aacute;t triển kinh tế-x&atilde; hội 2011-2020 cũng đ&atilde; nhấn mạnh: &quot;Ph&aacute;t triển nhanh nguồn nh&acirc;n lực, nhất l&agrave; nguồn nh&acirc;n lực chất lượng cao l&agrave; một trong ba kh&acirc;u đột ph&aacute; nhằm đưa Việt Nam đến năm 2020 cơ bản trở th&agrave;nh nước c&ocirc;ng nghiệp theo hướng hiện đại&quot;. Hiện nay, y&ecirc;u cầu của qu&aacute; tr&igrave;nh CNH, sự ph&aacute;t triển kh&ocirc;ng ngừng của KH-CN v&agrave; xu hướng hội nhập quốc tế về kinh tế, văn ho&aacute; c&agrave;ng đặt ra y&ecirc;u cầu lớn cho cung nh&acirc;n lực c&oacute; tr&igrave;nh độ. Đặc biệt l&agrave; đối với Việt Nam, một nước đang ph&aacute;t triển c&oacute; thu nhập thấp với phần đ&oacute;ng g&oacute;p của tri thức v&agrave;o ph&aacute;t triển kinh tế rất hạn chế. Thực tế, thực trạng cung-cầu nh&acirc;n lực Việt Nam đặc biệt l&agrave; nh&acirc;n lực c&oacute; tr&igrave;nh độ đại học hiện nay đang c&ograve;n nhiều bất cập: giữa quy m&ocirc; chung v&agrave; cấu tr&uacute;c cung-cầu sức lao động. Một trong những nguy&ecirc;n nh&acirc;n quan trọng của những bất cập n&agrave;y l&agrave; do b&ecirc;n đ&agrave;o tạo-cung nh&acirc;n lực kh&ocirc;ng nắm bắt được nhu cầu về nh&acirc;n lực theo tr&igrave;nh độ, ng&agrave;nh nghề của thị trường lao động. Trong thời gian qua, nhằm giải quyết c&aacute;c vấn đề n&agrave;y, Việt Nam đ&atilde; ch&uacute; trọng nhiều hơn tới c&ocirc;ng t&aacute;c th&ocirc;ng tin thị trường lao động v&agrave; dự b&aacute;o nhu cầu nh&acirc;n lực. Tuy nhi&ecirc;n, do hạn chế về nguồn lực nhất l&agrave; về khả năng dự b&aacute;o, hệ thống số liệu kh&ocirc;ng đầy đủ, thiếu t&iacute;nh li&ecirc;n tục v&agrave; thống nhất&hellip; n&ecirc;n kết quả thực hiện nhiệm vụ n&agrave;y c&ograve;n rất hạn chế. Đ&acirc;y cũng l&agrave; th&aacute;ch thức cho hệ thống gi&aacute;o dục n&oacute;i chung v&agrave; GDĐH n&oacute;i ri&ecirc;ng. Do đ&oacute;, việc ph&acirc;n t&iacute;ch, nhận định xu hướng nhu cầu nh&acirc;n lực c&oacute; tr&igrave;nh độ ĐH về cơ cấu, số lượng cũng như chất lượng l&agrave; việc l&agrave;m cần thiết, g&oacute;p phần quan trọng trong việc cung cấp th&ocirc;ng tin cho c&aacute;c nh&agrave; hoạch định ch&iacute;nh s&aacute;ch cũng như b&ecirc;n đ&agrave;o tạo c&oacute; được c&aacute;c quyết định ph&ugrave; hợp, g&oacute;p phần giải quyết vấn đề cung-cầu nh&acirc;n lực hiện nay.</p>\r\n', '<p style=\"text-align: justify;\">- Nghi&ecirc;n cứu cơ sở l&yacute; luận: l&agrave;m r&otilde; một số kh&aacute;i niệm: xu hướng, nh&acirc;n lực, nhu cầu nh&acirc;n lực, tr&igrave;nh độ đại học, thị trường lao động, c&ocirc;ng nghiệp ho&aacute;; v&agrave; một số vấn đề l&yacute; luận li&ecirc;n quan như c&aacute;c quy luật của thị trường lao động, c&aacute;c yếu tố t&aacute;c động đến xu hướng nhu cầu nh&acirc;n lực.<br />\r\n- Tổng quan t&igrave;nh h&igrave;nh đ&aacute;p ứng của GDĐH với nhu cầu nh&acirc;n lực tr&igrave;nh độ đại học của thị trường lao động Việt Nam.<br />\r\n- Nghi&ecirc;n cứu xu hướng nhu cầu nh&acirc;n lực c&oacute; tr&igrave;nh độ đại học về số lượng (tỷ lệ lao động c&oacute; tr&igrave;nh độ đại học trong cơ cấu lao động của tổng thể nền kinh tế v&agrave; c&aacute;c 3 khu vực kinh tế: n&ocirc;ng, l&acirc;m nghiệp v&agrave; thuỷ sản, c&ocirc;ng nghiệp v&agrave; x&acirc;y dựng, dịch vụ).<br />\r\n- Đề xuất một số khuyến nghị nhằm tăng cường khả năng đ&aacute;p ứng của b&ecirc;n đ&agrave;o tạo với nhu cầu nh&acirc;n lực c&oacute; tr&igrave;nh độ đại học của thị trường lao động ở Việt Nam.</p>\r\n', '<p>Đề t&agrave;i chủ yếu tập trung nghi&ecirc;n cứu t&agrave;i liệu, dữ liệu hiện c&oacute; để ph&acirc;n t&iacute;ch, đưa ra c&aacute;c nhận định về xu hướng nhu cầu nh&acirc;n lực tr&igrave;nh độ đại học của thị trường lao động Việt Nam về số lượng</p>\r\n', '<p style=\"text-align: justify;\">Nội dung đề t&agrave;i: đề t&agrave;i gồm 3 chương:<br />\r\n<br />\r\n<em>Chương 1. Một số vấn đề l&yacute; luận chung về xu hướng nhu cầu nh&acirc;n lực c&oacute; tr&igrave;nh độ đại học của Việt Nam trong qu&aacute; tr&igrave;nh c&ocirc;ng nghiệp h&oacute;a</em><br />\r\n<br />\r\n1.1. Một số kh&aacute;i niệm được sử dụng trong đề t&agrave;i<br />\r\n1.2 Một số yếu tố t&aacute;c động đến xu hướng nhu cầu nh&acirc;n lực<br />\r\n<br />\r\n<em>Chương 2. Kh&aacute;i qu&aacute;t về t&igrave;nh h&igrave;nh nh&acirc;n lực của Việt Nam</em><br />\r\n<br />\r\n2.1. Kh&aacute;i qu&aacute;t t&igrave;nh h&igrave;nh nh&acirc;n lực của Việt Nam<br />\r\n2.2. Tổng quan t&igrave;nh h&igrave;nh lao động ở Việt Nam<br />\r\n<br />\r\n<em>Chương 3. Xu hướng nhu cầu nguồn nh&acirc;n lực c&oacute; tr&igrave;nh độ Đại học của Việt Nam trong qu&aacute; tr&igrave;nh c&ocirc;ng nghiệp h&oacute;a</em><br />\r\n<br />\r\n3.1. Xu thế của thị trường lao động Việt Nam&nbsp;<br />\r\n3.2. Xu hướng nhu cầu nh&acirc;n lực theo kinh nghiệm quốc tế<br />\r\n3.3. Xu hướng nhu cầu nh&acirc;n lực c&oacute; tr&igrave;nh độ đại học ở Việt Nam<br />\r\n<br />\r\n<em>8. Những đ&oacute;ng g&oacute;p ch&iacute;nh của đề t&agrave;i</em><br />\r\n<br />\r\nĐề t&agrave;i đ&atilde; l&agrave;m r&otilde; một số kh&aacute;i niệm: xu hướng, nh&acirc;n lực, nhu cầu nh&acirc;n lực, tr&igrave;nh độ đại học, thị trường lao động, c&ocirc;ng nghiệp ho&aacute;; v&agrave; một số vấn đề l&yacute; luận li&ecirc;n quan như c&aacute;c quy luật của thị trường lao động, c&aacute;c yếu tố t&aacute;c động đến xu hướng nhu cầu nh&acirc;n lực. Đề t&agrave;i đ&atilde; nghi&ecirc;n cứu tổng quan t&igrave;nh h&igrave;nh đ&aacute;p ứng của GDĐH với nhu cầu nh&acirc;n lực tr&igrave;nh độ đại học của thị trường lao động Việt Nam. Đề t&agrave;i đ&atilde; sử dụng phương ph&aacute;p so s&aacute;nh v&agrave; ph&acirc;n t&iacute;ch thống k&ecirc; để t&igrave;m hiểu xu hướng nhu cầu nh&acirc;n lực c&oacute; tr&igrave;nh độ đại học của Việt Nam về mặt số lượng (của tổng thể nền kinh tế v&agrave; 3 khu vực kinh tế: n&ocirc;ng, l&acirc;m nghiệp v&agrave; thuỷ sản, c&ocirc;ng nghiệp v&agrave; x&acirc;y dựng, dịch vụ). Đề xuất một số khuyến nghị nhằm tăng cường khả năng đ&aacute;p ứng của GDĐH với nhu cầu nh&acirc;n lực c&oacute; tr&igrave;nh độ ĐH ở Việt Nam.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', NULL, '19723969', '', '2020-10-13 21:52:48', ''),
(195, 6, 1, NULL, 'LDT_07', '2', 7, '', 'Thực trạng công tác bồi dưỡng cho giáo viên dạy ở các trung tâm giáo dục thường xuyên', '1456790400', '1488326400', '', '<p style=\"text-align: justify;\">Nghi&ecirc;n cứu thực trạng c&ocirc;ng t&aacute;c bồi dưỡng cho GV dạy ở c&aacute;c Trung t&acirc;m GDTX, tr&ecirc;n cơ sở đ&oacute; đề xuất một số biện ph&aacute;p nhằm n&acirc;ng cao chất lượng c&ocirc;ng t&aacute;c bồi dưỡng cho GV GDTX trong thời gian tới.</p>\r\n', '<p style=\"text-align: justify;\">Với những nghi&ecirc;n cứu thực trạng c&ocirc;ng t&aacute;c bồi dưỡng cho gi&aacute;o vi&ecirc;n dạy ở c&aacute;c trung t&acirc;m gi&aacute;o dục thường xuy&ecirc;n, đề t&agrave;i đ&atilde; khuyến nghị:<br />\r\n<br />\r\n<em>Với Bộ GD&amp;ĐT</em>: 1/ Bộ GD&amp;ĐT cần kịp thời ban h&agrave;nh những văn bản chỉ đạo, hướng dẫn cụ thể đối với c&ocirc;ng t&aacute;c bồi dưỡng GV TTGDTX. 2/ Với sự hạn chế của nguồn GV/HDV cấp tỉnh hạn chế như hiện nay, Bộ GD&amp;ĐT cần c&oacute; ch&iacute;nh s&aacute;ch x&acirc;y dựng đội ngũ GV/HDV cốt c&aacute;n cấp tỉnh để đảm nhiệm vai tr&ograve; n&ograve;ng cốt trong c&ocirc;ng t&aacute;c BD tại địa phương. 3/ Tăng cường hơn nữa việc tổ chức c&aacute;c lớp bồi dưỡng cho GV, đồng thời mở rộng đối tượng GV tham gia c&aacute;c lớp bồi dưỡng.<br />\r\n<br />\r\n<em>Với c&aacute;c Sở GD&amp;ĐT</em>: 1/ C&aacute;c Sở GD&amp;ĐT dựa tr&ecirc;n sự chỉ đạo, hướng dẫn của Bộ GD&amp;ĐT cần ban h&agrave;nh kịp thời c&aacute;c văn bản chỉ đạo, hướng dẫn cụ thể để c&aacute;c trung t&acirc;m GDTX triển khai c&ocirc;ng t&aacute;c bồi dưỡng. Sở GD&amp;ĐT c&aacute;c tỉnh/th&agrave;nh phố cần sẵn s&agrave;ng hỗ trợ c&aacute;c trung t&acirc;m GDTX, đặc biệt l&agrave; đội ngũ GV/HDV v&agrave; t&agrave;i liệu bồi dưỡng, thực hiện c&ocirc;ng t&aacute;c bồi dưỡng GV tại Trung t&acirc;m. 2/ Tr&ecirc;n cơ sở chương tr&igrave;nh v&agrave; t&agrave;i liệu bồi dưỡng của Bộ GD&amp;ĐT, c&aacute;c Sở GD&amp;ĐT v&agrave; c&aacute;c trung t&acirc;m GDTX cần t&iacute;ch cực, chủ động x&acirc;y dựng chương tr&igrave;nh, t&agrave;i liệu bồi dưỡng GV, tổ chức c&aacute;c lớp bồi dưỡng ph&ugrave; hợp với thực tế địa phương. 3/ Sở GD&amp;ĐT phải lu&ocirc;n giữ vai tr&ograve; điều h&agrave;nh ch&iacute;nh, huy động được c&aacute;c lực lượng tại địa phương, tận dụng tối đa nguồn c&aacute;n bộ giảng dạy ở trường sư phạm, những GV c&oacute; tr&igrave;nh độ chuy&ecirc;n m&ocirc;n v&agrave; khả năng bồi dưỡng tốt để tham gia v&agrave;o c&ocirc;ng t&aacute;c bồi dưỡng.<br />\r\n<br />\r\n<em>Với c&aacute;c trung t&acirc;m GDTX</em>: 1/ C&aacute;c trung t&acirc;m GDTX cần đẩy mạnh tuy&ecirc;n truyền n&acirc;ng cao nhận thức cho c&aacute;n bộ quản l&yacute; v&agrave; GV to&agrave;n Trung t&acirc;m về vai tr&ograve;, &yacute; nghĩa của c&ocirc;ng t&aacute;c bồi dưỡng. 2/ C&aacute;c trung t&acirc;m GDTX cần chủ động trong việc x&acirc;y dựng kế hoạch v&agrave; triển khai c&ocirc;ng t&aacute;c bồi dưỡng GV tại Trung t&acirc;m, đặc biệt l&agrave; h&igrave;nh thức bồi dưỡng tại chỗ; khuyến kh&iacute;ch c&aacute;c GV đi học n&acirc;ng cao tr&igrave;nh độ, bồi dưỡng chuy&ecirc;n m&ocirc;n, nghiệp vụ th&ocirc;ng qua tự học, tự bồi dưỡng, tăng cường chất lượng c&aacute;c buổi sinh hoạt chuy&ecirc;n m&ocirc;n.</p>\r\n', '<p style=\"text-align: justify;\">Trong thời đại ng&agrave;y nay, khi gi&aacute;o dục đ&agrave;o tạo trở th&agrave;nh một trong những nh&acirc;n tố th&uacute;c đẩy sự ph&aacute;t triển của c&aacute;c quốc gia th&igrave; vấn đề chất lượng gi&aacute;o dục cần phải được ch&uacute; trọng hơn bao giờ hết. Trong đ&oacute;, vai tr&ograve; của người GV trong qu&aacute; tr&igrave;nh dạy học ng&agrave;y c&agrave;ng được n&acirc;ng cao.&nbsp;<br />\r\n<br />\r\nĐ&agrave;o tạo GV l&agrave; một qu&aacute; tr&igrave;nh li&ecirc;n tục, trong suốt cuộc đời hoạt động nghề nghiệp của mỗi GV. Qu&aacute; tr&igrave;nh đ&agrave;o tạo GV bao gồm hai giai đoạn: đ&agrave;o tạo ban đầu (pre-service teacher education) v&agrave; tiếp tục bồi dưỡng thường xuy&ecirc;n trong qu&aacute; tr&igrave;nh dạy học (in-service teacher education). GV ở mọi lĩnh vực gi&aacute;o dục, cả gi&aacute;o dục ch&iacute;nh quy v&agrave; gi&aacute;o dục kh&ocirc;ng ch&iacute;nh quy đều đ&ograve;i hỏi những cơ hội thường xuy&ecirc;n, tiếp tục học tập nhằm ho&agrave;n thiện nh&acirc;n c&aacute;ch v&agrave; ph&aacute;t triển nghề nghiệp để c&oacute; thể duy tr&igrave; động lực v&agrave; nhiệt t&igrave;nh, cập nhật h&oacute;a kiến thức v&agrave; kĩ năng nghề nghiệp của m&igrave;nh.&nbsp;<br />\r\n<br />\r\nTrong những năm vừa qua, GDTX ở Việt Nam đ&atilde; c&oacute; sự ph&aacute;t triển kh&ocirc;ng ngừng về quy m&ocirc; v&agrave; mạng lưới cơ sở. Tuy nhi&ecirc;n, chất lượng của đội ngũ GV c&ograve;n nhiều hạn chế, bất cập so với y&ecirc;u cầu về ph&aacute;t triển quy m&ocirc; của GDTX. Đội ngũ GV của c&aacute;c trung t&acirc;m GDTX ở nước ta chủ yếu được đ&agrave;o tạo tại c&aacute;c trường sư phạm về gi&aacute;o dục ch&iacute;nh quy, kh&ocirc;ng được đ&agrave;o tạo về GDTX. Do đ&oacute;, trong qu&aacute; tr&igrave;nh giảng dạy, GV gặp kh&ocirc;ng &iacute;t kh&oacute; khăn về phương ph&aacute;p dạy học, thực hiện chương tr&igrave;nh, hay những đặc th&ugrave; kh&aacute;c của GDTX.<br />\r\n<br />\r\nTrong thời gian qua, do nhiều nguy&ecirc;n nh&acirc;n kh&aacute;c nhau, c&ocirc;ng t&aacute;c bồi dưỡng cho GV GDTX chưa thực sự được ch&uacute; trọng, chất lượng, hiệu quả c&ocirc;ng t&aacute;c bồi dưỡng chưa cao, ảnh hưởng kh&ocirc;ng nhỏ đến chất lượng dạy học ở c&aacute;c trung t&acirc;m GDTX. Trong khi đ&oacute;, những c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu, b&agrave;i viết về vấn đề bồi dưỡng GV GDTX, chưa tập trung nghi&ecirc;n cứu về thực trạng c&ocirc;ng t&aacute;c bồi dưỡng cho GV dạy ở c&aacute;c trung t&acirc;m GDTX một c&aacute;ch đầy đủ. V&igrave; vậy, việc nghi&ecirc;n cứu thực trạng c&ocirc;ng t&aacute;c bồi dưỡng cho GV dạy ở c&aacute;c trung t&acirc;m GDTX l&agrave; một vấn đề cần thiết v&agrave; cấp b&aacute;ch trong việc n&acirc;ng cao chất lượng đội ngũ GV cũng như n&acirc;ng cao chất lượng dạy học tại c&aacute;c trung t&acirc;m GDTX.</p>\r\n', '<p style=\"text-align: justify;\">- Một số kh&aacute;i niệm c&oacute; li&ecirc;n quan: bồi dưỡng GV, GDTX, trung t&acirc;m GDTX, GV dạy ở trung t&acirc;m GDTX.<br />\r\n- Những vấn đề chung về c&ocirc;ng t&aacute;c bồi dưỡng GV trung t&acirc;m GDTX.<br />\r\n- Thực trạng c&ocirc;ng t&aacute;c BD GV dạy ở trung t&acirc;m GDTX về c&aacute;c văn bản chỉ đạo c&ocirc;ng t&aacute;c bồi dưỡng; lập kế hoạch bồi dưỡng; tổ chức thực hiện c&ocirc;ng t&aacute;c bồi dưỡng, quản l&yacute;, gi&aacute;m s&aacute;t c&ocirc;ng t&aacute;c bồi dưỡng; một số nhận x&eacute;t, đ&aacute;nh gi&aacute; về c&ocirc;ng t&aacute;c bồi dưỡng<br />\r\n- Một số biện ph&aacute;p nhằm n&acirc;ng cao chất lượng c&ocirc;ng t&aacute;c bồi dưỡng GV trung t&acirc;m GDTX.</p>\r\n', '<p style=\"text-align: justify;\">Trong khu&ocirc;n khổ kinh ph&iacute; v&agrave; thời gian của đề t&agrave;i cấp Viện, nh&oacute;m nghi&ecirc;n cứu giới hạn phạm vi nghi&ecirc;n cứu thực trạng c&ocirc;ng t&aacute;c bồi dưỡng cho GV thuộc đối tượng GV dạy văn h&oacute;a tại c&aacute;c trung t&acirc;m GDTX v&agrave; t&igrave;m hiểu thực trạng c&ocirc;ng t&aacute;c bồi dưỡng cho GV tại 2 trung t&acirc;m GDTX tr&ecirc;n địa b&agrave;n H&agrave; Nội v&agrave; Trường bồi dưỡng c&aacute;n bộ gi&aacute;o dục H&agrave; Nội như l&agrave; những nghi&ecirc;n cứu điển h&igrave;nh.</p>\r\n', '<p style=\"text-align: justify;\">Nội dung đề t&agrave;i: đề t&agrave;i gồm 2 chương:<br />\r\n<br />\r\n<em>Chương 1. Cơ sở l&iacute; luận của đề t&agrave;i</em><br />\r\n<br />\r\n1.1. Một số kh&aacute;i niệm c&oacute; li&ecirc;n quan<br />\r\n1.2. Những vấn đề chung về c&ocirc;ng t&aacute;c bồi dưỡng GV trung t&acirc;m GDTX&nbsp;<br />\r\n<br />\r\n<em>Chương 2. Thực trạng c&ocirc;ng t&aacute;c bồi dưỡng GV dạy ở trung t&acirc;m GDTX</em><br />\r\n<br />\r\n2.1. Kh&aacute;i qu&aacute;t chung về trung t&acirc;m GDTX v&agrave; đội ngũ GV dạy ở trung t&acirc;m GDTX<br />\r\n2.2. Kết quả khảo s&aacute;t về thực trạng c&ocirc;ng t&aacute;c bồi dưỡng cho GV dạy ở trung t&acirc;m GDTX<br />\r\n2.3. Một số biện ph&aacute;p nhằm n&acirc;ng cao chất lượng c&ocirc;ng t&aacute;c bồi dưỡng GV dạy ở trung t&acirc;m GDTX</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', NULL, '18039856', '', '2020-10-13 21:52:48', ''),
(196, 5, 1, NULL, 'LDT_07', '2', 5, '', 'Những đặc điểm và hướng nghiên cứu cơ bản của kinh tế học giáo dục', '1456790400', '1488326400', '', '<p>X&aacute;c định c&aacute;c đặc điểm v&agrave; c&aacute;c hướng nghi&ecirc;n cứu cơ bản của KTHGD trong giai đoạn hiện nay.</p>\r\n', '<p style=\"text-align:justify\">Việt Nam đang trong qu&aacute; tr&igrave;nh hội nhập ng&agrave;y c&agrave;ng s&acirc;u v&agrave; rộng v&agrave;o nền KT thế giới, do đ&oacute; ng&agrave;nh GD cũng đang phải đương đầu với những vấn đề chung của to&agrave;n cầu. Căn cứ v&agrave;o những hướng nghi&ecirc;n cứu ch&iacute;nh của KTHGD trong giai đoạn hiện nay v&agrave; thực tiễn GD của Việt Nam, ch&uacute;ng t&ocirc;i xin khuyến nghị về những hướng nghi&ecirc;n cứu KTHGD cần được tập trung l&agrave;m r&otilde; như sau:&nbsp;<br />\r\n<br />\r\nX&aacute;c định r&otilde; quan điểm đối với GD ở từng cấp học: ng&agrave;nh GD cần nghi&ecirc;n cứu v&agrave; đi đến thống nhất quan điểm về việc nh&igrave;n nhận GD như một ph&uacute;c lợi x&atilde; hội hay dịch vụ. Nghi&ecirc;n cứu về lĩnh vực t&agrave;i ch&iacute;nh c&ocirc;ng cho GD: mặc d&ugrave; miễn học ph&iacute; ở cấp tiểu học, THCS v&agrave; &aacute;p dụng mức học ph&iacute; rất thấp ở THPT song tr&ecirc;n thực tế việc chia sẻ chi ph&iacute; đang diễn ra ở hầu hết c&aacute;c cấp học v&agrave; số tiền m&agrave; phụ huynh v&agrave; học sinh phải đ&oacute;ng g&oacute;p ng&agrave;y một nhiều hơn. Đa dạng h&oacute;a c&aacute;c nguồn vốn đầu tư cho GD: Một thực tế m&agrave; Việt Nam cũng như nhiều quốc gia kh&aacute;c đang phải đối mặt đ&oacute; l&agrave; sự khan hiếm nguồn lực c&ocirc;ng cho GD, thị trường lao động gi&aacute;o vi&ecirc;n. Vận dụng c&aacute;c qui luật Kinh tế thị trường trong GD: một số nghi&ecirc;n cứu cần được tiến h&agrave;nh đối với lĩnh vực n&agrave;y.&nbsp;<br />\r\n<br />\r\nVận dụng c&aacute;c c&aacute;c tiếp cận thị trường trong cung cấp dịch vụ GD: nghi&ecirc;n cứu gi&aacute; th&agrave;nh dịch vụ GD ở c&aacute;c cơ sở GD. X&aacute;c định cơ cấu v&agrave; qui m&ocirc; đ&agrave;o tạo trong từng giai đoạn. N&acirc;ng cao chất lượng đ&agrave;o tạo nguồn nh&acirc;n lực v&agrave; vấn đề đầu tư vốn con người; Xuất nhập khẩu sản phẩm, dịch vụ GD, c&aacute;c vấn đề cần được quan t&acirc;m nghi&ecirc;n cứu đối với lĩnh vực N&acirc;ng cao chất lượng GD; Thực hiện c&ocirc;ng bằng x&atilde; hội trong GD: Việc đảm bảo c&ocirc;ng bằng x&atilde; hội trong GD phải được nghi&ecirc;n cứu đảm bảo bằng những nguy&ecirc;n tắc KT.&nbsp;<br />\r\nMối quan hệ giữa GD với c&aacute;c vấn đề XH: C&aacute;c vấn đề cần quan t&acirc;m nghi&ecirc;n cứu trong thời gian tới bao gồm: GD với vấn đề sức khỏe, tội phạm, bất b&igrave;nh đẳng, chất lượng GD với thu nhập, GD v&agrave; lao động trẻ em v&agrave; sự ph&aacute;t triển; GD với tr&aacute;ch nhiệm c&ocirc;ng d&acirc;n, GD v&agrave; sự gắn kết XH,&hellip;</p>\r\n', '<p style=\"text-align:justify\">C&ugrave;ng với qu&aacute; tr&igrave;nh Việt Nam tiến h&agrave;nh đổi mới, mở cửa nền kinh tế (KT) v&agrave; hội nhập ng&agrave;y c&agrave;ng s&acirc;u v&agrave; rộng v&agrave;o nền KT thế giới, những vấn đề về thực tiễn Kinh tế gi&aacute;o dục (KTGD) ph&aacute;t sinh ng&agrave;y c&agrave;ng nhiều, đa dạng v&agrave; phức tạp ở cả cấp vi m&ocirc; v&agrave; vĩ m&ocirc;. Đ&oacute; l&agrave; những b&agrave;i to&aacute;n về c&aacute;ch thức cung cấp dịch vụ GD để đảm bảo chất lượng, hiệu quả v&agrave; c&ocirc;ng bằng x&atilde; hội; sự tồn tại của khu vực tư b&ecirc;n cạnh khu vực c&ocirc;ng trong GD v&agrave; vai tr&ograve; quản l&yacute; của Nh&agrave; nước; mối quan hệ giữa GD với ph&aacute;t triển vốn nh&acirc;n lực, với sự ph&aacute;t triển của khoa học c&ocirc;ng ngh&ecirc;, sự ph&aacute;t triển của KT tri thức, với tăng trưởng v&agrave; ph&aacute;t triển KT của quốc gia; lao động v&agrave; ch&iacute;nh s&aacute;ch tiền lương đối với gi&aacute;o vi&ecirc;n; hiệu quả của đầu tư cho GD; chi ph&iacute; &ndash; gi&aacute; th&agrave;nh &ndash; gi&aacute; cả của GD v&agrave; t&iacute;nh KT quy m&ocirc; của sản xuất dịch vụ GD; t&aacute;c động của c&aacute;c ch&iacute;nh s&aacute;ch tới sự ph&aacute;t triển của GD. Những vấn đề KTGD đ&atilde; được quan t&acirc;m trong nhiều nghi&ecirc;n cứu ở Việt Nam. Trước đổi mới KT, Viện Nghi&ecirc;n cứu Đại học v&agrave; Trung học chuy&ecirc;n nghiệp (một trong hai tiền th&acirc;n của Viện Khoa học GD Việt Nam hiện nay) đ&atilde; th&agrave;nh lập Ban KT v&agrave; kế hoạch h&oacute;a GD nghi&ecirc;n cứu về lĩnh vực Kinh tế học gi&aacute;o dục (KTHGD), nhưng với g&oacute;c độ tiếp cận của cơ chế KT kế hoạch h&oacute;a tập trung. Sau đ&oacute; lĩnh vực nghi&ecirc;n cứu n&agrave;y đ&atilde; bị bỏ ngỏ một thời gian tương đối d&agrave;i v&agrave; bắt đầu được quan t&acirc;m trở lại trong những năm gần đ&acirc;y do sự ph&aacute;t sinh của một số vấn đề thực tiễn GD đ&ograve;i hỏi phải được giải quyết, luận giải tr&ecirc;n cơ sở một hệ thống l&yacute; luận KTHGD đầy đủ v&agrave; chặt chẽ. Do đ&oacute;, việc l&agrave;m r&otilde; c&aacute;c vấn đề l&yacute; luận cơ bản của KTHGD như kh&aacute;i niệm, đối tượng nghi&ecirc;n cứu, c&aacute;c nội dung nghi&ecirc;n cứu, phương ph&aacute;p nghi&ecirc;n cứu, qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển,... hay những đặc điểm v&agrave; c&aacute;c hướng nghi&ecirc;n cứu chủ đạo của KTHGD trong giai đoạn hiện nay l&agrave; hết sức cần thiết. N&oacute; gi&uacute;p cho c&aacute;c nh&agrave; quản l&yacute; v&agrave; c&aacute;c nh&agrave; nghi&ecirc;n cứu GD h&igrave;nh dung được bức tranh to&agrave;n cảnh về KTHGD đương đại, từ đ&oacute; x&aacute;c định hướng nghi&ecirc;n cứu v&agrave; vận dụng khoa học n&agrave;y trong giải quyết c&aacute;c vấn đề thực tiễn GD ở Việt Nam giai đoạn tới.</p>\r\n', '<p style=\"text-align:justify\">- Một số vấn đề cơ bản của KTHGD: kh&aacute;i niệm KTHGD, đối tượng nghi&ecirc;n cứu; kh&aacute;i qu&aacute;t c&aacute;c nội dung nghi&ecirc;n cứu, phương ph&aacute;p tiếp cận v&agrave; phương ph&aacute;p nghi&ecirc;n cứu; lịch sử h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển của KTHGD<br />\r\n- Ph&acirc;n t&iacute;ch những đặc điểm của KTHGD trong nền KT thị trường<br />\r\n- Những hướng nghi&ecirc;n cứu cơ bản của KTHGD trong giai đoạn hiện nay<br />\r\n- Khuyến nghị đối với việc nghi&ecirc;n cứu KTHGD ở Việt Nam trong giai đoạn tới.</p>\r\n', '<p>Phương ph&aacute;p nghi&ecirc;n cứu được sử dụng trong đề t&agrave;i gồm: phương ph&aacute;p tổng quan tư liệu v&agrave; kh&aacute;i qu&aacute;t ho&aacute; l&yacute; luận, nghi&ecirc;n cứu so s&aacute;nh v&agrave; phương ph&aacute;p chuy&ecirc;n gia.</p>\r\n', '<p>Nội dung đề t&agrave;i: đề t&agrave;i gồm 3 chương:<br />\r\n<br />\r\n<em>Chương 1. Một số vấn đề cơ bản của kinh tế học gi&aacute;o dục</em><br />\r\n<br />\r\n1.1. C&aacute;c kh&aacute;i niệm v&agrave; đối tượng nghi&ecirc;n cứu của KTHGD<br />\r\n1.2. C&aacute;ch tiếp cận v&agrave; phương ph&aacute;p nghi&ecirc;n cứu KTHGD<br />\r\n1.3. Nội dung nghi&ecirc;n cứu của KTHGD&nbsp;<br />\r\n1.4. Lịch sử h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển KTHGD<br />\r\n<br />\r\n<em>Chương 2. Đặc điểm kinh tế học gi&aacute;o dục trong nền kinh tế thị trường</em><br />\r\n<br />\r\n2.1. Kh&aacute;i niệm v&agrave; đặc trưng của kinh tế thị trường&nbsp;<br />\r\n2.2. Ph&acirc;n t&iacute;ch những đặc điểm của KTHGD trong n&ecirc;n kinh tế thị trường<br />\r\n<br />\r\n<em>Chương 3. Một số hướng nghi&ecirc;n cứu cơ bản của kinh tế học gi&aacute;o dục trong giai đoạn hiện nay</em><br />\r\n<br />\r\n3.1. T&aacute;c động của gi&aacute;o dục tới sự ph&aacute;t triển KT &ndash; x&atilde; hội<br />\r\n3.2. Chia sẻ chi ph&iacute; trong GD</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', NULL, '13746491', '', '2020-10-13 21:52:48', ''),
(197, 2, 6, 5, 'LDT_02', '2', 10, 'MHN0981023', 'Kinh nghiệm quốc tế về giáo dục giá trị nghề nghiệp cho sinh viên ngành sư phạm', '1456808400', '1488344400', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', NULL, '11538696', '', '2020-10-13 21:52:48', ''),
(198, 1, 1, NULL, 'LDT_04', '4', 1, '', 'Xây dựng hệ thống quản lý NCKH', '1456808400', '1488344400', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/img/CB_01/Images/i_love_you_3-wallpaper-1366x768.jpg\" style=\"height:506px; width:900px\" /></p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.</p>\r\n', '<p><img alt=\"\" src=\"/upload/img/CB_01/Images/legendwallpaper.jpg\" style=\"height:506px; width:900px\" />Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', NULL, '5.000000', '', '2020-10-13 21:52:48', ''),
(199, 3, 1, NULL, 'LDT_03', '2', 11, '', 'Tác động của quản lý hành chính công đến quản lý nhà nước về giáo dục ở một số quốc gia', '1456790400', '1488326400', '', '<p>Nghi&ecirc;n cứu nhằm chỉ ra những t&aacute;c động của quản l&yacute; h&agrave;nh ch&iacute;nh c&ocirc;ng tới quản l&yacute; nh&agrave; nước về gi&aacute;o dục ở c&aacute;c quốc gia, r&uacute;t ra những b&agrave;i học kinh nghiệm về quản l&yacute; nh&agrave; nước về gi&aacute;o dục.</p>\r\n', '<p>Gi&aacute;o dục l&agrave; một lĩnh vực dịch vụ cả c&ocirc;ng v&agrave; tư, do vậy bị chi phối của hoạt động quản l&yacute; c&ocirc;ng ở bất kỳ quốc gia n&agrave;o, điều n&agrave;y l&agrave;m cho những thay đổi của quản l&yacute; c&ocirc;ng tất yếu dẫn đến thay đổi quản l&yacute; gi&aacute;o dục ở cả cấp độ quản l&yacute; nh&agrave; nước v&agrave; c&aacute;c cấp nhỏ hơn của hệ thống.<br />\r\n<br />\r\nQuản l&yacute; c&ocirc;ng mới bắt nguồn từ y&ecirc;u cầu cần một hệ thống dịch vụ c&ocirc;ng tốt hơn ở c&aacute;c quốc gia. Đối với gi&aacute;o dục, quản l&yacute; c&ocirc;ng mới l&agrave;m thay đổi hệ thống n&agrave;y theo xu hướng hướng dịch vụ, điều n&agrave;y thể hiện qua c&aacute;c kh&iacute;a cạnh ph&acirc;n cấp, ph&acirc;n quyền, trao quyền, tr&aacute;ch nhiệm giải tr&igrave;nh,... v&agrave; chịu t&aacute;c động theo c&aacute;c cơ chế vận h&agrave;nh của thị trường.<br />\r\n<br />\r\nKinh nghiệm c&aacute;c quốc gia cho thấy, gi&aacute;o dục đại học chịu sự t&aacute;c động nhiều nhất của quản l&yacute; c&ocirc;ng, một mặt do y&ecirc;u cầu x&atilde; hội đối với khu vực đ&agrave;o tạo n&agrave;y phải cung cấp nguồn nh&acirc;n lực cho những th&aacute;ch thức kinh tế - x&atilde; hội mới ở c&aacute;c nước, mặt kh&aacute;c d&ugrave; kh&ocirc;ng phải l&agrave; lĩnh vực chủ chốt của khu vực c&ocirc;ng khi quản l&yacute; c&ocirc;ng thay đổi nhưng gi&aacute;o dục đại học phải thay đổi để hiệu quả hơn về mặt h&agrave;nh ch&iacute;nh, t&agrave;i ch&iacute;nh v&agrave; vai tr&ograve; của n&oacute; đối với ph&aacute;t triển x&atilde; hội.&nbsp;<br />\r\n<br />\r\nD&ugrave; chưa th&agrave;nh hệ thống &aacute;p dụng với hệ thống l&yacute; luận của quản l&yacute; c&ocirc;ng mới, nhưng những t&aacute;c động n&agrave;y đ&atilde; xuất hiện ở Việt Nam cả trong ch&iacute;nh s&aacute;ch v&agrave; thực tiễn, chủ yếu trong hệ thống gi&aacute;o dục đại học.</p>\r\n', '<p>Theo quan điểm hệ thống, quản l&yacute; nh&agrave; nước về gi&aacute;o dục cũng c&oacute; t&iacute;nh hệ thống như c&aacute;c hoạt động quản l&yacute; kh&aacute;c của nh&agrave; nước. Tuy nhi&ecirc;n, quản l&yacute; nh&agrave; nước về gi&aacute;o dục c&oacute; những kh&aacute;c biệt khi c&aacute;c hoạt động - h&agrave;nh vi li&ecirc;n quan đến gi&aacute;o dục v&agrave; vận h&agrave;nh gi&aacute;o dục mang t&iacute;nh đặc th&ugrave;, v&iacute; dụ sản phẩm gi&aacute;o dục l&agrave; nh&acirc;n c&aacute;ch người học. Hơn nữa, mỗi quốc gia lại c&oacute; những đặc trưng kinh tế - x&atilde; hội v&agrave; c&aacute;c yếu tố kh&aacute;c chi phối hoạt động quản l&yacute; nh&agrave; nước về gi&aacute;o dục.<br />\r\n<br />\r\nTrong bối cảnh mới, nền kinh tế nước ta cần một hệ thống gi&aacute;o dục hiện đại, m&ocirc; h&igrave;nh quản l&yacute; nh&agrave; nước về gi&aacute;o dục ph&ugrave; hợp c&oacute; thể tạo điều kiện v&agrave; cơ hội, nhu cầu học tập cho mọi người d&acirc;n, đồng thời nhằm tạo ra sự hội nhập của gi&aacute;o dục nước ta với gi&aacute;o dục c&aacute;c nước trong khu vực v&agrave; thế giới trong tương lai gần. Hiện nay, khi c&ugrave;ng tồn tại hệ thống gi&aacute;o dục tại Việt Nam l&agrave; hệ thống gi&aacute;o dục c&ocirc;ng lập đang thay đổi nhanh ch&oacute;ng; xuất hiện ng&agrave;y c&agrave;ng nhiều c&aacute;c cơ sở/loại h&igrave;nh gi&aacute;o dục tư nh&acirc;n, doanh nghiệp gi&aacute;o dục cả trong nước v&agrave; quốc tế; nhiều lựa chọn hơn nhưng cũng c&oacute; nhiều rủi ro hơn cho người học&hellip; tất cả phụ thuộc chủ yếu v&agrave;o quản l&yacute; nh&agrave; nước về gi&aacute;o dục.<br />\r\n<br />\r\nQuan trọng hơn, gi&aacute;o dục cũng l&agrave; một lĩnh vực dịch vụ, do đ&oacute; n&oacute; chịu sự chi phối của những thay đổi trong quản l&yacute; c&ocirc;ng hiện nay từ c&aacute;c mối quan hệ quốc tế của đất nước cũng như đ&ograve;i hỏi của dịch vụ c&ocirc;ng của gi&aacute;o dục trong nước. Hơn nữa, để x&aacute;c định r&otilde; hơn những ảnh hưởng của quản l&yacute; c&ocirc;ng với gi&aacute;o dục l&agrave;m cơ sở cho những thay đổi về quản l&yacute; nh&agrave; nước đối với gi&aacute;o dục trở n&ecirc;n cấp thiết hơn bao giờ hết. Do vậy, để chỉ ra những ảnh hưởng với nội dung cụ thể l&agrave; g&igrave;? Kinh nghiệm quốc tế về mối quan hệ giữa h&agrave;nh ch&iacute;nh c&ocirc;ng v&agrave; gi&aacute;o dục như thế n&agrave;o m&agrave; Việt Nam cần tiếp biến?... Cho n&ecirc;n đ&acirc;y l&agrave; vấn đề cần được nghi&ecirc;n cứu để g&oacute;p phần đổi mới quản l&yacute; nh&agrave; nước về gi&aacute;o dục của Việt Nam trong bối cảnh hội nhập quốc tế v&agrave; vận h&agrave;nh cơ chế thị trường theo định hướng của Nh&agrave; nước.<br />\r\n&nbsp;</p>\r\n', '<p>- Hệ thống kh&aacute;i niệm v&agrave; c&aacute;c thuật ngữ li&ecirc;n quan<br />\r\n- T&aacute;c động của quản l&yacute; h&agrave;nh ch&iacute;nh c&ocirc;ng đến quản l&yacute; nh&agrave; nước về gi&aacute;o dục<br />\r\n- T&aacute;c động của h&agrave;nh ch&iacute;nh c&ocirc;ng tới quản l&yacute; nh&agrave; nước về gi&aacute;o dục ở một số quốc gia<br />\r\n- So s&aacute;nh v&agrave; nhận x&eacute;t.</p>\r\n', '<p>Phương ph&aacute;p nghi&ecirc;n cứu được sử dụng trong đề t&agrave;i gồm: nghi&ecirc;n cứu l&yacute; luận v&agrave; nghi&ecirc;n cứu so s&aacute;nh</p>\r\n', '<p>Nội dung đề t&agrave;i: đề t&agrave;i gồm 3 chương:<br />\r\n<br />\r\n<em>Chương 1. Quản l&yacute; c&ocirc;ng v&agrave; quản l&yacute; c&ocirc;ng mới</em><br />\r\n<br />\r\n1.1. Tổng quan vấn đề nghi&ecirc;n cứu<br />\r\n1.2. Kh&aacute;i niệm v&agrave; c&aacute;c thuật ngữ li&ecirc;n quan&nbsp;<br />\r\n<br />\r\n<em>Chương 2. T&aacute;c động của quản l&yacute; c&ocirc;ng mới đến quản l&yacute; nh&agrave; nước về gi&aacute;o dục đại học ở một số nước</em><br />\r\n<br />\r\n2.1. C&aacute;c quốc gia ch&acirc;u &Acirc;u&nbsp;<br />\r\n2.2. C&aacute;c quốc gia ch&acirc;u &Aacute;<br />\r\n<br />\r\n<em>Chương 3. So s&aacute;nh</em><br />\r\n<br />\r\n3.1. Những điểm tương đồng<br />\r\n3.2. Những kh&aacute;c biệt</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.', NULL, '10000000', '', '2020-10-13 21:52:48', ''),
(210, 1, 6, 3, 'LDT_01', '1', 5, 'MHN0982718', 'Nghiên cứu biên soạn tài liệu giáo dục bảo vệ môi trường dùng trong các trường trung cấp chuyên nghiệp khối ngành kinh tế - du lịch - y tế', '1456808400', '1488344400', '', '123', '123', '123', '123', '123', '123', NULL, NULL, NULL, NULL, '600000', '', '2020-10-13 21:52:48', ''),
(211, 1, 2, NULL, 'LDT_01', '1', 7, 'MHN0099', 'Cơ sở khoa học việc xác định cơ cấu ngành đào tạo đại học trong tiến trình hội nhập quốc tế', '1456808400', '1488344400', '', '123', '123', '123', '123', '123', '123', NULL, NULL, NULL, NULL, '600000', '1', '2020-10-13 21:52:48', ''),
(212, 2, 6, 3, 'LDT_01', '2', 8, 'MHN09871123', 'Nghiên cứu giải thuật lập lịch', '1456808400', '1488344400', '', '<p>123</p>\r\n', '<p>123</p>\r\n', '<p>123</p>\r\n', '<p>123</p>\r\n', '<p>123</p>\r\n', '<p>123</p>\r\n', NULL, NULL, NULL, NULL, '600000', '', '2020-10-13 21:52:48', '');
INSERT INTO `tbldetai` (`pk_imadt`, `fk_smaloainam`, `pk_imatt`, `pk_imattcu`, `pk_smaldt`, `pk_smalh`, `pk_imalv`, `smasodetai`, `stendt`, `dngaybd`, `dngaykt`, `dngayrahan`, `smuctieu`, `ssanpham`, `scapthiet`, `snoidungdaicuong`, `sphuongphap`, `sketcaudetai`, `sdonggopchinh`, `sketluan`, `sphamvi`, `sdcungdung`, `fcptong`, `bsendmail`, `updated_at`, `dngaycapgiaycn`) VALUES
(213, 1, 6, 5, 'LDT_01', '2', 2, 'MHN18291028', 'Kinh nghiệm phát triển nguồn nhân lực của một số quốc gia công nghiệp mới', '1442188800', '1473811200', '', '<p style=\"text-align:justify\">Xuất ph&aacute;t từ nghi&ecirc;n cứu thực tiễn qu&aacute; tr&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực của một số quốc gia c&ocirc;ng nghiệp mới, mục ti&ecirc;u của đề t&agrave;i l&agrave; x&aacute;c định một số b&agrave;i học kinh nghiệm về ph&aacute;t triển nh&acirc;n lực quốc gia cho Việt Nam.&nbsp;</p>\r\n', '<p style=\"text-align:justify\">Tổng quan nghi&ecirc;n cứu trong nước v&agrave; quốc tế về ph&aacute;t triển nguồn nh&acirc;n lực quốc gia của một số nước c&ocirc;ng nghiệp mới; ph&acirc;n t&iacute;ch một số vấn đề l&yacute; luận li&ecirc;n quan đến ph&aacute;t triển nguồn nh&acirc;n lực quốc gia.<br />\r\n<br />\r\nPh&acirc;n t&iacute;ch t&igrave;nh h&igrave;nh ph&aacute;t triển nh&acirc;n lực quốc gia ở 02 quốc gia c&ocirc;ng nghiệp mới thế hệ thứ nhất, đ&aacute;nh gi&aacute; c&aacute;c c&aacute;ch thức, chiến lược ph&aacute;t triển nguồn nh&acirc;n lực, những thuận lợi, kh&oacute; khăn cũng như những th&agrave;nh tựu v&agrave; hạn chế của c&aacute;c quốc gia n&agrave;y trong qu&aacute; tr&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực v&agrave; x&aacute;c định b&agrave;i học kinh nghiệm để vận dụng ở Việt Nam: &ldquo;Nguồn nh&acirc;n lực lu&ocirc;n giữ một vai tr&ograve; quan trọng trong qu&aacute; tr&igrave;nh ph&aacute;t triển của mỗi quốc gia n&ecirc;n ph&aacute;t triển nguồn nh&acirc;n lực lu&ocirc;n được quan t&acirc;m, ch&uacute; trọng&rdquo;. Trong từng giai đoạn ph&aacute;t triển, c&aacute;c quốc gia đều cố gắng đưa ra những ch&iacute;nh s&aacute;ch, biện ph&aacute;p ph&aacute;t triển nguồn nh&acirc;n lực ph&ugrave; hợp với y&ecirc;u cầu thực tiễn của đất nước v&agrave; điều chỉnh trước những biến đổi của bối cảnh ph&aacute;t triển. Việc ph&aacute;t triển nguồn nh&acirc;n lực được thực hiện th&ocirc;ng qua nhiều phương thức kh&aacute;c nhau, trong đ&oacute; gi&aacute;o dục đ&agrave;o tạo lu&ocirc;n được c&aacute;c quốc gia coi trọng, theo đ&oacute; c&aacute;c quốc gia tham khảo kh&ocirc;ng ngừng cải thiện chất lượng gi&aacute;o dục đ&agrave;o tạo theo hướng tạo ra những sản phẩm đ&aacute;p ứng được nhu cầu của thị trường lao động trong nước v&agrave; quốc tế. Ngo&agrave;i ra, việc cải thiện m&ocirc;i trường, hệ thống sử dụng nguồn nh&acirc;n lực c&ugrave;ng với c&aacute;c điều kiện ph&aacute;t triển nguồn nh&acirc;n lực cũng được ch&uacute; trọng thực hiện. Việc ph&aacute;t triển nguồn nh&acirc;n lực quốc gia phải đảm bảo được sự phối kết hợp giữa c&aacute;c th&agrave;nh phần li&ecirc;n quan; t&iacute;nh đa dạng trong phương thức ph&aacute;t triển nguồn nh&acirc;n lực; t&iacute;nh c&ocirc;ng bằng th&ocirc;ng qua việc chọn lựa những chương tr&igrave;nh, h&agrave;nh động nhằm mang lại lợi &iacute;ch tối đa cho sự ph&aacute;t triển chung theo những mục ti&ecirc;u đ&atilde; được x&aacute;c định. C&aacute;c ch&iacute;nh s&aacute;ch, biện ph&aacute;p ph&aacute;t triển nguồn nh&acirc;n lực quốc gia kh&ocirc;ng phải l&uacute;c n&agrave;o cũng mang lại th&agrave;nh c&ocirc;ng như dự kiến, v&igrave; vậy, c&ocirc;ng t&aacute;c quy hoạch, lập kế hoạch ph&aacute;t triển nguồn nh&acirc;n lực quốc gia cần được ch&uacute; trọng, đầu tư thực hiện một c&aacute;ch khoa học v&agrave; b&agrave;i bản. Việc quan t&acirc;m r&agrave; so&aacute;t, đ&aacute;nh gi&aacute; để điều chỉnh kịp thời kế hoạch, ch&iacute;nh s&aacute;ch nhằm th&iacute;ch ứng với sự thay đổi của bối cảnh ph&aacute;t triển của đất nước v&agrave; thế giới l&agrave; hết sức cần thiết để giảm thiểu những sai lầm trong qu&aacute; tr&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực. Những đ&oacute;ng g&oacute;p n&agrave;y c&oacute; thể tham khảo v&agrave; g&oacute;p phần đảm bảo t&iacute;nh hiệu quả cho c&ocirc;ng t&aacute;c hoạch định v&agrave; thực hiện ch&iacute;nh s&aacute;ch về ph&aacute;t triển nguồn nh&acirc;n lực ở Việt Nam trong giai đoạn sắp tới.<br />\r\n&nbsp;</p>\r\n', '<p style=\"text-align:justify\">Ph&aacute;t triển nguồn nh&acirc;n lực đ&aacute;p ứng nhu cầu ph&aacute;t triển kinh tế x&atilde; hội l&agrave; một y&ecirc;u cầu cấp thiết, l&agrave; yếu tố quyết định cho sự th&agrave;nh c&ocirc;ng của qu&aacute; tr&igrave;nh c&ocirc;ng nghiệp h&oacute;a, hiện đại h&oacute;a ở Việt Nam. Đại hội Đảng to&agrave;n quốc lần thứ XI đ&atilde; khẳng định: &quot;Ph&aacute;t triển nhanh nguồn nh&acirc;n lực, nhất l&agrave; nguồn nh&acirc;n lực chất lượng cao l&agrave; một trong ba kh&acirc;u đột ph&aacute; chiến lược nhằm đưa Việt Nam đến năm 2020 cơ bản trở th&agrave;nh nước c&ocirc;ng nghiệp theo hướng hiện đại&rdquo;. Mặc d&ugrave; c&oacute; truyền thống coi trọng hiền t&agrave;i, nhưng việc đầu tư ph&aacute;t triển nguồn nh&acirc;n lực tr&ecirc;n phạm vi quốc gia của Việt Nam trong suốt những thập kỷ qua chưa được đầu tư v&agrave; ch&uacute; &yacute; đ&uacute;ng mức. Thực trạng nguồn nh&acirc;n lực Việt Nam c&ograve;n bộc lộ nhiều điểm c&ograve;n hạn chế: kh&ocirc;ng ăn khớp giữa đ&agrave;o tạo v&agrave; sử dụng nh&acirc;n lực cả về số lượng, cơ cấu, chuy&ecirc;n ng&agrave;nh lẫn tr&igrave;nh độ đ&agrave;o tạo thiếu đội ngũ nh&acirc;n lực c&oacute; tr&igrave;nh độ, tay nghề cao trong nhiều ng&agrave;nh nghề, sức cạnh tranh của nh&acirc;n lực so với c&aacute;c quốc gia trong khu vực v&agrave; tr&ecirc;n thế giới k&eacute;m&hellip; Nh&igrave;n ra c&aacute;c quốc gia đ&atilde; trải qua thời kỳ chuyển đổi kinh tế - từ kinh tế n&ocirc;ng nghiệp sang c&ocirc;ng nghiệp (c&ocirc;ng nghiệp h&oacute;a) trong khu vực, từ giữa những năm 1980, H&agrave;n Quốc nổi l&ecirc;n l&agrave; một quốc gia c&ocirc;ng nghiệp mới, đ&atilde; thực hiện th&agrave;nh c&ocirc;ng qu&aacute; tr&igrave;nh x&acirc;y dựng kế hoạch v&agrave; thực thi c&aacute;c ch&iacute;nh s&aacute;ch ph&aacute;t triển nguồn nh&acirc;n lực quốc gia với những kết quả rất đ&aacute;ng được ghi nhận v&agrave; học tập. B&ecirc;n cạnh đ&oacute;, Trung Quốc cũng được đ&aacute;nh gi&aacute; l&agrave; đ&atilde; đạt được những th&agrave;nh c&ocirc;ng nhất định trong qu&aacute; tr&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực quốc gia. Cũng như Việt Nam, cả hai quốc gia tr&ecirc;n đều c&oacute; xuất ph&aacute;t điểm để đi l&ecirc;n trở th&agrave;nh c&aacute;c nước c&ocirc;ng nghiệp từ nền n&ocirc;ng nghiệp lạc hậu, c&oacute; những điểm tương đồng về thể chế kinh tế trong những thời kỳ nhất định. Ngo&agrave;i ra, về mặt văn h&oacute;a x&atilde; hội, c&aacute;c quốc gia n&agrave;y đều chịu ảnh hưởng s&acirc;u sắc bởi c&aacute;c tư tưởng Nho gi&aacute;o. Ch&iacute;nh v&igrave; vậy, việc tham chiếu những th&agrave;nh c&ocirc;ng v&agrave; thất bại trong qu&aacute; tr&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực của c&aacute;c quốc gia đ&atilde; trải qua thời kỳ c&ocirc;ng nghiệp h&oacute;a với một số điều kiện ph&aacute;t triển tương đồng với Việt Nam l&agrave; những b&agrave;i học qu&yacute; gi&aacute; cho Việt Nam trong c&ocirc;ng t&aacute;c ph&aacute;t triển nguồn nh&acirc;n lực quốc gia, trong việc kế thừa v&agrave; ph&aacute;t huy những mặt t&iacute;ch cực v&agrave; t&igrave;m c&aacute;ch giảm thiểu những mặt hạn chế trong qu&aacute; tr&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực nước nh&agrave;. Do đ&oacute;, việc nghi&ecirc;n cứu, t&igrave;m hiểu về qu&aacute; tr&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực của c&aacute;c quốc gia H&agrave;n Quốc, Trung Quốc v&agrave; Singapore v&agrave; một v&agrave;i quốc gia c&ocirc;ng nghiệp mới kh&aacute;c l&agrave; nhiệm vụ cần thiết, c&oacute; &yacute; nghĩa, nhằm r&uacute;t ra một số b&agrave;i học kinh nghiệm để Việt Nam c&oacute; thể học tập trong qu&aacute; tr&igrave;nh thực hiện nhiệm vụ n&agrave;y.</p>\r\n', '<p style=\"text-align:justify\">- Nghi&ecirc;n cứu cơ sở l&yacute; luận - l&agrave;m r&otilde; c&aacute;c kh&aacute;i niệm v&agrave; một số vấn đề l&yacute; luận li&ecirc;n quan đến nguồn nh&acirc;n lực, ph&aacute;t triển nguồn nh&acirc;n lực, ph&aacute;t triển nguồn nh&acirc;n lực quốc gia.&nbsp;<br />\r\n- Tổng quan kinh nghiệm trong nước v&agrave; quốc tế từ c&aacute;c nghi&ecirc;n cứu li&ecirc;n quan đến ph&aacute;t triển nguồn nh&acirc;n lực quốc gia của H&agrave;n Quốc v&agrave; Trung Quốc.<br />\r\n- Nghi&ecirc;n cứu thực trạng qu&aacute; tr&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực tại c&aacute;c quốc gia tham khảo, đ&aacute;nh gi&aacute; c&aacute;c c&aacute;ch thức, chiến lược ph&aacute;t triển nguồn nh&acirc;n lực quốc gia, những thuận lợi, kh&oacute; khăn cũng như những th&agrave;nh tựu v&agrave; hạn chế của c&aacute;c quốc gia n&agrave;y trong qu&aacute; tr&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực.<br />\r\n- X&aacute;c định, tổng kết một số b&agrave;i học kinh nghiệm r&uacute;t ra từ thực tiễn ph&aacute;t triển nh&acirc;n lực của c&aacute;c quốc gia tham khảo, đề xuất khuyến nghị vận dụng tại Việt Nam.</p>\r\n', '<p>Phương ph&aacute;p hồi cứu tư liệu: nghi&ecirc;n cứu t&agrave;i liệu, so s&aacute;nh, đối chiếu để x&aacute;c định c&aacute;c kh&aacute;i niệm v&agrave; một số vấn đề l&yacute; luận li&ecirc;n quan đến nh&acirc;n lực, nguồn nh&acirc;n lực, ph&aacute;t triển nguồn nh&acirc;n lực, ph&aacute;t triển nguồn nh&acirc;n lực quốc gia. Phương ph&aacute;p ph&acirc;n t&iacute;ch - tổng hợp: tổng hợp c&aacute;c nguồn t&agrave;i liệu thứ cấp về ch&iacute;nh s&aacute;ch, kế hoạch ph&aacute;t triển nh&acirc;n lực của c&aacute;c quốc gia tham khảo để ph&acirc;n t&iacute;ch c&aacute;c nội dung li&ecirc;n quan đến nghi&ecirc;n cứu. Phương ph&aacute;p chuy&ecirc;n gia: tham khảo &yacute; kiến c&aacute;c chuy&ecirc;n gia về c&aacute;c vấn đề li&ecirc;n quan đến đề t&agrave;i.</p>\r\n', '<p>Nội dung đề t&agrave;i: đề t&agrave;i gồm 3 chương:<br />\r\n<br />\r\n<em>Chương 1. Một số vấn đề l&yacute; luận về nguồn nh&acirc;n lực v&agrave; ph&aacute;t triển nguồn nh&acirc;n lực quốc gia&nbsp;</em><br />\r\n<br />\r\n1.1. Một số kh&aacute;i niệm<br />\r\n1.2. Một số vấn đề về ph&aacute;t triển nh&acirc;n lực quốc gia trong bối cảnh mới<br />\r\n<br />\r\n<em>Chương 2. T&igrave;nh h&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực tại một số quốc gia c&ocirc;ng nghiệp mới</em><br />\r\n<br />\r\n2.1. T&igrave;nh h&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực của Trung Quốc<br />\r\n2.2. T&igrave;nh h&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực của H&agrave;n Quốc<br />\r\n<br />\r\n<em>Chương 3. Ph&aacute;t triển nguồn nh&acirc;n lực ở Việt Nam v&agrave; kinh nghiệm từ qu&aacute; tr&igrave;nh ph&aacute;t triển nguồn nh&acirc;n lực ở c&aacute;c quốc gia tham khảo</em><br />\r\n<br />\r\n3.1. Một số vấn đề về ph&aacute;t triển nguồn nh&acirc;n lực Việt Nam<br />\r\n3.2. B&agrave;i học kinh nghiệm về ph&aacute;t triển nguồn nh&acirc;n lực cho Việt Nam</p>\r\n', NULL, NULL, NULL, NULL, '6000000', '', '2020-10-13 21:52:48', ''),
(214, 2, 7, NULL, 'LDT_02', '3', 3, '', 'Các biện pháp nâng cao trí tuệ cảm xúc cho sinh viên Viện Đại học Mở', '1474736400', '1477587600', '', '<p>Tr&ecirc;n cơ sở đ&oacute; đề xuất c&aacute;c biện ph&aacute;p v&agrave; tổ chức thực nghiệm c&aacute;c biện ph&aacute;p n&acirc;ng c&aacute;o EI cho sinh vi&ecirc;n trường đại học Đồng Th&aacute;p .&nbsp;</p>\r\n', '<p>- Trường đại học Đồng Th&aacute;p cần phải tăng cường hơn nữa việc triển khai những nội dung c&oacute; li&ecirc;n quan đến việc h&igrave;nh th&agrave;nh năng lực EI cho sinh vi&ecirc;n đại học sư phạm v&agrave;o trong chương tr&igrave;nh đ&agrave;o tạo gi&aacute;o vi&ecirc;n hiện nay.<br />\r\n<br />\r\n- Sinh vi&ecirc;n trường đại học Đồng Th&aacute;p n&oacute;i chung, sinh vi&ecirc;n gi&aacute;o dục mầm non n&oacute;i ri&ecirc;ng cần phải hiểu r&otilde; hơn nữa đặc th&ugrave; nghề của bản th&acirc;n trong tương lai để từ đ&oacute; t&iacute;ch cực hơn trong việc luyện tập n&acirc;ng cao năng lực EI cho bản th&acirc;n.<br />\r\n<br />\r\n- C&aacute;c biện ph&aacute;p n&acirc;ng cao tr&iacute; tuệ cảm x&uacute;c cho sinh vi&ecirc;n đại học sư phạm cần được tiếp tục ho&agrave;n thiện để tiến tới triển khai một c&aacute;c đại tr&agrave; trong chương tr&igrave;nh đ&agrave;o tạo gi&aacute;o vi&ecirc;n của trường đại học Đồng Th&aacute;p, g&oacute;p phần đ&agrave;o tạo người gi&aacute;o vi&ecirc;n to&agrave;n diện đ&aacute;p ứng nhu cầu x&atilde; hội.</p>\r\n', '<p>Đề t&agrave;i hướng đến 3 mục ti&ecirc;u cơ bản: 1/ X&acirc;y dựng cơ sở l&yacute; luận v&agrave; thực tiễn của việc đ&ecirc;̀ xuất c&aacute;c biện ph&aacute;p n&acirc;ng cao trí tu&ecirc;̣ cảm xúc (EI) cho sinh vi&ecirc;n trường đại học Đồng Th&aacute;p; 2/ X&acirc;y dựng hệ thống c&aacute;c biện ph&aacute;p n&acirc;ng cao EI cho sinh vi&ecirc;n trường đại học Đồng Th&aacute;p; 3/ Tổ chức thực nghiệm c&aacute;c biện ph&aacute;p n&acirc;ng cao EI cho sinh vi&ecirc;n trường đại học Đồng Th&aacute;p.&nbsp;</p>\r\n', '<p>Nội dung nghi&ecirc;n cứu của đề t&agrave;i l&agrave; đo lường năng lực EI của sinh vi&ecirc;n sư phạm từ năm thứ nhất đến năm thứ tư của c&aacute;c ng&agrave;nh đ&agrave;o tạo To&aacute;n học, Ngữ văn v&agrave; Gi&aacute;o dục mầm non thuộc trường đại học Đồng Th&aacute;p nhằm t&igrave;m ra được điểm mạnh, điểm yếu trong c&aacute;c năng lực thuộc về EI của sinh vi&ecirc;n, c&aacute;c yếu tố ảnh hưởng đến EI của sinh vi&ecirc;n. Tr&ecirc;n cơ sở đ&oacute; đề xuất c&aacute;c biện ph&aacute;p v&agrave; tổ chức thực nghiệm c&aacute;c biện ph&aacute;p n&acirc;ng c&aacute;o EI cho sinh vi&ecirc;n trường đại học Đồng Th&aacute;p .&nbsp;</p>\r\n', '<p>Phương ph&aacute;p nghi&ecirc;n cứu t&agrave;i liệu; Phương ph&aacute;p trắc nghiệm; Phương ph&aacute;p điều tra x&atilde; hội học; Phương ph&aacute;p chuy&ecirc;n gia; Phương ph&aacute;p xử l&iacute; số liệu.</p>\r\n', '<p style=\"text-align:justify\"><em><strong>1/ Về l&iacute; luận</strong></em><br />\r\n<br />\r\nM&ocirc; h&igrave;nh E197 đ&atilde; đưa ra định nghĩa về EI như sau: EI d&ugrave;ng để chỉ năng lực nhận thức c&aacute;c &yacute; nghĩa của cảm x&uacute;c v&agrave; mối quan hệ giữa ch&uacute;ng, v&agrave; để lập luận cũng như giải quyết vấn đề tr&ecirc;n cơ sở những &yacute; nghĩa v&agrave; mối quan hệ đ&oacute;. EI tham gia v&agrave;o khả năng nhận thức x&uacute;c cảm, đồng h&oacute;a c&aacute;c cảm nhận c&oacute; li&ecirc;n quan đến x&uacute;c cảm, thấu hiểu th&ocirc;ng tin về những x&uacute;c cảm đ&oacute; v&agrave; quản l&yacute; ch&uacute;ng.<br />\r\n<br />\r\nĐề t&agrave;i quan niệm EI của sinh vi&ecirc;n như sau: &ldquo;EI của sinh vi&ecirc;n l&agrave; những năng lực của sinh vi&ecirc;n về x&uacute;c cảm. Thể hiện ở khả năng nhận biết ch&iacute;nh x&aacute;c x&uacute;c cảm của bản th&acirc;n v&agrave; người kh&aacute;c; khả năng sử dụng x&uacute;c cảm để th&uacute;c đẩy tư duy; khả năng thấu hiểu nguy&ecirc;n nh&acirc;n của x&uacute;c cảm; khả năng kiểm so&aacute;t x&uacute;c cảm của bản th&acirc;n v&agrave; người kh&aacute;c nhằm giải quyết tốt c&aacute;c mối quan hệ giao tiếp ở trường đại học&rdquo;.<br />\r\n<br />\r\nVề EI của sinh vi&ecirc;n đại học sư phạm, đề t&agrave;i quan niệm: &ldquo;EI của sinh vi&ecirc;n đại học sư phạm l&agrave; những năng lực của sinh vi&ecirc;n đại học sư phạm về x&uacute;c cảm. Thể hiện ở khả năng nhận biết ch&iacute;nh x&aacute;c x&uacute;c cảm của bản th&acirc;n v&agrave; người kh&aacute;c; khả năng sử dụng x&uacute;c cảm để th&uacute;c đẩy tư duy; khả năng thấu hiểu nguy&ecirc;n nh&acirc;n của x&uacute;c cảm; khả năng kiểm so&aacute;t x&uacute;c cảm của bản th&acirc;n v&agrave; người kh&aacute;c trong c&aacute;c mối quan hệ giao tiếp cơ bản tồn tại trong c&aacute;c loại h&igrave;nh hoạt động sư phạm của người sinh vi&ecirc;n đại học sư phạm nhằm đạt được th&agrave;nh t&iacute;ch cao trong qu&aacute; tr&igrave;nh đ&agrave;o tạo ở trường sư phạm.<br />\r\n<br />\r\nVề năng lực biểu hiện EI của sinh vi&ecirc;n đại học sư phạm phải thể hiện được 04 khả năng cơ bản: 1/ Khả năng nhận thức ch&iacute;nh x&aacute;c x&uacute;c cảm của bản th&acirc;n, người kh&aacute;c; 2/ Khả năng hiểu được nguy&ecirc;n nh&acirc;n của x&uacute;c cảm; 3/ Khả năng sử dụng x&uacute;c cảm để đẩy mạnh tư duy; 4/ Khả năng kiểm so&aacute;t x&uacute;c cảm để ra những quyết định chiến lược.<br />\r\n<br />\r\nC&aacute;c khả năng EI của sinh vi&ecirc;n đại học sư phạm được biểu hiện th&ocirc;ng qua những dạng hoạt động sau: 1/ Hoạt động học tập; 2/ Hoạt động nghi&ecirc;n cứu khoa học; 3/ Hoạt động r&egrave;n luyện nghiệp vụ sư phạm; 4/ Hoạt động ch&iacute;nh trị x&atilde; hội; 5/ Hoạt động văn nghệ thể dục thể thao v&agrave; trong cuộc sống h&agrave;ng ng&agrave;y.<br />\r\n<br />\r\n<em><strong>2/ Về thực tiễn</strong></em><br />\r\n<br />\r\nĐề t&agrave;i đ&atilde; tiến h&agrave;nh khảo s&aacute;t tr&ecirc;n mẫu gồm: 186 sinh vi&ecirc;n ng&agrave;nh sư phạm To&aacute;n học; 164 sinh vi&ecirc;n ng&agrave;nh sư phạm Ngữ văn; 212 sinh vi&ecirc;n ng&agrave;nh Gi&aacute;o dục mầm non.<br />\r\n<br />\r\nĐề t&agrave;i tiến h&agrave;nh khảo s&aacute;t mức độ EI của sinh vi&ecirc;n trường đại học Đồng Th&aacute;p theo c&aacute;c thang đo MSCEIT, BTĐN, TĐG cho thấy kết quả như sau: 1/ Hơn một nửa sinh vi&ecirc;n tham gia trắc nghiệm c&oacute; mức độ EI từ trung b&igrave;nh trở l&ecirc;n, đ&acirc;y l&agrave; một kết quả chưa cao; 2/ Trong số c&aacute;c năng lực EI của sinh vi&ecirc;n th&igrave; năng lực hiểu nguy&ecirc;n nh&acirc;n v&agrave; kiểm so&aacute;t x&uacute;c cảm của sinh vi&ecirc;n l&agrave; yếu nhất. Do vậy, khi tổ chức luyện tập, bồi dưỡng n&acirc;ng cao năng lực EI cho sinh vi&ecirc;n cần phải quan t&acirc;m đến hai nh&oacute;m năng lực n&agrave;y nhiều hơn; 3/ Theo 3 ti&ecirc;u ch&iacute; do đề xuất, trong c&aacute;c năm đ&agrave;o tạo th&igrave; sinh vi&ecirc;n năm thứ 2 c&oacute; mức độ EI tốt nhất. Cũng theo 3 ti&ecirc;u ch&iacute; n&agrave;y, trong c&aacute;c ng&agrave;nh đ&agrave;o tạo th&igrave; sinh vi&ecirc;n ng&agrave;nh Gi&aacute;o dục mầm non c&oacute; mức độ EI tốt nhất.<br />\r\n<br />\r\nSau khi c&oacute; kết quả khảo s&aacute;t, đề t&agrave;i đề xuất 3 biện ph&aacute;p n&acirc;ng cao EI cho sinh vi&ecirc;n trường đại học Đồng Th&aacute;p:<br />\r\n<br />\r\nBiện ph&aacute;p 1: Tăng cường nhận thức - Tạo động cơ. Mục đ&iacute;ch l&agrave; cung cấp cho sinh vi&ecirc;n gi&aacute;o dục mầm non những tri thức về EI, vai tr&ograve; của EI đối với qu&aacute; tr&igrave;nh học tập v&agrave; nghề nghiệp sau n&agrave;y của sinh vi&ecirc;n ng&agrave;nh gi&aacute;o dục mầm non, nhằm tạo ra như cầu n&acirc;ng cao mức độ EI của sinh vi&ecirc;n ng&agrave;nh gi&aacute;o dục mầm non.<br />\r\n<br />\r\nĐề t&agrave;i đưa ra 02 hoạt động trong c&aacute;c giờ r&egrave;n luyện nghiệp vụ sư phạm thường xuy&ecirc;n: 1/ Hoạt động 1 - Nghe giới thiệu về EI v&agrave; định hướng ứng dụng EI v&agrave;o trong cuộc sống, qu&aacute; tr&igrave;nh học ở trường sư phạm v&agrave; nghề nghiệp của bản th&acirc;n sau n&agrave;y; 2/ Hoạt động 2 &ndash; Tổ chức thảo luận về EI của sinh vi&ecirc;n đại học sư phạm, sinh vi&ecirc;n sẽ n&ecirc;u ra những thắc mắc của bản th&acirc;n về EI v&agrave; việc vận dụng n&oacute; v&agrave;o trong qu&aacute; tr&igrave;nh học tập v&agrave; nghề nghiệp sau n&agrave;y.<br />\r\n<br />\r\nBiện ph&aacute;p 2: T&aacute;c động hồi tưởng. Mục đ&iacute;ch l&agrave; gi&uacute;p sinh vi&ecirc;n r&uacute;t ra được những b&agrave;i học kinh nghiệm cho bản th&acirc;n trong qu&aacute; tr&igrave;nh học tập cũng như cuộc sống về những th&agrave;nh c&ocirc;ng hay thất bại do sự t&aacute;c động t&iacute;ch cực hay ti&ecirc;u cực của x&uacute;c cảm.<br />\r\n<br />\r\nKhi tham gia biện ph&aacute;p n&agrave;y nghiệm thể được luyện tập qua 4 b&agrave;i tập cơ bản: 1/ B&agrave;i tập 1- Tập nhận ra c&aacute;c x&uacute;c cảm của bản th&acirc;n v&agrave; của người kh&aacute;c qua c&aacute;c mỗi quan hệ giao tiếp trong c&aacute;c hoạt động học tập, nghi&ecirc;n cứu khoa học, r&egrave;n luyện nghiệp vụ sư phạm, hoạt động ch&iacute;nh trị x&atilde; hội, hoạt động văn nghệ thể sục thể thao v&agrave; trong cuộc sống. B&agrave;i tập n&agrave;y nghiệm thể phải nhận ra được c&aacute;c x&uacute;c cảm đang diễn ra ở bản th&acirc;n v&agrave; của người kh&aacute;c trong một t&igrave;nh huống giao tiếp sư phạm đ&atilde; gặp; 2/ B&agrave;i tập 2- Tập x&aacute;c định nguy&ecirc;n nh&acirc;n dẫn đến x&uacute;c cảm ở bản th&acirc;n v&agrave; người kh&aacute;c qua c&aacute;c mỗi quan hệ giao tiếp trong c&aacute;c hoạt động như ở b&agrave;i tập 1. B&agrave;i tập n&agrave;y đ&ograve;i hỏi nghiệm thể kể lại một t&igrave;nh huống giao tiếp sư phạm m&agrave; ở đ&oacute; nhờ điều khiển được x&uacute;c cảm của bản th&acirc;n n&ecirc;n đ&atilde; giải quyết th&agrave;nh c&ocirc;ng hoặc ngược lại. Từ đ&oacute; r&uacute;t ra b&agrave;i học cho bản th&acirc;n; 3/ B&agrave;i tập 3 - Tập vận dụng tri thức về EI để giải quyết một t&igrave;nh huống trong c&aacute;c hoạt động như tr&ecirc;n; 4/ B&agrave;i tập 4 - Tập điều khiển x&uacute;c cảm của bản th&acirc;n v&agrave; những người xung quanh.<br />\r\n<br />\r\nKhi tham gia biện pháp n&agrave;y sinh vi&ecirc;n phải tham gia v&agrave;o hai hoạt động sư phạm sau: 1/ Hoạt động 1 &ndash; Sinh vi&ecirc;n phải tập hồi tưởng; 2/ Hoạt động 2 &ndash; Sinh vi&ecirc;n thuật lại t&igrave;nh huống v&agrave; b&agrave;i học từ t&igrave;nh huống cho c&aacute;c nghiệm thể trong nh&oacute;m c&ugrave;ng nghe; 3/ Hoạt động 3 &ndash; C&aacute;c sinh vi&ecirc;n cũng nh&oacute;m đưa ra &yacute; kiến của m&igrave;nh về t&igrave;nh huống, b&agrave;i học đ&atilde; nghe v&agrave; r&uacute;t ra b&agrave;i học kinh nghiệm cho bản th&acirc;n.&nbsp;<br />\r\n<br />\r\nBiện ph&aacute;p 3: T&aacute;c động hiện thời- Mục đ&iacute;ch nhằm n&acirc;ng cao EI cho c&aacute;c sinh vi&ecirc;n th&ocirc;ng qua việc học hỏi, trao đổi, chia sẻ kinh nghiệm giải quyết những kh&oacute; khăn m&agrave; bản th&acirc;n họ đang gặp phải ở thời điểm hiện tại.<br />\r\n<br />\r\nKhi tham ra biện ph&aacute;p n&agrave;y sinh vi&ecirc;n phải tham gia 3 hoạt động sau: 1/ Hoạt động 1 &ndash; Mỗi sinh vi&ecirc;n phải đưa t&igrave;nh huống kh&oacute; khăn m&agrave; m&igrave;nh đang gặp phải v&agrave; phương &aacute;n giải quyết t&igrave;nh huống kh&oacute; khăn đ&oacute;; 2/ Hoạt động 2 &ndash; C&aacute;c sinh vi&ecirc;n kh&aacute;c đưa ra c&aacute;c phương &aacute;n bổ sung để giải quyết t&igrave;nh huống kh&oacute; khăn đ&oacute;; 3/ Hoạt động 3 &ndash; C&ugrave;ng nhau thảo luận để chọn ra giải ph&aacute;p tối ưu nhất cho t&igrave;nh huống kh&oacute; khăn đ&atilde; n&ecirc;u.<br />\r\n<br />\r\nVới 3 biện ph&aacute;p đ&atilde; n&ecirc;u đề t&agrave;i đ&atilde; x&aacute;c định 4 con đường t&aacute;c động t&acirc;m l&yacute; để n&acirc;ng cao EI cho sinh vi&ecirc;n gi&aacute;o dục mầm non: 1/ Con đường 1- Biện ph&aacute;p 1; 2/ Con đường 2- Biện ph&aacute;p 1 + biện ph&aacute;p 2; 3/ Con đường 3- Biện ph&aacute;p 1 + biện ph&aacute;p 3; 4/ Con đường 4 &ndash; Biện ph&aacute;p 1 + biện ph&aacute;p 2 + biện ph&aacute;p 3.<br />\r\n<br />\r\nSau khi đ&atilde; đề xuất c&aacute;c biện ph&aacute;p, đề t&agrave;i đ&atilde; tổ chức thực nghiệm t&aacute;c động n&acirc;ng cao EI cho sinh vi&ecirc;n trường đại học Đồng Th&aacute;p nhằm kiểm chứng t&iacute;nh hiệu quả của c&aacute;c con đường t&aacute;c động t&acirc;m l&iacute; sư phạm đối với việc n&acirc;ng cao mức độ EI cho sinh vi&ecirc;n gi&aacute;o dục mầm non, từ đ&oacute; quyết định lựa chọn con đường ph&ugrave; hợp để tổ chức luyện tập n&acirc;ng cao mức độ EI cho sinh vi&ecirc;n trường đại học Đồng Th&aacute;p.<br />\r\n<br />\r\nKết quả đo mức độ EI của nh&oacute;m thực nghiệm trước thực nghiệm qua thang đo MSCEIT, BTĐN v&agrave; TĐG cho thấy: 1/ Tỉ lệ sinh vi&ecirc;n c&oacute; mức độ EI được ph&acirc;n loại từ trung b&igrave;nh trở l&ecirc;n vẫn c&ograve;n thấp, kết quả n&agrave;y ho&agrave;n to&agrave;n ph&ugrave; hợp với kết quả về mức độ EI của sinh vi&ecirc;n đại học sư phạm được khảo s&aacute;t c&ugrave;ng thời điểm; 2/ Trong c&aacute;c năng lực EI của sinh vi&ecirc;n th&igrave; năng lực hiểu nguy&ecirc;n nh&acirc;n x&uacute;c cảm v&agrave; năng lực kiểm so&aacute;t x&uacute;c cảm của sinh vi&ecirc;n l&agrave; những năng lực EI th&agrave;nh phần yếu nhất của nh&oacute;m thực nghiệm. Do vậy, khi tổ chức luyện tập, bồi dưỡng n&acirc;ng cao năng lực EI cho sinh vi&ecirc;n cần phải quan t&acirc;m đến hai năng lực EI th&agrave;nh phần n&agrave;y nhiều hơn; 3/ Sinh vi&ecirc;n chưa c&oacute; khả năng đ&aacute;nh gi&aacute; ch&iacute;nh x&aacute;c về mức độ EI của bản th&acirc;n, v&igrave; vậy cần tăng cường hơn nữa việc trang bị kiến thức về EI, tổ chức luy&ecirc;̣n tập khả năng nhận biết v&agrave; đ&aacute;nh gi&aacute; x&uacute;c cảm ch&iacute;nh x&aacute;c x&uacute;c cảm ở bản th&acirc;n v&agrave; người kh&aacute;c để gi&uacute;p c&aacute;c em biết đ&aacute;nh gi&aacute; ch&iacute;nh x&aacute;c về năng lực EI của bản th&acirc;n, đặt nền tảng cho sự ph&aacute;t triển to&agrave;n diện c&aacute;c năng lực EI của sinh vi&ecirc;n gi&aacute;o dục mầm non.<br />\r\n<br />\r\nKết quả đo mức độ EI của nh&oacute;m thực nghiệm ở lần đo sau thực nghi&ecirc;̣m cho thấy: 1/ Qua việc ph&acirc;n t&iacute;ch kết quả trắc nghiệm của nh&oacute;m thực nghiệm ở lần đo sau thực nghiệm v&agrave; so s&aacute;nh kết quả sau thực nghiệm với kết quả trước thực nghiệm đề t&agrave;i nhận thấy điểm trung b&igrave;nh ở lần đo sau thực nghiệm trong tất cả c&aacute;c thang đo đều thấp hơn so với lần đo trước thực nghiệm; 2/ So s&aacute;nh điểm lớn nhất, điểm nhỏ nhất trong 2 lần đo trong tất cả thang đo đề t&agrave;i cũng nhận thấy điểm lớn nhất, điểm nhỏ nhất ở lần đo trước thực nhiệm cao hơn ở lần đo sau thực nghiệm; 3/ Về cơ bản th&igrave; độ lệch chuẩn trong lần đo sau thực nghiệm cao hơn trong lần đo trước thực nghiệm. Điều đ&oacute; chứng tỏ c&oacute; sự ph&acirc;n h&oacute;a về điểm rất lớn giữa c&aacute;c nh&oacute;m thực nghi&ecirc;̣m kh&aacute;c nhau trong lần đo sau thực nghiệm; 3/ Sự ph&aacute;t triển về năng lực EI của nh&oacute;m thực nghiệm sau thực nghiệm thể hiện ở chỗ trong lần đo sau thực nghiệm tỉ lệ sinh vi&ecirc;n c&oacute; mức độ EI được ph&acirc;n loại từ mức trung b&igrave;nh trở l&ecirc;n trong tất cả c&aacute;c thang đo đ&atilde; tăng l&ecirc;n đáng k&ecirc;̉ so với lần đo trước thực nghiệm. Hơn nữa, điểm trung b&igrave;nh của tiểu thang đo năng lực kiểm so&aacute;t x&uacute;c cảm trong c&aacute;c thang đo BTĐN v&agrave; TĐG đ&atilde; được tăng l&ecirc;n đ&aacute;ng kể.<br />\r\n<br />\r\nQua ph&acirc;n t&iacute;ch kết quả thực hiện c&aacute;c trắc nghiệm, b&agrave;i tập đo nghiệm v&agrave; tự đ&aacute;nh gi&aacute; về năng lực EI của sinh vi&ecirc;n, đề t&agrave;i c&oacute; một số nhận x&eacute;t chung về c&aacute;c con đường t&aacute;c động n&acirc;ng cao EI cho sinh vi&ecirc;n: Con đường 4 l&agrave; sự phối hợp đầy đủ nhất c&aacute;c biện ph&aacute;p t&aacute;c động n&acirc;ng cao EI cho nh&oacute;m thực nghiệm. Hiệu quả của con đường t&aacute;c động n&agrave;y đối với việc n&acirc;ng cao EI cho sinh vi&ecirc;n gi&aacute;o dục mầm non được thể hiện ở chỗ sinh vi&ecirc;n trong nh&oacute;m thực nghiệm đ&atilde; c&oacute; sự chuyển biến t&iacute;ch cực trong c&aacute;c năng lực EI của bản th&acirc;n. Tuy nhi&ecirc;n, b&ecirc;n cạnh những sinh vi&ecirc;n c&oacute; sự chuyển biến t&iacute;ch cực trong c&aacute;c năng lực EI của bản th&acirc;n th&igrave; cũng c&oacute; một số sinh vi&ecirc;n c&oacute; điểm số EI thu được từ c&aacute;c thang đo kh&aacute;c nhau cho kết quả kh&ocirc;ng kh&aacute;c so với lần đo trước thực nghiệm. Thực tế n&agrave;y một lần nữa khẳng định vai tr&ograve; của t&iacute;nh t&iacute;ch cực c&aacute; nh&acirc;n đối với sự ph&aacute;t triển năng lực EI của bản th&acirc;n.</p>\r\n', NULL, NULL, NULL, NULL, '600000', '1', '2020-10-13 21:52:48', ''),
(215, 3, 1, NULL, 'LDT_03', '2', 3, '', 'gadshfdshj', '1605632400', '1606323600', '', 'gdfgs', 'gsdfgdf', 'sdfg', 'dgf', 'sdfghsd', 'dsgfdf', NULL, NULL, NULL, NULL, '13232323', '', '2020-10-13 21:52:48', ''),
(216, 3, 1, NULL, 'LDT_05', '1', 4, '', 'fsafasf', '1601744400', '1606410000', '', 'afsaf', 'safas', 'fasfwf', 'safsa', 'fasfs', 'safasf', NULL, NULL, NULL, NULL, '3232631644', '', '2020-10-13 21:52:48', ''),
(217, 4, 1, NULL, 'LDT_04', '3', 5, '', 'waetewyr', '1602435600', '1607101200', '', 'yrtyrrturtute', 'eryertyryurtueruttru', 'yrtyyurtutruredu mtrue', 'eyttrrtutyeurtu', 'yrteytyrteytyreytrt', 'rutreuj rtyueryery', NULL, NULL, NULL, NULL, '132131303232', '', '2020-10-13 21:52:48', ''),
(218, 0, 1, NULL, '', '', 0, '', '', '1602003600', '1602003600', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', '', '2020-10-13 21:52:48', ''),
(219, 4, 1, NULL, 'LDT_03', '1', 0, '', 'nckh 123', '1601830800', '1607101200', '', 'abc', 'abc', 'abc', 'abc', 'abc', 'bac', NULL, NULL, NULL, NULL, '10000000', '', '2020-10-13 21:52:48', ''),
(220, 1, 2, NULL, '', '2', 2, '', 'abc', '1602522000', '1605805200', '', 'abc', 'abc', 'abc', 'abc', 'abc', 'abc', NULL, NULL, NULL, NULL, '1000000', '', '2020-10-13 21:52:48', ''),
(222, 3, 1, NULL, 'LDT_05', '3', 4, '', 'àgdsghg', '1604163600', '1604595600', '', 'gág', 'gsdgsdag', 'sdgds', 'ágdsdg', 'gdsg', 'gsdg', NULL, NULL, NULL, NULL, '326316464163', '', '2020-10-13 21:52:48', ''),
(223, 3, 1, NULL, 'LDT_04', '1', 1, '', 'test1', '1602954000', '1606496400', '', 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaa', 'sdddddddd', 'ssssssssssss', 'aaaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, '100000000', '', '2020-10-13 21:52:48', ''),
(224, 3, 1, NULL, 'LDT_08', '4', 5, '', 'test2', '1591635600', '1602694800', '', 'qqqqqqqqqqqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqq<font face=\"impact\" size=\"4\">qqqqqqqqqqqqq</font>', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqqqqqqq', NULL, NULL, NULL, NULL, '100000000', '', '2020-10-13 21:52:48', ''),
(226, 3, 1, NULL, 'LDT_06', '3', 5, '', 'test333', '1602435600', '1605718800', '', 'gfsdgsag', 'asgdsgsg', 'sdfgsd', 'asdgdsagd', 'gasdgsdag', 'dgasgd', NULL, NULL, NULL, NULL, '121332323232', '', '2020-10-13 21:52:48', ''),
(227, 4, 6, 4, 'LDT_04', '2', 8, 'DDF', 'atest̀', '1601917200', '1606237200', '', 'adssa', 'ads', 'sds', 'dasd', 'asdas', 'dasa', NULL, NULL, NULL, NULL, '1', '', '2020-10-13 21:52:48', ''),
(228, 2, 2, NULL, 'LDT_02', '2', 3, 'ASDA', '21313', '1602522000', '1602522000', '', 'dvds', 'sdvds', '45454', 'vdfsv', 'vdsv', 'svdv', NULL, NULL, NULL, NULL, '5234', '', '2020-10-13 21:52:48', ''),
(229, 0, 6, 5, 'LDT_03', '', 2, '11111111', 'đề tài 1', '1601917200', '1605546000', '', '1', '1', '1', '1', '1', '1', NULL, NULL, NULL, NULL, '1', '', '2020-10-13 21:52:48', ''),
(230, 3, 6, 5, 'LDT_03', '2', 7, '121', '631', '1601830800', '1606410000', '', '4524', '2345', '141', '2121', '4535', '2112', NULL, NULL, NULL, NULL, '3131', '', '2020-10-15 10:25:51', ''),
(233, 2, 1, NULL, 'LDT_01', '1', 1, '', 'a', '1607360400', '1607360400', '', 'a', 'a', 'a', 'a', 'a', 'a', NULL, NULL, NULL, NULL, 'a', '', '2020-12-08 11:08:28', ''),
(234, 1, 1, NULL, 'LDT_01', '2', 1, '', 'asdf', '1607360400', '1607360400', '', '11111111111', '1111111111111', '11111111', '1111111111', '111111111111', '111111111111', NULL, NULL, NULL, NULL, '111111111', '', '2020-12-08 14:39:08', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldetai_chungnhan`
--

CREATE TABLE `tbldetai_chungnhan` (
  `pk_imadt` int(11) NOT NULL DEFAULT '0',
  `dngaycapgiaycn` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `snguoikycn` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filebanmem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bquyenbaocao` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `bsendmail` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldetai_chungnhan`
--

INSERT INTO `tbldetai_chungnhan` (`pk_imadt`, `dngaycapgiaycn`, `snguoikycn`, `sghichu`, `filebanmem`, `bquyenbaocao`, `bsendmail`, `created_at`, `updated_at`) VALUES
(197, '11/12/2016', 'Nguyễn Văn Tuyển', 'Đã thanh lý', 'upload/certify/yxgtgkgrvvPTTKHT-NHOM-1.docx', '1', '1', '2016-10-03 14:18:20', '2016-10-05 02:25:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldetai_giahan`
--

CREATE TABLE `tbldetai_giahan` (
  `noidung` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lydo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filedinhkem` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dngayrahan` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `xacnhan` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bsendmail` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_imadt` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldetai_giahan`
--

INSERT INTO `tbldetai_giahan` (`noidung`, `lydo`, `filedinhkem`, `dngayrahan`, `id`, `xacnhan`, `bsendmail`, `fk_imadt`, `updated_at`, `created_at`) VALUES
('dfsdf', 'fsdfsd', '\\upload\\giahan\\0.sql', '3', 0, '1', '', 230, '2020-10-15 10:31:26', '2020-10-15 10:31:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldetai_thanhly`
--

CREATE TABLE `tbldetai_thanhly` (
  `pk_imadt` int(11) NOT NULL,
  `dngaytl` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `slydo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fk_imahddt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldetai_thanhly`
--

INSERT INTO `tbldetai_thanhly` (`pk_imadt`, `dngaytl`, `slydo`, `sghichu`, `fk_imahddt`) VALUES
(11, '20/12/2015', 'Nghiệm thu thành công', 'Đã thanh lý', 28),
(12, '11/11/2011', 'Nghiệm thu thành công', '', 29),
(15, '11/11/2011', 'Nghiệm thu thành công', '', 55),
(16, '22/02/2016', 'Nghiệm thu thành công', '', 30),
(17, '11/11/2011', 'Nghiệm thu thành công', '', 50),
(61, '22222', 'Ahihi', 'Ahihi', 36),
(75, '22/02/2016', 'Thanh lý thành công', '', 51),
(103, '11/11/2011', 'Nghiệm thu thành công', '', 44),
(105, '22/02/2011', 'Nghiệm thu thành công', '', 52),
(142, '22/02/2016', 'Nghiệm thu thành công', '', 45),
(162, '06/06/2016', 'Nghiệm thu thành công', '', 53),
(169, '22/02/2022', '222', '222', 39),
(181, '11/11/2011', 'Nghiệm thu thành công', '', 54),
(197, '22/02/2022', '2', '2', 40),
(210, '12/03/2014', 'Ahihi', 'aHIHI', 41),
(212, '11/11/2011', 'Nghiệm thu thành công', '', 42),
(213, '11/11/2011', 'Nghiệm thu thành công', '', 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldmtrangthai`
--

CREATE TABLE `tbldmtrangthai` (
  `pk_imatt` int(11) NOT NULL,
  `stentt` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldmtrangthai`
--

INSERT INTO `tbldmtrangthai` (`pk_imatt`, `stentt`, `sghichu`) VALUES
(1, 'Đã đăng ký', ''),
(2, 'Đã phê duyệt', ''),
(3, 'Đã báo cáo tiến độ khảo sát định kỳ', ''),
(4, 'Đã báo cáo nghiệm thu', ''),
(5, 'Đã nghiệm thu', ''),
(6, 'Đã thanh lý', ''),
(7, 'Đề tài đã hủy', ''),
(8, '\\\\', ''),
(9, '\\\\', ''),
(10, '\\\\', ''),
(11, '\\\\', ''),
(12, '\\\\', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldmxeploai`
--

CREATE TABLE `tbldmxeploai` (
  `pk_imadmxeploai` int(11) NOT NULL,
  `stendmxeploai` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ivitri` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldmxeploai`
--

INSERT INTO `tbldmxeploai` (`pk_imadmxeploai`, `stendmxeploai`, `ivitri`) VALUES
(1, 'Trung bình', 1),
(2, 'Trung bình - Khá', 2),
(3, 'Khá', 3),
(4, 'Tốt', 4),
(5, 'Xuất sắc', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldonvi`
--

CREATE TABLE `tbldonvi` (
  `pk_imadv` int(11) NOT NULL,
  `pk_imacapdv` int(11) NOT NULL,
  `stendv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdiachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdienthoai` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sfax` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `semail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sweb` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `sdvchuquan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `snguoilienhe` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldonvi`
--

INSERT INTO `tbldonvi` (`pk_imadv`, `pk_imacapdv`, `stendv`, `sdiachi`, `sdienthoai`, `sfax`, `semail`, `sweb`, `sdvchuquan`, `snguoilienhe`, `sghichu`) VALUES
(1, 1, 'Trung tâm thư viện', '', '0123456789', '', 'actvn.edu.vn', '', '', '', ''),
(2, 2, 'Trung tâm nghiên cứu Tâm lý học và Giáo dục học', '', '', '', '', '', '', '', ''),
(3, 4, 'Trung tâm nghiên cứu Quản lý giáo dục', '', '', '', '', '', '', '', ''),
(4, 3, 'Trung tâm nghiên cứu Giáo dục mầm non', '', '', '', '', '', '', '', ''),
(5, 2, 'Trung tâm nghiên cứu Giáo dục phổ thông', '', '', '', '', '', '', '', ''),
(6, 3, 'Trung tâm nghiên cứu Giáo dục Đại học và Nghề nghiệp', '', '', '', '', '', '', '', ''),
(7, 3, 'Trung tâm nghiên cứu Giáo dục Không chính quy', '', '', '', '', '', '', '', ''),
(8, 2, 'Trung tâm nghiên cứu Giáo dục Đặc biệt', '', '', '', '', '', '', '', ''),
(9, 4, 'Trung tâm nghiên cứu Giáo dục Dân tộc', '', '', '', '', '', '', '', ''),
(10, 4, 'Trung tâm nghiên cứu Công nghệ giáo dục', '', '', '', '', '', '', '', ''),
(11, 4, 'Trung tâm nghiên cứu CSVC, TBDH&ĐCTE', '', '', '', '', '', '', '', ''),
(12, 4, 'Trung tâm CNTT', '', '', '', '', '', '', '', ''),
(13, 4, 'Trung tâm nghiên cứu Đánh giá kết quả giáo dục', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhocham`
--

CREATE TABLE `tblhocham` (
  `pk_imahh` int(11) NOT NULL,
  `stenhh` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `ivitrihienthi` tinyint(4) NOT NULL,
  `smota` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblhocham`
--

INSERT INTO `tblhocham` (`pk_imahh`, `stenhh`, `ivitrihienthi`, `smota`) VALUES
(1, 'PGS', 1, 'Phó Giáo sư'),
(2, 'GS', 2, 'Giáo sư'),
(3, 'Nhà giáo nhân dân', 3, 'Nhà giáo nhân dân'),
(4, 'Khác', 4, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhocvi`
--

CREATE TABLE `tblhocvi` (
  `pk_imahv` int(11) NOT NULL,
  `stenhv` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `ivitrihienthi` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblhocvi`
--

INSERT INTO `tblhocvi` (`pk_imahv`, `stenhv`, `ivitrihienthi`) VALUES
(1, 'TS', 1),
(2, 'Ths', 2),
(3, 'CN', 3),
(4, 'Khác', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhoidong`
--

CREATE TABLE `tblhoidong` (
  `pk_imahd` int(11) NOT NULL,
  `stenhd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smahoidong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dngaythanhlap` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dngaylamviec` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `squyetdinh` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `iloaihoidong` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblhoidong`
--

INSERT INTO `tblhoidong` (`pk_imahd`, `stenhd`, `smahoidong`, `dngaythanhlap`, `dngaylamviec`, `squyetdinh`, `iloaihoidong`, `sghichu`) VALUES
(1, 'Hội đồng thẩm định đợt tháng 3/2016', '001', '18/08/2016', '20/08/2016', '001', '1', ''),
(2, 'Hội đồng thẩm định đợt tháng 3/2016(bổ sung lần 1)', '002', '20/08/2016', '29/08/2016', '002', '1', ''),
(3, 'Khảo sát  011', '011', '20/08/2016', '28/08/2016', '011', '2', ''),
(4, 'Thẩm định 012', '012', '18/08/2016', '27/08/2016', '012', '2', ''),
(5, 'Hội đồng thẩm định đợt tháng 3/2016(bổ sung lần 2)', '0011', '25/08/2016', '29/08/2016', '0011', '1', ''),
(6, 'Hội đồng thẩm định đợt tháng 3/2016(bổ sung lần 3)', 'MJPL019', '17/09/2016', '20/09/2016', '01236', '1', ''),
(7, 'MKQIPY', 'MKQIPY', '25/09/2016', '30/09/2016', '0142', '2', ''),
(8, 'Hội đồng đánh giá đề tài đề xuất tháng 3/2016', 'KHNIPUG', '20/09/2016', '30/09/2016', '09183', '1', ''),
(9, 'MJQPAL', 'MJQPAL', '20/09/2016', '25/09/2016', '6475', '2', ''),
(10, 'KAMHNB', 'KAMHNB', '22/09/2016', '25/09/2016', '0653', '2', ''),
(11, 'POAKMK', 'POAKMK', '20/09/2016', '22/09/2016', '0452', '2', ''),
(12, 'NTOPAUH', 'NTOPAUH', '22/09/2016', '25/09/2016', '0196', '3', ''),
(13, 'MOUPQI', 'MOUPQI', '22/09/2016', '25/09/2016', '0130', '3', ''),
(14, 'MKPOQI', 'MKPOQI', '22/09/2016', '25/09/2016', '1478', '3', ''),
(15, 'OPQUNI', 'OPQUNI', '25/09/2016', '29/09/2016', '0193', '3', ''),
(16, 'KQUIPH', 'KQUIPH', '22/09/2016', '30/09/2016', '4810', '4', ''),
(17, 'sdfsdfsdf', 'sdfsdf', '26/09/2016', '26/09/2016', '6545', '4', ''),
(18, 'MILPQ', 'MILPQ', '26/09/2016', '30/09/2016', '0125', '4', ''),
(19, 'MOUKPO', 'MOUKPO', '26/09/2016', '30/09/2016', '0175', '4', ''),
(20, 'MNQHAP', 'MNQHAP', '26/09/2016', '30/09/2016', '0175', '4', ''),
(21, 'MKOPQA', 'MKOPQA', '26/09/2016', '30/09/2016', '0583', '4', ''),
(22, 'Hội đồng đánh giá đề tài đề xuất tháng 3/2016(bổ sung lần 3)', 'MUKIOP', '28/09/2016', '30/09/2016', '0192', '1', ''),
(23, 'Hội đồng đánh giá đề tài đề xuất tháng 3/2016(bổ sung lần 1)', 'QJIPQE', '28/09/2016', '30/09/2016', '0189', '1', ''),
(24, 'Hội đồng đánh giá đề tài đề xuất tháng 3/2016(bổ sung lần 2)', 'MUKIPQ', '28/09/2016', '30/09/2016', '0192', '1', ''),
(25, 'KUJPQI', 'KUJPQI', '05/10/2016', '10/10/2016', '01928', '2', ''),
(26, 'MUPIKO', 'MUPIKO', '05/10/2016', '10/10/2016', '0183', '1', ''),
(27, 'MUQKJAI', 'MUQKJAI', '05/10/2016', '10/10/2016', '0468', '2', ''),
(28, 'KMHHNQ', 'KMHHNQ', '05/10/2016', '10/10/2016', '0146', '4', ''),
(29, 'MUJIPO', 'MUJIPO', '13/10/2016', '26/10/2016', '0439', '3', ''),
(30, 'MUJIOPO', 'MUJIOPO', '06/10/2016', '10/10/2016', '0917', '4', ''),
(32, 'UKIOPQO', 'UKIOPQO', '06/10/2016', '10/10/2016', '8910', '4', ''),
(33, '3123121', 'mb213133', '29/10/2020', '22/10/2020', '313131', '1', ''),
(34, 'hódakl', '23213031', '14/10/2020', '30/10/2020', '3232', '1', ''),
(35, '5151', '65', '15/10/2020', '29/10/2020', '515151', '2', ''),
(36, '111111', '11111', '22/10/2020', '23/10/2020', '1111111', '1', ''),
(37, '11111111111111111111111111', '11111111111111111111', '16/10/2020', '29/10/2020', '11111111111111111', '2', ''),
(38, '1111111111', '11111111111111111111', '08/10/2020', '22/10/2020', '1111111111111', '3', ''),
(39, '1', '1', '22/10/2020', '31/10/2020', '1', '4', ''),
(40, '1sdvsd', '11fbf', '01/10/2020', '28/10/2020', '1sdv', '4', ''),
(41, '33231', '313331', '06/10/2020', '28/10/2020', '3131', '1', ''),
(42, '3131', '645641', '20/10/2020', '21/10/2020', '31313', '2', ''),
(43, '2121', '45521', '15/10/2020', '15/10/2020', '2121', '3', ''),
(44, '21212', '4524', '22/10/2020', '21/10/2020', '12121', '4', ''),
(45, 'dsvbsvsab', 'gwa', '18/12/2020', '17/12/2020', 'sbas', '1', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhoidong_detai`
--

CREATE TABLE `tblhoidong_detai` (
  `pk_imahddt` int(11) NOT NULL,
  `fk_imahd` int(11) NOT NULL,
  `fk_imadt` int(11) DEFAULT NULL,
  `stenhoidong_detai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dngaylamviec` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tthoigianbd` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tthoigiankt` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblhoidong_detai`
--

INSERT INTO `tblhoidong_detai` (`pk_imahddt`, `fk_imahd`, `fk_imadt`, `stenhoidong_detai`, `dngaylamviec`, `tthoigianbd`, `tthoigiankt`) VALUES
(1, 12, 197, '', '', '', ''),
(2, 12, 11, '', '', '', ''),
(8, 13, 16, '', '', '', ''),
(9, 13, 162, '', '', '', ''),
(10, 14, 181, '', '', '', ''),
(11, 14, 213, '', '', '', ''),
(12, 15, 61, '', '', '', ''),
(13, 15, 103, '', '', '', ''),
(28, 17, 11, '', '', '', ''),
(29, 17, 12, '', '', '', ''),
(30, 17, 16, '', '', '', ''),
(39, 20, 169, '', '', '', ''),
(40, 20, 197, '', '', '', ''),
(41, 21, 210, '', '', '', ''),
(42, 21, 212, '', '', '', ''),
(43, 21, 213, '', '', '', ''),
(44, 18, 103, '', '', '', ''),
(45, 28, 142, '', '', '', ''),
(46, 29, 17, '', '', '', ''),
(50, 30, 17, '', '', '', ''),
(51, 30, 75, '', '', '', ''),
(52, 32, 105, '', '', '', ''),
(53, 19, 162, '', '', '', ''),
(54, 19, 181, '', '', '', ''),
(55, 16, 15, '', '', '', ''),
(56, 38, 229, '', '', '', ''),
(57, 39, 229, '', '', '', ''),
(58, 40, 227, '', '', '', ''),
(59, 43, 230, '', '', '', ''),
(60, 44, 230, '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhoidong_kehoach`
--

CREATE TABLE `tblhoidong_kehoach` (
  `pk_imahdkh` int(11) NOT NULL,
  `fk_imadt` int(11) NOT NULL,
  `fk_imahd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblhoidong_kehoach`
--

INSERT INTO `tblhoidong_kehoach` (`pk_imahdkh`, `fk_imadt`, `fk_imahd`) VALUES
(10, 11, 1),
(50, 11, 9),
(13, 12, 2),
(35, 12, 7),
(27, 13, 6),
(15, 15, 2),
(21, 15, 3),
(12, 16, 1),
(37, 16, 4),
(39, 17, 2),
(51, 17, 9),
(28, 61, 6),
(32, 61, 7),
(57, 62, 23),
(23, 64, 5),
(55, 67, 22),
(11, 71, 1),
(65, 75, 24),
(66, 75, 25),
(40, 103, 8),
(52, 103, 11),
(64, 105, 24),
(67, 105, 25),
(68, 122, 26),
(42, 130, 8),
(56, 136, 23),
(69, 142, 26),
(70, 142, 27),
(24, 162, 5),
(48, 162, 10),
(41, 169, 8),
(53, 169, 11),
(25, 181, 5),
(33, 181, 7),
(7, 197, 1),
(34, 197, 7),
(5, 210, 1),
(47, 210, 10),
(54, 211, 22),
(14, 212, 2),
(38, 212, 4),
(26, 213, 6),
(49, 213, 10),
(78, 220, 45),
(71, 227, 33),
(73, 227, 35),
(72, 228, 34),
(74, 229, 36),
(75, 229, 37),
(76, 230, 41),
(77, 230, 42);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhopdong`
--

CREATE TABLE `tblhopdong` (
  `pk_imahd` int(11) NOT NULL,
  `dngaylap` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ssohieu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `snguoiky` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fk_smacb` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fk_imadt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblhopdong`
--

INSERT INTO `tblhopdong` (`pk_imahd`, `dngaylap`, `ssohieu`, `snguoiky`, `sghichu`, `fk_smacb`, `fk_imadt`) VALUES
(2, '01/09/2016', 'HĐ0269852235', 'Đỗ Văn Hoàng', 'Đã ký kết', '', 15),
(3, '12/12/2016', 'HĐ0913291', 'Nguyễn Thị Hồng', 'Đã ký kết', '', 212),
(4, '29/08/2016', 'HĐ02132131', 'Nguyễn Xuân Hải', 'Đã thỏa thuận', '', 12),
(5, '11/09/2016', 'HD007149', 'Ông Hoàng Văn Tâm', 'Đã thỏa thuận 2 bên', '', 16),
(7, '11/09/2016', 'HD036852', 'Bà Nguyễn Thị Quỳnh', 'Ký thay giám đốc', '', 197),
(8, '22/10/2015', 'HD036521', 'Nguyễn Thanh Hiền', 'Đã thỏa thuận', '', 181),
(9, '12/02/2016', 'HD012036523', 'Nguyễn Như Mai', 'Đã thỏa thuận', '', 61),
(10, '21/03/2012', 'HD0971823', 'Lê Văn Duy', '', '', 210),
(13, '23/02/2016', 'HD019381920', 'Nguyễn Văn Hải', 'Không có ghi chú', '', 11),
(14, '22/02/2016', 'HD019283910', 'Nguyễn Thị Tinh', '', '', 17),
(15, '19/08/2016', 'HD0192718201', 'Nguyễn Văn Tuân', '', '', 169),
(16, '22/03/2016', 'HD019281920', 'Ngô Bích Hồng', '', '', 162),
(18, '22/01/2016', 'HD019281921', 'Nguyễn Hoài Thu', '', '', 213),
(19, '22/09/2016', 'HD0236520368', 'Bùi Tiến Anh', '', '', 103),
(20, '22/09/2016', 'HD0912345019', 'Nguyễn Hồng Hạnh', 'Đã thỏa thuận', '', 105),
(21, '28/10/2016', 'HD0192013185', 'Lê Minh Duy', 'Đã ký kết.', '', 75),
(22, '05/10/2016', 'HD0253614256', 'Cao Hữu Phương', 'Đã thỏa thuận', '', 142),
(23, '05/11/2051', 'SDÂ', 'Sdsd', '', '', 227),
(25, '11/11/2011', '1111111111111', '111111111111111', '111', '', 229),
(26, '11/03/2012', '31231231', '33313', '3523', '', 230);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbllanbaocao`
--

CREATE TABLE `tbllanbaocao` (
  `pk_imalanbc` int(11) NOT NULL,
  `smota` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbllienketnhomtin`
--

CREATE TABLE `tbllienketnhomtin` (
  `pfk_imatin` int(11) NOT NULL,
  `pfk_imanhomtin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbllinhvuc`
--

CREATE TABLE `tbllinhvuc` (
  `pk_imalv` int(11) NOT NULL,
  `stenlv` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbllinhvuc`
--

INSERT INTO `tbllinhvuc` (`pk_imalv`, `stenlv`) VALUES
(1, 'Tự nhiên'),
(2, 'Kinh tế; XH-NV'),
(3, 'Giáo dục'),
(4, 'Kỹ thuật'),
(5, 'Nông Lâm'),
(7, 'Y Dược'),
(8, 'Môi trường'),
(9, 'ATLĐ'),
(10, 'Sở hữu trí tuệ\r\n'),
(11, 'Các vấn đề khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloaidetai`
--

CREATE TABLE `tblloaidetai` (
  `pk_smaldt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `stenldt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblloaidetai`
--

INSERT INTO `tblloaidetai` (`pk_smaldt`, `stenldt`, `sghichu`) VALUES
('LDT_01', 'Đề tài cấp Viện', ''),
('LDT_02', 'Nhiệm vụ cấp Viện', ''),
('LDT_03', 'Đề tài cấp Bộ', '1'),
('LDT_04', 'Nhiệm vụ cấp Bộ', '1'),
('LDT_05', 'Đề tài trọng điểm cấp Bộ', '1'),
('LDT_06', 'Đề tài theo nhiệm vụ thường xuyên', '1'),
('LDT_07', 'Nhiệm vụ thường xuyên theo chức năng', '1'),
('LDT_08', 'Nhiệm vụ cá nhân', '1'),
('LDT_09', 'Đề tài khác', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloaihinh`
--

CREATE TABLE `tblloaihinh` (
  `pk_smalh` tinyint(4) NOT NULL,
  `stenlh` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblloaihinh`
--

INSERT INTO `tblloaihinh` (`pk_smalh`, `stenlh`) VALUES
(1, 'Cơ bản'),
(2, 'Ứng dụng'),
(3, 'Triển khai'),
(4, 'Khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloaihoidong`
--

CREATE TABLE `tblloaihoidong` (
  `pk_imaloaihd` int(10) UNSIGNED NOT NULL,
  `stenloaihd` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `smota` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblloaihoidong`
--

INSERT INTO `tblloaihoidong` (`pk_imaloaihd`, `stenloaihd`, `smota`) VALUES
(1, 'Hội đồng thẩm định đề tài', ''),
(2, 'Hội đồng đánh giá, khảo sát giữa kỳ', ''),
(3, 'Hội đồng nghiệm thu đề tài', ''),
(4, 'Hội đồng thanh lý', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloaisanpham`
--

CREATE TABLE `tblloaisanpham` (
  `pk_imalsp` int(11) NOT NULL,
  `stenloaisp` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblloaisanpham`
--

INSERT INTO `tblloaisanpham` (`pk_imalsp`, `stenloaisp`, `sghichu`) VALUES
(1, 'Bài báo', ''),
(2, 'Luận văn', ''),
(4, 'Đề tài nghiên cứu', ''),
(6, 'Khác', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloaitin`
--

CREATE TABLE `tblloaitin` (
  `pk_imaloaitin` int(11) NOT NULL,
  `stenloaitin` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblloaitin`
--

INSERT INTO `tblloaitin` (`pk_imaloaitin`, `stenloaitin`) VALUES
(2, 'Thông báo'),
(3, 'Nhắc nhở'),
(5, 'Nhắc lịch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloaivanban`
--

CREATE TABLE `tblloaivanban` (
  `pk_imaloaivb` int(11) NOT NULL,
  `stenloaivb` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnamdetai`
--

CREATE TABLE `tblnamdetai` (
  `pk_smaloainam` tinyint(1) NOT NULL,
  `sonam` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblnamdetai`
--

INSERT INTO `tblnamdetai` (`pk_smaloainam`, `sonam`) VALUES
(1, '12 tháng'),
(2, '18 tháng'),
(3, '24 tháng'),
(4, '30 tháng'),
(5, '36 tháng'),
(6, '48 tháng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnhomcb`
--

CREATE TABLE `tblnhomcb` (
  `pk_imanhomcb` int(11) NOT NULL,
  `stennhomcb` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `smota` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblnhomcb`
--

INSERT INTO `tblnhomcb` (`pk_imanhomcb`, `stennhomcb`, `smota`) VALUES
(1, 'Lãnh đạo Viện', ''),
(2, 'atest', '2'),
(3, 'Quản trị hệ thống', ''),
(4, 'Cán bộ, đơn vị trung tâm nghiên cứu', ''),
(5, 'Thư viện', ''),
(6, 'Cán bộ quản lý trực tiếp', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnhomtin`
--

CREATE TABLE `tblnhomtin` (
  `pk_imanhomtin` int(11) NOT NULL,
  `stennhomtin` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblnhomtin`
--

INSERT INTO `tblnhomtin` (`pk_imanhomtin`, `stennhomtin`) VALUES
(5, 'Tin liên quan'),
(10, 'Tin trong nước'),
(11, 'Tin nước ngoài'),
(12, 'Khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblntchinhthuc`
--

CREATE TABLE `tblntchinhthuc` (
  `id` int(11) NOT NULL,
  `stendt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sloaidetai` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `strangthai_nghiemthu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `schunhiem` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `stenhd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ssoqdntbo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `dngayqdntbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dngayntbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fdiemntbo` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `skqlyluan` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `skqthuctien` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `skqketluan` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `skqknbo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `skqkndonvi` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `sxeploai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `scanboxacnhan` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `trangthaihienthi` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblntchinhthuc`
--

INSERT INTO `tblntchinhthuc` (`id`, `stendt`, `sloaidetai`, `strangthai_nghiemthu`, `schunhiem`, `stenhd`, `ssoqdntbo`, `dngayqdntbo`, `dngayntbo`, `fdiemntbo`, `skqlyluan`, `skqthuctien`, `skqketluan`, `skqknbo`, `skqkndonvi`, `sghichu`, `sxeploai`, `scanboxacnhan`, `trangthaihienthi`) VALUES
(1, 'Mô hình phát triển chương trình giáo dục phổ thông', 'Đề tài cấp Viện', 'Đã nghiệm thu', 'Lê Minh Duy', 'HĐ002NT', '002', '20/05/2016', '20/05/2016', '', '', '', '', '', '', '', 'Tốt', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblntdetaibo`
--

CREATE TABLE `tblntdetaibo` (
  `pk_imahddt` int(11) NOT NULL,
  `ssoqdntbo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `dngayqdntbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dngayntbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fdiemntbo` float NOT NULL,
  `skqlyluan` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `skqthuctien` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `skqketluan` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `skqkiennghibo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `skqkiennghidv` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fk_imadmxeploai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblntdetaicoso`
--

CREATE TABLE `tblntdetaicoso` (
  `pk_imantcs` int(10) UNSIGNED NOT NULL,
  `pk_imahddt` int(11) NOT NULL,
  `ssoqdntcs` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `dngayqdntcs` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dngayntcs` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fdiemntcs` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `ssoqdntct` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `dngayqdntct` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dngayntct` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fdiemtbntct` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `fk_imadmxeploai` int(11) NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sketquantct` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `bsendmail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblntdetaicoso`
--

INSERT INTO `tblntdetaicoso` (`pk_imantcs`, `pk_imahddt`, `ssoqdntcs`, `dngayqdntcs`, `dngayntcs`, `fdiemntcs`, `ssoqdntct`, `dngayqdntct`, `dngayntct`, `fdiemtbntct`, `fk_imadmxeploai`, `sghichu`, `sketquantct`, `bsendmail`) VALUES
(1, 1, '11', '', '30/09/2016', '11', '1', '24/09/2016', '30/09/2016', '11', 3, 'ádasdasd', '', 0),
(3, 2, '1', '', '23/09/2016', '1', '1', '24/09/2016', '26/09/2016', '1', 3, '', '', 0),
(4, 8, 'MHP012', '', '22/09/2016', '6', 'MHP013', '22/09/2016', '22/09/2016', '9', 4, 'Đã giải quyết xong các vấn đề', '', 1),
(5, 13, '213123', '', '26/09/2016', '8', '6567567', '28/09/2016', '30/09/2016', '21312', 1, '', '', 0),
(6, 9, 'QWEQWE', '', '26/09/2016', '8', '123213', '28/09/2016', '30/09/2016', '8', 3, '', '', 1),
(7, 10, 'KPQOE', '', '30/09/2016', '9', 'KPQOE', '30/09/2016', '30/09/2016', '8', 1, '', '', 1),
(8, 12, '0193', '', '26/09/2016', '8', '2138', '28/09/2016', '30/09/2016', '8', 4, '', '', 0),
(9, 11, '213', '', '26/09/2016', '890', '221', '27/09/2016', '29/09/2016', '9', 2, '', '', 0),
(10, 46, '01423', '', '05/10/2016', '9.5', '01425', '12/10/2016', '15/10/2016', '8', 5, 'Bảo vệ thành công', '', 1),
(11, 56, '11111111111', '', '22/10/2020', '11111', '1111111', '16/10/2020', '29/10/2020', '11111', 5, '111111111', '', 0),
(12, 59, '45634', '', '22/10/2020', '45345', '45345', '23/10/2020', '28/10/2020', '45', 3, '4534', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblphanbokinhphi`
--

CREATE TABLE `tblphanbokinhphi` (
  `pk_imapbkp` int(11) NOT NULL,
  `pk_imadt` int(11) NOT NULL,
  `inam` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fkinhphi` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fk_smacanbo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblptguitin`
--

CREATE TABLE `tblptguitin` (
  `pk_imaptgui` int(11) NOT NULL,
  `stenptgui` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsanpham`
--

CREATE TABLE `tblsanpham` (
  `pk_imasp` int(11) NOT NULL,
  `pk_imalsp` int(11) NOT NULL,
  `stensp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stomtat` text COLLATE utf8_unicode_ci NOT NULL,
  `sthoigiancongbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `snoicongbo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdinhdanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pk_imadt` int(11) NOT NULL,
  `sghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblsanpham`
--

INSERT INTO `tblsanpham` (`pk_imasp`, `pk_imalsp`, `stensp`, `stomtat`, `sthoigiancongbo`, `snoicongbo`, `sdinhdanh`, `pk_imadt`, `sghichu`) VALUES
(1, 2, 'ahha', '<p>adfhdsh&aacute;</p>\r\n', '08/10/2020', 'jlk/.hl/', '<p>hadfhadh</p>\r\n', 217, '<p>&agrave;hđf</p>\r\n'),
(2, 1, '1', '<p>1</p>\r\n', '15/01/2021', 'jlk/.hl/', '<p>1</p>\r\n', 223, '<p>1</p>\r\n'),
(3, 2, 'FDSF', '<p>SDAF</p>\r\n', '14/10/2020', 'SDAF', '<p>SFDSDF</p>\r\n', 230, '<p>FGSDFSD</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsanpham_cb`
--

CREATE TABLE `tblsanpham_cb` (
  `pfk_imasp` int(11) NOT NULL,
  `pfk_smacb` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `svaitro` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsanpham_detai`
--

CREATE TABLE `tblsanpham_detai` (
  `pk_imasp` int(11) NOT NULL,
  `pk_imadt` int(11) NOT NULL,
  `sghichu` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltaikhoan`
--

CREATE TABLE `tbltaikhoan` (
  `pk_imatk` int(11) NOT NULL,
  `pk_imanhomcb` int(11) NOT NULL,
  `pk_imadv` int(11) NOT NULL,
  `stendn` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `smatkhau` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbltaikhoan`
--

INSERT INTO `tbltaikhoan` (`pk_imatk`, `pk_imanhomcb`, `pk_imadv`, `stendn`, `smatkhau`, `sghichu`) VALUES
(1, 2, 11, 'admin', '4233ae002b80b8ec51009dd22704942b6b2b2511', NULL),
(4, 4, 13, 'nxhai', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(6, 1, 13, 'haiha', '4233ae002b80b8ec51009dd22704942b6b2b2511', NULL),
(7, 2, 11, 'asdsad', 'd5644e8105ad77c3c3324ba693e83d8fffd54950', NULL),
(8, 2, 10, 'asdasdasd', '00ea1da4192a2030f9ae023de3b3143ed647bbab', NULL),
(9, 2, 11, 'nguyenthitam', '0827a3bc8f5f4dddfb969b42ee62f4d853709f8a', NULL),
(10, 2, 5, '365214', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(11, 4, 4, 'sfdsdfsdf', '017fd90c21532da318332e9fbb7dc9d15b002094', NULL),
(12, 2, 4, 'nguyenthivan', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(15, 2, 11, 'asdasd', 'a3725688eb00564158ba69cfe4852183676727a0', NULL),
(17, 4, 4, 'canbo0', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(18, 4, 7, 'canbo1', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(19, 4, 9, 'canbo2', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(20, 4, 3, 'canbo3', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(26, 4, 2, 'canbo9', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(27, 4, 9, 'canbo10', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(28, 4, 13, 'canbo11', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(29, 4, 7, 'canbo12', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(30, 4, 1, 'canbo13', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(31, 4, 9, 'canbo14', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(32, 4, 11, 'canbo15', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(33, 4, 6, 'canbo16', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(34, 4, 4, 'canbo17', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(35, 4, 5, 'canbo18', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(36, 4, 5, 'canbo19', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(37, 4, 8, 'canbo20', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(38, 4, 8, 'canbo21', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(39, 4, 3, 'canbo22', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(40, 4, 7, 'canbo23', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(41, 4, 4, 'canbo24', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(42, 4, 8, 'canbo25', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(43, 4, 6, 'canbo26', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(44, 4, 4, 'canbo27', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(45, 4, 6, 'canbo28', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(46, 4, 3, 'canbo29', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(47, 4, 7, 'canbo30', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(48, 4, 7, 'canbo31', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(49, 4, 5, 'canbo32', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(50, 4, 13, 'canbo33', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(51, 4, 8, 'canbo34', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(52, 4, 5, 'canbo35', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(53, 4, 13, 'canbo36', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(54, 4, 10, 'canbo37', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(55, 4, 4, 'canbo38', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(56, 4, 7, 'canbo39', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(57, 4, 6, 'canbo40', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(58, 4, 1, 'canbo41', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(59, 4, 10, 'canbo42', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(60, 4, 5, 'canbo43', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(61, 4, 10, 'canbo44', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(62, 4, 12, 'canbo45', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(63, 4, 5, 'canbo46', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(64, 4, 6, 'canbo47', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(65, 4, 3, 'canbo48', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(66, 4, 9, 'canbo49', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(67, 4, 6, 'canbo50', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(68, 4, 13, 'canbo51', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(69, 4, 9, 'canbo52', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(70, 4, 5, 'canbo53', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(71, 4, 7, 'canbo54', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(72, 4, 11, 'canbo55', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(73, 4, 6, 'canbo56', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(74, 4, 6, 'canbo57', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(75, 4, 8, 'canbo58', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(76, 4, 1, 'canbo59', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(77, 4, 6, 'canbo60', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(78, 4, 13, 'canbo61', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(79, 4, 5, 'canbo62', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(80, 4, 7, 'canbo63', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(81, 4, 12, 'canbo64', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(82, 4, 4, 'canbo65', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(83, 4, 12, 'canbo66', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(84, 4, 5, 'canbo67', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(85, 4, 10, 'canbo68', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(86, 4, 6, 'canbo69', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(87, 4, 11, 'canbo70', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(88, 4, 4, 'canbo71', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(89, 4, 4, 'canbo72', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(90, 4, 11, 'canbo73', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(91, 4, 2, 'canbo74', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(92, 4, 8, 'canbo75', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(93, 4, 6, 'canbo76', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(94, 4, 7, 'canbo77', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(95, 4, 6, 'canbo78', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(96, 4, 12, 'canbo79', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(97, 4, 6, 'canbo80', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(98, 4, 12, 'canbo81', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(99, 4, 13, 'canbo82', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(100, 4, 6, 'canbo83', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(101, 4, 2, 'canbo84', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(102, 4, 13, 'canbo85', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(103, 4, 3, 'canbo86', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(104, 4, 1, 'canbo87', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(105, 4, 13, 'canbo88', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(106, 4, 3, 'canbo89', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(107, 4, 3, 'canbo90', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(108, 4, 10, 'canbo91', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(109, 4, 10, 'canbo92', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(110, 4, 7, 'canbo93', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(111, 4, 9, 'canbo94', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(112, 4, 6, 'canbo95', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(113, 4, 10, 'canbo96', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(114, 4, 6, 'canbo97', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(115, 4, 8, 'canbo98', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(116, 4, 4, 'canbo99', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(117, 4, 12, 'canbo100', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(118, 4, 13, 'canbo101', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(119, 4, 9, 'canbo102', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(120, 4, 13, 'canbo103', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(121, 4, 7, 'canbo104', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(122, 4, 7, 'canbo105', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(123, 4, 12, 'canbo106', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(124, 4, 9, 'canbo107', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(125, 4, 6, 'canbo108', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(126, 4, 1, 'canbo109', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(127, 4, 12, 'canbo110', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(128, 4, 3, 'canbo111', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(129, 4, 13, 'canbo112', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(130, 4, 1, 'canbo113', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(131, 4, 11, 'canbo114', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(132, 4, 11, 'canbo115', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(133, 4, 1, 'canbo116', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(134, 4, 6, 'canbo117', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(135, 4, 3, 'canbo118', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(136, 4, 2, 'canbo119', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(137, 4, 12, 'canbo120', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(138, 4, 11, 'canbo121', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(139, 4, 3, 'canbo122', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(140, 4, 5, 'canbo123', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(141, 4, 6, 'canbo124', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(142, 4, 13, 'canbo125', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(143, 4, 4, 'canbo126', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(144, 4, 4, 'canbo127', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(145, 4, 1, 'canbo128', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(146, 4, 7, 'canbo129', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(147, 4, 9, 'canbo130', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(148, 4, 1, 'canbo131', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(149, 4, 6, 'canbo132', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(150, 4, 6, 'canbo133', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(151, 4, 12, 'canbo134', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(152, 4, 6, 'canbo135', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(153, 4, 2, 'canbo136', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(154, 4, 1, 'canbo137', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(155, 4, 1, 'canbo138', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(156, 4, 9, 'canbo139', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(157, 4, 11, 'canbo140', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(158, 4, 6, 'canbo141', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(159, 4, 10, 'canbo142', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(160, 4, 6, 'canbo143', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(161, 4, 12, 'canbo144', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(162, 4, 1, 'canbo145', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(163, 4, 1, 'canbo146', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(164, 4, 1, 'canbo147', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(165, 4, 4, 'canbo148', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(166, 4, 11, 'canbo149', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(167, 4, 9, 'canbo150', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(168, 4, 1, 'canbo151', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(169, 4, 3, 'canbo152', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(170, 4, 4, 'canbo153', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(171, 4, 7, 'canbo154', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(172, 4, 10, 'canbo155', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(173, 4, 7, 'canbo156', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(174, 4, 5, 'canbo157', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(175, 4, 4, 'canbo158', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(176, 4, 12, 'canbo159', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(177, 4, 9, 'canbo160', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(178, 4, 7, 'canbo161', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(179, 4, 1, 'canbo162', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(180, 4, 9, 'canbo163', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(181, 4, 5, 'canbo164', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(182, 4, 10, 'canbo165', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(183, 4, 7, 'canbo166', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(184, 4, 11, 'canbo167', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(185, 4, 2, 'canbo168', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(186, 4, 6, 'canbo169', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(187, 4, 8, 'canbo170', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(188, 4, 8, 'canbo171', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(189, 4, 8, 'canbo172', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(190, 4, 9, 'canbo173', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(191, 4, 13, 'canbo174', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(192, 4, 8, 'canbo175', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(193, 4, 3, 'canbo176', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(194, 4, 12, 'canbo177', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(195, 4, 9, 'canbo178', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(196, 4, 2, 'canbo179', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(197, 4, 12, 'canbo180', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(198, 4, 1, 'canbo181', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(199, 4, 6, 'canbo182', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(200, 4, 12, 'canbo183', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(201, 4, 11, 'canbo184', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(202, 4, 8, 'canbo185', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(203, 4, 3, 'canbo186', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(204, 4, 1, 'canbo187', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(205, 4, 13, 'canbo188', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(206, 4, 7, 'canbo189', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(207, 4, 9, 'canbo190', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(208, 4, 6, 'canbo191', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(209, 4, 9, 'canbo192', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(210, 4, 4, 'canbo193', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(211, 4, 12, 'canbo194', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(212, 4, 3, 'canbo195', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(213, 4, 9, 'canbo196', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(214, 4, 12, 'canbo197', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(215, 4, 6, 'canbo198', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(216, 4, 2, 'canbo199', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltdthdetai`
--

CREATE TABLE `tbltdthdetai` (
  `pk_ibctd` int(11) NOT NULL,
  `pk_imadt` int(11) NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthamgiadetai`
--

CREATE TABLE `tblthamgiadetai` (
  `pk_imadt` int(11) NOT NULL,
  `pk_smacanbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pk_imavt` int(11) NOT NULL,
  `snguoidangkyho` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblthamgiadetai`
--

INSERT INTO `tblthamgiadetai` (`pk_imadt`, `pk_smacanbo`, `pk_imavt`, `snguoidangkyho`, `updated_at`) VALUES
(230, 'CB_200', 1, '', '2020-10-15 10:25:51'),
(230, 'CB_259', 1, '', '2020-10-15 10:25:51'),
(230, 'CB_276', 3, '', '2020-10-15 10:25:51'),
(230, 'CB_277', 2, '', '2020-10-15 10:25:51'),
(230, 'CB_279', 3, '', '2020-10-15 10:25:51'),
(230, 'CB_74', 1, '', '2020-10-15 10:25:51'),
(233, 'CB_132', 1, '', '2020-12-08 11:08:28'),
(233, 'CB_139', 1, '', '2020-12-08 11:08:28'),
(233, 'CB_193', 1, '', '2020-12-08 11:08:28'),
(233, 'CB_280', 3, '', '2020-12-08 11:08:29'),
(234, 'CB_280', 3, '', '2020-12-08 14:39:08'),
(234, 'CB_281', 3, '', '2020-12-08 14:39:08'),
(234, 'CB_74', 1, '', '2020-12-08 14:39:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthanhvienhd`
--

CREATE TABLE `tblthanhvienhd` (
  `pk_imatvhd` int(11) NOT NULL,
  `fk_imahd` int(11) NOT NULL,
  `fk_smacb` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fk_imavaitro` int(11) NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblthanhvienhd`
--

INSERT INTO `tblthanhvienhd` (`pk_imatvhd`, `fk_imahd`, `fk_smacb`, `fk_imavaitro`, `sghichu`) VALUES
(53, 2, 'CB_107', 1, ''),
(54, 2, 'CB_114', 1, ''),
(70, 6, 'CB_83', 1, ''),
(71, 6, 'CB_85', 2, ''),
(72, 6, 'CB_95', 4, ''),
(73, 1, 'CB_107', 1, 'No comment'),
(74, 1, 'CB_133', 1, 'No comment'),
(75, 1, 'CB_01', 2, 'No comment'),
(76, 1, 'CB_114', 2, 'No comment'),
(77, 1, 'CB_19', 4, 'No comment'),
(78, 3, 'CB_107', 1, ''),
(79, 3, 'CB_114', 3, ''),
(80, 3, 'CB_167', 4, ''),
(81, 8, 'CB_100', 1, ''),
(82, 8, 'CB_109', 2, ''),
(83, 8, 'CB_111', 4, ''),
(84, 13, 'CB_107', 2, ''),
(85, 13, 'CB_114', 3, ''),
(86, 13, 'CB_167', 4, ''),
(87, 12, 'CB_01', 1, ''),
(88, 12, 'CB_128', 2, ''),
(89, 12, 'CB_129', 3, ''),
(90, 17, 'CB_100', 1, ''),
(91, 17, 'CB_109', 2, ''),
(92, 17, 'CB_111', 3, ''),
(93, 24, 'CB_107', 1, ''),
(94, 24, 'CB_114', 5, ''),
(95, 9, 'CB_100', 1, ''),
(96, 10, 'CB_01', 1, ''),
(97, 10, 'CB_101', 2, ''),
(98, 10, 'CB_102', 3, ''),
(99, 10, 'CB_103', 4, ''),
(100, 10, 'CB_104', 5, ''),
(101, 27, 'CB_01', 2, 'Khách mời: Phan Mạnh Ninh'),
(102, 27, 'CB_100', 3, 'Khách mời: Phan Mạnh Ninh'),
(103, 27, 'CB_101', 4, 'Khách mời: Phan Mạnh Ninh'),
(104, 27, 'CB_102', 5, 'Khách mời: Phan Mạnh Ninh'),
(105, 27, 'CB_104', 1, 'Khách mời: Phan Mạnh Ninh'),
(106, 29, 'CB_100', 1, ''),
(107, 29, 'CB_109', 2, ''),
(108, 29, 'CB_111', 3, ''),
(109, 29, 'CB_115', 5, ''),
(110, 30, 'CB_249', 1, ''),
(111, 30, 'CB_252', 2, ''),
(112, 30, 'CB_253', 4, ''),
(113, 33, 'CB_105', 2, ''),
(114, 33, 'CB_106', 3, ''),
(115, 33, 'CB_168', 4, ''),
(116, 33, 'CB_172', 1, ''),
(117, 33, 'CB_215', 5, ''),
(118, 34, 'CB_276', 1, ''),
(119, 34, 'CB_74', 2, ''),
(120, 34, 'CB_78', 3, ''),
(121, 35, 'CB_103', 1, ''),
(122, 35, 'CB_108', 2, ''),
(123, 35, 'CB_117', 5, ''),
(124, 36, 'CB_142', 2, ''),
(125, 36, 'CB_190', 4, ''),
(126, 36, 'CB_208', 1, ''),
(127, 37, 'CB_134', 1, ''),
(128, 37, 'CB_164', 2, ''),
(129, 37, 'CB_179', 3, ''),
(130, 41, 'CB_142', 1, ''),
(131, 41, 'CB_190', 3, ''),
(132, 41, 'CB_208', 5, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthoigian`
--

CREATE TABLE `tblthoigian` (
  `pk_imadmtg` int(11) NOT NULL,
  `stendmtg` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblthoigian`
--

INSERT INTO `tblthoigian` (`pk_imadmtg`, `stendmtg`) VALUES
(1, '6 tháng'),
(2, '12 tháng'),
(3, '18 tháng'),
(4, '24 tháng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthongbao`
--

CREATE TABLE `tblthongbao` (
  `pk_imatb` int(11) NOT NULL,
  `stieude` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `snoidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `strangthai` tinyint(1) NOT NULL,
  `snguoinhan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthongtinnnc`
--

CREATE TABLE `tblthongtinnnc` (
  `pk_smacanbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `schucvu` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `slyluanchinhtri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdanhhieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skhenthuong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `snangluc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sthanhtuukh` text COLLATE utf8_unicode_ci NOT NULL,
  `sghichuthem` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblthongtinnnc`
--

INSERT INTO `tblthongtinnnc` (`pk_smacanbo`, `schucvu`, `slyluanchinhtri`, `sdanhhieu`, `skhenthuong`, `snangluc`, `sthanhtuukh`, `sghichuthem`) VALUES
('CB_01', 'Thạc sĩ', 'Tốt', 'Nhà nghiên cứu', 'Chiến sĩ thi đua', 'Nông lâm', 'Phân biệt mẫu đất bị nhiễm phóng xạ', 'Cán bộ Viện'),
('CB_100', '', '', '', '', '', '', ''),
('CB_276', 'fhsdr', 'ehrearsh', 'hsr', 'hsr', 'hser', 'haer', 'ha');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltintuc`
--

CREATE TABLE `tbltintuc` (
  `pk_imatin` int(11) NOT NULL,
  `pk_smacanbo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pk_imaloaitin` int(11) NOT NULL,
  `stentin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stacgia` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `stomtat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schitiet` text COLLATE utf8_unicode_ci NOT NULL,
  `btinnoibo` tinyint(1) NOT NULL,
  `btinnoibat` tinyint(1) NOT NULL,
  `dngaydang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `strangthai` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `sghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltin_canbo`
--

CREATE TABLE `tbltin_canbo` (
  `pfk_smacb` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pfk_imatin` int(11) NOT NULL,
  `fk_imaptgui` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltin_nhomtin`
--

CREATE TABLE `tbltin_nhomtin` (
  `pk_imanhomtin` int(11) NOT NULL,
  `pk_imatin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltongiao`
--

CREATE TABLE `tbltongiao` (
  `pk_imatongiao` int(11) NOT NULL,
  `stentongiao` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ivitrihienthi` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbltongiao`
--

INSERT INTO `tbltongiao` (`pk_imatongiao`, `stentongiao`, `ivitrihienthi`) VALUES
(1, 'Khác', 5),
(2, 'Không', 1),
(3, 'Phật', 2),
(4, 'Thiên chúa', 3),
(5, 'Tin lành', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblvaitro`
--

CREATE TABLE `tblvaitro` (
  `pk_imavt` int(11) NOT NULL,
  `svaitro` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblvaitro`
--

INSERT INTO `tblvaitro` (`pk_imavt`, `svaitro`) VALUES
(1, 'Thành viên'),
(2, 'Cố vấn'),
(3, 'Chủ nhiệm đề tài');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblvaitro_hd`
--

CREATE TABLE `tblvaitro_hd` (
  `pk_imavthd` int(11) NOT NULL,
  `smota` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblvaitro_hd`
--

INSERT INTO `tblvaitro_hd` (`pk_imavthd`, `smota`) VALUES
(1, 'Chủ tịch HĐ'),
(2, 'UV phản biện 1'),
(3, 'UV phản biện 2'),
(4, 'Ủy viên HĐ'),
(5, 'Thư ký HĐ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblvanban_bieumau`
--

CREATE TABLE `tblvanban_bieumau` (
  `pk_imavb` int(11) NOT NULL,
  `pk_imaloaivb` int(11) NOT NULL,
  `ssohieuvb` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `stenlink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stomtat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scqbanhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `snguoiky` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `sngayhieuluc` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cauhoi`
--

CREATE TABLE `tbl_cauhoi` (
  `ma_cauhoi` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `noidung_cauhoi` varchar(700) COLLATE utf8_unicode_ci NOT NULL,
  `thoigian` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hienthi` varchar(1) COLLATE utf8_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`feedback_id`, `email`, `phone_number`, `content`, `created_at`, `updated_at`) VALUES
(0, 'hien@gmail.com', '093141321564', '3230654326ds2fg30sdg45630dagf', '2020-10-07 15:02:42', '2020-10-07 15:02:42'),
(0, 'hien@gmail.com', '093141321564', 'fdsád', '2020-10-07 16:29:02', '2020-10-07 16:29:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_manual`
--

CREATE TABLE `tbl_manual` (
  `id` int(11) NOT NULL,
  `stenphanhe` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `snoidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pk_imanhomcb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongbao`
--

CREATE TABLE `tbl_thongbao` (
  `pk_imathongbao` int(11) NOT NULL,
  `snoidung` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `slink` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `itrangthai` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongbao`
--

INSERT INTO `tbl_thongbao` (`pk_imathongbao`, `snoidung`, `slink`, `level`, `itrangthai`, `created_at`, `updated_at`) VALUES
(1, 'Cán bộ  đã thêm nhà NCKH fsdfsdf vào hệ thống', NULL, NULL, '0', '2016-06-26 17:09:40', '2016-06-26 17:09:40'),
(2, 'Cán bộ  đã thêm nhà NCKH asdsadsad vào hệ thống', NULL, 1, '0', '2016-06-26 17:15:28', '2016-06-26 17:15:28'),
(3, 'Cán bộ Nguyễn Thị Diệp đã thêm nhà NCKH sadsadasd vào hệ thống', NULL, 1, '0', '2016-06-26 17:16:15', '2016-06-26 17:16:15'),
(4, 'Cán bộ Nguyễn Thị Diệp đã thêm nhà NCKH sadsad vào hệ thống', NULL, 1, '0', '2016-06-26 17:43:19', '2016-06-26 17:43:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`pk_imacomment`),
  ADD KEY `pk_imatin` (`pk_imatin`,`pk_smacanbo`),
  ADD KEY `pk_imatin_2` (`pk_imatin`),
  ADD KEY `pk_smacanbo` (`pk_smacanbo`),
  ADD KEY `pk_imatin_3` (`pk_imatin`);

--
-- Chỉ mục cho bảng `hethong`
--
ALTER TABLE `hethong`
  ADD PRIMARY KEY (`pk_imahethong`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `tblanpham`
--
ALTER TABLE `tblanpham`
  ADD PRIMARY KEY (`pk_smaanpham`),
  ADD KEY `fk_smacanbo` (`fk_smacanbo`),
  ADD KEY `fk_imachuyenmuc` (`fk_imachuyenmuc`),
  ADD KEY `fk_smanguoiduyet` (`fk_smanguoiduyet`);

--
-- Chỉ mục cho bảng `tblanpham_binhluan`
--
ALTER TABLE `tblanpham_binhluan`
  ADD PRIMARY KEY (`pk_maapbinhluan`);

--
-- Chỉ mục cho bảng `tblbaocaotiendo`
--
ALTER TABLE `tblbaocaotiendo`
  ADD PRIMARY KEY (`pk_imabctd`),
  ADD KEY `fk_imahdkh` (`fk_imahdkh`,`bsendmail`),
  ADD KEY `fk_imalanbc` (`bsendmail`);

--
-- Chỉ mục cho bảng `tblcanbo`
--
ALTER TABLE `tblcanbo`
  ADD PRIMARY KEY (`pk_smacanbo`),
  ADD KEY `pk_imataikhoan` (`pk_imatongiao`,`pk_imahh`,`pk_imacn`,`pk_imahv`),
  ADD KEY `pk_imataikhoan_2` (`pk_imatongiao`,`pk_imahh`,`pk_imacn`,`pk_imahv`),
  ADD KEY `pk_imataikhoan_3` (`pk_imatongiao`,`pk_imahh`,`pk_imacn`,`pk_imahv`),
  ADD KEY `pk_imataikhoan_4` (`pk_imatongiao`,`pk_imahh`,`pk_imacn`,`pk_imahv`),
  ADD KEY `pk_imataikhoan_5` (`pk_imatongiao`,`pk_imahh`,`pk_imacn`,`pk_imahv`),
  ADD KEY `pk_imataikhoan_6` (`pk_imatongiao`,`pk_imahh`,`pk_imacn`,`pk_imahv`),
  ADD KEY `pk_imatk` (`pk_imadantoc`,`pk_imatongiao`,`pk_imahh`,`pk_imacn`,`pk_imahv`),
  ADD KEY `pk_imatk_2` (`pk_imadantoc`,`pk_imatongiao`,`pk_imahh`,`pk_imacn`,`pk_imahv`),
  ADD KEY `pk_imadantoc` (`pk_imadantoc`),
  ADD KEY `pk_imatongiao` (`pk_imatongiao`,`pk_imahh`,`pk_imacn`,`pk_imahv`),
  ADD KEY `pk_imahocham` (`pk_imahh`),
  ADD KEY `pk_imacn` (`pk_imacn`),
  ADD KEY `pk_imahv` (`pk_imahv`),
  ADD KEY `tblcanbo_pk_imanhomcb_foreign` (`pk_imanhomcb`),
  ADD KEY `tblcanbo_pk_imadv_foreign` (`pk_imadv`);
ALTER TABLE `tblcanbo` ADD FULLTEXT KEY `sten` (`sten`);
ALTER TABLE `tblcanbo` ADD FULLTEXT KEY `sdienthoai` (`sdienthoai`);
ALTER TABLE `tblcanbo` ADD FULLTEXT KEY `shodem` (`shodem`);
ALTER TABLE `tblcanbo` ADD FULLTEXT KEY `sdienthoai_2` (`sdienthoai`);
ALTER TABLE `tblcanbo` ADD FULLTEXT KEY `sten_2` (`sten`);
ALTER TABLE `tblcanbo` ADD FULLTEXT KEY `sdienthoai_3` (`sdienthoai`);

--
-- Chỉ mục cho bảng `tblcanbonckh_ap`
--
ALTER TABLE `tblcanbonckh_ap`
  ADD PRIMARY KEY (`pk_imaap`),
  ADD KEY `pk_smacanbo` (`pk_smacanbo`);

--
-- Chỉ mục cho bảng `tblcanbonckh_ctdt`
--
ALTER TABLE `tblcanbonckh_ctdt`
  ADD PRIMARY KEY (`pk_imactdt`),
  ADD KEY `pk_smacanbo` (`pk_smacanbo`);

--
-- Chỉ mục cho bảng `tblcanbonckh_qtbd`
--
ALTER TABLE `tblcanbonckh_qtbd`
  ADD PRIMARY KEY (`pk_imaqtbd`),
  ADD KEY `pk_smacanbo` (`pk_smacanbo`);

--
-- Chỉ mục cho bảng `tblcanbonckh_qtcm`
--
ALTER TABLE `tblcanbonckh_qtcm`
  ADD PRIMARY KEY (`pk_imaqtcm`),
  ADD KEY `pk_smacanbo` (`pk_smacanbo`);

--
-- Chỉ mục cho bảng `tblcanbonckh_qtct`
--
ALTER TABLE `tblcanbonckh_qtct`
  ADD PRIMARY KEY (`pk_imaqtct`),
  ADD KEY `pk_smacanbo` (`pk_smacanbo`);

--
-- Chỉ mục cho bảng `tblcapdv`
--
ALTER TABLE `tblcapdv`
  ADD PRIMARY KEY (`pk_imacapdv`);

--
-- Chỉ mục cho bảng `tblchuyenmuc`
--
ALTER TABLE `tblchuyenmuc`
  ADD PRIMARY KEY (`pk_imachuyenmuc`),
  ADD KEY `fk_imalv` (`fk_imalv`);

--
-- Chỉ mục cho bảng `tblchuyennganh`
--
ALTER TABLE `tblchuyennganh`
  ADD PRIMARY KEY (`pk_imacn`);

--
-- Chỉ mục cho bảng `tbldangkybaove`
--
ALTER TABLE `tbldangkybaove`
  ADD PRIMARY KEY (`pk_imadkbv`),
  ADD KEY `tbldangkybaove_fk_imadt_foreign` (`fk_imadt`);

--
-- Chỉ mục cho bảng `tbldantoc`
--
ALTER TABLE `tbldantoc`
  ADD PRIMARY KEY (`pk_imadantoc`);

--
-- Chỉ mục cho bảng `tbldetai`
--
ALTER TABLE `tbldetai`
  ADD PRIMARY KEY (`pk_imadt`),
  ADD UNIQUE KEY `tbldetai_stendt_unique` (`stendt`),
  ADD KEY `pk_imatt` (`pk_imatt`,`pk_smaldt`,`pk_smalh`,`pk_imalv`),
  ADD KEY `pk_imatt_2` (`pk_imatt`,`pk_smaldt`,`pk_smalh`,`pk_imalv`),
  ADD KEY `pk_smaldt` (`pk_smaldt`),
  ADD KEY `pk_smalh` (`pk_smalh`),
  ADD KEY `pk_imalv` (`pk_imalv`),
  ADD KEY `stendt` (`stendt`),
  ADD KEY `stendt_2` (`stendt`);

--
-- Chỉ mục cho bảng `tbldetai_chungnhan`
--
ALTER TABLE `tbldetai_chungnhan`
  ADD PRIMARY KEY (`pk_imadt`),
  ADD KEY `pk_imadt` (`pk_imadt`),
  ADD KEY `pk_imadt_2` (`pk_imadt`);

--
-- Chỉ mục cho bảng `tbldetai_giahan`
--
ALTER TABLE `tbldetai_giahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_imadt` (`fk_imadt`);

--
-- Chỉ mục cho bảng `tbldetai_thanhly`
--
ALTER TABLE `tbldetai_thanhly`
  ADD PRIMARY KEY (`pk_imadt`),
  ADD KEY `pk_imadt` (`pk_imadt`),
  ADD KEY `pk_imadt_2` (`pk_imadt`);

--
-- Chỉ mục cho bảng `tbldmtrangthai`
--
ALTER TABLE `tbldmtrangthai`
  ADD PRIMARY KEY (`pk_imatt`);

--
-- Chỉ mục cho bảng `tbldmxeploai`
--
ALTER TABLE `tbldmxeploai`
  ADD PRIMARY KEY (`pk_imadmxeploai`),
  ADD KEY `stendmxeploai` (`stendmxeploai`);

--
-- Chỉ mục cho bảng `tbldonvi`
--
ALTER TABLE `tbldonvi`
  ADD PRIMARY KEY (`pk_imadv`),
  ADD KEY `pk_imacapdonvi` (`pk_imacapdv`);

--
-- Chỉ mục cho bảng `tblhocham`
--
ALTER TABLE `tblhocham`
  ADD PRIMARY KEY (`pk_imahh`);

--
-- Chỉ mục cho bảng `tblhocvi`
--
ALTER TABLE `tblhocvi`
  ADD PRIMARY KEY (`pk_imahv`);

--
-- Chỉ mục cho bảng `tblhoidong`
--
ALTER TABLE `tblhoidong`
  ADD PRIMARY KEY (`pk_imahd`);

--
-- Chỉ mục cho bảng `tblhoidong_detai`
--
ALTER TABLE `tblhoidong_detai`
  ADD PRIMARY KEY (`pk_imahddt`),
  ADD KEY `fk_imahd` (`fk_imahd`,`fk_imadt`),
  ADD KEY `fk_imadt` (`fk_imadt`);

--
-- Chỉ mục cho bảng `tblhoidong_kehoach`
--
ALTER TABLE `tblhoidong_kehoach`
  ADD PRIMARY KEY (`pk_imahdkh`),
  ADD KEY `fk_imahd` (`fk_imahd`),
  ADD KEY `fk_imadt` (`fk_imadt`,`fk_imahd`);

--
-- Chỉ mục cho bảng `tblhopdong`
--
ALTER TABLE `tblhopdong`
  ADD PRIMARY KEY (`pk_imahd`),
  ADD KEY `fk_smacb` (`fk_smacb`,`fk_imadt`),
  ADD KEY `fk_imadt` (`fk_imadt`);

--
-- Chỉ mục cho bảng `tbllanbaocao`
--
ALTER TABLE `tbllanbaocao`
  ADD PRIMARY KEY (`pk_imalanbc`);

--
-- Chỉ mục cho bảng `tbllienketnhomtin`
--
ALTER TABLE `tbllienketnhomtin`
  ADD PRIMARY KEY (`pfk_imatin`,`pfk_imanhomtin`),
  ADD KEY `pfk_imatin` (`pfk_imatin`,`pfk_imanhomtin`),
  ADD KEY `pfk_imatin_2` (`pfk_imatin`,`pfk_imanhomtin`),
  ADD KEY `pfk_imanhomtin` (`pfk_imanhomtin`);

--
-- Chỉ mục cho bảng `tbllinhvuc`
--
ALTER TABLE `tbllinhvuc`
  ADD PRIMARY KEY (`pk_imalv`);

--
-- Chỉ mục cho bảng `tblloaidetai`
--
ALTER TABLE `tblloaidetai`
  ADD PRIMARY KEY (`pk_smaldt`);

--
-- Chỉ mục cho bảng `tblloaihinh`
--
ALTER TABLE `tblloaihinh`
  ADD PRIMARY KEY (`pk_smalh`);

--
-- Chỉ mục cho bảng `tblloaihoidong`
--
ALTER TABLE `tblloaihoidong`
  ADD PRIMARY KEY (`pk_imaloaihd`);

--
-- Chỉ mục cho bảng `tblloaisanpham`
--
ALTER TABLE `tblloaisanpham`
  ADD PRIMARY KEY (`pk_imalsp`);

--
-- Chỉ mục cho bảng `tblloaitin`
--
ALTER TABLE `tblloaitin`
  ADD PRIMARY KEY (`pk_imaloaitin`);

--
-- Chỉ mục cho bảng `tblloaivanban`
--
ALTER TABLE `tblloaivanban`
  ADD PRIMARY KEY (`pk_imaloaivb`);

--
-- Chỉ mục cho bảng `tblnamdetai`
--
ALTER TABLE `tblnamdetai`
  ADD PRIMARY KEY (`pk_smaloainam`);

--
-- Chỉ mục cho bảng `tblnhomcb`
--
ALTER TABLE `tblnhomcb`
  ADD PRIMARY KEY (`pk_imanhomcb`);

--
-- Chỉ mục cho bảng `tblnhomtin`
--
ALTER TABLE `tblnhomtin`
  ADD PRIMARY KEY (`pk_imanhomtin`);

--
-- Chỉ mục cho bảng `tblntchinhthuc`
--
ALTER TABLE `tblntchinhthuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stendt` (`stendt`,`stenhd`,`scanboxacnhan`);

--
-- Chỉ mục cho bảng `tblntdetaibo`
--
ALTER TABLE `tblntdetaibo`
  ADD PRIMARY KEY (`pk_imahddt`),
  ADD KEY `pk_imadt` (`pk_imahddt`),
  ADD KEY `pk_imadt_2` (`pk_imahddt`),
  ADD KEY `pk_imadt_3` (`pk_imahddt`),
  ADD KEY `pk_imadt_4` (`pk_imahddt`),
  ADD KEY `pk_imadt_5` (`pk_imahddt`),
  ADD KEY `pk_imadt_6` (`pk_imahddt`),
  ADD KEY `pk_imadt_7` (`pk_imahddt`),
  ADD KEY `fk_imadmxeploai` (`fk_imadmxeploai`);

--
-- Chỉ mục cho bảng `tblntdetaicoso`
--
ALTER TABLE `tblntdetaicoso`
  ADD PRIMARY KEY (`pk_imantcs`),
  ADD KEY `pk_imadetai` (`pk_imahddt`),
  ADD KEY `pk_imadetai_2` (`pk_imahddt`),
  ADD KEY `fk_imadmxeploai` (`fk_imadmxeploai`);

--
-- Chỉ mục cho bảng `tblphanbokinhphi`
--
ALTER TABLE `tblphanbokinhphi`
  ADD PRIMARY KEY (`pk_imapbkp`),
  ADD KEY `pk_imadt` (`pk_imadt`);

--
-- Chỉ mục cho bảng `tblptguitin`
--
ALTER TABLE `tblptguitin`
  ADD PRIMARY KEY (`pk_imaptgui`);

--
-- Chỉ mục cho bảng `tblsanpham`
--
ALTER TABLE `tblsanpham`
  ADD PRIMARY KEY (`pk_imasp`),
  ADD KEY `pk_imalsp` (`pk_imalsp`),
  ADD KEY `pk_imadt` (`pk_imadt`);

--
-- Chỉ mục cho bảng `tblsanpham_cb`
--
ALTER TABLE `tblsanpham_cb`
  ADD PRIMARY KEY (`pfk_imasp`,`pfk_smacb`),
  ADD KEY `pfk_imasp` (`pfk_imasp`,`pfk_smacb`),
  ADD KEY `pfk_smacb` (`pfk_smacb`);

--
-- Chỉ mục cho bảng `tblsanpham_detai`
--
ALTER TABLE `tblsanpham_detai`
  ADD PRIMARY KEY (`pk_imasp`,`pk_imadt`),
  ADD KEY `pk_imasanpham` (`pk_imasp`,`pk_imadt`),
  ADD KEY `pk_imasanpham_2` (`pk_imasp`,`pk_imadt`),
  ADD KEY `pk_imasanpham_3` (`pk_imasp`,`pk_imadt`),
  ADD KEY `pk_imasanpham_4` (`pk_imasp`,`pk_imadt`),
  ADD KEY `pk_imasanpham_5` (`pk_imasp`,`pk_imadt`),
  ADD KEY `pk_imasanpham_6` (`pk_imasp`,`pk_imadt`),
  ADD KEY `pk_imasanpham_7` (`pk_imasp`,`pk_imadt`),
  ADD KEY `pk_imasanpham_8` (`pk_imasp`,`pk_imadt`),
  ADD KEY `pk_imasanpham_9` (`pk_imasp`,`pk_imadt`),
  ADD KEY `pk_imasanpham_10` (`pk_imasp`,`pk_imadt`),
  ADD KEY `pk_imasanpham_11` (`pk_imasp`,`pk_imadt`),
  ADD KEY `pk_imadt` (`pk_imadt`),
  ADD KEY `pk_imasp` (`pk_imasp`);

--
-- Chỉ mục cho bảng `tbltaikhoan`
--
ALTER TABLE `tbltaikhoan`
  ADD PRIMARY KEY (`pk_imatk`),
  ADD KEY `pk_imanhomcb` (`pk_imanhomcb`,`pk_imadv`),
  ADD KEY `pk_imadv` (`pk_imadv`);

--
-- Chỉ mục cho bảng `tbltdthdetai`
--
ALTER TABLE `tbltdthdetai`
  ADD PRIMARY KEY (`pk_ibctd`),
  ADD KEY `pk_imadt` (`pk_imadt`);

--
-- Chỉ mục cho bảng `tblthamgiadetai`
--
ALTER TABLE `tblthamgiadetai`
  ADD PRIMARY KEY (`pk_imadt`,`pk_smacanbo`),
  ADD KEY `pk_imadt` (`pk_imadt`,`pk_smacanbo`),
  ADD KEY `pk_imavt` (`pk_imavt`),
  ADD KEY `pk_smacanbo` (`pk_smacanbo`);

--
-- Chỉ mục cho bảng `tblthanhvienhd`
--
ALTER TABLE `tblthanhvienhd`
  ADD PRIMARY KEY (`pk_imatvhd`),
  ADD KEY `fk_imahd` (`fk_imahd`,`fk_smacb`,`fk_imavaitro`),
  ADD KEY `fk_imahd_2` (`fk_imahd`,`fk_smacb`,`fk_imavaitro`),
  ADD KEY `fk_imahd_3` (`fk_imahd`,`fk_smacb`,`fk_imavaitro`),
  ADD KEY `fk_imahd_4` (`fk_imahd`),
  ADD KEY `fk_smacb` (`fk_smacb`),
  ADD KEY `fk_imavaitro` (`fk_imavaitro`);

--
-- Chỉ mục cho bảng `tblthoigian`
--
ALTER TABLE `tblthoigian`
  ADD PRIMARY KEY (`pk_imadmtg`);

--
-- Chỉ mục cho bảng `tblthongbao`
--
ALTER TABLE `tblthongbao`
  ADD PRIMARY KEY (`pk_imatb`);

--
-- Chỉ mục cho bảng `tblthongtinnnc`
--
ALTER TABLE `tblthongtinnnc`
  ADD PRIMARY KEY (`pk_smacanbo`),
  ADD KEY `pk_smacanbo` (`pk_smacanbo`),
  ADD KEY `pk_smacanbo_2` (`pk_smacanbo`);

--
-- Chỉ mục cho bảng `tbltintuc`
--
ALTER TABLE `tbltintuc`
  ADD PRIMARY KEY (`pk_imatin`),
  ADD KEY `pk_imataikhoan` (`pk_smacanbo`,`pk_imaloaitin`),
  ADD KEY `pk_imaloaitin` (`pk_imaloaitin`),
  ADD KEY `pk_smacanbo` (`pk_smacanbo`,`pk_imaloaitin`);

--
-- Chỉ mục cho bảng `tbltin_canbo`
--
ALTER TABLE `tbltin_canbo`
  ADD PRIMARY KEY (`pfk_smacb`,`pfk_imatin`),
  ADD KEY `pfk_smacb` (`pfk_smacb`,`pfk_imatin`,`fk_imaptgui`),
  ADD KEY `fk_imaptgui` (`fk_imaptgui`),
  ADD KEY `pfk_imatin` (`pfk_imatin`);

--
-- Chỉ mục cho bảng `tbltin_nhomtin`
--
ALTER TABLE `tbltin_nhomtin`
  ADD PRIMARY KEY (`pk_imanhomtin`,`pk_imatin`),
  ADD KEY `pk_imatin` (`pk_imatin`),
  ADD KEY `pk_imatin_2` (`pk_imatin`),
  ADD KEY `pk_imatin_3` (`pk_imatin`);

--
-- Chỉ mục cho bảng `tbltongiao`
--
ALTER TABLE `tbltongiao`
  ADD PRIMARY KEY (`pk_imatongiao`);

--
-- Chỉ mục cho bảng `tblvaitro`
--
ALTER TABLE `tblvaitro`
  ADD PRIMARY KEY (`pk_imavt`);

--
-- Chỉ mục cho bảng `tblvaitro_hd`
--
ALTER TABLE `tblvaitro_hd`
  ADD PRIMARY KEY (`pk_imavthd`);

--
-- Chỉ mục cho bảng `tblvanban_bieumau`
--
ALTER TABLE `tblvanban_bieumau`
  ADD PRIMARY KEY (`pk_imavb`),
  ADD KEY `pk_imaloaivb` (`pk_imaloaivb`);

--
-- Chỉ mục cho bảng `tbl_cauhoi`
--
ALTER TABLE `tbl_cauhoi`
  ADD PRIMARY KEY (`ma_cauhoi`);

--
-- Chỉ mục cho bảng `tbl_manual`
--
ALTER TABLE `tbl_manual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_imanhomcb` (`pk_imanhomcb`);

--
-- Chỉ mục cho bảng `tbl_thongbao`
--
ALTER TABLE `tbl_thongbao`
  ADD PRIMARY KEY (`pk_imathongbao`),
  ADD KEY `notify_staff` (`level`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `pk_imacomment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hethong`
--
ALTER TABLE `hethong`
  MODIFY `pk_imahethong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `tblanpham_binhluan`
--
ALTER TABLE `tblanpham_binhluan`
  MODIFY `pk_maapbinhluan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tblbaocaotiendo`
--
ALTER TABLE `tblbaocaotiendo`
  MODIFY `pk_imabctd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `tblcanbonckh_ap`
--
ALTER TABLE `tblcanbonckh_ap`
  MODIFY `pk_imaap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tblcanbonckh_ctdt`
--
ALTER TABLE `tblcanbonckh_ctdt`
  MODIFY `pk_imactdt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tblcanbonckh_qtbd`
--
ALTER TABLE `tblcanbonckh_qtbd`
  MODIFY `pk_imaqtbd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tblcanbonckh_qtcm`
--
ALTER TABLE `tblcanbonckh_qtcm`
  MODIFY `pk_imaqtcm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tblcanbonckh_qtct`
--
ALTER TABLE `tblcanbonckh_qtct`
  MODIFY `pk_imaqtct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tblcapdv`
--
ALTER TABLE `tblcapdv`
  MODIFY `pk_imacapdv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tblchuyenmuc`
--
ALTER TABLE `tblchuyenmuc`
  MODIFY `pk_imachuyenmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tblchuyennganh`
--
ALTER TABLE `tblchuyennganh`
  MODIFY `pk_imacn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbldangkybaove`
--
ALTER TABLE `tbldangkybaove`
  MODIFY `pk_imadkbv` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbldantoc`
--
ALTER TABLE `tbldantoc`
  MODIFY `pk_imadantoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `tbldetai`
--
ALTER TABLE `tbldetai`
  MODIFY `pk_imadt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT cho bảng `tbldmtrangthai`
--
ALTER TABLE `tbldmtrangthai`
  MODIFY `pk_imatt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbldmxeploai`
--
ALTER TABLE `tbldmxeploai`
  MODIFY `pk_imadmxeploai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbldonvi`
--
ALTER TABLE `tbldonvi`
  MODIFY `pk_imadv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tblhocham`
--
ALTER TABLE `tblhocham`
  MODIFY `pk_imahh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tblhocvi`
--
ALTER TABLE `tblhocvi`
  MODIFY `pk_imahv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tblhoidong`
--
ALTER TABLE `tblhoidong`
  MODIFY `pk_imahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `tblhoidong_detai`
--
ALTER TABLE `tblhoidong_detai`
  MODIFY `pk_imahddt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `tblhoidong_kehoach`
--
ALTER TABLE `tblhoidong_kehoach`
  MODIFY `pk_imahdkh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `tblhopdong`
--
ALTER TABLE `tblhopdong`
  MODIFY `pk_imahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tbllanbaocao`
--
ALTER TABLE `tbllanbaocao`
  MODIFY `pk_imalanbc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbllinhvuc`
--
ALTER TABLE `tbllinhvuc`
  MODIFY `pk_imalv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tblloaihinh`
--
ALTER TABLE `tblloaihinh`
  MODIFY `pk_smalh` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
