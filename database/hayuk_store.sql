-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 03:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hayuk_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_product`
--

CREATE TABLE `cart_product` (
  `id` int(11) NOT NULL,
  `kode` varchar(6) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `kategori` varchar(64) NOT NULL,
  `harga` varchar(64) NOT NULL,
  `gambar` varchar(64) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_product`
--

INSERT INTO `cart_product` (`id`, `kode`, `nama`, `kategori`, `harga`, `gambar`, `created_at`, `updated_at`) VALUES
(2, 'DT4823', 'adidas TRAINING Tas Selempang Linear Core Unisex Hitam', '', '257400', '097d64cc7d4cad635cedcf91c95e9447', '2020-12-22', '2020-12-22'),
(3, 'EH3230', 'adidas ORIGINALS Sepatu Continental 80 Bayi Unisex Putih', '', '585000', 'e5f58e83ea266c388b08638ab72f4872', '2020-12-22', '2020-12-22'),
(4, 'FL9658', 'adidas ORIGINALS Tas Crossbody Essential Unisex', '', '380000', '19707bd97e58e9cf15f76bfc412b1864', '2020-12-22', '2020-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `kode` varchar(6) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `kategori` varchar(16) NOT NULL,
  `harga` varchar(16) NOT NULL,
  `gambar` varchar(32) NOT NULL,
  `gambar2` varchar(64) NOT NULL,
  `gambar3` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `kode`, `nama`, `kategori`, `harga`, `gambar`, `gambar2`, `gambar3`) VALUES
(1, 'B22706', 'adidas ORIGINALS Sepatu 3MC Vulc Unisex Hitam', 'Sepatu', '560000', 'b5d896788f320608febb1188614b12f6', '7fd3e0b34ca09549b6949f2cc5d6b020', 'ad6c6add5846f8804f581cd4aea27488'),
(2, 'FU9609', 'adidas ORIGINALS Stan Smith Shoes Pria Putih', 'Sepatu', '585000', '22ad5cec0eca65b1e3db45a27b1d7f92', '1ed3577600e9af2b3463f7a9cadf786f', '23000dfb6d4f1f363d0362e7e910ea93'),
(3, 'EH3230', 'adidas ORIGINALS Sepatu Continental 80 Bayi Unisex Putih', 'Sepatu', '585000', 'e5f58e83ea266c388b08638ab72f4872', 'b883b9040562e13e2cbbe26bb7357b26', 'cbc6452610571e0708933ee52f6cf44a'),
(4, 'FW3742', 'adidas TRAINING Sepatu Strutter Pria Hitam', 'Sepatu', '702000', 'c4fda799f1499cf6775196582be1e9b9', '5e1ced68b4ac0ab45abd95f1a28af695', 'acd774f62c79cccf98eea6fc41d9aec7'),
(5, 'M20324', 'adidas ORIGINALS Sepatu Stan Smith Pria Putih', 'Sepatu', '1500000', 'd7003afaff3156fe4fe6434d149fc756', 'd6487336263934e902858cc310962108', 'ad72acef463c2cddd544deea0cee430a'),
(6, 'DT4823', 'adidas TRAINING Tas Selempang Linear Core Unisex Hitam', 'Tas', '257400', '097d64cc7d4cad635cedcf91c95e9447', 'fdbc956a2d28c86f4148336e15ab2120', '8f07632f7269a93d5c0abc485a802de2'),
(7, 'FL9658', 'adidas ORIGINALS Tas Crossbody Essential Unisex', 'Tas', '380000', '19707bd97e58e9cf15f76bfc412b1864', 'c642c5bd45d5b2ff53564d55eefc9868', 'b4c6d96a4aa8f47d1796aea68f882f9a'),
(8, 'EI7411', 'adidas ORIGINALS Tas Festival Trefoil Unisex Hitam', 'Tas', '218400', '5c1e839b9d59ca7f527a49193c81719e', 'cf4ce9636f8627525e26e6fce75b9192', '174e96e3f04fd677d97c0522b1478b4c');

-- --------------------------------------------------------

--
-- Table structure for table `trending_product`
--

CREATE TABLE `trending_product` (
  `id` int(11) NOT NULL,
  `kode` varchar(6) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `kategori` varchar(16) NOT NULL,
  `harga` varchar(16) NOT NULL,
  `gambar` varchar(32) NOT NULL,
  `gambar2` varchar(64) NOT NULL,
  `gambar3` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trending_product`
--

INSERT INTO `trending_product` (`id`, `kode`, `nama`, `kategori`, `harga`, `gambar`, `gambar2`, `gambar3`) VALUES
(1, 'B22706', 'adidas ORIGINALS Sepatu 3MC Vulc Unisex Hitam', 'Sepatu', '560000', 'b5d896788f320608febb1188614b12f6', '7fd3e0b34ca09549b6949f2cc5d6b020', 'ad6c6add5846f8804f581cd4aea27488'),
(2, 'FU9609', 'adidas ORIGINALS Stan Smith Shoes Pria Putih', 'Sepatu', '585000', '22ad5cec0eca65b1e3db45a27b1d7f92', '1ed3577600e9af2b3463f7a9cadf786f', '23000dfb6d4f1f363d0362e7e910ea93'),
(3, 'EH3230', 'adidas ORIGINALS Sepatu Continental 80 Bayi Unisex Putih', 'Sepatu', '585000', 'e5f58e83ea266c388b08638ab72f4872', 'b883b9040562e13e2cbbe26bb7357b26', 'cbc6452610571e0708933ee52f6cf44a'),
(4, 'FW3742', 'adidas TRAINING Sepatu Strutter Pria Hitam', 'Sepatu', '702000', 'c4fda799f1499cf6775196582be1e9b9', '5e1ced68b4ac0ab45abd95f1a28af695', 'acd774f62c79cccf98eea6fc41d9aec7'),
(5, 'M20324', 'adidas ORIGINALS Sepatu Stan Smith Pria Putih', 'Sepatu', '1500000', 'd7003afaff3156fe4fe6434d149fc756', 'd6487336263934e902858cc310962108', 'ad72acef463c2cddd544deea0cee430a'),
(6, 'DT4823', 'adidas TRAINING Tas Selempang Linear Core Unisex Hitam', 'Tas', '257400', '097d64cc7d4cad635cedcf91c95e9447', 'fdbc956a2d28c86f4148336e15ab2120', '8f07632f7269a93d5c0abc485a802de2'),
(7, 'FL9658', 'adidas ORIGINALS Tas Crossbody Essential Unisex', 'Tas', '380000', '19707bd97e58e9cf15f76bfc412b1864', 'c642c5bd45d5b2ff53564d55eefc9868', 'b4c6d96a4aa8f47d1796aea68f882f9a'),
(8, 'EI7411', 'adidas ORIGINALS Tas Festival Trefoil Unisex Hitam', 'Tas', '218400', '5c1e839b9d59ca7f527a49193c81719e', 'cf4ce9636f8627525e26e6fce75b9192', '174e96e3f04fd677d97c0522b1478b4c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending_product`
--
ALTER TABLE `trending_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trending_product`
--
ALTER TABLE `trending_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
