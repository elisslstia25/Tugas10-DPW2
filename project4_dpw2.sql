-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Des 2021 pada 07.12
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project4_dpw2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `nama`, `foto`, `harga`, `stok`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 1, 'Apple Granny Smith', NULL, 192000, 100, 'Buahnya keras, keras dan dengan kulit hijau muda dan daging yang segar dan berair. Cita rasanya gurih dan asam. Ini tetap keras saat dipanggang, membuatnya menjadi apel masak yang sangat populer yang digunakan dalam pai, di mana ia bisa dimaniskan. Apel berubah dari benar-benar hijau menjadi kuning saat terlalu matang. Asosiasi Apple AS melaporkan pada tahun 2019 bahwa Granny Smith adalah apel paling populer ketiga di Amerika Serikat.', '2021-11-24 20:05:31', '2021-11-24 20:05:31'),
(2, 1, 'Kurma Ajwa', NULL, 150000, 80, 'Kurma ajwa adalah jenis kurma yang tumbuh di Madinah. Ibnu Munzir dalam bukunya Lisan al-Arab menyebut kurma ajwa merujuk pada jenis kurma yang berasal dari pohon yang ditanam langsung oleh Nabi Muhammad SAW.\r\nPohon kurma ajwa adalah salah satu pohon paling kuno di dunia. Pohon ini bisa tumbuh sampai 30 cm setiap tahunnya.', '2021-11-24 20:18:08', '2021-11-24 20:18:08'),
(3, 1, 'Durian Monthong', NULL, 380000, 200, 'Buahnya manis, besar dan berdaging tebal yang berasal dari Negara Thailand.\r\nIa kaya akan manfaatnya dan memiliki kekhasan buah yang super lezat.\r\nDurian Montong si raja durian bahkan merajai perdagangan buah di Indonesia.\r\nKarena ukuran yang besar ditambah duri-duri yang gagah maka durian tersebut disebut sebagai Raja Para Durian.', '2021-11-24 20:20:10', '2021-11-24 20:20:10'),
(4, 2, 'Durian Musang King', NULL, 260000, 100, 'Daging buah musang king memiliki ciri khas antara lain dagingnya yang berwarna kuning, teksturnya lembut creamy dan tidak berserat. Untuk rasanya, musang king populer dengan rasa manis legit dengan sedikit semburat pahit.', '2021-11-24 21:08:03', '2021-11-24 21:08:03'),
(5, 2, 'Strawberry Apple', NULL, 60000, 200, 'Apel Mini/Strawberry Apples Rasanya Manis Dan Renyah', '2021-11-24 21:10:50', '2021-11-24 21:10:50'),
(6, 2, 'Alpukat Mentega', NULL, 55000, 150, 'Daging buah alpukat mentega super ini terasa begitu nikmat dengan tekstur yang lembut, tanpa serat sama sekali, dengan rasa gurih yang dominan. Banyak penikmat buah yang suka mengkonsumsi daging buahnya begitu saja, tanpa campuran apapun, diambil langsung menggunakan sendok, namun ada juga yang justru mencampur daging buah dengan sedikit susu cokelat yang diteteskan di atas buah, sirup, maupun air kopi manis untuk menambah sensasi nikmat saat melahap daging buah alpukat mentega super ini.', '2021-11-24 21:13:02', '2021-11-24 21:13:02'),
(39, 1, 'Alpukat Mentega', 'app/images/produk/39-1640585328-vTqnV.png', 150000, 80, '<p><span style=\"color: rgb(24, 24, 24); font-family: Rubik, Arial; font-size: 16.7911px;\"><b><u>Alpukat mentega</u></b> merupakan jenis alpukat unggulan, hal ini dikarenakan alpukat ini memiliki buah dengan daging cukup tebal dengan tekstur kenyal tidak berair, warna buahnya kuning bersih layaknya mentega sangat menarik ketika dilihat, selain itu, alpukat mentega juga tidak memiliki serat (berambut) dan memiliki aroma khas alpukat yang lebih tajam.</span><br></p>', '2021-12-26 23:08:48', '2021-12-26 23:08:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` int(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `jenis_kelamin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'elisslstia25', 'elisslstia25@gmail.com', 'Elis Sulistia Sudrajat', 1, '$2y$10$BKTQlT4XmxGVhvEvR.zRi.3A4YV1xFipTt5fT166LMfZohu5u4Ahy', NULL, '2021-11-24 19:58:12', '2021-11-24 21:14:52'),
(2, 'fy_syh', 'forysyahidhus@gmail.com', 'Fory Syahidhus', 2, '$2y$10$PfeZmZFLbaeSPEJVKLX6cueBBv4pQrlVD08fHze3KbG9AXheqVfuK', NULL, '2021-11-24 20:24:03', '2021-11-24 21:14:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 1, '08978639260', '2021-11-24 19:58:12', '2021-11-24 19:58:12'),
(2, 2, '0895356227773', '2021-11-24 20:24:03', '2021-11-24 20:24:03');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
