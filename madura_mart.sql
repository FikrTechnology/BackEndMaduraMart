-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 12:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `madura_mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `logo` varchar(100) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT 0,
  `category` varchar(50) NOT NULL DEFAULT '',
  `productName` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `logo`, `amount`, `category`, `productName`) VALUES
(8, '../assets/img/product/rumah/img-karbol.png', 15000, 'rumah', 'Alfamart Karbol Wangi Anti Bakteri Cemara 750'),
(4, '../assets/img/product/dapur/img-kecap-bango.png', 13000, 'dapur', 'BANGO Kecap Manis 135 ml'),
(33, '../assets/img/product/lain/img-bejo-masuk-angin.png', 17000, 'lain', 'BEJO Obat Herbal Masuk Angin'),
(32, '../assets/img/product/lain/img-koyo.jpg', 22000, 'lain', 'Cabe Koyo 10 Lembar'),
(25, '../assets/img/product/rokok/img-rokok-camel-yellow.jpg', 32000, 'rokok', 'CAMEL Yellow Rokok 20 Batang'),
(20, '../assets/img/product/minuman/img-cap-kaki-tiga.png', 9000, 'minuman', 'Cap Kaki Tiga Larutan Penyegar Jambu Kaleng'),
(26, '../assets/img/product/rokok/img-clas-mild.png', 25000, 'rokok', 'CLAS MILD Rokok 12 Batang'),
(7, '../assets/img/product/rumah/img-detergen-daia.jpg', 10000, 'rumah', 'Daia Deterjen Bubuk + Softener Pink 470 g'),
(27, '../assets/img/product/rokok/img-djarum-black.png', 35000, 'rokok', 'DJARUM Black Rokok 16 Batang'),
(28, '../assets/img/product/rokok/img-djarum-king.png', 23000, 'rokok', 'DJARUM King Rokok 12 Batang'),
(29, '../assets/img/product/rokok/img-djarum-super.png', 27000, 'rokok', 'DJARUM Super Rokok 12 Batang'),
(12, '../assets/img/product/rumah/img-pewangi-downy.png', 18000, 'rumah', 'Downy Pelembut & Pewangi Pakaian'),
(30, '../assets/img/product/rokok/img-dunhill.png', 32000, 'rokok', 'DUNHILL Mild Rokok 16 Batang'),
(34, '../assets/img/product/lain/img-entrostop.png', 15000, 'lain', 'Entrostop Herbal box 15 ml 6 s'),
(31, '../assets/img/product/rokok/img-esse-change.png', 42000, 'rokok', 'ESSE Change Rokok 20 Batang'),
(10, '../assets/img/product/rumah/img-batre-eveready.png', 20000, 'rumah', 'EVEREADY Super Heavy Duty Baterai AA 1215 4 pcs'),
(35, '../assets/img/product/lain/img-freshcare.png', 17000, 'lain', 'FreshCare Minyak Angin Aromatherapy'),
(21, '../assets/img/product/minuman/img-fruit-tea.png', 8000, 'minuman', 'FRUIT TEA Minuman Teh X-Treme'),
(14, '../assets/img/product/makanan/img-kacang-garuda.png', 25000, 'makanan', 'garuda Kacang Kulit 375 g'),
(15, '../assets/img/product/makanan/img-kacang-telur.png', 10000, 'makanan', 'Gery Saluut Malkist Sweet Cheese 100 g'),
(22, '../assets/img/product/minuman/img-hemaviton.png', 6000, 'minuman', 'hemaviton Energy Drink'),
(1, '../assets/img/product/dapur/img-sambal-indofood.png', 14000, 'dapur', 'Indofood Sambal Pedas 275 ml'),
(23, '../assets/img/product/minuman/img-indomilk.png', 6000, 'minuman', 'INDOMILK Susu Cair Rasa Strawberry'),
(36, '../assets/img/product/lain/img-insto-dry.png', 15000, 'lain', 'INSTO Dry Eyes Obat Tetes Mata'),
(13, '../assets/img/product/makanan/img-japota.jpg', 9000, 'makanan', 'Japota Keripik Kentang Rasa Sambal Bawang 68 g'),
(17, '../assets/img/product/makanan/img-wafer-milo.png', 15000, 'makanan', 'Kacang Telur Medan Premium 150 g'),
(5, '../assets/img/product/dapur/img-santan-kara.png', 4000, 'dapur', 'kara SUN Santan Kelapa Bubuk 20 g'),
(11, '../assets/img/product/rumah/img-kispray.png', 7000, 'rumah', 'Kispray Violet Pewangi Pakaian Refill 280 ml'),
(18, '../assets/img/product/makanan/img-wafer-tango.png', 6000, 'makanan', 'MILO Choco Bar 15 g'),
(9, '../assets/img/product/rumah/img-tisue-multi.png', 21000, 'rumah', 'multi Facial Tissue 250 s'),
(37, '../assets/img/product/lain/img-procold.png', 6000, 'lain', 'Procold Obat Flu 6 Kaplet'),
(6, '../assets/img/product/dapur/img-gula-psm.png', 18000, 'dapur', 'PSM Gula Pasir Kristal Putih Premium 1 kg'),
(24, '../assets/img/product/minuman/img-redbull.png', 10000, 'minuman', 'Red Bull Kratingdaeng Energy Drink Gold'),
(2, '../assets/img/product/dapur/img-royco.png', 13000, 'dapur', 'Royco Bumbu Penyedap Rasa Kaldu Ayam 220 g'),
(3, '../assets/img/product/dapur/img-minyak-sania.png', 19000, 'dapur', 'Sania Minyak Goreng Pouch 1 L'),
(16, '../assets/img/product/makanan/img-wafer-gery.png', 13000, 'makanan', 'Tango Wafer Vanilla Milk 115 g'),
(19, '../assets/img/product/minuman/img-teh-botol-tawar.jpg', 5000, 'minuman', 'Tehbotol Sosro Tawar 350 ml');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `id` int(11) NOT NULL,
  `log_transaction` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`id`, `log_transaction`) VALUES
(9, '{\"total\":42000,\"cash\":50000,\"moneyChange\":8000,\"dateTime\":\"7 Juni 2024 Jam 16:24 WIB \",\"outlet\":\"M1 - Menara BNI Pejompongan\",\"sumQty\":1,\"receipt\":{\"ESSE Change Rokok 20 Batang\":{\"id\":31,\"logo\":\"../assets/img/product/rokok/img-esse-change.png\",\"amount\":42000,\"category\":\"rokok\",\"productName\":\"ESSE Change Rokok 20 Batang\",\"qty\":1,\"index\":\"6\",\"subTotal\":42000}}}'),
(10, '{\"total\":17000,\"cash\":20000,\"moneyChange\":3000,\"dateTime\":\"7 Juni 2024 Jam 16:51 WIB \",\"outlet\":\"M1 - Menara BNI Pejompongan\",\"sumQty\":1,\"receipt\":{\"FreshCare Minyak Angin Aromatherapy\":{\"id\":35,\"logo\":\"../assets/img/product/lain/img-freshcare.png\",\"amount\":17000,\"category\":\"lain\",\"productName\":\"FreshCare Minyak Angin Aromatherapy\",\"qty\":1,\"index\":\"3\",\"subTotal\":17000}}}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nip` varchar(8) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nip`, `password`) VALUES
(1, '17220207', 'testaja');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productName`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
