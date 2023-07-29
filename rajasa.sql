-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 09:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rajasa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `tipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `nama`, `username`, `alamat`, `no_hp`, `avatar`, `tipe`) VALUES
('adm-Admin-6445bbb99650c0.96552805', 'admin@gmail.com', '$2y$10$6ikF3EE2ncF9By8hnNrztuHXu9ZeWK0zstg3cyjwofV5heOPY1z9e', 'Admin', 'admin', 'Admin Address', '081234567890', 'asset/admin/akun/avatar-admin.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kode_pos` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `tipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `email`, `password`, `nama`, `username`, `alamat`, `kode_pos`, `no_hp`, `avatar`, `tipe`) VALUES
('cust-Customer-6445bb69477750.70474596', 'customer@gmail.com', '$2y$10$.weayeL0lLO8kaOApTdRWOKAaGwuZxCoHrY9gwVsm/8gPhFt.oWIu', 'Customer', 'customer', 'Customer Address', '12345', '081234567890', 'asset/customer/akun/1688339934_9ab35981ab0351946494.png', 3),
('cust-Rico-6445ccc362a659.86780964', 'ferdian@gmail.com', '$2y$10$TnrCeSGi62QdEKwbW3Ubyubw.9.KtQvZyVKfcIOzJiwCeU563GSp2', 'Rico Ferdian Maulana', 'ferdian', '', '', '', 'asset/customer/akun/avatar-customer.png', 3),
('cust-Toko-6445e38e1d3d84.38256766', 'tokoberkah@gmail.com', '$2y$10$aXsUv0BLuw5YZy1L27Nmdeu0glsnaJBCXNomt93V3qAMFGJUIAy0S', 'Toko Berkah', 'tokoberkah', '', '', '', 'asset/customer/akun/avatar-customer.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `designer`
--

CREATE TABLE `designer` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `tipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designer`
--

INSERT INTO `designer` (`id`, `email`, `password`, `nama`, `username`, `alamat`, `no_hp`, `avatar`, `tipe`) VALUES
('dsg-Designer-6445bc9c696ed4.41377364', 'designer@gmail.com', '$2y$10$95Olme0Y/DfHSIgrpKGMF.lzg4XcudWFwUNpPUbbzwVgYt5G0SQaW', 'Designer', 'designer', 'Designer Address', '081234567890', 'asset/designer/akun/avatar-designer.png', 2),
('dsg-Designer2-64ab6aa0010b85.62524177', 'designer2@gmail.com', '$2y$10$PikLHZv.1VXVs71UPKQLTOuLABgYc/x6E.eMcJQYDgzpESizbqhxW', 'Designer2', 'designer2', 'Designer 2 Address', '081234567890', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
('kat-Apron-64908e8a213b54.28616235', 'Apron'),
('kat-Brosur-64908e809555c6.95050517', 'Brosur'),
('kat-Buku-64908df7ead8d9.94071979', 'Buku'),
('kat-Kalender-64908dd5d877b8.48393563', 'Kalender'),
('kat-Kaos-64908e92092b32.23026208', 'Kaos'),
('kat-Lainnya-64c3aa1aa7eb00.63936259', 'Lainnya'),
('kat-Pouchbag-64908ea34f21b9.88730624', 'Pouchbag'),
('kat-Totebag-64908e98d5dee2.83869174', 'Totebag'),
('kat-Undangan-64908e74618fc5.80039426', 'Undangan');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `harga` double(65,2) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar1` varchar(255) NOT NULL,
  `gambar2` varchar(255) NOT NULL,
  `gambar3` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `rating` double(65,1) NOT NULL,
  `terjual` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `idKategori` varchar(255) NOT NULL,
  `idDesigner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `judul`, `harga`, `deskripsi`, `gambar1`, `gambar2`, `gambar3`, `status`, `rating`, `terjual`, `created`, `idKategori`, `idDesigner`) VALUES
('prod-Apron-64999eae251fc5.13765249', 'Apron Dapur', 120000.00, '<p>Apron Dapur</p>\r\n<p>2023</p>', 'asset/produk/apron/prod-Apron-64999eae251fc5.13765249-1.png', 'asset/produk/Apron/1690300268_d2e2f4e5f1d50864ded1.jpeg', 'asset/produk/Apron/1690308498_5e8edeef5038fa5f0ad6.jpeg', 'Ready Stock', 3.8, 15, '2023-07-25 15:49:10', 'kat-Apron-64908e8a213b54.28616235', 'dsg-Designer-6445bc9c696ed4.41377364'),
('prod-Buku-649984547eb7a9.91873158', 'Buku Learn & Play', 80000.00, 'Buku Learn & Play', 'asset/produk/buku/prod-Buku-649984547eb7a9.91873158-1.png', '', '', 'Ready Stock', 4.0, 20, '2023-06-21 00:00:00', 'kat-Buku-64908df7ead8d9.94071979', 'dsg-Designer-6445bc9c696ed4.41377364'),
('prod-Kalender-64908ea34f20f5.08789580', 'Kalender 2023', 75000.00, 'Dicetak di Kertas Art Carton 210 Gram<br>\r\nUkuran 15 x 21cm<br>\r\nPilih Isi Halaman<br>\r\nFinishing Spiral Kawat Putih<br>\r\nHardcover Hitam<br>\r\nCetak Mesin Laser Dua Sisi', 'asset/produk/Kalender/prod-Kalender-64908ea34f20f5.08789580-1.png', 'asset/produk/kalender/prod-Kalender-64908ea34f20f5.08789580-2.png', 'asset/produk/kalender/prod-Kalender-64908ea34f20f5.08789580-3.png', 'Ready Stock', 4.2, 100, '2023-06-26 00:00:00', 'kat-Kalender-64908dd5d877b8.48393563', 'dsg-Designer-6445bc9c696ed4.41377364'),
('prod-xxx-64908ea34f20f5.08789580', 'Kalender 2023', 75000.00, 'Dicetak di Kertas Art Carton 210 Gram<br>\r\nUkuran 15 x 21cm<br>\r\nPilih Isi Halaman<br>\r\nFinishing Spiral Kawat Putih<br>\r\nHardcover Hitam<br>\r\nCetak Mesin Laser Dua Sisi', 'asset/produk/Kalender/prod-Kalender-64908ea34f20f5.08789580-1.png', 'asset/produk/kalender/prod-Kalender-64908ea34f20f5.08789580-2.png', 'asset/produk/kalender/prod-Kalender-64908ea34f20f5.08789580-3.png', 'Ready Stock', 4.2, 100, '2023-06-26 00:00:00', 'kat-Lainnya-64c3aa1aa7eb00.63936259', 'dsg-Designer-6445bc9c696ed4.41377364');

-- --------------------------------------------------------

--
-- Table structure for table `tipe_akun`
--

CREATE TABLE `tipe_akun` (
  `id_tipe` int(11) NOT NULL,
  `tipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tipe_akun`
--

INSERT INTO `tipe_akun` (`id_tipe`, `tipe`) VALUES
(1, 'admin'),
(2, 'designer'),
(3, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` varchar(255) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `tanggal_pengiriman` date NOT NULL,
  `total_harga` double(10,2) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `status_transfer` varchar(255) NOT NULL,
  `idProduk` varchar(255) NOT NULL,
  `idKategori` varchar(255) NOT NULL,
  `idCustomer` varchar(255) NOT NULL,
  `idDesigner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `tanggal_transaksi`, `tanggal_pengiriman`, `total_harga`, `jumlah`, `status`, `status_transfer`, `idProduk`, `idKategori`, `idCustomer`, `idDesigner`) VALUES
('transaksi-64a5c8422dec03.11190636', '2023-07-06', '0000-00-00', 750000.00, 10, 'On Going', 'Belum', 'prod-Kalender-64908ea34f20f5.08789580', 'kat-Kalender-64908dd5d877b8.48393563', 'cust-Customer-6445bb69477750.70474596', 'dsg-Designer-6445bc9c696ed4.41377364'),
('transaksi-64a5f96d86f9e9.51274433', '2023-07-04', '2023-07-06', 750000.00, 10, 'Selesai', 'Selesai', 'prod-Kalender-64908ea34f20f5.08789580', 'kat-Kalender-64908dd5d877b8.48393563', 'cust-Customer-6445bb69477750.70474596', 'dsg-Designer-6445bc9c696ed4.41377364'),
('transaksi-64a5f996658f11.19051758', '2023-06-01', '2023-06-02', 1200000.00, 10, 'Selesai', 'Selesai', 'prod-Apron-64999eae251fc5.13765249', 'kat-Apron-64908e8a213b54.28616235', 'cust-Customer-6445bb69477750.70474596', 'dsg-Designer-6445bc9c696ed4.41377364'),
('transaksi-64a67f2ac27dd4.15770125', '2022-06-01', '2022-06-02', 160000.00, 2, 'Selesai', 'Selesai', 'prod-Buku-649984547eb7a9.91873158', 'kat-Buku-64908df7ead8d9.94071979', 'cust-Customer-6445bb69477750.70474596', 'dsg-Designer-6445bc9c696ed4.41377364'),
('transaksi-64ab6aebd4d054.59866917', '2023-07-02', '2023-07-03', 750000.00, 10, 'Selesai', 'Selesai', 'prod-Kalender-64908ea34f20f5.08789580', 'kat-Kalender-64908dd5d877b8.48393563', 'cust-Customer-6445bb69477750.70474596', 'dsg-Designer2-64ab6aa0010b85.62524177'),
('transaksi-64ab95d22f2242.78352978', '2022-03-07', '2022-03-08', 360000.00, 4, 'Selesai', 'Selesai', 'prod-Buku-649984547eb7a9.91873158', 'kat-Buku-64908df7ead8d9.94071979', 'cust-Customer-6445bb69477750.70474596', 'dsg-Designer2-64ab6aa0010b85.62524177'),
('transaksi-64acd4844923d9.08558357', '2023-07-11', '0000-00-00', 750000.00, 10, 'On Going', 'Selesai', 'prod-Kalender-64908ea34f20f5.08789580', 'kat-Kalender-64908dd5d877b8.48393563', 'cust-Customer-6445bb69477750.70474596', 'dsg-Designer-6445bc9c696ed4.41377364');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_ibfk_1` (`tipe`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipe` (`tipe`);

--
-- Indexes for table `designer`
--
ALTER TABLE `designer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkTipe` (`tipe`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_ibfk_2` (`idDesigner`),
  ADD KEY `produk_ibfk_1` (`idKategori`);

--
-- Indexes for table `tipe_akun`
--
ALTER TABLE `tipe_akun`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkCustomer` (`idCustomer`),
  ADD KEY `transaksi_ibfk_1` (`idDesigner`),
  ADD KEY `idKategori` (`idKategori`),
  ADD KEY `idProduk` (`idProduk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tipe_akun`
--
ALTER TABLE `tipe_akun`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`tipe`) REFERENCES `tipe_akun` (`id_tipe`) ON DELETE NO ACTION;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`tipe`) REFERENCES `tipe_akun` (`id_tipe`);

--
-- Constraints for table `designer`
--
ALTER TABLE `designer`
  ADD CONSTRAINT `fkTipe` FOREIGN KEY (`tipe`) REFERENCES `tipe_akun` (`id_tipe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`idKategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produk_ibfk_2` FOREIGN KEY (`idDesigner`) REFERENCES `designer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fkCustomer` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`idDesigner`) REFERENCES `designer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`idKategori`) REFERENCES `kategori` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`idProduk`) REFERENCES `produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
