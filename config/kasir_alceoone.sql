-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2022 pada 11.25
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_alceoone`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(11) NOT NULL,
  `nama_product` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `nama_product`, `jumlah`, `harga`, `images`, `create_at`, `update_at`) VALUES
(1, 'Tahu', 100, 500, 'https://asset.kompas.com/crops/R2_QECkk_qU7-rCN1atAtVxYQz0=/0x0:1000x667/750x500/data/photo/2021/06/10/60c18f4dea381.jpg', '2022-06-05 08:47:14', '2022-06-05 08:47:14'),
(2, 'tempe', 1000, 500, NULL, NULL, NULL),
(3, 'Tahu', 100, 500, 'https://asset.kompas.com/crops/R2_QECkk_qU7-rCN1atAtVxYQz0=/0x0:1000x667/750x500/data/photo/2021/06/10/60c18f4dea381.jpg', '2022-06-05 01:47:14', '2022-06-05 01:47:14'),
(4, 'Tahu', 100, 500, 'https://asset.kompas.com/crops/R2_QECkk_qU7-rCN1atAtVxYQz0=/0x0:1000x667/750x500/data/photo/2021/06/10/60c18f4dea381.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `id_transaction` int(11) NOT NULL,
  `code_transaction` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`id_transaction`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `id_transaction` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
