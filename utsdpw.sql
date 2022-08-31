-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 31, 2022 at 12:31 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utsdpw`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `id_user`, `judul`, `penulis`, `deskripsi`, `created_at`, `updated_at`) VALUES
(3, 2, '1 | Mau mencicipi kuliner Nusantara? Jakarta punya banyak pilihan!', 'Irsyad jauhari', 'Ingin mencicipi kenikmatan kuliner nusantara yang menggoyang lidah? Jakarta punya banyak pilihan, lho! Di sini, Sobat Pesona dapat mencoba makanan ringan hingga makanan berat yang pasti bikin ketagihan. Sebut saja kerak telor, roti buaya, asinan betawi, soto betawi, nasi uduk dan gado-gado khas Betawi. Satu lagi yang tidak boleh dilewatkan adalah pecak ikan yang rasanya nggak ada duanya. Baru membayangkannya saja sudah bikin ngiler nih, Sobat Pesona!', '2022-08-29 02:07:15', '2022-08-30 19:15:20'),
(4, 2, '2 |Tiket Pesawat Murah Awal Tahun  Cathay Pacific Travel Fair Februari 2022', 'Ari', 'Untuk bisa memperoleh cashback, kamu harus memiliki kartu debit ataupun kartu kredit dari bank CIMB Niaga. \r\n\r\nNamun, kamu harus mendaftarkan diri di sini untuk mendapatkan QR code untuk nantinya ditukarkan dengan gelang cashback. Sistemnya siapa cepat dia dapat yahh. Jadi walaupun kamu sudah mendapat QR code, persediaan gelang cashbacknya terbatas.\r\n\r\nJadi di Cathay Pacific Travel fair ini, selain kamu bisa beli tiket dengan harga spesial, biasanya kamu juga bisa mengajukan kartu kredit CIMB Niaga dengan instan saat travel fair & menaikan limit kartu kredit CIMB Niaga milik kamu. Dan pastinya banyak promo menarik seperti bonus Asia miles, cicilan 0%, dan sebagainya\r\n\r\nSaya sendiri akan coba mencari promo business classyang biasanya juga cukup terjangkau jika di travel fair. Karena saya sendiri  belum pernah terbang di kelas bisnis Cathay Pacific.\r\n\r\nJadi, apa rencana traveling kamu tahun ini? Sampai bertemu di sana ya!', '2022-08-31 05:13:43', '2022-08-31 05:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `komen`
--

CREATE TABLE `komen` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komen`
--

INSERT INTO `komen` (`id`, `nama`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'anya', 'mantap euy', '2022-08-30 10:24:06', '2022-08-30 10:24:06'),
(2, 'panda', 'hahahaha', '2022-08-30 10:25:03', '2022-08-30 10:25:03'),
(3, 'felox', 'dsdiajdijdijaid', '2022-08-30 20:45:39', '2022-08-30 20:45:39'),
(4, 'mawan kontol', 'bacot', '2022-08-30 23:26:25', '2022-08-30 23:26:25'),
(5, NULL, 'lalalal', '2022-08-30 23:30:03', '2022-08-30 23:30:03'),
(6, 'irsyad husain jauhari', 'tidak', '2022-08-30 23:30:50', '2022-08-30 23:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'panda1234', 'panda@gmail.com', 'panda', '$2y$10$qrwPQItKzLEGZE885QXxfO1/Vybo/t1XjLaf.d0siegIABjKK45aW', NULL, '2022-08-29 01:16:09', '2022-08-29 01:17:02'),
(3, 'tod', 'ari@gmail.com', 'irsyad husain jauhari', '$2y$10$9pePbX8FGeTla/PFWJ4A9udmIFrTzycr9lR0ZHoXyb3Fglv.XLNUi', NULL, '2022-08-29 02:18:30', '2022-08-29 02:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, NULL, '08981229812', '2022-08-28 14:25:04', '2022-08-28 14:25:04'),
(2, 2, '08981229812', '2022-08-29 01:16:09', '2022-08-29 01:16:09'),
(3, 3, '67894562728', '2022-08-29 02:18:30', '2022-08-29 02:18:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komen`
--
ALTER TABLE `komen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `komen`
--
ALTER TABLE `komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
