-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2023 pada 23.28
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siswaterbaik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `saw_alternatives`
--

CREATE TABLE `saw_alternatives` (
  `id_alternative` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `nisn` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `saw_alternatives`
--

INSERT INTO `saw_alternatives` (`id_alternative`, `name`, `nisn`) VALUES
(1, 'Intan Rahma Safitri', ''),
(2, 'Jonatan Pramono ', ''),
(3, 'Devin Yanuargi', ''),
(4, 'Al Hafiz Taufikur Rohman', ''),
(5, 'Louisa Nayna Ivahrily', ''),
(6, 'Nabila Al Falisa', ''),
(7, 'Brendadiva Ikval Ramadhani', ''),
(8, 'Fauziyah Khoirunnissa', ''),
(9, 'Cinta Dwi Ramadhani', ''),
(10, 'Alysaa Rahma Firmansyah', ''),
(11, 'Ikhsan Surya Putra', ''),
(12, 'Muhammad Saifudin', ''),
(13, 'Jovian Yunior', ''),
(14, 'Alfredo Elrio Napitupulu', ''),
(15, 'I Made Adithia Saputra', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saw_criterias`
--

CREATE TABLE `saw_criterias` (
  `id_criteria` tinyint(3) UNSIGNED NOT NULL,
  `criteria` varchar(100) NOT NULL,
  `weight` float NOT NULL,
  `attribute` set('benefit','cost') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `saw_criterias`
--

INSERT INTO `saw_criterias` (`id_criteria`, `criteria`, `weight`, `attribute`) VALUES
(1, 'Nilai Raport', 65, 'benefit'),
(2, 'Nilai Absensi', 25, 'benefit'),
(3, 'Nilai Sikap', 10, 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saw_evaluations`
--

CREATE TABLE `saw_evaluations` (
  `id_alternative` smallint(5) UNSIGNED NOT NULL,
  `id_criteria` tinyint(3) UNSIGNED NOT NULL,
  `value` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `saw_evaluations`
--

INSERT INTO `saw_evaluations` (`id_alternative`, `id_criteria`, `value`) VALUES
(10, 3, '3'),
(10, 2, '5'),
(10, 1, '88'),
(9, 3, '3'),
(9, 2, '4'),
(9, 1, '88'),
(8, 3, '4'),
(8, 2, '3'),
(8, 1, '89'),
(7, 3, '5'),
(7, 2, '5'),
(7, 1, '89'),
(6, 3, '4'),
(6, 2, '3'),
(6, 1, '93'),
(5, 3, '3'),
(5, 2, '5'),
(5, 1, '87'),
(4, 3, '4'),
(4, 2, '5'),
(4, 1, '87'),
(3, 3, '5'),
(3, 2, '4'),
(3, 1, '88'),
(2, 3, '3'),
(2, 2, '4'),
(2, 1, '88'),
(1, 3, '4'),
(1, 2, '5'),
(1, 1, '86'),
(11, 1, '87'),
(11, 2, '4'),
(11, 3, '3'),
(12, 1, '86'),
(12, 2, '2'),
(12, 3, '4'),
(13, 1, '86'),
(13, 2, '2'),
(13, 3, '4'),
(14, 1, '86'),
(14, 2, '1'),
(14, 3, '4'),
(15, 1, '85'),
(15, 2, '2'),
(15, 3, '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saw_users`
--

CREATE TABLE `saw_users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `saw_users`
--

INSERT INTO `saw_users` (`id_user`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `saw_alternatives`
--
ALTER TABLE `saw_alternatives`
  ADD PRIMARY KEY (`id_alternative`);

--
-- Indeks untuk tabel `saw_criterias`
--
ALTER TABLE `saw_criterias`
  ADD PRIMARY KEY (`id_criteria`);

--
-- Indeks untuk tabel `saw_evaluations`
--
ALTER TABLE `saw_evaluations`
  ADD PRIMARY KEY (`id_alternative`,`id_criteria`);

--
-- Indeks untuk tabel `saw_users`
--
ALTER TABLE `saw_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `saw_alternatives`
--
ALTER TABLE `saw_alternatives`
  MODIFY `id_alternative` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `saw_users`
--
ALTER TABLE `saw_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
