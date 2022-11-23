-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2022 pada 10.16
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpedulidiri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbperjalanan`
--

CREATE TABLE `tbperjalanan` (
  `idCatatan` int(5) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `suhu` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbperjalanan`
--

INSERT INTO `tbperjalanan` (`idCatatan`, `nik`, `tanggal`, `waktu`, `lokasi`, `suhu`) VALUES
(1, '1234567', '2022-11-23', '12:29', 'Lampung', '35'),
(2, '1234567', '2022-11-24', '13:33', 'Bandung', '33'),
(3, '1234567', '2022-11-21', '12:50', 'Meikarta', '29'),
(4, '11223344', '2022-11-11', '16:38', 'Rumah', '35'),
(8, '2231', '2022-12-02', '02:43', 'Vietnam', '30'),
(10, '2231', '2022-11-09', '17:16', 'Meikarta', '33,5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE `tbuser` (
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`nik`, `nama`) VALUES
('11223344', 'admin'),
('1234567', 'hapis al kosar'),
('2231', 'joni lukman'),
('7654321', 'apis aja');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbperjalanan`
--
ALTER TABLE `tbperjalanan`
  ADD PRIMARY KEY (`idCatatan`),
  ADD KEY `nik` (`nik`);

--
-- Indeks untuk tabel `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbperjalanan`
--
ALTER TABLE `tbperjalanan`
  MODIFY `idCatatan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbperjalanan`
--
ALTER TABLE `tbperjalanan`
  ADD CONSTRAINT `tbperjalanan_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tbuser` (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
