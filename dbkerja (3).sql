-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2019 at 06:15 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkerja`
--

-- --------------------------------------------------------

--
-- Table structure for table `absens`
--

CREATE TABLE `absens` (
  `id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produsen_id` int(10) UNSIGNED NOT NULL,
  `stock_bal` int(11) DEFAULT NULL,
  `stock_kardus` int(11) DEFAULT NULL,
  `stock_renteng` int(11) DEFAULT NULL,
  `stock_pack` int(11) DEFAULT NULL,
  `stock_eceran` int(11) DEFAULT NULL,
  `harga_bal` int(11) DEFAULT NULL,
  `harga_kardus` int(11) DEFAULT NULL,
  `harga_renteng` int(11) DEFAULT NULL,
  `harga_pack` int(11) DEFAULT NULL,
  `harga_eceran` int(11) DEFAULT NULL,
  `isi_bal_pack` int(11) DEFAULT NULL,
  `isi_bal_renteng` int(11) DEFAULT NULL,
  `isi_kardus_renteng` int(11) DEFAULT NULL,
  `isi_kardus` int(11) DEFAULT NULL,
  `isi_renteng` int(11) DEFAULT NULL,
  `isi_pack` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `kode`, `nama`, `produsen_id`, `stock_bal`, `stock_kardus`, `stock_renteng`, `stock_pack`, `stock_eceran`, `harga_bal`, `harga_kardus`, `harga_renteng`, `harga_pack`, `harga_eceran`, `isi_bal_pack`, `isi_bal_renteng`, `isi_kardus_renteng`, `isi_kardus`, `isi_renteng`, `isi_pack`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '123456654', 'Sossis Ayam 350 gr', 1, -83, 90, 100, 121, 90, 250000, 100000, 50000, 25000, 10000, 10, 5, 2, 10, NULL, 3, '2019-01-04 21:02:14', '2019-01-07 13:28:04', NULL),
(2, '231241', 'Andrian th', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-08 04:02:08', '2019-02-08 04:03:50', '2019-02-08 04:03:50'),
(3, 'fsdfs4455', 'ckfsdfsf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-19 08:02:06', '2019-02-19 08:02:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bongkars`
--

