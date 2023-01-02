/*
 Navicat Premium Data Transfer

 Source Server         : LocalHOst windows
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : 127.0.0.1:3306
 Source Schema         : asset_mf_2020

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 31/12/2022 00:46:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_barang
-- ----------------------------
DROP TABLE IF EXISTS `tb_barang`;
CREATE TABLE `tb_barang`  (
  `kode_barang` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `id_kategori` int NULL DEFAULT NULL,
  `nama_barang` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `merek_barang` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `spesifikasi` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan` enum('PCS','PACK','UNIT','ROLL','METER','BUAH') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'PCS',
  `gid` int NULL DEFAULT NULL,
  PRIMARY KEY (`kode_barang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_barang
-- ----------------------------

-- ----------------------------
-- Table structure for tb_departemen
-- ----------------------------
DROP TABLE IF EXISTS `tb_departemen`;
CREATE TABLE `tb_departemen`  (
  `id_dept` int NOT NULL AUTO_INCREMENT,
  `gid` int NULL DEFAULT NULL,
  `nama` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `parent` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_dept`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_departemen
-- ----------------------------
INSERT INTO `tb_departemen` VALUES (1, 1, 'UTILITY & POWER SUPPLY', 0);
INSERT INTO `tb_departemen` VALUES (2, 1, 'TECHNIC', 1);
INSERT INTO `tb_departemen` VALUES (3, 1, 'CIVIL', 1);
INSERT INTO `tb_departemen` VALUES (4, 1, 'IPAL', 1);
INSERT INTO `tb_departemen` VALUES (5, 1, 'QUALITY ASS & FINISH GOODS', 0);
INSERT INTO `tb_departemen` VALUES (6, 1, 'QUALITY CONTROL', 5);
INSERT INTO `tb_departemen` VALUES (7, 1, 'PROSES CONTROL', 5);
INSERT INTO `tb_departemen` VALUES (8, 1, 'JAHIT/ KEMAS', 5);
INSERT INTO `tb_departemen` VALUES (9, 1, 'KEMAS', 8);
INSERT INTO `tb_departemen` VALUES (10, 1, 'DISTRIBUSI', 8);
INSERT INTO `tb_departemen` VALUES (11, 1, 'HRD & GA', 0);
INSERT INTO `tb_departemen` VALUES (12, 1, 'HRD & PERSONAL', 11);
INSERT INTO `tb_departemen` VALUES (13, 1, 'INDUSTRIAL RELATIONSHIP', 11);
INSERT INTO `tb_departemen` VALUES (14, 1, 'GENERAL AFFAIR', 11);
INSERT INTO `tb_departemen` VALUES (15, 1, 'FINISHING', 0);
INSERT INTO `tb_departemen` VALUES (16, 1, 'FINISHING', 15);
INSERT INTO `tb_departemen` VALUES (17, 1, 'PRINTING PREP', 15);
INSERT INTO `tb_departemen` VALUES (18, 1, 'PRINTING PROD', 15);
INSERT INTO `tb_departemen` VALUES (19, 1, 'DESIGNER PRINTING', 15);
INSERT INTO `tb_departemen` VALUES (20, 1, 'DYEING', 0);
INSERT INTO `tb_departemen` VALUES (21, 1, 'DYEING', 20);
INSERT INTO `tb_departemen` VALUES (22, 1, 'LOG & PURCH', 0);
INSERT INTO `tb_departemen` VALUES (23, 1, 'WAREHOUSE', 22);
INSERT INTO `tb_departemen` VALUES (24, 1, 'PURCHASING', 22);
INSERT INTO `tb_departemen` VALUES (25, 1, 'MATERIAL CONTROL', 22);
INSERT INTO `tb_departemen` VALUES (26, 1, 'PPIC', 0);
INSERT INTO `tb_departemen` VALUES (27, 1, 'PPIC PPC', 26);
INSERT INTO `tb_departemen` VALUES (28, 1, 'MATERIAL CONTROL', 26);
INSERT INTO `tb_departemen` VALUES (32, 1, 'PRODUKSI', 0);
INSERT INTO `tb_departemen` VALUES (33, 1, 'PRODUKSI PPIC', 32);
INSERT INTO `tb_departemen` VALUES (35, 1, 'WEAVING 2 DAN 3 ', 32);
INSERT INTO `tb_departemen` VALUES (36, 1, 'QC WEAVING', 32);
INSERT INTO `tb_departemen` VALUES (37, 1, 'FINANCE & ACCOUNTING', 0);
INSERT INTO `tb_departemen` VALUES (38, 1, 'FINANCE', 37);
INSERT INTO `tb_departemen` VALUES (39, 1, 'ACCOUNTING', 37);
INSERT INTO `tb_departemen` VALUES (40, 1, 'ICT', 0);
INSERT INTO `tb_departemen` VALUES (41, 1, 'SYS DEV', 40);
INSERT INTO `tb_departemen` VALUES (42, 1, 'NET WARE', 40);
INSERT INTO `tb_departemen` VALUES (43, 1, 'WEB', 40);
INSERT INTO `tb_departemen` VALUES (47, 1, 'SALES', 0);
INSERT INTO `tb_departemen` VALUES (48, 1, 'SALES 1', 47);
INSERT INTO `tb_departemen` VALUES (49, 1, 'SALES 2', 47);
INSERT INTO `tb_departemen` VALUES (57, 2, 'TEKNIK', 0);
INSERT INTO `tb_departemen` VALUES (58, 2, 'HRD & GA', 0);
INSERT INTO `tb_departemen` VALUES (59, 2, 'FINANCE & ACCOUNTING', 0);
INSERT INTO `tb_departemen` VALUES (70, 2, 'ICT', 0);
INSERT INTO `tb_departemen` VALUES (71, 2, 'NETWARE', 70);

-- ----------------------------
-- Table structure for tb_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_group`;
CREATE TABLE `tb_group`  (
  `gid` int NOT NULL AUTO_INCREMENT,
  `nama_group` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_alias` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `logo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `logo_dashboard` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_group
-- ----------------------------
INSERT INTO `tb_group` VALUES (1, 'Kantor 1', 'KA1', 'Kantor 1, Kab. Pekalongan', 'k1.png', 'k1.png');
INSERT INTO `tb_group` VALUES (2, 'Kantor 2', 'KA2', 'Kantor 2, Pekalongan', 'k7.png', 'k7.jpg');
INSERT INTO `tb_group` VALUES (3, 'Kantor 3', 'KA3', 'kantor 3, Semarang', 'k3.png', 'k3.png');
INSERT INTO `tb_group` VALUES (4, 'Kantor 4', 'KA4', 'kantor 4, Surabaya', 'k4.png', 'k4.png');
INSERT INTO `tb_group` VALUES (5, 'Kantor 5', 'KA4', 'Kantor4, Jakarta', 'k5.png', 'k5.png');
INSERT INTO `tb_group` VALUES (6, 'Kantor 6', 'KA6', 'Kantor 6, Jogja', 'k6.png', 'k6.png');

-- ----------------------------
-- Table structure for tb_inv_history
-- ----------------------------
DROP TABLE IF EXISTS `tb_inv_history`;
CREATE TABLE `tb_inv_history`  (
  `id_history` int NOT NULL AUTO_INCREMENT,
  `no_inventaris` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `status` enum('Buat Baru','Dipinjamkan','Kembali','Mutasi') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Buat Baru',
  `admin` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_pengguna_awal` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_pengguna` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lokasi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `note` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_history`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_inv_history
-- ----------------------------

-- ----------------------------
-- Table structure for tb_inv_komputer
-- ----------------------------
DROP TABLE IF EXISTS `tb_inv_komputer`;
CREATE TABLE `tb_inv_komputer`  (
  `id_komputer` int NOT NULL AUTO_INCREMENT,
  `kode_komputer` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_pengguna` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_komputer` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `spesifikasi` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `serial_number` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_lisence` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `network` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_inv` date NULL DEFAULT NULL,
  `harga_beli` decimal(20, 0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','HILANG/DICURI') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'DIGUNAKAN',
  `note` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gid` int NULL DEFAULT NULL,
  `milik_pribadi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `user_login_akun_sendiri` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `rutin_ubah_pass` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `terinstall_av` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `media_transfer_file` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `jumlah_asset_ruangan` int NULL DEFAULT NULL,
  `tindaklanjut_penggunaan_akun` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tindaklanjut_ubah_pass` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tindaklanjut_av` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `nama_petugas_assesmen` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `aplikasi_yg_digunakan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `lokasi_komputer` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tindaklanjut_media` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_komputer`) USING BTREE,
  UNIQUE INDEX `kode_komputer`(`kode_komputer`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_inv_komputer
-- ----------------------------

-- ----------------------------
-- Table structure for tb_inv_laptop
-- ----------------------------
DROP TABLE IF EXISTS `tb_inv_laptop`;
CREATE TABLE `tb_inv_laptop`  (
  `id_laptop` int NOT NULL AUTO_INCREMENT,
  `kode_laptop` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_pengguna` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_laptop` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `spesifikasi` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `serial_number` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_lisence` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `network` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_inv` date NULL DEFAULT NULL,
  `harga_beli` decimal(10, 0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','HILANG/DICURI') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'DIGUNAKAN',
  `note` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gid` int NULL DEFAULT NULL,
  `milik_pribadi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `user_login_akun_sendiri` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `rutin_ubah_pass` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `terinstall_av` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `media_transfer_file` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `jumlah_asset_ruangan` int NULL DEFAULT NULL,
  `tindaklanjut_penggunaan_akun` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tindaklanjut_ubah_pass` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tindaklanjut_av` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `nama_petugas_assesmen` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `aplikasi_yg_digunakan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `lokasi_komputer` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tindaklanjut_media` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_laptop`) USING BTREE,
  UNIQUE INDEX `kode_laptop`(`kode_laptop`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_inv_laptop
-- ----------------------------

-- ----------------------------
-- Table structure for tb_inv_monitor
-- ----------------------------
DROP TABLE IF EXISTS `tb_inv_monitor`;
CREATE TABLE `tb_inv_monitor`  (
  `id_monitor` int NOT NULL AUTO_INCREMENT,
  `kode_monitor` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_pengguna` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_monitor` enum('LED','LCD','CRT','TOUCH SCREEN') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'LED',
  `spesifikasi` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_inv` date NULL DEFAULT NULL,
  `harga_beli` decimal(20, 0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','DIJUAL/HILANG') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'DIGUNAKAN',
  `note` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_monitor`) USING BTREE,
  UNIQUE INDEX `kode_monitor`(`kode_monitor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_inv_monitor
-- ----------------------------

-- ----------------------------
-- Table structure for tb_inv_network
-- ----------------------------
DROP TABLE IF EXISTS `tb_inv_network`;
CREATE TABLE `tb_inv_network`  (
  `id_network` int NOT NULL AUTO_INCREMENT,
  `kode_network` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lokasi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_network` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `spesifikasi` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_inv` date NULL DEFAULT NULL,
  `harga_beli` decimal(20, 0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','HILANG/DICURI') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'DIGUNAKAN',
  `gid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_network`) USING BTREE,
  UNIQUE INDEX `kode_network`(`kode_network`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_inv_network
-- ----------------------------

-- ----------------------------
-- Table structure for tb_inv_printer
-- ----------------------------
DROP TABLE IF EXISTS `tb_inv_printer`;
CREATE TABLE `tb_inv_printer`  (
  `id_printer` int NOT NULL AUTO_INCREMENT,
  `kode_printer` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_pengguna` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_printer` enum('DESKJET','LASERJET','DOTMATRIX','ALL-IN','SCANER','FAX') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'DESKJET',
  `spesifikasi` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_inv` date NULL DEFAULT NULL,
  `harga_beli` decimal(20, 0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','HILANG/DICURI') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'DIGUNAKAN',
  `note` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_printer`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_inv_printer
-- ----------------------------

-- ----------------------------
-- Table structure for tb_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `tb_jabatan`;
CREATE TABLE `tb_jabatan`  (
  `id_jabatan` int NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jobdes` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_jabatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_jabatan
-- ----------------------------
INSERT INTO `tb_jabatan` VALUES (1, 'DIRECTUR', '');
INSERT INTO `tb_jabatan` VALUES (2, 'GENERAL MANAGER', '');
INSERT INTO `tb_jabatan` VALUES (3, 'DEPT HEAD', '');
INSERT INTO `tb_jabatan` VALUES (4, 'SUB DEPT HEAD', '');
INSERT INTO `tb_jabatan` VALUES (5, 'SECTION HEAD', '');
INSERT INTO `tb_jabatan` VALUES (6, 'GROUP LEADER', '');
INSERT INTO `tb_jabatan` VALUES (7, 'STAFF', '');
INSERT INTO `tb_jabatan` VALUES (8, 'ADMIN', '');
INSERT INTO `tb_jabatan` VALUES (9, 'OPERATOR', '');
INSERT INTO `tb_jabatan` VALUES (10, 'HELP DESK', '');

-- ----------------------------
-- Table structure for tb_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tb_kategori`;
CREATE TABLE `tb_kategori`  (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE,
  UNIQUE INDEX `nama_kategori`(`nama_kategori`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_kategori
-- ----------------------------
INSERT INTO `tb_kategori` VALUES (1, 'Komputer');
INSERT INTO `tb_kategori` VALUES (2, 'Laptop');
INSERT INTO `tb_kategori` VALUES (3, 'Periferal');
INSERT INTO `tb_kategori` VALUES (4, 'Separepart');
INSERT INTO `tb_kategori` VALUES (5, 'Network Device');
INSERT INTO `tb_kategori` VALUES (6, 'ATK');
INSERT INTO `tb_kategori` VALUES (7, 'Monitor');
INSERT INTO `tb_kategori` VALUES (8, 'Printer');
INSERT INTO `tb_kategori` VALUES (9, 'Alat');
INSERT INTO `tb_kategori` VALUES (10, 'Habis Pakai');

-- ----------------------------
-- Table structure for tb_maintenance
-- ----------------------------
DROP TABLE IF EXISTS `tb_maintenance`;
CREATE TABLE `tb_maintenance`  (
  `no_permohonan` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `tgl_permohonan` datetime(0) NULL DEFAULT NULL,
  `tgl_selesai` datetime(0) NULL DEFAULT NULL,
  `jenis_permohonan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_kategori` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_inventaris` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `catatan_pemohon` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_pemohon` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Admin',
  `catatan_perbaikan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_supplier` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `biaya` decimal(10, 0) NULL DEFAULT NULL,
  `status` enum('OPEN','PROCESS','PENDING','CLOSED') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'OPEN',
  `gid` int NULL DEFAULT NULL,
  PRIMARY KEY (`no_permohonan`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_maintenance
-- ----------------------------

-- ----------------------------
-- Table structure for tb_maintenance_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_maintenance_detail`;
CREATE TABLE `tb_maintenance_detail`  (
  `id_detail` int NOT NULL AUTO_INCREMENT,
  `no_permohonan` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `tgl_proses` datetime(0) NULL DEFAULT NULL,
  `catatan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_detail`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_maintenance_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu`  (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `icon` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `parent` int NOT NULL,
  `role` enum('Administrator','Admin') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Admin',
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES (1, 'Dashboard', 'fa fa-dashboard', 'dashboard', 0, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (2, 'Master', 'fa fa-suitcase', '#', 0, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (3, 'Barang', 'fa fa-plus-square text-aqua', 'barang', 2, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (4, 'Supplier', 'fa fa-truck text-aqua', 'supplier', 2, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (5, 'Pengguna', 'fa fa-user text-aqua', 'pengguna', 2, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (6, 'Inventory', 'fa fa-archive', '#', 0, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (7, 'Laptop', 'fa fa-laptop text-aqua', 'laptop', 6, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (8, 'PC/ Komputer', 'fa fa-desktop text-aqua', 'komputer', 6, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (9, 'Monitor', 'fa fa-barcode text-aqua', 'monitor', 6, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (10, 'Printer', 'fa fa-print text-aqua', 'printer', 6, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (11, 'Device Suport', 'fa fa-sitemap text-aqua', 'device', 6, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (12, 'Transaksi', 'fa fa-th-list', '#', 0, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (13, 'Barang Masuk', 'fa fa-shopping-cart text-aqua', 'masuk', 12, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (14, 'Barang Keluar', 'fa fa-minus-square text-aqua', 'keluar', 12, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (16, 'Stok Barang', 'fa fa-th-large text-aqua', 'stok', 12, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (17, 'Maintenance', 'fa fa-wrench', '#', 0, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (19, 'Dedpartemen', 'fa fa-align-center text-aqua', 'departemen', 2, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (20, 'Inventory', 'fa fa-hdd-o text-aqua', 'maintenance', 17, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (22, 'Seting', 'fa fa-gears', '#', 0, 'Administrator', 'Y');
INSERT INTO `tb_menu` VALUES (23, 'Menu seting', 'fa  fa-bars text-aqua', 'menu', 22, 'Administrator', 'Y');
INSERT INTO `tb_menu` VALUES (24, 'User Seting', 'fa fa-users text-aqua', 'user', 22, 'Administrator', 'Y');
INSERT INTO `tb_menu` VALUES (25, 'Archived', 'fa fa-save text-aqua', 'archived', 6, 'Admin', 'Y');
INSERT INTO `tb_menu` VALUES (26, 'Group Seting', 'fa fa-gear text-aqua', 'group', 22, 'Admin', 'Y');

-- ----------------------------
-- Table structure for tb_pelayanan
-- ----------------------------
DROP TABLE IF EXISTS `tb_pelayanan`;
CREATE TABLE `tb_pelayanan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tgl_pelayanan` datetime(0) NULL DEFAULT NULL,
  `id_pengguna` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `note` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_pelayanan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_pengguna
-- ----------------------------
DROP TABLE IF EXISTS `tb_pengguna`;
CREATE TABLE `tb_pengguna`  (
  `id_pengguna` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nik` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_pengguna` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_dept` int NOT NULL,
  `id_jabatan` int NOT NULL,
  `ruang_kantor` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pengguna`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_pengguna
-- ----------------------------
INSERT INTO `tb_pengguna` VALUES ('U022.0001', 'NPS144473\r\n', 'Aan Apriandi', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0002', '198203222009121001\r\n', 'Aan Ashary', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0003', '197605152009121002\r\n', 'Abdul Manap', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0004', '197508092007011019\r\n', 'Abdulah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0005', '199211252015032005\r\n', 'Ade Ima Novikasari, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0006', '198008292012122001\r\n', 'Adelina Nainggolan, Ns., S.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0007', 'NPS143363\r\n', 'Adik Hidayat, Amk, Cbwt', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0008', 'NPS142930\r\n', 'Affriyuni, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0009', 'NPS143994\r\n', 'Agustina Fransiska, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0010', '199208272015032001\r\n', 'Agustina Puspita Dewi, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0011', 'NPS143052\r\n', 'Ai Sumiati, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0012', 'NPS146486\r\n', 'Alfiyya NUgraeni, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0013', 'NPS146318\r\n', 'Amira Fathidzkia, S. Kep., Ner', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0014', '197712242008122001\r\n', 'Ana Yanti Pujihastuti, Amk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0015', 'NPS142732\r\n', 'Andrica Arista Yosapen', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0016', '197107262007012013\r\n', 'Andriyani Anwar', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0017', 'NPS145039\r\n', 'Anggi Sulistiyono Widodo, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0018', 'NPS143261\r\n', 'Anggia Fianti Roza, Amk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0019', 'NPS145244\r\n', 'Angling Kusuma', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0020', '197306071992032001\r\n', 'Ani Fersari, SKM, S.Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0021', 'NPS144912\r\n', 'Ani Prastiwi, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0022', '197805012003122003\r\n', 'Ani Setianingsih, S.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0023', '196605081987032001\r\n', 'Ani Sofiyani, AMKeb', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0024', '198502152010122001\r\n', 'Ani Suryani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0025', 'NPS144618\r\n', 'Ani Yulianti, A.Mk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0026', '196811231988032001\r\n', 'Anidah, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0027', '197009222007012017\r\n', 'Aniek Anggraini Widjanarko', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0028', 'NPS146449\r\n', 'Anindya Dwi Putri, Amd. Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0029', '197707122009122001\r\n', 'Anita', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0030', 'NPS144078\r\n', 'Anita Permana Sari, A.Mk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0031', 'NPS142685\r\n', 'Anne Dwiyanti Anugerah, A.MK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0032', 'NPS146864\r\n', 'Annisa Kurniasih, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0033', '198605082010121002\r\n', 'Antan Taufik Baktiar, S.Kep, N', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0034', 'NPS142553\r\n', 'Apri Purwati', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0035', 'NPS145034\r\n', 'Aprilia Widy Astuti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0036', 'NPS144913\r\n', 'Aprilianti Ramdhani Rachmat, A', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0037', '199005062022032001\r\n', 'Apriyani Malasari, A.Mk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0038', 'NPS145020\r\n', 'Aprizon Nyken Thrisno AR, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0039', '197105132007011025\r\n', 'Arif Maulana ', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0040', 'NPS142719\r\n', 'Aris Nur Hidayanto', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0041', '198511242009122002\r\n', 'Arvina Novianti, S.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0042', ' NPS147234\r\n', 'Asnayeti, SST', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0043', 'NPS146846\r\n', 'Astri Dwi Wulandari, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0044', '199609232019022001\r\n', 'Ayi Fatma, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0045', 'NPS145641\r\n', 'Ayu Rifqi Nimal Abdu,Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0046', '197501172009121001\r\n', 'Bambang Suroto', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0047', 'NPS146931\r\n', 'Bellariani, A Md. Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0048', '198511022014022001\r\n', 'Berta Uli, AM.Keb', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0049', '196703162007011035\r\n', 'Besariyanto', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0050', 'NPS146383\r\n', 'Bheta Primajayanti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0051', 'NPS146855\r\n', 'Bonita Yulianti, Amd. Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0052', '199204112022031002\r\n', 'Budi Aprihartono, Amd. Rad', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0053', '197205201992032002\r\n', 'Budi Tri Utami, S.Kep, Ns', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0054', '197012022007011013\r\n', 'Bunyamin', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0055', '197501282007102001\r\n', 'Cicih Sri Mulyati', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0056', 'NPS146233\r\n', 'Cita Wulan Pasa, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0057', 'NPS144666\r\n', 'Citra Primajati', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0058', '197902281999032001\r\n', 'Cucu Suminar, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0059', '197906112007012017\r\n', 'Darmayanti', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0060', 'NPS146294\r\n', 'Dasikin Salam', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0061', '198503182009122001\r\n', 'Dasmarifa', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0062', '197505241997031001\r\n', 'Datu Euphratadhi Pradana', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0063', 'NPS144947\r\n', 'Defi Wulandari, AMK ', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0064', 'NPS143425\r\n', 'Desmanita Sari, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0065', 'NPS144310\r\n', 'Desy Sarifah. Amd', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0066', 'NPS145256\r\n', 'Devi Nur Anggraeni', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0067', '198903292010122003\r\n', 'Devita Elisabeth', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0068', '198512242008122001\r\n', 'Devita Rostiana Sary, Amk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0069', 'NPS145026\r\n', 'Dewanti Yuli Ariyani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0070', '198612022009122001\r\n', 'Dewanti, S.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0071', '199206252022032003\r\n', 'Dewi Hayati, Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0072', 'NPS146223\r\n', 'Dewi Puspitasari, AMk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0073', '197703041997032001\r\n', 'Dewi Rejeki, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0074', '198109062010122001\r\n', 'Dewi Sartika, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0075', '197101102007012017\r\n', 'Diah Anggraeni', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0076', '196812251989012001\r\n', 'Diah Hadiati, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0077', 'NPS142937\r\n', 'Dian Anggraeni Kusumawati, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0078', 'NPS142885\r\n', 'Dian Anggur Yulianti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0079', 'NPS145781\r\n', 'Dian Fidusia, AMd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0080', '198711162010122001\r\n', 'Dian Kurniartati', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0081', '198209082005012000\r\n', 'Dian Kurniawati, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0082', 'NPS146919\r\n', 'Dian Pratiwi Kamaluddin, S.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0083', 'NPS144002\r\n', 'Diestia Miranti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0084', '198711132010122006\r\n', 'Dina Novenda, S. Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0085', 'NPS147169\r\n', 'Dini Roswita', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0086', '198706242008122001\r\n', 'Dita Rizkya Yusnita, S.Kep., N', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0087', 'NPS145277\r\n', 'Dita Rosdiana Dewi, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0088', '199705232022032001\r\n', 'Diyah Lestari, S.Kep,Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0089', '19850530200812002\r\n', 'Dolly Linneke Djawa, AM.Keb', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0090', '197705042006042016\r\n', 'Dorkas Sitompul,AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0091', 'NPS143481\r\n', 'Dwi Irmaeni', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0092', 'NPS144074\r\n', 'Dwi Nur Agustyorini', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0093', '198510022010122002\r\n', 'Dwi Pamungkas, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0094', '198512182010122005\r\n', 'Dwi Puspita Sari, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0095', 'NPS144677\r\n', 'Dwi Sulistyaningsih', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0096', '198411102012122001\r\n', 'Dwi Suparyanti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0097', 'NPS146384\r\n', 'Dwi Yulianti Kurniasih, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0098', '199603232022032001\r\n', 'Dyan Senja Rachmawati, S.Kep, ', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0099', 'NPS142554\r\n', 'E. Mulyadi', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0100', '196505032009121001\r\n', 'E. Sulaeman', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0101', 'NPS146 910\r\n', 'Efi Priska Lestari, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0102', '199508292022032003\r\n', 'Efilia Intan Sari, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0103', 'NPS143744\r\n', 'Eka Asri Ningastuty, SE', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0104', 'NPS145148\r\n', 'Eka Fitriani, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0105', 'NPS144482\r\n', 'Eka Lupiyah Ningsih , AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0106', '199011222020122005\r\n', 'Eka Norsari, Ns, S.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0107', 'NPS144070\r\n', 'Eka Nur Rahmah, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0108', '198409292010122002\r\n', 'Eka Pratiwi, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0109', '199008032020122003\r\n', 'Eka Prianti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0110', 'NPS146484\r\n', 'Eka Sari Rizkiyah, Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0111', '198404242010122001\r\n', 'Eka Widyasti, S.Kep., Ns', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0112', 'NPS142681\r\n', 'Ekayanti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0113', 'NPS144540\r\n', 'Eko Setiya Adi, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0114', '199204192018012001\r\n', 'Elfa Silvia Dewi, S.Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0115', '197907062005012004\r\n', 'Elisabeth Dessy wulandari , S.', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0116', '198601262009122003\r\n', 'Elnino Tunjungsari, S. Kep., N', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0117', '197010282009122001\r\n', 'Elsisca Sari Hutapea', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0118', '197211061992032001\r\n', 'Ely Nawizar, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0119', 'NPS143651\r\n', 'Elysva Nurmayanti,  AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0120', 'NPS142686\r\n', 'Emi Ekaria, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0121', 'NPS143494\r\n', 'Emma Meida Ekawati, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0122', '198312172010122002\r\n', 'Endah Dessirya, S.Kep,Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0123', '196812232007012017\r\n', 'Endang Pujiati', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0124', '197606282009122001\r\n', 'Entin Nurul Hidayah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0125', '197008251992032001\r\n', 'Eny Kusrini, S. Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0126', 'NPS145662\r\n', 'Erica Wulandari, Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0127', '197308071996032002\r\n', 'Erida Gustiany, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0128', 'NPS143903\r\n', 'Erliana Suryaniayu Soraya, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0129', '198107282005012007\r\n', 'Erlin Fitria Yusliana, S. Kep.', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0130', '197708171997032001\r\n', 'Erlinawati, S. Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0131', '197607262006042010\r\n', 'Ermayeni Amk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0132', 'NPS143583\r\n', 'Erna Tri Susanti, Amk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0133', '197808242006042015\r\n', 'Erni Siahaan,S. Kep,Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0134', '198803092022032001\r\n', 'Erni Windaning, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0135', 'NPS143045\r\n', 'Ester Apriani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0136', '197604291997032002\r\n', 'Euis Widawati, S.Tr.Keb', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0137', '197703202003122003\r\n', 'Evi Sabariah, A.Mk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0138', 'NPS144510\r\n', 'Evi Salvia, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0139', '197905122003122000\r\n', 'Evi Sidabutar, S. Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0140', 'NPS144915\r\n', 'Evriana Pramindita Dwiafani, A', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0141', 'NPS144404\r\n', 'Fahrurozi', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0142', 'NPS144298\r\n', 'Fajar Syarifudin, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0143', 'NPS146619\r\n', 'Fani Pitrianingsih, Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0144', '199605162022032001\r\n', 'Fannya Ayu Permatasari, S.Kep,', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0145', 'NPS147198\r\n', 'Fathimah Sholahudin, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0146', 'NPS146913\r\n', 'Febria Suci Ramadhani, A.Md.Ke', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0147', 'NPS143340\r\n', 'Fefri Jayanti AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0148', 'NPS142678\r\n', 'Feny Tri Nurdiyanti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0149', '197502202006041001\r\n', 'Ferdian Yuda, SE', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0150', 'NPS143051\r\n', 'Ferry Anggraini, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0151', '199002122022032001\r\n', 'Fida Rofika, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0152', ' NPS146626\r\n', 'Firda Melinda AMd. Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0153', 'NPS146848\r\n', 'Fithrah Hanifiyatu Samhah, A.M', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0154', '\"199402282022032004\r\n', 'Fitri Handayani, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0155', 'NPS143854\r\n', 'Fitriyani Purbosari', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0156', 'NPS146972\r\n', 'Gesy Fitri Febriani, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0157', '199003282019022001\r\n', 'Haerunnisa Ramdhania, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0158', 'NPS145202\r\n', 'Handayani Meytri, AMd.Prs', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0159', 'NPS146707\r\n', 'Helda Yuliana, S.Kep,Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0160', 'NPS143464\r\n', 'Hema Kristinawati, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0161', '197506012006042004\r\n', 'Heni Yunita.SKep. Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0162', '198303152008012010\r\n', 'Herlina Anita Ruminis, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0163', ' NPS142642\r\n', 'Herlina Febrianti, S.kep., Ns', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0164', 'NPS146526\r\n', 'Hermila Sari, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0165', '197909282003122003\r\n', 'Hermin Mardiana, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0166', '197707262003122005\r\n', 'Hermince Hutajulu, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0167', '196810052008121002\r\n', 'Herri sobari', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0168', 'NPS146527\r\n', 'Hervy Yuensi, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0169', 'NPS143341\r\n', 'Hesti Rachmawati, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0170', '198707212010122004\r\n', 'Hilaliyah, Amk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0171', '197412151998032001\r\n', 'Iar Sumiarsih, Amk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0172', 'NPS145246\r\n', 'Ichsan Dwi Putranto', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0173', '196804111990032001\r\n', 'Icih Dina Trianti, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0174', '198606082012122001\r\n', 'Ida Andriani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0175', '197603142001122001\r\n', 'Ida Faridawati, A.Mk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0176', '196905122008122001\r\n', 'Ida Fatonah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0177', '198204112008122001\r\n', 'Ida Parida, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0178', 'NPS142694\r\n', 'Iin Pusparini, SKep,Ners ', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0179', 'NPS144414\r\n', 'Iin Rahayu, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0180', '198004202009122002\r\n', 'Iis Aisyah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0181', 'NPS144493\r\n', 'Ika Kartika, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0182', 'NPS147168\r\n', 'Ikhwanata Hermawan', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0183', '197504051997032005\r\n', 'Imas Kulsum', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0184', '197002201992032001\r\n', 'Imron, A.Mk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0185', '198701172008122001\r\n', 'Indah Prastya, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0186', 'NPS145786\r\n', 'Indah Pratiwi, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0187', 'NPS142723\r\n', 'Indra Kurniawan', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0188', 'NPS145325\r\n', 'Indra Setiawan', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0189', 'NPS144487\r\n', 'Indrawati Sonata, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0190', 'NPS144831\r\n', 'Indri Saputri, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0191', 'NPS146658\r\n', 'Intan Putri Utami, AMd. Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0192', 'NPS146065\r\n', 'Irfan Rahmayanto, AMk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0193', 'NPS143884\r\n', 'Irna Fitriana, Amd', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0194', '196703212007012029\r\n', 'Ismitoipah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0195', '198208062014022001\r\n', 'Jenita Hutabarat, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0196', 'NPS146667\r\n', 'Jihan Hanifah Yasmin, AMd. Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0197', '197302161994032001\r\n', 'Jojor Sihotang, S.Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0198', '197003201991032002\r\n', 'Juanda Mutifa, S.Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0199', '197506281995032001\r\n', 'Juariah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0200', '197712142005012001\r\n', 'Jusmawita, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0201', '198108072010122001\r\n', 'Juwita Fitrianingsih', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0202', 'NPS146843\r\n', 'Kanza Salsabila, S.Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0203', 'NPS146232\r\n', 'Karina Novianti, AMd. Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0204', '196507311992032002\r\n', 'Karti', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0205', '199411022019022001\r\n', 'Kartika Nur Taslimah, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0206', '196910061989022001\r\n', 'Khowiriyah, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0207', 'NPS144 072\r\n', 'Kiki Andriani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0208', 'NPS146742\r\n', 'Konita Khamidhatul Khasanah, A', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0209', '197510061997032002\r\n', 'Laili Fauziah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0210', '199101172019022001\r\n', 'Lala Priyati, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0211', 'NPS145356\r\n', 'Lani Alinda', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0212', 'NPS145684\r\n', 'Laura Novitaria, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0213', '197012312008122004\r\n', 'Lestari', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0214', '197111021992032002\r\n', 'Lestari, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0215', 'NPS144309\r\n', 'Lestari, SE', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0216', 'NPS144067\r\n', 'Lilis Lisnawati, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0217', '196712012008121001\r\n', 'Lilis Sulastri', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0218', 'NPS145028\r\n', 'Lina Mustiana, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0219', 'NPS146621\r\n', 'Lizara Dhiaulhanif, Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0220', '199711292022032004\r\n', 'Lulu Intan Qolbiyah, S.Kep.Ner', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0221', 'NPS146938\r\n', 'Luluk Dina Rahmawati, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0222', '198510032020122002\r\n', 'Mahmudah, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0223', '197504072000032001\r\n', 'Maimunah, SKM, MKM', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0224', 'NPS 143529\r\n', 'Mamluatul Hikmah, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0225', '197603012006042006\r\n', 'Mani Dendriani Safitri, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0226', 'NPS 142429\r\n', 'Mardiana', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0227', 'NPS 142573\r\n', 'Mariance Sorang Mauli, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0228', '196509111986012001\r\n', 'Mariati Siahaan, SST', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0229', 'NPS142994\r\n', 'Marsini, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0230', '199507122022032001\r\n', 'Marta Putri Rachmawati', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0231', '197011251994032000\r\n', 'Martini, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0232', '198204282009122002\r\n', 'Maryani Nurohman', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0233', 'NPS 146911\r\n', 'Mega Nurmala, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0234', 'NPS147197\r\n', 'Mega Octaviyani, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0235', '197405132005012003\r\n', 'Meidiana Bangun, S.Kep., Sp. K', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0236', 'NPS144546\r\n', 'Meilana Kusuma Dewi, S.Kep, Ne', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0237', '198405262006042006\r\n', 'Meirina Putri Satriasti', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0238', '198409292009122002\r\n', 'Meldahania, SKep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0239', 'NPS145291\r\n', 'Melia Hardiyati, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0240', 'NPS144891\r\n', 'Melinda Fitriana', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0241', 'NPS145545\r\n', 'Melyana Cherynasari, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0242', 'NPS144920\r\n', 'Meri Murhayati, Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0243', '197106221992032001\r\n', 'Meri Risma Mariana, S.Kep., Ns', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0244', '199007022022032001\r\n', 'Merlin Jovany, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0245', 'NPS146952\r\n', 'Meuthia Safitri, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0246', 'NPS144073\r\n', 'Mia Harisandi, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0247', 'NPS143666\r\n', 'Misbah Budi Santoso', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0248', '196612051989022001\r\n', 'Misroh, AMKeb', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0249', 'NPS146659\r\n', 'Muhammad  Faisal Ramadhan, AMD', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0250', 'NPS145245\r\n', 'Muhammad Hadi Sucipto', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0251', 'NPS146534\r\n', 'Muhammad Ikhsan, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0252', 'NPS145692\r\n', 'Muhammad Ulfan Salafudin, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0253', '196712231988032001\r\n', 'Musliha, S.ST, M.Kes', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0254', '196508201988032002\r\n', 'Mustainah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0255', '197502102006042012\r\n', 'Nasroh Arraziyati', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0256', 'NPS146636\r\n', 'Nasya Muliawati, Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0257', 'NPS146650\r\n', 'Naufalia Zulfa Adhania, S. Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0258', '198304032005012001\r\n', 'Nelli Hotmalina P, Ns, S. Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0259', 'NPS146535\r\n', 'Nelvia Asysyfa, AMk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0260', '196606132007011024\r\n', 'Ngadimun', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0261', 'NPS145344\r\n', 'Nia Hanifah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0262', 'NPS145714\r\n', 'Nilla Yuniar, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0263', 'NPS144061\r\n', 'Nina Oktorina, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0264', 'NPS142684\r\n', 'Ning Budiarti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0265', '196804011990032001\r\n', 'Nining Caswini, Ns M.Kep.,Sp.K', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0266', '196601151985122001\r\n', 'Nining Yuningsih, AMKeb', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0267', '\'197705181997032001\r\n', 'Noeryanti Purwaningsih, AMK ', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0268', 'NPS145148\r\n', 'Nofilia Rahmi, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0269', 'NPS144062\r\n', 'Nova Suhartanti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0270', '198011302009012009\r\n', 'Novardian, S.Kep, Ners, M.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0271', 'NPS146485\r\n', 'Novia Indriani, AMD.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0272', 'NPS142692\r\n', 'Novie Rachmania, AMK ', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0273', '199111182022032002\r\n', 'Novita Deysi Mamoto, S.Kep, Ne', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0274', 'NPS142578\r\n', 'Ns. Selly Ramadhani, S.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0275', '197703312006042009\r\n', 'Nunung Nurmalasari, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0276', 'NPS145494\r\n', 'Nur Ikhsan', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0277', '199111182015032007\r\n', 'Nur Panca Retnaningsih, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0278', '197607122000032002\r\n', 'Nur Wahyu Liana, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0279', '196411282009122001\r\n', 'Nuraini', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0280', '197810152006042011\r\n', 'Nurbeti Ginting, S.Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0281', '198804232014022003\r\n', 'Nurhasanah, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0282', '197901072006042010\r\n', 'Nurhayati,S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0283', '197401071994032002\r\n', 'Nurhikmah, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0284', 'NPS144069\r\n', 'Nuri Dwi Susanti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0285', '196806251991032014\r\n', 'Nurjanah, AMKeb', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0286', 'NPS143531\r\n', 'Nurlina Oktavia Sidabalok, S.K', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0287', '198507172009122001\r\n', 'Nurmasita, SAP', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0288', '197608292006042009\r\n', 'Nursiamah, SST', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0289', 'NPS146703\r\n', 'Nurul Hidayati, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0290', 'NPS144486\r\n', 'Nurul Lia Septiani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0291', 'NPS145496\r\n', 'Nurul Rachmawati, A.Md', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0292', '199402062019022001\r\n', 'Nurul Rodiah, Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0293', 'NPS145704\r\n', 'Nurul WaQiah, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0294', '197302162007102001\r\n', 'Peronika Dina M. Sihombing', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0295', 'NPS144530\r\n', 'Priyani, Amd', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0296', 'NPS142680\r\n', 'Purwanti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0297', 'NPS146746 \r\n', 'Putri Utami, AMK ?', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0298', '199505202020122004\r\n', 'Qori Ahtul Aulia,Ns Skep  ', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0299', '197902022006042014\r\n', 'Raden Roro Rieke, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0300', '197806252007102001\r\n', 'Rahayu Fajriyah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0301', '198303092009122002\r\n', 'Ranie Rekhadarti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0302', 'NPS143585\r\n', 'Raykashari Tryanofa, AMK ?', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0303', '199806062022032001\r\n', 'Ressa Yuniar Safarini, Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0304', 'NPS145012\r\n', 'Resti Fitria Pramandani', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0305', '196803061988022001\r\n', 'Retno Dewi Palupi, S.Kep.,Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0306', '197312191993032002\r\n', 'Rina Aminah, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0307', 'NPS142 679\r\n', 'Rina Budi Harti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0308', '198610162010122005\r\n', 'Rina Oktafiana, AMk', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0309', '196007281987092001\r\n', 'Rinawati Rohsiswatmo, Prof., D', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0310', 'NPS146538\r\n', 'Rindu Ramona Putri, AMd. Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0311', '198602072015032002\r\n', 'Rini Andriani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0312', 'NPS146618\r\n', 'Rini Cahyani, Amd.Kep ', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0313', '198408292010122003\r\n', 'Risma Agustina, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0314', '197906242003122004\r\n', 'Risna Ningsih, S.Kep,Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0315', 'NPS142579\r\n', 'Rita Sastra, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0316', '198506292008012004\r\n', 'Rizki Yunita Kusumawati, AM.Ke', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0317', 'NPS145717\r\n', 'Rizki Yunita, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0318', 'NPS144509\r\n', 'Rochmatul Husna, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0319', '196704101989012001\r\n', 'Rohanah , AMKeb', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0320', 'NPS142551\r\n', 'Rohjanuarnina, AMd', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0321', '198112072005012003\r\n', 'Rona Irmayani Sormin, S. Kep,N', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0322', '197207262007012012\r\n', 'Rosanah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0323', '199305102015032002\r\n', 'Rose Nirwana Handayani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0324', '196804012007101001\r\n', 'Rosid', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0325', '199108012015032006\r\n', 'Rosmawaty, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0326', '197911262014022002\r\n', 'Rossy Kuraesin, AMK  ', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0327', 'NPS143859\r\n', 'Roudhatul Jannah,Amk ', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0328', '197706142009122000\r\n', 'Ruastini', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0329', '197908072009121002\r\n', 'Rusyana', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0330', 'NPS142555\r\n', 'Saidah Aripah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0331', 'NPS146845\r\n', 'Salma Agustine, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0332', 'NPS146227\r\n', 'Salma Mahardika, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0333', '198203072010122003\r\n', 'Santi Susanti, S.Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0334', 'NPS144492\r\n', 'Sarifah Siti Hajjah Rina, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0335', 'NPS143048\r\n', 'Seindah Fitriana, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0336', '196410111985122001\r\n', 'Setiyaningsih', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0337', 'NPS144201\r\n', 'Shinta Nuraini, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0338', '197804142006042010\r\n', 'Silfia Afriani, S. Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0339', 'NPS143901\r\n', 'Sinta Hadi Wijaya, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0340', '198806182010122002\r\n', 'Sisca Yunita Eka Futry, S.Kep.', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0341', 'NPS146926\r\n', 'Sisfaningrum Setyo Cahyati, A.', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0342', 'NPS146706\r\n', 'Sisri Aulia Septiana, Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0343', '198702102010122006\r\n', 'Sita Febriani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0344', 'NPS142420\r\n', 'Siti Lestari, AMD', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0345', '197201311992032001\r\n', 'Siti Maryani', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0346', '199104212019022001\r\n', 'Siti Muttmainatul Islamiyah Al', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0347', 'NPS146623\r\n', 'Siti Nuraeni. Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0348', '197605112001122002\r\n', 'Siti Ratna Juwita, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0349', '197504192001122002\r\n', 'Siti Romlah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0350', '198608292012122001\r\n', 'Siti Romlah, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0351', 'NPS143426\r\n', 'Siti Ruchani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0352', 'NPS143530\r\n', 'Siti Sukaisih', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0353', 'NPS146927\r\n', 'Soraya Salma Rahmadita, S.Kep,', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0354', '196710141989012001\r\n', 'Sri Hartati AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0355', 'NPS143236\r\n', 'Sri Lestari Handayani', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0356', 'NPS142677\r\n', 'Sri Rahayu, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0357', '198202282009122001\r\n', 'Sri Sunarmi', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0358', '196606232007012020\r\n', 'Sri Sunarti', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0359', '197502211995032001\r\n', 'Sri Suparti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0360', '197605102007012024\r\n', 'Sri Sutarti', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0361', 'NPS146543\r\n', 'Sri Tunjung Wijayanti, A.Md.Ke', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0362', '197207062008122002\r\n', 'Sri Yulia', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0363', 'NPS146705\r\n', 'Stania Fitriani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0364', '198507112010122000\r\n', 'Subhiah, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0365', '196704152007012038\r\n', 'Suhaeni', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0366', 'NPS144946\r\n', 'Suhermi, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0367', '197107051993032001\r\n', 'Sukarsihatun, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0368', '196604161989012001\r\n', 'Sukma Tambun, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0369', '199608132022032005\r\n', 'Sulistyoningsih', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0370', '197206092007012014\r\n', 'Suliwiyantini', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0371', '197412022008121003\r\n', 'Sumarsono', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0372', '196604272009121001\r\n', 'Sunardi Basuki W., SE, MM', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0373', '197512202005011004\r\n', 'Sunardi, Skep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0374', '196609211989012001\r\n', 'Sunengsih Harmini, S.Kep., Ner', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0375', '197804081997032001\r\n', 'Sunu Apriyanti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0376', 'NPS145586\r\n', 'Suparni', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0377', '196905061989022002\r\n', 'Suprihatin, S. Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0378', '196412021986032001\r\n', 'Suryati, STr, Keb', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0379', '198203172009122001\r\n', 'Sutini', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0380', 'NPS146653\r\n', 'Syafira Ummu Rahmatillah, S.Ke', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0381', 'NPS142361\r\n', 'Syarif Hidayat', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0382', 'NPS146597\r\n', 'Syifaurrahmah, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0383', '198601102008122001\r\n', 'Tanty Harjati, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0384', '199702112022032005\r\n', 'Tasya Fitriana Semudi, S.Kep, ', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0385', '196807071990032002\r\n', 'Tati Mulyati, S.kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0386', '197208161993032002\r\n', 'Teti Suhesti,S.Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0387', 'NPS144652\r\n', 'Tetty Kartiwi, S. Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0388', '199302082022031002\r\n', 'Theodorus Riki, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0389', 'NPS144846\r\n', 'Tika Puspita Sari, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0390', 'NPS142722\r\n', 'Tita Agustina Andriyani', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0391', '197410032009122001\r\n', 'Titin Prihatin', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0392', '197908302009121001\r\n', 'Tri haryanto', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0393', 'NPS143050\r\n', 'Tri Mulyani', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0394', '198902022022032001\r\n', 'Tri Mutiara Dewi, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0395', 'NPS143087\r\n', 'Tri Wahyuni, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0396', '199303032019022001\r\n', 'Triana Ferdianingsih, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0397', 'NPS145313\r\n', 'Triasari Widiyaningsih, Amd.Ke', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0398', 'NPS145324\r\n', 'Tribowo Kurniawan', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0399', 'NPS144924\r\n', 'Tuti Alawiyah, S.Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0400', '197505032007012035\r\n', 'Tuti Farida', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0401', 'NPS145314\r\n', 'Ulfa Trisnawati, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0402', 'NPS147195\r\n', 'Venira Yusniati, A.Md.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0403', 'NPS145038\r\n', 'Venny Indriyani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0404', 'NPS147216\r\n', 'Wahyu Wulandari, S.Kep, MARS', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0405', 'NPS142993\r\n', 'Wantoro AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0406', '198505022008122002\r\n', 'Watini, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0407', '197809212006042014\r\n', 'Wawat Yuliawati AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0408', '199411252019022001\r\n', 'Widya Handari, S. Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0409', 'NPS144850\r\n', 'Wiji Astuti Kusumawardani,AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0410', '198811122022031002\r\n', 'Winarno, Amd.Kep', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0411', '198310272009122001\r\n', 'Windy Budi Suryaningsih, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0412', '198503172012122001\r\n', 'Winny Dwijayanthy, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0413', '197510111994032001\r\n', 'Wiwin Winarsih, AMKeb', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0414', 'NPS143110\r\n', 'Wiwit Gemala, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0415', 'NPS143883\r\n', 'Yan Apriyamsja', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0416', '197012181993032002\r\n', 'Yanti Yasmini, SKep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0417', '196808181988032002\r\n', 'Yati Hayati, S.Kep., Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0418', '198008022014022001\r\n', 'Yati Nurhayati, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0419', '196912021991032002\r\n', 'Yayah, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0420', '197805142003122001\r\n', 'Yeni Andriani, S.Kep, Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0421', '197411031997032001\r\n', 'Yetti Marlina, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0422', '199006272014021003\r\n', 'Yosie Rivanto, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0423', 'NPS142992\r\n', 'Yuli Arlin, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0424', 'NPS143423\r\n', 'Yuli Chaerullia, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0425', 'NPS142939\r\n', 'Yuli Indra Aini, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0426', '197607041997032001\r\n', 'Yuli Siswanti, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0427', '197702222009122001\r\n', 'Yulianah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0428', '197910312009122001\r\n', 'Yunaida Maryani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0429', '196703041989012001\r\n', 'Yunani, AM.Keb', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0430', 'NPS143047\r\n', 'Yuni Rahmadhani, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0431', '196706061988032002\r\n', 'Yunidar, AMK', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0432', '196805061989022002\r\n', 'Yusmaenah', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0433', '196707151988022001\r\n', 'Yusneti, SST, M.Kes', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0434', 'NPS146977\r\n', 'Yussy Ulvialita, S.Kep,Ners', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0435', 'NPS146908\r\n', 'Zainia Alfaera Sri Kusuma Ward', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0436', 'NPS142733\r\n', 'Zany Nurfauzanil Ibad, Dipl.Ra', 2, 7, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0437', 'NPS144473\r\n', 'Aan Apriandi', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0438', '198203222009121001\r\n', 'Aan Ashary', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0439', '197605152009121002\r\n', 'Abdul Manap', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0440', '197508092007011019\r\n', 'Abdulah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0441', '199211252015032005\r\n', 'Ade Ima Novikasari, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0442', '198008292012122001\r\n', 'Adelina Nainggolan, Ns., S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0443', 'NPS143363\r\n', 'Adik Hidayat, Amk, Cbwt', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0444', 'NPS142930\r\n', 'Affriyuni, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0445', 'NPS143994\r\n', 'Agustina Fransiska, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0446', '199208272015032001\r\n', 'Agustina Puspita Dewi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0447', 'NPS143052\r\n', 'Ai Sumiati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0448', 'NPS146486\r\n', 'Alfiyya NUgraeni, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0449', 'NPS146318\r\n', 'Amira Fathidzkia, S. Kep., Ner', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0450', '197712242008122001\r\n', 'Ana Yanti Pujihastuti, Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0451', 'NPS142732\r\n', 'Andrica Arista Yosapen', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0452', '197107262007012013\r\n', 'Andriyani Anwar', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0453', 'NPS145039\r\n', 'Anggi Sulistiyono Widodo, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0454', 'NPS143261\r\n', 'Anggia Fianti Roza, Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0455', 'NPS145244\r\n', 'Angling Kusuma', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0456', '197306071992032001\r\n', 'Ani Fersari, SKM, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0457', 'NPS144912\r\n', 'Ani Prastiwi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0458', '197805012003122003\r\n', 'Ani Setianingsih, S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0459', '196605081987032001\r\n', 'Ani Sofiyani, AMKeb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0460', '198502152010122001\r\n', 'Ani Suryani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0461', 'NPS144618\r\n', 'Ani Yulianti, A.Mk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0462', '196811231988032001\r\n', 'Anidah, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0463', '197009222007012017\r\n', 'Aniek Anggraini Widjanarko', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0464', 'NPS146449\r\n', 'Anindya Dwi Putri, Amd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0465', '197707122009122001\r\n', 'Anita', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0466', 'NPS144078\r\n', 'Anita Permana Sari, A.Mk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0467', 'NPS142685\r\n', 'Anne Dwiyanti Anugerah, A.MK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0468', 'NPS146864\r\n', 'Annisa Kurniasih, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0469', '198605082010121002\r\n', 'Antan Taufik Baktiar, S.Kep, N', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0470', 'NPS142553\r\n', 'Apri Purwati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0471', 'NPS145034\r\n', 'Aprilia Widy Astuti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0472', 'NPS144913\r\n', 'Aprilianti Ramdhani Rachmat, A', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0473', '199005062022032001\r\n', 'Apriyani Malasari, A.Mk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0474', 'NPS145020\r\n', 'Aprizon Nyken Thrisno AR, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0475', '197105132007011025\r\n', 'Arif Maulana ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0476', 'NPS142719\r\n', 'Aris Nur Hidayanto', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0477', '198511242009122002\r\n', 'Arvina Novianti, S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0478', ' NPS147234\r\n', 'Asnayeti, SST', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0479', 'NPS146846\r\n', 'Astri Dwi Wulandari, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0480', '199609232019022001\r\n', 'Ayi Fatma, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0481', 'NPS145641\r\n', 'Ayu Rifqi Nimal Abdu,Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0482', '197501172009121001\r\n', 'Bambang Suroto', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0483', 'NPS146931\r\n', 'Bellariani, A Md. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0484', '198511022014022001\r\n', 'Berta Uli, AM.Keb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0485', '196703162007011035\r\n', 'Besariyanto', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0486', 'NPS146383\r\n', 'Bheta Primajayanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0487', 'NPS146855\r\n', 'Bonita Yulianti, Amd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0488', '199204112022031002\r\n', 'Budi Aprihartono, Amd. Rad', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0489', '197205201992032002\r\n', 'Budi Tri Utami, S.Kep, Ns', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0490', '197012022007011013\r\n', 'Bunyamin', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0491', '197501282007102001\r\n', 'Cicih Sri Mulyati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0492', 'NPS146233\r\n', 'Cita Wulan Pasa, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0493', 'NPS144666\r\n', 'Citra Primajati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0494', '197902281999032001\r\n', 'Cucu Suminar, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0495', '197906112007012017\r\n', 'Darmayanti', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0496', 'NPS146294\r\n', 'Dasikin Salam', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0497', '198503182009122001\r\n', 'Dasmarifa', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0498', '197505241997031001\r\n', 'Datu Euphratadhi Pradana', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0499', 'NPS144947\r\n', 'Defi Wulandari, AMK ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0500', 'NPS143425\r\n', 'Desmanita Sari, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0501', 'NPS144310\r\n', 'Desy Sarifah. Amd', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0502', 'NPS145256\r\n', 'Devi Nur Anggraeni', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0503', '198903292010122003\r\n', 'Devita Elisabeth', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0504', '198512242008122001\r\n', 'Devita Rostiana Sary, Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0505', 'NPS145026\r\n', 'Dewanti Yuli Ariyani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0506', '198612022009122001\r\n', 'Dewanti, S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0507', '199206252022032003\r\n', 'Dewi Hayati, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0508', 'NPS146223\r\n', 'Dewi Puspitasari, AMk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0509', '197703041997032001\r\n', 'Dewi Rejeki, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0510', '198109062010122001\r\n', 'Dewi Sartika, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0511', '197101102007012017\r\n', 'Diah Anggraeni', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0512', '196812251989012001\r\n', 'Diah Hadiati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0513', 'NPS142937\r\n', 'Dian Anggraeni Kusumawati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0514', 'NPS142885\r\n', 'Dian Anggur Yulianti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0515', 'NPS145781\r\n', 'Dian Fidusia, AMd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0516', '198711162010122001\r\n', 'Dian Kurniartati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0517', '198209082005012000\r\n', 'Dian Kurniawati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0518', 'NPS146919\r\n', 'Dian Pratiwi Kamaluddin, S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0519', 'NPS144002\r\n', 'Diestia Miranti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0520', '198711132010122006\r\n', 'Dina Novenda, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0521', 'NPS147169\r\n', 'Dini Roswita', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0522', '198706242008122001\r\n', 'Dita Rizkya Yusnita, S.Kep., N', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0523', 'NPS145277\r\n', 'Dita Rosdiana Dewi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0524', '199705232022032001\r\n', 'Diyah Lestari, S.Kep,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0525', '19850530200812002\r\n', 'Dolly Linneke Djawa, AM.Keb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0526', '197705042006042016\r\n', 'Dorkas Sitompul,AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0527', 'NPS143481\r\n', 'Dwi Irmaeni', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0528', 'NPS144074\r\n', 'Dwi Nur Agustyorini', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0529', '198510022010122002\r\n', 'Dwi Pamungkas, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0530', '198512182010122005\r\n', 'Dwi Puspita Sari, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0531', 'NPS144677\r\n', 'Dwi Sulistyaningsih', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0532', '198411102012122001\r\n', 'Dwi Suparyanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0533', 'NPS146384\r\n', 'Dwi Yulianti Kurniasih, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0534', '199603232022032001\r\n', 'Dyan Senja Rachmawati, S.Kep, ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0535', 'NPS142554\r\n', 'E. Mulyadi', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0536', '196505032009121001\r\n', 'E. Sulaeman', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0537', 'NPS146 910\r\n', 'Efi Priska Lestari, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0538', '199508292022032003\r\n', 'Efilia Intan Sari, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0539', 'NPS143744\r\n', 'Eka Asri Ningastuty, SE', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0540', 'NPS145148\r\n', 'Eka Fitriani, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0541', 'NPS144482\r\n', 'Eka Lupiyah Ningsih , AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0542', '199011222020122005\r\n', 'Eka Norsari, Ns, S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0543', 'NPS144070\r\n', 'Eka Nur Rahmah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0544', '198409292010122002\r\n', 'Eka Pratiwi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0545', '199008032020122003\r\n', 'Eka Prianti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0546', 'NPS146484\r\n', 'Eka Sari Rizkiyah, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0547', '198404242010122001\r\n', 'Eka Widyasti, S.Kep., Ns', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0548', 'NPS142681\r\n', 'Ekayanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0549', 'NPS144540\r\n', 'Eko Setiya Adi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0550', '199204192018012001\r\n', 'Elfa Silvia Dewi, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0551', '197907062005012004\r\n', 'Elisabeth Dessy wulandari , S.', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0552', '198601262009122003\r\n', 'Elnino Tunjungsari, S. Kep., N', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0553', '197010282009122001\r\n', 'Elsisca Sari Hutapea', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0554', '197211061992032001\r\n', 'Ely Nawizar, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0555', 'NPS143651\r\n', 'Elysva Nurmayanti,  AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0556', 'NPS142686\r\n', 'Emi Ekaria, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0557', 'NPS143494\r\n', 'Emma Meida Ekawati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0558', '198312172010122002\r\n', 'Endah Dessirya, S.Kep,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0559', '196812232007012017\r\n', 'Endang Pujiati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0560', '197606282009122001\r\n', 'Entin Nurul Hidayah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0561', '197008251992032001\r\n', 'Eny Kusrini, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0562', 'NPS145662\r\n', 'Erica Wulandari, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0563', '197308071996032002\r\n', 'Erida Gustiany, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0564', 'NPS143903\r\n', 'Erliana Suryaniayu Soraya, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0565', '198107282005012007\r\n', 'Erlin Fitria Yusliana, S. Kep.', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0566', '197708171997032001\r\n', 'Erlinawati, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0567', '197607262006042010\r\n', 'Ermayeni Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0568', 'NPS143583\r\n', 'Erna Tri Susanti, Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0569', '197808242006042015\r\n', 'Erni Siahaan,S. Kep,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0570', '198803092022032001\r\n', 'Erni Windaning, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0571', 'NPS143045\r\n', 'Ester Apriani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0572', '197604291997032002\r\n', 'Euis Widawati, S.Tr.Keb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0573', '197703202003122003\r\n', 'Evi Sabariah, A.Mk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0574', 'NPS144510\r\n', 'Evi Salvia, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0575', '197905122003122000\r\n', 'Evi Sidabutar, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0576', 'NPS144915\r\n', 'Evriana Pramindita Dwiafani, A', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0577', 'NPS144404\r\n', 'Fahrurozi', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0578', 'NPS144298\r\n', 'Fajar Syarifudin, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0579', 'NPS146619\r\n', 'Fani Pitrianingsih, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0580', '199605162022032001\r\n', 'Fannya Ayu Permatasari, S.Kep,', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0581', 'NPS147198\r\n', 'Fathimah Sholahudin, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0582', 'NPS146913\r\n', 'Febria Suci Ramadhani, A.Md.Ke', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0583', 'NPS143340\r\n', 'Fefri Jayanti AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0584', 'NPS142678\r\n', 'Feny Tri Nurdiyanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0585', '197502202006041001\r\n', 'Ferdian Yuda, SE', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0586', 'NPS143051\r\n', 'Ferry Anggraini, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0587', '199002122022032001\r\n', 'Fida Rofika, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0588', ' NPS146626\r\n', 'Firda Melinda AMd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0589', 'NPS146848\r\n', 'Fithrah Hanifiyatu Samhah, A.M', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0590', '\"199402282022032004\r\n', 'Fitri Handayani, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0591', 'NPS143854\r\n', 'Fitriyani Purbosari', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0592', 'NPS146972\r\n', 'Gesy Fitri Febriani, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0593', '199003282019022001\r\n', 'Haerunnisa Ramdhania, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0594', 'NPS145202\r\n', 'Handayani Meytri, AMd.Prs', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0595', 'NPS146707\r\n', 'Helda Yuliana, S.Kep,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0596', 'NPS143464\r\n', 'Hema Kristinawati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0597', '197506012006042004\r\n', 'Heni Yunita.SKep. Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0598', '198303152008012010\r\n', 'Herlina Anita Ruminis, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0599', ' NPS142642\r\n', 'Herlina Febrianti, S.kep., Ns', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0600', 'NPS146526\r\n', 'Hermila Sari, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0601', '197909282003122003\r\n', 'Hermin Mardiana, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0602', '197707262003122005\r\n', 'Hermince Hutajulu, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0603', '196810052008121002\r\n', 'Herri sobari', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0604', 'NPS146527\r\n', 'Hervy Yuensi, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0605', 'NPS143341\r\n', 'Hesti Rachmawati, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0606', '198707212010122004\r\n', 'Hilaliyah, Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0607', '197412151998032001\r\n', 'Iar Sumiarsih, Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0608', 'NPS145246\r\n', 'Ichsan Dwi Putranto', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0609', '196804111990032001\r\n', 'Icih Dina Trianti, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0610', '198606082012122001\r\n', 'Ida Andriani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0611', '197603142001122001\r\n', 'Ida Faridawati, A.Mk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0612', '196905122008122001\r\n', 'Ida Fatonah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0613', '198204112008122001\r\n', 'Ida Parida, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0614', 'NPS142694\r\n', 'Iin Pusparini, SKep,Ners ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0615', 'NPS144414\r\n', 'Iin Rahayu, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0616', '198004202009122002\r\n', 'Iis Aisyah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0617', 'NPS144493\r\n', 'Ika Kartika, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0618', 'NPS147168\r\n', 'Ikhwanata Hermawan', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0619', '197504051997032005\r\n', 'Imas Kulsum', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0620', '197002201992032001\r\n', 'Imron, A.Mk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0621', '198701172008122001\r\n', 'Indah Prastya, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0622', 'NPS145786\r\n', 'Indah Pratiwi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0623', 'NPS142723\r\n', 'Indra Kurniawan', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0624', 'NPS145325\r\n', 'Indra Setiawan', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0625', 'NPS144487\r\n', 'Indrawati Sonata, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0626', 'NPS144831\r\n', 'Indri Saputri, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0627', 'NPS146658\r\n', 'Intan Putri Utami, AMd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0628', 'NPS146065\r\n', 'Irfan Rahmayanto, AMk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0629', 'NPS143884\r\n', 'Irna Fitriana, Amd', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0630', '196703212007012029\r\n', 'Ismitoipah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0631', '198208062014022001\r\n', 'Jenita Hutabarat, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0632', 'NPS146667\r\n', 'Jihan Hanifah Yasmin, AMd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0633', '197302161994032001\r\n', 'Jojor Sihotang, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0634', '197003201991032002\r\n', 'Juanda Mutifa, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0635', '197506281995032001\r\n', 'Juariah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0636', '197712142005012001\r\n', 'Jusmawita, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0637', '198108072010122001\r\n', 'Juwita Fitrianingsih', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0638', 'NPS146843\r\n', 'Kanza Salsabila, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0639', 'NPS146232\r\n', 'Karina Novianti, AMd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0640', '196507311992032002\r\n', 'Karti', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0641', '199411022019022001\r\n', 'Kartika Nur Taslimah, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0642', '196910061989022001\r\n', 'Khowiriyah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0643', 'NPS144 072\r\n', 'Kiki Andriani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0644', 'NPS146742\r\n', 'Konita Khamidhatul Khasanah, A', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0645', '197510061997032002\r\n', 'Laili Fauziah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0646', '199101172019022001\r\n', 'Lala Priyati, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0647', 'NPS145356\r\n', 'Lani Alinda', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0648', 'NPS145684\r\n', 'Laura Novitaria, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0649', '197012312008122004\r\n', 'Lestari', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0650', '197111021992032002\r\n', 'Lestari, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0651', 'NPS144309\r\n', 'Lestari, SE', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0652', 'NPS144067\r\n', 'Lilis Lisnawati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0653', '196712012008121001\r\n', 'Lilis Sulastri', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0654', 'NPS145028\r\n', 'Lina Mustiana, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0655', 'NPS146621\r\n', 'Lizara Dhiaulhanif, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0656', '199711292022032004\r\n', 'Lulu Intan Qolbiyah, S.Kep.Ner', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0657', 'NPS146938\r\n', 'Luluk Dina Rahmawati, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0658', '198510032020122002\r\n', 'Mahmudah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0659', '197504072000032001\r\n', 'Maimunah, SKM, MKM', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0660', 'NPS 143529\r\n', 'Mamluatul Hikmah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0661', '197603012006042006\r\n', 'Mani Dendriani Safitri, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0662', 'NPS 142429\r\n', 'Mardiana', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0663', 'NPS 142573\r\n', 'Mariance Sorang Mauli, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0664', '196509111986012001\r\n', 'Mariati Siahaan, SST', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0665', 'NPS142994\r\n', 'Marsini, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0666', '199507122022032001\r\n', 'Marta Putri Rachmawati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0667', '197011251994032000\r\n', 'Martini, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0668', '198204282009122002\r\n', 'Maryani Nurohman', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0669', 'NPS 146911\r\n', 'Mega Nurmala, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0670', 'NPS147197\r\n', 'Mega Octaviyani, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0671', '197405132005012003\r\n', 'Meidiana Bangun, S.Kep., Sp. K', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0672', 'NPS144546\r\n', 'Meilana Kusuma Dewi, S.Kep, Ne', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0673', '198405262006042006\r\n', 'Meirina Putri Satriasti', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0674', '198409292009122002\r\n', 'Meldahania, SKep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0675', 'NPS145291\r\n', 'Melia Hardiyati, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0676', 'NPS144891\r\n', 'Melinda Fitriana', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0677', 'NPS145545\r\n', 'Melyana Cherynasari, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0678', 'NPS144920\r\n', 'Meri Murhayati, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0679', '197106221992032001\r\n', 'Meri Risma Mariana, S.Kep., Ns', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0680', '199007022022032001\r\n', 'Merlin Jovany, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0681', 'NPS146952\r\n', 'Meuthia Safitri, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0682', 'NPS144073\r\n', 'Mia Harisandi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0683', 'NPS143666\r\n', 'Misbah Budi Santoso', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0684', '196612051989022001\r\n', 'Misroh, AMKeb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0685', 'NPS146659\r\n', 'Muhammad  Faisal Ramadhan, AMD', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0686', 'NPS145245\r\n', 'Muhammad Hadi Sucipto', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0687', 'NPS146534\r\n', 'Muhammad Ikhsan, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0688', 'NPS145692\r\n', 'Muhammad Ulfan Salafudin, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0689', '196712231988032001\r\n', 'Musliha, S.ST, M.Kes', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0690', '196508201988032002\r\n', 'Mustainah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0691', '197502102006042012\r\n', 'Nasroh Arraziyati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0692', 'NPS146636\r\n', 'Nasya Muliawati, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0693', 'NPS146650\r\n', 'Naufalia Zulfa Adhania, S. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0694', '198304032005012001\r\n', 'Nelli Hotmalina P, Ns, S. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0695', 'NPS146535\r\n', 'Nelvia Asysyfa, AMk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0696', '196606132007011024\r\n', 'Ngadimun', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0697', 'NPS145344\r\n', 'Nia Hanifah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0698', 'NPS145714\r\n', 'Nilla Yuniar, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0699', 'NPS144061\r\n', 'Nina Oktorina, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0700', 'NPS142684\r\n', 'Ning Budiarti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0701', '196804011990032001\r\n', 'Nining Caswini, Ns M.Kep.,Sp.K', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0702', '196601151985122001\r\n', 'Nining Yuningsih, AMKeb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0703', '\'197705181997032001\r\n', 'Noeryanti Purwaningsih, AMK ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0704', 'NPS145148\r\n', 'Nofilia Rahmi, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0705', 'NPS144062\r\n', 'Nova Suhartanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0706', '198011302009012009\r\n', 'Novardian, S.Kep, Ners, M.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0707', 'NPS146485\r\n', 'Novia Indriani, AMD.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0708', 'NPS142692\r\n', 'Novie Rachmania, AMK ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0709', '199111182022032002\r\n', 'Novita Deysi Mamoto, S.Kep, Ne', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0710', 'NPS142578\r\n', 'Ns. Selly Ramadhani, S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0711', '197703312006042009\r\n', 'Nunung Nurmalasari, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0712', 'NPS145494\r\n', 'Nur Ikhsan', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0713', '199111182015032007\r\n', 'Nur Panca Retnaningsih, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0714', '197607122000032002\r\n', 'Nur Wahyu Liana, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0715', '196411282009122001\r\n', 'Nuraini', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0716', '197810152006042011\r\n', 'Nurbeti Ginting, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0717', '198804232014022003\r\n', 'Nurhasanah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0718', '197901072006042010\r\n', 'Nurhayati,S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0719', '197401071994032002\r\n', 'Nurhikmah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0720', 'NPS144069\r\n', 'Nuri Dwi Susanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0721', '196806251991032014\r\n', 'Nurjanah, AMKeb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0722', 'NPS143531\r\n', 'Nurlina Oktavia Sidabalok, S.K', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0723', '198507172009122001\r\n', 'Nurmasita, SAP', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0724', '197608292006042009\r\n', 'Nursiamah, SST', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0725', 'NPS146703\r\n', 'Nurul Hidayati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0726', 'NPS144486\r\n', 'Nurul Lia Septiani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0727', 'NPS145496\r\n', 'Nurul Rachmawati, A.Md', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0728', '199402062019022001\r\n', 'Nurul Rodiah, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0729', 'NPS145704\r\n', 'Nurul WaQiah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0730', '197302162007102001\r\n', 'Peronika Dina M. Sihombing', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0731', 'NPS144530\r\n', 'Priyani, Amd', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0732', 'NPS142680\r\n', 'Purwanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0733', 'NPS146746 \r\n', 'Putri Utami, AMK ?', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0734', '199505202020122004\r\n', 'Qori Ahtul Aulia,Ns Skep  ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0735', '197902022006042014\r\n', 'Raden Roro Rieke, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0736', '197806252007102001\r\n', 'Rahayu Fajriyah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0737', '198303092009122002\r\n', 'Ranie Rekhadarti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0738', 'NPS143585\r\n', 'Raykashari Tryanofa, AMK ?', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0739', '199806062022032001\r\n', 'Ressa Yuniar Safarini, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0740', 'NPS145012\r\n', 'Resti Fitria Pramandani', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0741', '196803061988022001\r\n', 'Retno Dewi Palupi, S.Kep.,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0742', '197312191993032002\r\n', 'Rina Aminah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0743', 'NPS142 679\r\n', 'Rina Budi Harti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0744', '198610162010122005\r\n', 'Rina Oktafiana, AMk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0745', '196007281987092001\r\n', 'Rinawati Rohsiswatmo, Prof., D', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0746', 'NPS146538\r\n', 'Rindu Ramona Putri, AMd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0747', '198602072015032002\r\n', 'Rini Andriani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0748', 'NPS146618\r\n', 'Rini Cahyani, Amd.Kep ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0749', '198408292010122003\r\n', 'Risma Agustina, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0750', '197906242003122004\r\n', 'Risna Ningsih, S.Kep,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0751', 'NPS142579\r\n', 'Rita Sastra, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0752', '198506292008012004\r\n', 'Rizki Yunita Kusumawati, AM.Ke', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0753', 'NPS145717\r\n', 'Rizki Yunita, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0754', 'NPS144509\r\n', 'Rochmatul Husna, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0755', '196704101989012001\r\n', 'Rohanah , AMKeb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0756', 'NPS142551\r\n', 'Rohjanuarnina, AMd', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0757', '198112072005012003\r\n', 'Rona Irmayani Sormin, S. Kep,N', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0758', '197207262007012012\r\n', 'Rosanah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0759', '199305102015032002\r\n', 'Rose Nirwana Handayani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0760', '196804012007101001\r\n', 'Rosid', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0761', '199108012015032006\r\n', 'Rosmawaty, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0762', '197911262014022002\r\n', 'Rossy Kuraesin, AMK  ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0763', 'NPS143859\r\n', 'Roudhatul Jannah,Amk ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0764', '197706142009122000\r\n', 'Ruastini', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0765', '197908072009121002\r\n', 'Rusyana', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0766', 'NPS142555\r\n', 'Saidah Aripah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0767', 'NPS146845\r\n', 'Salma Agustine, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0768', 'NPS146227\r\n', 'Salma Mahardika, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0769', '198203072010122003\r\n', 'Santi Susanti, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0770', 'NPS144492\r\n', 'Sarifah Siti Hajjah Rina, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0771', 'NPS143048\r\n', 'Seindah Fitriana, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0772', '196410111985122001\r\n', 'Setiyaningsih', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0773', 'NPS144201\r\n', 'Shinta Nuraini, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0774', '197804142006042010\r\n', 'Silfia Afriani, S. Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0775', 'NPS143901\r\n', 'Sinta Hadi Wijaya, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0776', '198806182010122002\r\n', 'Sisca Yunita Eka Futry, S.Kep.', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0777', 'NPS146926\r\n', 'Sisfaningrum Setyo Cahyati, A.', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0778', 'NPS146706\r\n', 'Sisri Aulia Septiana, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0779', '198702102010122006\r\n', 'Sita Febriani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0780', 'NPS142420\r\n', 'Siti Lestari, AMD', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0781', '197201311992032001\r\n', 'Siti Maryani', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0782', '199104212019022001\r\n', 'Siti Muttmainatul Islamiyah Al', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0783', 'NPS146623\r\n', 'Siti Nuraeni. Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0784', '197605112001122002\r\n', 'Siti Ratna Juwita, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0785', '197504192001122002\r\n', 'Siti Romlah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0786', '198608292012122001\r\n', 'Siti Romlah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0787', 'NPS143426\r\n', 'Siti Ruchani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0788', 'NPS143530\r\n', 'Siti Sukaisih', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0789', 'NPS146927\r\n', 'Soraya Salma Rahmadita, S.Kep,', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0790', '196710141989012001\r\n', 'Sri Hartati AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0791', 'NPS143236\r\n', 'Sri Lestari Handayani', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0792', 'NPS142677\r\n', 'Sri Rahayu, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0793', '198202282009122001\r\n', 'Sri Sunarmi', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0794', '196606232007012020\r\n', 'Sri Sunarti', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0795', '197502211995032001\r\n', 'Sri Suparti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0796', '197605102007012024\r\n', 'Sri Sutarti', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0797', 'NPS146543\r\n', 'Sri Tunjung Wijayanti, A.Md.Ke', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0798', '197207062008122002\r\n', 'Sri Yulia', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0799', 'NPS146705\r\n', 'Stania Fitriani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0800', '198507112010122000\r\n', 'Subhiah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0801', '196704152007012038\r\n', 'Suhaeni', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0802', 'NPS144946\r\n', 'Suhermi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0803', '197107051993032001\r\n', 'Sukarsihatun, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0804', '196604161989012001\r\n', 'Sukma Tambun, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0805', '199608132022032005\r\n', 'Sulistyoningsih', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0806', '197206092007012014\r\n', 'Suliwiyantini', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0807', '197412022008121003\r\n', 'Sumarsono', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0808', '196604272009121001\r\n', 'Sunardi Basuki W., SE, MM', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0809', '197512202005011004\r\n', 'Sunardi, Skep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0810', '196609211989012001\r\n', 'Sunengsih Harmini, S.Kep., Ner', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0811', '197804081997032001\r\n', 'Sunu Apriyanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0812', 'NPS145586\r\n', 'Suparni', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0813', '196905061989022002\r\n', 'Suprihatin, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0814', '196412021986032001\r\n', 'Suryati, STr, Keb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0815', '198203172009122001\r\n', 'Sutini', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0816', 'NPS146653\r\n', 'Syafira Ummu Rahmatillah, S.Ke', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0817', 'NPS142361\r\n', 'Syarif Hidayat', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0818', 'NPS146597\r\n', 'Syifaurrahmah, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0819', '198601102008122001\r\n', 'Tanty Harjati, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0820', '199702112022032005\r\n', 'Tasya Fitriana Semudi, S.Kep, ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0821', '196807071990032002\r\n', 'Tati Mulyati, S.kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0822', '197208161993032002\r\n', 'Teti Suhesti,S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0823', 'NPS144652\r\n', 'Tetty Kartiwi, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0824', '199302082022031002\r\n', 'Theodorus Riki, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0825', 'NPS144846\r\n', 'Tika Puspita Sari, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0826', 'NPS142722\r\n', 'Tita Agustina Andriyani', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0827', '197410032009122001\r\n', 'Titin Prihatin', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0828', '197908302009121001\r\n', 'Tri haryanto', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0829', 'NPS143050\r\n', 'Tri Mulyani', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0830', '198902022022032001\r\n', 'Tri Mutiara Dewi, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0831', 'NPS143087\r\n', 'Tri Wahyuni, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0832', '199303032019022001\r\n', 'Triana Ferdianingsih, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0833', 'NPS145313\r\n', 'Triasari Widiyaningsih, Amd.Ke', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0834', 'NPS145324\r\n', 'Tribowo Kurniawan', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0835', 'NPS144924\r\n', 'Tuti Alawiyah, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0836', '197505032007012035\r\n', 'Tuti Farida', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0837', 'NPS145314\r\n', 'Ulfa Trisnawati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0838', 'NPS147195\r\n', 'Venira Yusniati, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0839', 'NPS145038\r\n', 'Venny Indriyani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0840', 'NPS147216\r\n', 'Wahyu Wulandari, S.Kep, MARS', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0841', 'NPS142993\r\n', 'Wantoro AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0842', '198505022008122002\r\n', 'Watini, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0843', '197809212006042014\r\n', 'Wawat Yuliawati AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0844', '199411252019022001\r\n', 'Widya Handari, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0845', 'NPS144850\r\n', 'Wiji Astuti Kusumawardani,AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0846', '198811122022031002\r\n', 'Winarno, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0847', '198310272009122001\r\n', 'Windy Budi Suryaningsih, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0848', '198503172012122001\r\n', 'Winny Dwijayanthy, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0849', '197510111994032001\r\n', 'Wiwin Winarsih, AMKeb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0850', 'NPS143110\r\n', 'Wiwit Gemala, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0851', 'NPS143883\r\n', 'Yan Apriyamsja', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0852', '197012181993032002\r\n', 'Yanti Yasmini, SKep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0853', '196808181988032002\r\n', 'Yati Hayati, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0854', '198008022014022001\r\n', 'Yati Nurhayati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0855', '196912021991032002\r\n', 'Yayah, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0856', '197805142003122001\r\n', 'Yeni Andriani, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0857', '197411031997032001\r\n', 'Yetti Marlina, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0858', '199006272014021003\r\n', 'Yosie Rivanto, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0859', 'NPS142992\r\n', 'Yuli Arlin, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0860', 'NPS143423\r\n', 'Yuli Chaerullia, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0861', 'NPS142939\r\n', 'Yuli Indra Aini, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0862', '197607041997032001\r\n', 'Yuli Siswanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0863', '197702222009122001\r\n', 'Yulianah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0864', '197910312009122001\r\n', 'Yunaida Maryani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0865', '196703041989012001\r\n', 'Yunani, AM.Keb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0866', 'NPS143047\r\n', 'Yuni Rahmadhani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0867', '196706061988032002\r\n', 'Yunidar, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0868', '196805061989022002\r\n', 'Yusmaenah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0869', '196707151988022001\r\n', 'Yusneti, SST, M.Kes', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0870', 'NPS146977\r\n', 'Yussy Ulvialita, S.Kep,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0871', 'NPS146908\r\n', 'Zainia Alfaera Sri Kusuma Ward', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0872', 'NPS142733\r\n', 'Zany Nurfauzanil Ibad, Dipl.Ra', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0873', 'NPS144473\r\n', 'Aan Apriandi', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0874', '198203222009121001\r\n', 'Aan Ashary', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0875', '197605152009121002\r\n', 'Abdul Manap', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0876', '197508092007011019\r\n', 'Abdulah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0877', '199211252015032005\r\n', 'Ade Ima Novikasari, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0878', '198008292012122001\r\n', 'Adelina Nainggolan, Ns., S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0879', 'NPS143363\r\n', 'Adik Hidayat, Amk, Cbwt', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0880', 'NPS142930\r\n', 'Affriyuni, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0881', 'NPS143994\r\n', 'Agustina Fransiska, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0882', '199208272015032001\r\n', 'Agustina Puspita Dewi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0883', 'NPS143052\r\n', 'Ai Sumiati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0884', 'NPS146486\r\n', 'Alfiyya NUgraeni, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0885', 'NPS146318\r\n', 'Amira Fathidzkia, S. Kep., Ner', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0886', '197712242008122001\r\n', 'Ana Yanti Pujihastuti, Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0887', 'NPS142732\r\n', 'Andrica Arista Yosapen', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0888', '197107262007012013\r\n', 'Andriyani Anwar', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0889', 'NPS145039\r\n', 'Anggi Sulistiyono Widodo, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0890', 'NPS143261\r\n', 'Anggia Fianti Roza, Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0891', 'NPS145244\r\n', 'Angling Kusuma', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0892', '197306071992032001\r\n', 'Ani Fersari, SKM, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0893', 'NPS144912\r\n', 'Ani Prastiwi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0894', '197805012003122003\r\n', 'Ani Setianingsih, S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0895', '196605081987032001\r\n', 'Ani Sofiyani, AMKeb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0896', '198502152010122001\r\n', 'Ani Suryani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0897', 'NPS144618\r\n', 'Ani Yulianti, A.Mk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0898', '196811231988032001\r\n', 'Anidah, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0899', '197009222007012017\r\n', 'Aniek Anggraini Widjanarko', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0900', 'NPS146449\r\n', 'Anindya Dwi Putri, Amd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0901', '197707122009122001\r\n', 'Anita', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0902', 'NPS144078\r\n', 'Anita Permana Sari, A.Mk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0903', 'NPS142685\r\n', 'Anne Dwiyanti Anugerah, A.MK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0904', 'NPS146864\r\n', 'Annisa Kurniasih, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0905', '198605082010121002\r\n', 'Antan Taufik Baktiar, S.Kep, N', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0906', 'NPS142553\r\n', 'Apri Purwati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0907', 'NPS145034\r\n', 'Aprilia Widy Astuti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0908', 'NPS144913\r\n', 'Aprilianti Ramdhani Rachmat, A', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0909', '199005062022032001\r\n', 'Apriyani Malasari, A.Mk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0910', 'NPS145020\r\n', 'Aprizon Nyken Thrisno AR, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0911', '197105132007011025\r\n', 'Arif Maulana ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0912', 'NPS142719\r\n', 'Aris Nur Hidayanto', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0913', '198511242009122002\r\n', 'Arvina Novianti, S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0914', ' NPS147234\r\n', 'Asnayeti, SST', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0915', 'NPS146846\r\n', 'Astri Dwi Wulandari, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0916', '199609232019022001\r\n', 'Ayi Fatma, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0917', 'NPS145641\r\n', 'Ayu Rifqi Nimal Abdu,Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0918', '197501172009121001\r\n', 'Bambang Suroto', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0919', 'NPS146931\r\n', 'Bellariani, A Md. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0920', '198511022014022001\r\n', 'Berta Uli, AM.Keb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0921', '196703162007011035\r\n', 'Besariyanto', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0922', 'NPS146383\r\n', 'Bheta Primajayanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0923', 'NPS146855\r\n', 'Bonita Yulianti, Amd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0924', '199204112022031002\r\n', 'Budi Aprihartono, Amd. Rad', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0925', '197205201992032002\r\n', 'Budi Tri Utami, S.Kep, Ns', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0926', '197012022007011013\r\n', 'Bunyamin', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0927', '197501282007102001\r\n', 'Cicih Sri Mulyati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0928', 'NPS146233\r\n', 'Cita Wulan Pasa, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0929', 'NPS144666\r\n', 'Citra Primajati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0930', '197902281999032001\r\n', 'Cucu Suminar, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0931', '197906112007012017\r\n', 'Darmayanti', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0932', 'NPS146294\r\n', 'Dasikin Salam', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0933', '198503182009122001\r\n', 'Dasmarifa', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0934', '197505241997031001\r\n', 'Datu Euphratadhi Pradana', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0935', 'NPS144947\r\n', 'Defi Wulandari, AMK ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0936', 'NPS143425\r\n', 'Desmanita Sari, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0937', 'NPS144310\r\n', 'Desy Sarifah. Amd', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0938', 'NPS145256\r\n', 'Devi Nur Anggraeni', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0939', '198903292010122003\r\n', 'Devita Elisabeth', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0940', '198512242008122001\r\n', 'Devita Rostiana Sary, Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0941', 'NPS145026\r\n', 'Dewanti Yuli Ariyani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0942', '198612022009122001\r\n', 'Dewanti, S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0943', '199206252022032003\r\n', 'Dewi Hayati, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0944', 'NPS146223\r\n', 'Dewi Puspitasari, AMk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0945', '197703041997032001\r\n', 'Dewi Rejeki, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0946', '198109062010122001\r\n', 'Dewi Sartika, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0947', '197101102007012017\r\n', 'Diah Anggraeni', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0948', '196812251989012001\r\n', 'Diah Hadiati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0949', 'NPS142937\r\n', 'Dian Anggraeni Kusumawati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0950', 'NPS142885\r\n', 'Dian Anggur Yulianti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0951', 'NPS145781\r\n', 'Dian Fidusia, AMd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0952', '198711162010122001\r\n', 'Dian Kurniartati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0953', '198209082005012000\r\n', 'Dian Kurniawati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0954', 'NPS146919\r\n', 'Dian Pratiwi Kamaluddin, S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0955', 'NPS144002\r\n', 'Diestia Miranti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0956', '198711132010122006\r\n', 'Dina Novenda, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0957', 'NPS147169\r\n', 'Dini Roswita', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0958', '198706242008122001\r\n', 'Dita Rizkya Yusnita, S.Kep., N', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0959', 'NPS145277\r\n', 'Dita Rosdiana Dewi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0960', '199705232022032001\r\n', 'Diyah Lestari, S.Kep,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0961', '19850530200812002\r\n', 'Dolly Linneke Djawa, AM.Keb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0962', '197705042006042016\r\n', 'Dorkas Sitompul,AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0963', 'NPS143481\r\n', 'Dwi Irmaeni', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0964', 'NPS144074\r\n', 'Dwi Nur Agustyorini', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0965', '198510022010122002\r\n', 'Dwi Pamungkas, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0966', '198512182010122005\r\n', 'Dwi Puspita Sari, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0967', 'NPS144677\r\n', 'Dwi Sulistyaningsih', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0968', '198411102012122001\r\n', 'Dwi Suparyanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0969', 'NPS146384\r\n', 'Dwi Yulianti Kurniasih, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0970', '199603232022032001\r\n', 'Dyan Senja Rachmawati, S.Kep, ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0971', 'NPS142554\r\n', 'E. Mulyadi', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0972', '196505032009121001\r\n', 'E. Sulaeman', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0973', 'NPS146 910\r\n', 'Efi Priska Lestari, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0974', '199508292022032003\r\n', 'Efilia Intan Sari, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0975', 'NPS143744\r\n', 'Eka Asri Ningastuty, SE', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0976', 'NPS145148\r\n', 'Eka Fitriani, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0977', 'NPS144482\r\n', 'Eka Lupiyah Ningsih , AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0978', '199011222020122005\r\n', 'Eka Norsari, Ns, S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0979', 'NPS144070\r\n', 'Eka Nur Rahmah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0980', '198409292010122002\r\n', 'Eka Pratiwi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0981', '199008032020122003\r\n', 'Eka Prianti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0982', 'NPS146484\r\n', 'Eka Sari Rizkiyah, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0983', '198404242010122001\r\n', 'Eka Widyasti, S.Kep., Ns', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0984', 'NPS142681\r\n', 'Ekayanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0985', 'NPS144540\r\n', 'Eko Setiya Adi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0986', '199204192018012001\r\n', 'Elfa Silvia Dewi, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0987', '197907062005012004\r\n', 'Elisabeth Dessy wulandari , S.', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0988', '198601262009122003\r\n', 'Elnino Tunjungsari, S. Kep., N', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0989', '197010282009122001\r\n', 'Elsisca Sari Hutapea', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0990', '197211061992032001\r\n', 'Ely Nawizar, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0991', 'NPS143651\r\n', 'Elysva Nurmayanti,  AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0992', 'NPS142686\r\n', 'Emi Ekaria, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0993', 'NPS143494\r\n', 'Emma Meida Ekawati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0994', '198312172010122002\r\n', 'Endah Dessirya, S.Kep,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0995', '196812232007012017\r\n', 'Endang Pujiati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0996', '197606282009122001\r\n', 'Entin Nurul Hidayah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0997', '197008251992032001\r\n', 'Eny Kusrini, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0998', 'NPS145662\r\n', 'Erica Wulandari, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.0999', '197308071996032002\r\n', 'Erida Gustiany, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1000', 'NPS143903\r\n', 'Erliana Suryaniayu Soraya, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1001', '198107282005012007\r\n', 'Erlin Fitria Yusliana, S. Kep.', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1002', '197708171997032001\r\n', 'Erlinawati, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1003', '197607262006042010\r\n', 'Ermayeni Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1004', 'NPS143583\r\n', 'Erna Tri Susanti, Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1005', '197808242006042015\r\n', 'Erni Siahaan,S. Kep,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1006', '198803092022032001\r\n', 'Erni Windaning, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1007', 'NPS143045\r\n', 'Ester Apriani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1008', '197604291997032002\r\n', 'Euis Widawati, S.Tr.Keb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1009', '197703202003122003\r\n', 'Evi Sabariah, A.Mk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1010', 'NPS144510\r\n', 'Evi Salvia, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1011', '197905122003122000\r\n', 'Evi Sidabutar, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1012', 'NPS144915\r\n', 'Evriana Pramindita Dwiafani, A', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1013', 'NPS144404\r\n', 'Fahrurozi', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1014', 'NPS144298\r\n', 'Fajar Syarifudin, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1015', 'NPS146619\r\n', 'Fani Pitrianingsih, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1016', '199605162022032001\r\n', 'Fannya Ayu Permatasari, S.Kep,', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1017', 'NPS147198\r\n', 'Fathimah Sholahudin, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1018', 'NPS146913\r\n', 'Febria Suci Ramadhani, A.Md.Ke', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1019', 'NPS143340\r\n', 'Fefri Jayanti AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1020', 'NPS142678\r\n', 'Feny Tri Nurdiyanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1021', '197502202006041001\r\n', 'Ferdian Yuda, SE', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1022', 'NPS143051\r\n', 'Ferry Anggraini, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1023', '199002122022032001\r\n', 'Fida Rofika, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1024', ' NPS146626\r\n', 'Firda Melinda AMd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1025', 'NPS146848\r\n', 'Fithrah Hanifiyatu Samhah, A.M', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1026', '\"199402282022032004\r\n', 'Fitri Handayani, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1027', 'NPS143854\r\n', 'Fitriyani Purbosari', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1028', 'NPS146972\r\n', 'Gesy Fitri Febriani, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1029', '199003282019022001\r\n', 'Haerunnisa Ramdhania, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1030', 'NPS145202\r\n', 'Handayani Meytri, AMd.Prs', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1031', 'NPS146707\r\n', 'Helda Yuliana, S.Kep,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1032', 'NPS143464\r\n', 'Hema Kristinawati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1033', '197506012006042004\r\n', 'Heni Yunita.SKep. Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1034', '198303152008012010\r\n', 'Herlina Anita Ruminis, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1035', ' NPS142642\r\n', 'Herlina Febrianti, S.kep., Ns', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1036', 'NPS146526\r\n', 'Hermila Sari, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1037', '197909282003122003\r\n', 'Hermin Mardiana, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1038', '197707262003122005\r\n', 'Hermince Hutajulu, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1039', '196810052008121002\r\n', 'Herri sobari', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1040', 'NPS146527\r\n', 'Hervy Yuensi, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1041', 'NPS143341\r\n', 'Hesti Rachmawati, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1042', '198707212010122004\r\n', 'Hilaliyah, Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1043', '197412151998032001\r\n', 'Iar Sumiarsih, Amk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1044', 'NPS145246\r\n', 'Ichsan Dwi Putranto', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1045', '196804111990032001\r\n', 'Icih Dina Trianti, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1046', '198606082012122001\r\n', 'Ida Andriani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1047', '197603142001122001\r\n', 'Ida Faridawati, A.Mk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1048', '196905122008122001\r\n', 'Ida Fatonah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1049', '198204112008122001\r\n', 'Ida Parida, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1050', 'NPS142694\r\n', 'Iin Pusparini, SKep,Ners ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1051', 'NPS144414\r\n', 'Iin Rahayu, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1052', '198004202009122002\r\n', 'Iis Aisyah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1053', 'NPS144493\r\n', 'Ika Kartika, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1054', 'NPS147168\r\n', 'Ikhwanata Hermawan', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1055', '197504051997032005\r\n', 'Imas Kulsum', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1056', '197002201992032001\r\n', 'Imron, A.Mk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1057', '198701172008122001\r\n', 'Indah Prastya, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1058', 'NPS145786\r\n', 'Indah Pratiwi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1059', 'NPS142723\r\n', 'Indra Kurniawan', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1060', 'NPS145325\r\n', 'Indra Setiawan', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1061', 'NPS144487\r\n', 'Indrawati Sonata, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1062', 'NPS144831\r\n', 'Indri Saputri, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1063', 'NPS146658\r\n', 'Intan Putri Utami, AMd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1064', 'NPS146065\r\n', 'Irfan Rahmayanto, AMk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1065', 'NPS143884\r\n', 'Irna Fitriana, Amd', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1066', '196703212007012029\r\n', 'Ismitoipah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1067', '198208062014022001\r\n', 'Jenita Hutabarat, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1068', 'NPS146667\r\n', 'Jihan Hanifah Yasmin, AMd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1069', '197302161994032001\r\n', 'Jojor Sihotang, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1070', '197003201991032002\r\n', 'Juanda Mutifa, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1071', '197506281995032001\r\n', 'Juariah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1072', '197712142005012001\r\n', 'Jusmawita, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1073', '198108072010122001\r\n', 'Juwita Fitrianingsih', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1074', 'NPS146843\r\n', 'Kanza Salsabila, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1075', 'NPS146232\r\n', 'Karina Novianti, AMd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1076', '196507311992032002\r\n', 'Karti', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1077', '199411022019022001\r\n', 'Kartika Nur Taslimah, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1078', '196910061989022001\r\n', 'Khowiriyah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1079', 'NPS144 072\r\n', 'Kiki Andriani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1080', 'NPS146742\r\n', 'Konita Khamidhatul Khasanah, A', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1081', '197510061997032002\r\n', 'Laili Fauziah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1082', '199101172019022001\r\n', 'Lala Priyati, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1083', 'NPS145356\r\n', 'Lani Alinda', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1084', 'NPS145684\r\n', 'Laura Novitaria, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1085', '197012312008122004\r\n', 'Lestari', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1086', '197111021992032002\r\n', 'Lestari, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1087', 'NPS144309\r\n', 'Lestari, SE', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1088', 'NPS144067\r\n', 'Lilis Lisnawati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1089', '196712012008121001\r\n', 'Lilis Sulastri', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1090', 'NPS145028\r\n', 'Lina Mustiana, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1091', 'NPS146621\r\n', 'Lizara Dhiaulhanif, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1092', '199711292022032004\r\n', 'Lulu Intan Qolbiyah, S.Kep.Ner', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1093', 'NPS146938\r\n', 'Luluk Dina Rahmawati, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1094', '198510032020122002\r\n', 'Mahmudah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1095', '197504072000032001\r\n', 'Maimunah, SKM, MKM', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1096', 'NPS 143529\r\n', 'Mamluatul Hikmah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1097', '197603012006042006\r\n', 'Mani Dendriani Safitri, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1098', 'NPS 142429\r\n', 'Mardiana', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1099', 'NPS 142573\r\n', 'Mariance Sorang Mauli, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1100', '196509111986012001\r\n', 'Mariati Siahaan, SST', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1101', 'NPS142994\r\n', 'Marsini, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1102', '199507122022032001\r\n', 'Marta Putri Rachmawati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1103', '197011251994032000\r\n', 'Martini, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1104', '198204282009122002\r\n', 'Maryani Nurohman', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1105', 'NPS 146911\r\n', 'Mega Nurmala, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1106', 'NPS147197\r\n', 'Mega Octaviyani, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1107', '197405132005012003\r\n', 'Meidiana Bangun, S.Kep., Sp. K', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1108', 'NPS144546\r\n', 'Meilana Kusuma Dewi, S.Kep, Ne', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1109', '198405262006042006\r\n', 'Meirina Putri Satriasti', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1110', '198409292009122002\r\n', 'Meldahania, SKep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1111', 'NPS145291\r\n', 'Melia Hardiyati, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1112', 'NPS144891\r\n', 'Melinda Fitriana', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1113', 'NPS145545\r\n', 'Melyana Cherynasari, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1114', 'NPS144920\r\n', 'Meri Murhayati, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1115', '197106221992032001\r\n', 'Meri Risma Mariana, S.Kep., Ns', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1116', '199007022022032001\r\n', 'Merlin Jovany, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1117', 'NPS146952\r\n', 'Meuthia Safitri, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1118', 'NPS144073\r\n', 'Mia Harisandi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1119', 'NPS143666\r\n', 'Misbah Budi Santoso', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1120', '196612051989022001\r\n', 'Misroh, AMKeb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1121', 'NPS146659\r\n', 'Muhammad  Faisal Ramadhan, AMD', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1122', 'NPS145245\r\n', 'Muhammad Hadi Sucipto', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1123', 'NPS146534\r\n', 'Muhammad Ikhsan, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1124', 'NPS145692\r\n', 'Muhammad Ulfan Salafudin, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1125', '196712231988032001\r\n', 'Musliha, S.ST, M.Kes', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1126', '196508201988032002\r\n', 'Mustainah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1127', '197502102006042012\r\n', 'Nasroh Arraziyati', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1128', 'NPS146636\r\n', 'Nasya Muliawati, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1129', 'NPS146650\r\n', 'Naufalia Zulfa Adhania, S. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1130', '198304032005012001\r\n', 'Nelli Hotmalina P, Ns, S. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1131', 'NPS146535\r\n', 'Nelvia Asysyfa, AMk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1132', '196606132007011024\r\n', 'Ngadimun', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1133', 'NPS145344\r\n', 'Nia Hanifah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1134', 'NPS145714\r\n', 'Nilla Yuniar, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1135', 'NPS144061\r\n', 'Nina Oktorina, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1136', 'NPS142684\r\n', 'Ning Budiarti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1137', '196804011990032001\r\n', 'Nining Caswini, Ns M.Kep.,Sp.K', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1138', '196601151985122001\r\n', 'Nining Yuningsih, AMKeb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1139', '\'197705181997032001\r\n', 'Noeryanti Purwaningsih, AMK ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1140', 'NPS145148\r\n', 'Nofilia Rahmi, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1141', 'NPS144062\r\n', 'Nova Suhartanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1142', '198011302009012009\r\n', 'Novardian, S.Kep, Ners, M.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1143', 'NPS146485\r\n', 'Novia Indriani, AMD.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1144', 'NPS142692\r\n', 'Novie Rachmania, AMK ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1145', '199111182022032002\r\n', 'Novita Deysi Mamoto, S.Kep, Ne', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1146', 'NPS142578\r\n', 'Ns. Selly Ramadhani, S.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1147', '197703312006042009\r\n', 'Nunung Nurmalasari, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1148', 'NPS145494\r\n', 'Nur Ikhsan', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1149', '199111182015032007\r\n', 'Nur Panca Retnaningsih, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1150', '197607122000032002\r\n', 'Nur Wahyu Liana, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1151', '196411282009122001\r\n', 'Nuraini', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1152', '197810152006042011\r\n', 'Nurbeti Ginting, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1153', '198804232014022003\r\n', 'Nurhasanah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1154', '197901072006042010\r\n', 'Nurhayati,S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1155', '197401071994032002\r\n', 'Nurhikmah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1156', 'NPS144069\r\n', 'Nuri Dwi Susanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1157', '196806251991032014\r\n', 'Nurjanah, AMKeb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1158', 'NPS143531\r\n', 'Nurlina Oktavia Sidabalok, S.K', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1159', '198507172009122001\r\n', 'Nurmasita, SAP', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1160', '197608292006042009\r\n', 'Nursiamah, SST', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1161', 'NPS146703\r\n', 'Nurul Hidayati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1162', 'NPS144486\r\n', 'Nurul Lia Septiani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1163', 'NPS145496\r\n', 'Nurul Rachmawati, A.Md', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1164', '199402062019022001\r\n', 'Nurul Rodiah, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1165', 'NPS145704\r\n', 'Nurul WaQiah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1166', '197302162007102001\r\n', 'Peronika Dina M. Sihombing', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1167', 'NPS144530\r\n', 'Priyani, Amd', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1168', 'NPS142680\r\n', 'Purwanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1169', 'NPS146746 \r\n', 'Putri Utami, AMK ?', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1170', '199505202020122004\r\n', 'Qori Ahtul Aulia,Ns Skep  ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1171', '197902022006042014\r\n', 'Raden Roro Rieke, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1172', '197806252007102001\r\n', 'Rahayu Fajriyah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1173', '198303092009122002\r\n', 'Ranie Rekhadarti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1174', 'NPS143585\r\n', 'Raykashari Tryanofa, AMK ?', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1175', '199806062022032001\r\n', 'Ressa Yuniar Safarini, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1176', 'NPS145012\r\n', 'Resti Fitria Pramandani', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1177', '196803061988022001\r\n', 'Retno Dewi Palupi, S.Kep.,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1178', '197312191993032002\r\n', 'Rina Aminah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1179', 'NPS142 679\r\n', 'Rina Budi Harti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1180', '198610162010122005\r\n', 'Rina Oktafiana, AMk', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1181', '196007281987092001\r\n', 'Rinawati Rohsiswatmo, Prof., D', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1182', 'NPS146538\r\n', 'Rindu Ramona Putri, AMd. Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1183', '198602072015032002\r\n', 'Rini Andriani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1184', 'NPS146618\r\n', 'Rini Cahyani, Amd.Kep ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1185', '198408292010122003\r\n', 'Risma Agustina, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1186', '197906242003122004\r\n', 'Risna Ningsih, S.Kep,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1187', 'NPS142579\r\n', 'Rita Sastra, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1188', '198506292008012004\r\n', 'Rizki Yunita Kusumawati, AM.Ke', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1189', 'NPS145717\r\n', 'Rizki Yunita, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1190', 'NPS144509\r\n', 'Rochmatul Husna, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1191', '196704101989012001\r\n', 'Rohanah , AMKeb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1192', 'NPS142551\r\n', 'Rohjanuarnina, AMd', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1193', '198112072005012003\r\n', 'Rona Irmayani Sormin, S. Kep,N', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1194', '197207262007012012\r\n', 'Rosanah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1195', '199305102015032002\r\n', 'Rose Nirwana Handayani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1196', '196804012007101001\r\n', 'Rosid', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1197', '199108012015032006\r\n', 'Rosmawaty, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1198', '197911262014022002\r\n', 'Rossy Kuraesin, AMK  ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1199', 'NPS143859\r\n', 'Roudhatul Jannah,Amk ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1200', '197706142009122000\r\n', 'Ruastini', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1201', '197908072009121002\r\n', 'Rusyana', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1202', 'NPS142555\r\n', 'Saidah Aripah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1203', 'NPS146845\r\n', 'Salma Agustine, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1204', 'NPS146227\r\n', 'Salma Mahardika, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1205', '198203072010122003\r\n', 'Santi Susanti, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1206', 'NPS144492\r\n', 'Sarifah Siti Hajjah Rina, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1207', 'NPS143048\r\n', 'Seindah Fitriana, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1208', '196410111985122001\r\n', 'Setiyaningsih', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1209', 'NPS144201\r\n', 'Shinta Nuraini, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1210', '197804142006042010\r\n', 'Silfia Afriani, S. Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1211', 'NPS143901\r\n', 'Sinta Hadi Wijaya, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1212', '198806182010122002\r\n', 'Sisca Yunita Eka Futry, S.Kep.', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1213', 'NPS146926\r\n', 'Sisfaningrum Setyo Cahyati, A.', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1214', 'NPS146706\r\n', 'Sisri Aulia Septiana, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1215', '198702102010122006\r\n', 'Sita Febriani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1216', 'NPS142420\r\n', 'Siti Lestari, AMD', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1217', '197201311992032001\r\n', 'Siti Maryani', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1218', '199104212019022001\r\n', 'Siti Muttmainatul Islamiyah Al', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1219', 'NPS146623\r\n', 'Siti Nuraeni. Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1220', '197605112001122002\r\n', 'Siti Ratna Juwita, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1221', '197504192001122002\r\n', 'Siti Romlah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1222', '198608292012122001\r\n', 'Siti Romlah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1223', 'NPS143426\r\n', 'Siti Ruchani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1224', 'NPS143530\r\n', 'Siti Sukaisih', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1225', 'NPS146927\r\n', 'Soraya Salma Rahmadita, S.Kep,', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1226', '196710141989012001\r\n', 'Sri Hartati AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1227', 'NPS143236\r\n', 'Sri Lestari Handayani', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1228', 'NPS142677\r\n', 'Sri Rahayu, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1229', '198202282009122001\r\n', 'Sri Sunarmi', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1230', '196606232007012020\r\n', 'Sri Sunarti', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1231', '197502211995032001\r\n', 'Sri Suparti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1232', '197605102007012024\r\n', 'Sri Sutarti', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1233', 'NPS146543\r\n', 'Sri Tunjung Wijayanti, A.Md.Ke', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1234', '197207062008122002\r\n', 'Sri Yulia', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1235', 'NPS146705\r\n', 'Stania Fitriani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1236', '198507112010122000\r\n', 'Subhiah, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1237', '196704152007012038\r\n', 'Suhaeni', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1238', 'NPS144946\r\n', 'Suhermi, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1239', '197107051993032001\r\n', 'Sukarsihatun, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1240', '196604161989012001\r\n', 'Sukma Tambun, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1241', '199608132022032005\r\n', 'Sulistyoningsih', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1242', '197206092007012014\r\n', 'Suliwiyantini', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1243', '197412022008121003\r\n', 'Sumarsono', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1244', '196604272009121001\r\n', 'Sunardi Basuki W., SE, MM', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1245', '197512202005011004\r\n', 'Sunardi, Skep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1246', '196609211989012001\r\n', 'Sunengsih Harmini, S.Kep., Ner', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1247', '197804081997032001\r\n', 'Sunu Apriyanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1248', 'NPS145586\r\n', 'Suparni', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1249', '196905061989022002\r\n', 'Suprihatin, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1250', '196412021986032001\r\n', 'Suryati, STr, Keb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1251', '198203172009122001\r\n', 'Sutini', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1252', 'NPS146653\r\n', 'Syafira Ummu Rahmatillah, S.Ke', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1253', 'NPS142361\r\n', 'Syarif Hidayat', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1254', 'NPS146597\r\n', 'Syifaurrahmah, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1255', '198601102008122001\r\n', 'Tanty Harjati, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1256', '199702112022032005\r\n', 'Tasya Fitriana Semudi, S.Kep, ', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1257', '196807071990032002\r\n', 'Tati Mulyati, S.kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1258', '197208161993032002\r\n', 'Teti Suhesti,S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1259', 'NPS144652\r\n', 'Tetty Kartiwi, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1260', '199302082022031002\r\n', 'Theodorus Riki, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1261', 'NPS144846\r\n', 'Tika Puspita Sari, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1262', 'NPS142722\r\n', 'Tita Agustina Andriyani', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1263', '197410032009122001\r\n', 'Titin Prihatin', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1264', '197908302009121001\r\n', 'Tri haryanto', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1265', 'NPS143050\r\n', 'Tri Mulyani', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1266', '198902022022032001\r\n', 'Tri Mutiara Dewi, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1267', 'NPS143087\r\n', 'Tri Wahyuni, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1268', '199303032019022001\r\n', 'Triana Ferdianingsih, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1269', 'NPS145313\r\n', 'Triasari Widiyaningsih, Amd.Ke', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1270', 'NPS145324\r\n', 'Tribowo Kurniawan', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1271', 'NPS144924\r\n', 'Tuti Alawiyah, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1272', '197505032007012035\r\n', 'Tuti Farida', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1273', 'NPS145314\r\n', 'Ulfa Trisnawati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1274', 'NPS147195\r\n', 'Venira Yusniati, A.Md.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1275', 'NPS145038\r\n', 'Venny Indriyani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1276', 'NPS147216\r\n', 'Wahyu Wulandari, S.Kep, MARS', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1277', 'NPS142993\r\n', 'Wantoro AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1278', '198505022008122002\r\n', 'Watini, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1279', '197809212006042014\r\n', 'Wawat Yuliawati AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1280', '199411252019022001\r\n', 'Widya Handari, S. Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1281', 'NPS144850\r\n', 'Wiji Astuti Kusumawardani,AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1282', '198811122022031002\r\n', 'Winarno, Amd.Kep', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1283', '198310272009122001\r\n', 'Windy Budi Suryaningsih, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1284', '198503172012122001\r\n', 'Winny Dwijayanthy, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1285', '197510111994032001\r\n', 'Wiwin Winarsih, AMKeb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1286', 'NPS143110\r\n', 'Wiwit Gemala, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1287', 'NPS143883\r\n', 'Yan Apriyamsja', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1288', '197012181993032002\r\n', 'Yanti Yasmini, SKep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1289', '196808181988032002\r\n', 'Yati Hayati, S.Kep., Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1290', '198008022014022001\r\n', 'Yati Nurhayati, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1291', '196912021991032002\r\n', 'Yayah, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1292', '197805142003122001\r\n', 'Yeni Andriani, S.Kep, Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1293', '197411031997032001\r\n', 'Yetti Marlina, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1294', '199006272014021003\r\n', 'Yosie Rivanto, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1295', 'NPS142992\r\n', 'Yuli Arlin, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1296', 'NPS143423\r\n', 'Yuli Chaerullia, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1297', 'NPS142939\r\n', 'Yuli Indra Aini, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1298', '197607041997032001\r\n', 'Yuli Siswanti, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1299', '197702222009122001\r\n', 'Yulianah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1300', '197910312009122001\r\n', 'Yunaida Maryani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1301', '196703041989012001\r\n', 'Yunani, AM.Keb', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1302', 'NPS143047\r\n', 'Yuni Rahmadhani, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1303', '196706061988032002\r\n', 'Yunidar, AMK', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1304', '196805061989022002\r\n', 'Yusmaenah', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1305', '196707151988022001\r\n', 'Yusneti, SST, M.Kes', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1306', 'NPS146977\r\n', 'Yussy Ulvialita, S.Kep,Ners', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1307', 'NPS146908\r\n', 'Zainia Alfaera Sri Kusuma Ward', 0, 0, '');
INSERT INTO `tb_pengguna` VALUES ('U022.1308', 'NPS142733\r\n', 'Zany Nurfauzanil Ibad, Dipl.Ra', 0, 0, '');

-- ----------------------------
-- Table structure for tb_status
-- ----------------------------
DROP TABLE IF EXISTS `tb_status`;
CREATE TABLE `tb_status`  (
  `id_status` int NOT NULL AUTO_INCREMENT,
  `nama_status` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_status
-- ----------------------------
INSERT INTO `tb_status` VALUES (1, 'DIGUNAKAN');
INSERT INTO `tb_status` VALUES (2, 'SIAP DIGUNAKAN');
INSERT INTO `tb_status` VALUES (3, 'DIPERBAIKI');
INSERT INTO `tb_status` VALUES (4, 'ARSIP/DISIMPAN');
INSERT INTO `tb_status` VALUES (5, 'RUSAK/NOT FIXABLE');
INSERT INTO `tb_status` VALUES (6, 'DIJUAL/HILANG');
INSERT INTO `tb_status` VALUES (7, 'DIPINJAMKAN');

-- ----------------------------
-- Table structure for tb_supplier
-- ----------------------------
DROP TABLE IF EXISTS `tb_supplier`;
CREATE TABLE `tb_supplier`  (
  `id_supplier` int NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_supplier` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telepon` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_supplier`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_supplier
-- ----------------------------

-- ----------------------------
-- Table structure for tb_trans_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_trans_detail`;
CREATE TABLE `tb_trans_detail`  (
  `id_trans_detail` int NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_transaksi` date NOT NULL,
  `kode_barang` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `harga` decimal(10, 0) NULL DEFAULT NULL,
  `qty_masuk` int NULL DEFAULT NULL,
  `qty_keluar` int NULL DEFAULT NULL,
  `catatan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `gid` int NOT NULL,
  PRIMARY KEY (`id_trans_detail`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_trans_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tb_trans_keluar
-- ----------------------------
DROP TABLE IF EXISTS `tb_trans_keluar`;
CREATE TABLE `tb_trans_keluar`  (
  `id_transaksi` int NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_transaksi` date NULL DEFAULT NULL,
  `id_pengguna` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_trans_keluar
-- ----------------------------

-- ----------------------------
-- Table structure for tb_trans_masuk
-- ----------------------------
DROP TABLE IF EXISTS `tb_trans_masuk`;
CREATE TABLE `tb_trans_masuk`  (
  `id_transaksi` int NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_po` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_transaksi` date NULL DEFAULT NULL,
  `id_supplier` int NULL DEFAULT NULL,
  `gid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_trans_masuk
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `role` enum('Administrator','Admin') CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `last_login` datetime(0) NOT NULL,
  `gid` int NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (8, 'administrator', 'admin@admin', 'admin', 'Administrator', '2022-12-30 17:48:19', 1);
INSERT INTO `tb_user` VALUES (14, 'admin kantor1', 'kantor1', '1d6ff05b08a003308c3ffc4f692c83b3bd6db2b0', 'Admin', '2016-11-07 12:43:18', 1);

SET FOREIGN_KEY_CHECKS = 1;