CREATE TABLE `bongkars` (
  `id` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bongkars`
--

INSERT INTO `bongkars` (`id`, `tanggal`, `pegawai_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, '2019-01-07', 1, '2019-01-07 13:28:04', '2019-01-07 13:28:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bongkar_barangs`
--

CREATE TABLE `bongkar_barangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_absens`
--

CREATE TABLE `detail_absens` (
  `id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_bongkarans`
--

CREATE TABLE `detail_bongkarans` (
  `id` int(10) UNSIGNED NOT NULL,
  `bongkar_id` int(10) UNSIGNED NOT NULL,
  `barang_id` int(10) UNSIGNED NOT NULL,
  `qty1` int(11) NOT NULL,
  `qty2` int(11) NOT NULL,
  `jenis1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_bongkarans`
--

INSERT INTO `detail_bongkarans` (`id`, `bongkar_id`, `barang_id`, `qty1`, `qty2`, `jenis1`, `jenis2`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 1, 7, 21, 'bal', 'pack', '2019-01-07 13:28:04', '2019-01-07 13:28:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_bongkars`
--

CREATE TABLE `detail_bongkars` (
  `id` int(10) UNSIGNED NOT NULL,
  `bongkarbarang_id` int(10) UNSIGNED NOT NULL,
  `barang_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelians`
--

CREATE TABLE `detail_pembelians` (
  `id` int(10) UNSIGNED NOT NULL,
  `pembelian_id` int(10) UNSIGNED NOT NULL,
  `barang_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualans`
--

CREATE TABLE `detail_penjualans` (
  `id` int(10) UNSIGNED NOT NULL,
  `penjualan_id` int(10) UNSIGNED NOT NULL,
  `barang_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_penjualans`
--

INSERT INTO `detail_penjualans` (`id`, `penjualan_id`, `barang_id`, `qty`, `diskon`, `jenis`, `subtotal`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 10, 10, 'eceran', 90000, '2019-01-07 02:16:35', '2019-01-07 02:16:35', NULL),
(2, 3, 1, 10, 10, 'bal', 2250000, '2019-01-07 06:11:54', '2019-01-07 06:11:54', NULL),
(3, 3, 1, 10, 10, 'kardus', 900000, '2019-01-07 06:11:54', '2019-01-07 06:11:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_11_022030_create_barangs_table', 1),
(4, '2018_05_18_012442_create_pegawais_table', 1),
(5, '2018_05_18_015421_create_pelanggans_table', 1),
(6, '2018_05_25_012752_create_penjualans_table', 1),
(7, '2018_05_25_013751_create_detail_penjualans_table', 1),
(8, '2018_06_08_013843_create_pembelians_table', 1),
(9, '2018_06_08_021116_create_detail_bongkarans_table ', 1),
(10, '2018_06_08_021116_create_detail_bongkars_table', 1),
(11, '2018_06_08_021116_create_detail_pembelians_table', 1),
(12, '2018_12_05_091707_create_absens_table', 1),
(13, '2018_12_08_115259_create_produsens_table', 1),
(14, '2018_12_26_015008_create_detail_absens_table', 1),
(15, '2018_12_30_165429_create_bongkar_barangs_table', 1),
(16, '2018_12_31_024032_create_bongkars_table', 1),
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2018_05_11_022030_create_barangs_table', 1),
(20, '2018_05_18_012442_create_pegawais_table', 1),
(21, '2018_05_18_015421_create_pelanggans_table', 1),
(22, '2018_05_25_012752_create_penjualans_table', 1),
(23, '2018_05_25_013751_create_detail_penjualans_table', 1),
(24, '2018_06_08_013843_create_pembelians_table', 1),
(25, '2018_06_08_021116_create_detail_bongkarans_table ', 1),
(26, '2018_06_08_021116_create_detail_bongkars_table', 1),
(27, '2018_06_08_021116_create_detail_pembelians_table', 1),
(28, '2018_12_05_091707_create_absens_table', 1),
(29, '2018_12_08_115259_create_produsens_table', 1),
(30, '2018_12_26_015008_create_detail_absens_table', 1),
(31, '2018_12_30_165429_create_bongkar_barangs_table', 1),
(32, '2018_12_31_024032_create_bongkars_table', 1),
(33, '2019_01_06_222011_create_pengeluarans_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `NIK` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempatlahir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telpon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawais`
--

INSERT INTO `pegawais` (`id`, `NIK`, `nama`, `tempatlahir`, `tanggallahir`, `alamat`, `email`, `telpon`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '3573012012970001', 'Andrian th', NULL, NULL, NULL, NULL, NULL, '1546635625.png', '2019-01-04 21:00:25', '2019-01-04 21:00:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telpon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggans`
--

INSERT INTO `pelanggans` (`id`, `nama`, `alamat`, `telpon`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '-', '-', NULL, NULL, '2019-01-04 21:00:48', '2019-01-04 21:00:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembelians`
--

CREATE TABLE `pembelians` (
  `id` int(10) UNSIGNED NOT NULL,
  `produsen_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluarans`
--

CREATE TABLE `pengeluarans` (
  `id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rincian` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengeluarans`
--

INSERT INTO `pengeluarans` (`id`, `jenis`, `rincian`, `keterangan`, `jumlah`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tagihan', 'Listrik', 'Tagihan Listrik Bulan Januari 2019', 139000, '2019-01-06 16:36:34', '2019-01-06 16:36:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penjualans`
--

CREATE TABLE `penjualans` (
  `id` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `pelanggan_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `jenisbayar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jatuhtempo` date DEFAULT NULL,
  `diskontotal` int(11) NOT NULL,
  `jumlahbayar` int(11) NOT NULL,
  `totalbersih` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualans`
--

INSERT INTO `penjualans` (`id`, `tanggal`, `pelanggan_id`, `pegawai_id`, `jenisbayar`, `jatuhtempo`, `diskontotal`, `jumlahbayar`, `totalbersih`, `kembalian`, `total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, '2019-01-07', 1, 1, 'tunai', NULL, 10, 100000, 81000, 19000, 90000, '2019-01-07 02:16:35', '2019-01-07 02:16:35', NULL),
(3, '2019-01-07', 1, 1, 'kredit', '2019-01-14', 10, 0, 2835000, -2835000, 3150000, '2019-01-07 06:11:54', '2019-01-07 06:11:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produsens`
--

CREATE TABLE `produsens` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produsens`
--

INSERT INTO `produsens` (`id`, `nama`, `telepon`, `email`, `alamat`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '-', NULL, NULL, NULL, '2019-01-04 21:01:15', '2019-01-04 21:01:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$bF/./S4GaW2FEaD6frSso.OUstjs5EUwRSRMV184KIcXivAOEq2VC', 'ZMvBkUOQI6TCMhPjbIgfBV6BA7HJTffxMSUnMtmm77H5qPsxOCNY2qVlHi76', '2019-01-04 20:59:00', '2019-01-04 20:59:00'),
(2, 'hanin', 'hanin@gmail.om', '$2y$10$HhECKsxoX36cJT3.y4X1L.i/jlb8zMfVIXhMeTHBY/MlXUfnt2Ow2', NULL, '2019-01-29 03:57:03', '2019-01-29 03:57:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absens`
--
ALTER TABLE `absens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absens_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bongkars`
--
ALTER TABLE `bongkars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bongkars_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `bongkar_barangs`
--
ALTER TABLE `bongkar_barangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bongkar_barangs_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `detail_absens`
--
ALTER TABLE `detail_absens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_absens_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `detail_bongkarans`
--
ALTER TABLE `detail_bongkarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_bongkars`
--
ALTER TABLE `detail_bongkars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_pembelians`
--
ALTER TABLE `detail_pembelians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_pembelians_pembelian_id_foreign` (`pembelian_id`),
  ADD KEY `detail_pembelians_barang_id_foreign` (`barang_id`);

--
-- Indexes for table `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_penjualans_penjualan_id_foreign` (`penjualan_id`),
  ADD KEY `detail_penjualans_barang_id_foreign` (`barang_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawais_email_unique` (`email`);

--
-- Indexes for table `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pelanggans_email_unique` (`email`);

--
-- Indexes for table `pembelians`
--
ALTER TABLE `pembelians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluarans`
--
ALTER TABLE `pengeluarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualans`
--
ALTER TABLE `penjualans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penjualans_pelanggan_id_foreign` (`pelanggan_id`),
  ADD KEY `penjualans_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `produsens`
--
ALTER TABLE `produsens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `produsens_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absens`
--
ALTER TABLE `absens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bongkars`
--
ALTER TABLE `bongkars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bongkar_barangs`
--
ALTER TABLE `bongkar_barangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_absens`
--
ALTER TABLE `detail_absens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_bongkarans`
--
ALTER TABLE `detail_bongkarans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_bongkars`
--
ALTER TABLE `detail_bongkars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_pembelians`
--
ALTER TABLE `detail_pembelians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pembelians`
--
ALTER TABLE `pembelians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluarans`
--
ALTER TABLE `pengeluarans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penjualans`
--
ALTER TABLE `penjualans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produsens`
--
ALTER TABLE `produsens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absens`
--
ALTER TABLE `absens`
  ADD CONSTRAINT `absens_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`);

--
-- Constraints for table `bongkars`
--
ALTER TABLE `bongkars`
  ADD CONSTRAINT `bongkars_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`);

--
-- Constraints for table `bongkar_barangs`
--
ALTER TABLE `bongkar_barangs`
  ADD CONSTRAINT `bongkar_barangs_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`);

--
-- Constraints for table `detail_absens`
--
ALTER TABLE `detail_absens`
  ADD CONSTRAINT `detail_absens_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`);

--
-- Constraints for table `detail_pembelians`
--
ALTER TABLE `detail_pembelians`
  ADD CONSTRAINT `detail_pembelians_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`),
  ADD CONSTRAINT `detail_pembelians_pembelian_id_foreign` FOREIGN KEY (`pembelian_id`) REFERENCES `pembelians` (`id`);

--
-- Constraints for table `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  ADD CONSTRAINT `detail_penjualans_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`),
  ADD CONSTRAINT `detail_penjualans_penjualan_id_foreign` FOREIGN KEY (`penjualan_id`) REFERENCES `penjualans` (`id`);

--
-- Constraints for table `penjualans`
--
ALTER TABLE `penjualans`
  ADD CONSTRAINT `penjualans_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`),
  ADD CONSTRAINT `penjualans_pelanggan_id_foreign` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggans` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
