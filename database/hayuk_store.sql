-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Des 2020 pada 10.34
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'user', 'Reguler User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(5, '::1', 'nababanm71@gmail.com', 6, '2020-12-27 23:12:47', 1),
(6, '::1', 'nababanm71@gmail.com', 6, '2020-12-27 23:28:43', 1),
(7, '::1', 'kaelnababan1@gmail.com', 7, '2020-12-27 23:48:21', 1),
(8, '::1', 'kaelnababan1@gmail.com', 7, '2020-12-28 00:13:28', 1),
(9, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 00:13:55', 1),
(10, '::1', 'nababan\\', NULL, '2020-12-28 00:15:58', 0),
(11, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 00:16:09', 1),
(12, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 00:16:20', 1),
(13, '::1', 'kaelnababan1@gmail.com', 7, '2020-12-28 00:16:41', 1),
(14, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 00:17:26', 1),
(15, '::1', 'kaelnababan1@gmail.com', 7, '2020-12-28 00:17:46', 1),
(16, '::1', 'nababanm71@gmail.com', NULL, '2020-12-28 00:22:44', 0),
(17, '::1', 'kaelnababan1@gmail.com', 7, '2020-12-28 00:22:59', 1),
(18, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 00:23:40', 1),
(19, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 00:30:07', 1),
(20, '::1', 'kaelnababan1@gmail.com', 7, '2020-12-28 00:30:45', 1),
(21, '::1', 'kaelnababan1@gmail.com', 7, '2020-12-28 00:31:57', 1),
(22, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 00:32:11', 1),
(23, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 00:32:51', 1),
(24, '::1', 'kaelnababan1@gmail.com', 7, '2020-12-28 00:34:26', 1),
(25, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 00:44:29', 1),
(26, '::1', 'kaelnababan1@gmail.com', 7, '2020-12-28 00:47:30', 1),
(27, '::1', 'nababanm71@gmail.com\\', NULL, '2020-12-28 01:01:45', 0),
(28, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 01:01:59', 1),
(29, '::1', 'kaelnababan1@gmail.com', 7, '2020-12-28 01:06:15', 1),
(30, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 01:06:36', 1),
(31, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 02:27:19', 1),
(32, '::1', 'kaelnababan1@gmail.com', NULL, '2020-12-28 03:17:47', 0),
(33, '::1', 'nababanm71@gmail.com', 6, '2020-12-28 03:17:59', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-user', 'manage All User'),
(2, 'manage-profile', 'Manage user\'s Profile');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart_product`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1609120963, 1),
(2, '2020-10-13-103008', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1609120964, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `kode` varchar(6) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `kategori` varchar(16) NOT NULL,
  `deskripsi` text NOT NULL,
  `detail` text NOT NULL,
  `harga` varchar(16) NOT NULL,
  `gambar` varchar(32) NOT NULL,
  `gambar2` varchar(64) NOT NULL,
  `gambar3` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `kode`, `nama`, `kategori`, `deskripsi`, `detail`, `harga`, `gambar`, `gambar2`, `gambar3`) VALUES
(1, 'B22705', 'adidas ORIGINALS Sepatu 3MC Vulc Unisex Putih', 'Sepatu', 'Mengombinasikan desain skate-friendly dengan profil klasik minimalis, sepatu ini membuat Anda tampil maksimal saat bermain skate. Style sepatu yang sangat multiguna nyaman untuk digunakan bermain skate, dengan upper berbahan kanvas yang diperkuat serta outsole Geoflex yang sangat nyaman sehingga Anda dapat bergerak dengan kaki secara natural dan mendapatkan board feel terbaik.', '- Lace closure <br>\r\n- Vegan upper and jersey lining <br>\r\n- OrthoLite® sockliner <br>\r\n- Shoes made with recycled materials <br>\r\n- Rubber cupsole <br>\r\n- NOT APPLICABLE <br>\r\n- These shoes are made with Primegreen, a series of high-performance recycled materials. The upper contains 70% recycled content. <br>\r\n- SYNTHETICS', '780000', 'a03aff8977432d81da5943750626a5f1', '86f3fb0e9a17d29cd1d8c4295977f6f9', '4e49c13eeb3c2084b7f7f20f19830f51'),
(2, 'FU9609', 'adidas ORIGINALS Stan Smith Shoes Pria Putih', 'Sepatu', 'When the adidas Stan Smith Shoes stepped onto tennis courts in the \'70s, their impact could never have been predicted. But now they\'re moving with intention toward the future with a design crafted to reduce material waste. And while these shoes alone will not save the planet, they\'re a step in the right direction.', '- Lace closure <br>\r\n- Vegan upper and jersey lining <br>\r\n- OrthoLite® sockliner <br>\r\n- Shoes made with recycled materials <br>\r\n- Rubber cupsole <br>\r\n- NOT APPLICABLE <br>\r\n- These shoes are made with Primegreen, a series of high-performance recycled materials. The upper contains 70% recycled content. <br>\r\n- SYNTHETICS', '585000', '22ad5cec0eca65b1e3db45a27b1d7f92', '1ed3577600e9af2b3463f7a9cadf786f', '23000dfb6d4f1f363d0362e7e910ea93'),
(3, 'EG5201', 'adidas RUNNING Ultraboost 20 Shoes Wanita Putih', 'Sepatu', 'The best time of day is when it\'s time for your run. These adidas Ultraboost 20 Shoes are built for a memorable trip every time you lace them up. As a first step toward ending plastic waste, the foot-hugging upper is knit with yarn spun from Parley Ocean Plastic. Stitched-in reinforcement provides targeted support, and responsive cushioning gives you the comfort you need to go long.', '- Lace closure <br>\r\n- adidas Primeknit textile upper <br>\r\n- Light, supportive running shoes <br>\r\n- Responsive Boost midsole <br>\r\n- Weight: 310 g (size UK 5.5) <br>\r\n- Midsole drop: 10 mm (heel: 22 mm / forefoot: 12 mm) <br>\r\n- NOT APPLICABLE <br>\r\n- TEXTILE/SYNTHETICS', '2340000', '5b3274bc9f8251a2c303e4b630438703', '79276137a44a8c23aa2ec9b1fcdb33a6', '8015c4298cda13f7692e9a0146fd958d'),
(4, 'FW3742', 'adidas TRAINING Sepatu Strutter Pria Hitam', 'Sepatu', 'Menghadirkan kesan paling kental dari dad shoes, sepatu ini memiliki desain chunky yang membuat Anda tetap nyaman sepanjang hari. Upper dari bahan kulit lembut dihiasi dengan detail cutout, overlay, dan 3-Stripes yang khas. Dilengkapi dengan sculpted midsole high-profile dan outsole berdaya cengkeram kuat.', '- Dilengkapi tali sepatu <br>\r\n- Upper dari bahan kulit berlapis <br>\r\n- Outsole berbahan karet; Lining dari bahan tekstil <br>\r\n- Sockliner Adibouncy dari material EVA yang ringan <br>\r\n- MEDIUM ', '702000', 'c4fda799f1499cf6775196582be1e9b9', '5e1ced68b4ac0ab45abd95f1a28af695', 'acd774f62c79cccf98eea6fc41d9aec7'),
(5, 'M20324', 'adidas ORIGINALS Sepatu Stan Smith Pria Putih', 'Sepatu', 'Dibuat pada tahun 1971 untuk sang bintang tenis Stan Smith, sepatu bermodel clean-cut ini menempati posisi istimewa dalam catatan sejarah style. Upper dari bahan kulit full grain bertekstur halus dengan 3-Stripes berbentuk lubang-lubang kecil dan corak outsole yang dibuat dari bahan karet menjadikan sepatu low top ini sebagai ikon sneaker ternama.', '- Bagian lining dibuat dari bahan kulit sintetis <br>\r\n- 3-Stripes berbentuk lubang-lubang kecil <br>\r\n- Desain yang simpel dan menarik <br>\r\n- Logo di bagian heel tab <br>\r\n- Cupsole berbahan karet <br>\r\n- MEDIUM ', '1500000', 'd7003afaff3156fe4fe6434d149fc756', 'd6487336263934e902858cc310962108', 'ad72acef463c2cddd544deea0cee430a'),
(6, 'DT4823', 'adidas TRAINING Tas Selempang Linear Core Unisex Hitam', 'Tas', 'Tas selempang ini memberi Anda pilihan untuk tidak perlu menggenggam barang-barang penting Anda. Dilengkapi saku beritsleting di bagian depan untuk barang-barang kecil dan saku selip di bagian dalam untuk dompet dan ponsel Anda. Strap yang dapat disesuaikan membuat Anda dapat membawa tas dengan nyaman dalam aktivitas Anda.', '- Volume: 10,8 L <br>\r\n- 51% poliester hasil daur ulang / 49% poliester plain weave <br>\r\n- Saku depan beritsleting; Saku selip di bagian dalam <br>\r\n- Strap selempang yang dilengkapi gesper', '257400', '097d64cc7d4cad635cedcf91c95e9447', 'fdbc956a2d28c86f4148336e15ab2120', '8f07632f7269a93d5c0abc485a802de2'),
(7, 'GE1238', 'adidas NOT SPORTS SPECIFIC 3-Stripes Duffel Bag Extra Small Unis', 'Tas', 'Plan ahead for your workout. Pack your gym essentials in this adidas duffel bag. Stash your keys and phone in the zip pocket, throw the strap over your shoulder and off you go.', '- Volume: 14 litres <br>\r\n- Main and lining: 100% recycled polyester plain weave; Coating: 100% TPE lamination <br>\r\n- Duffel bag with shoulder strap <br>\r\n- Zip and mesh side pockets <br>\r\n- Adjustable shoulder straps with pad <br>\r\n- Carry handles with padded grip <br>\r\n- 100% rec polyester', '330000', '705936a0a667174209d0e4124b2fcd8c', '9252bb6ccae5c92f41b864767145d54c', 'e8d5d0ed2096971879f539a12966a6d9'),
(8, 'GD4773', 'adidas ORIGINALS Tas Festival Trefoil Unisex Hitam', 'Tas', 'Satu-satunya kekurangan dari kostum festival stylishmu adalah tidak adanya saku. Menjadi pilihan yang sulit. Anda bisa mengubah style trendi Anda atau mengabaikan saja perlengkapan esensial yang seharusnya dibawa. Solusinya? Tas adidas favorit dengan Trefoil penuh warna ini untuk melengkapi gayamu dan bisa membawa losion tabir surya dengan praktis.', '- 100% poliester oxford <br>\r\n- Tas kecil yang dilengkapi ristleting <br>\r\n- Saku beritsleting di bagian depan <br>\r\n- Strap bahu lepas-pasang jaring yang dapat disesuaikan', '156800', '80d37686559e89488c088ba097c2d982', 'f6d189da72d97644441154d0067f3b01', '7a002a0c63701efb058d96cb460a28a4'),
(9, 'GL7803', 'adidas NOT SPORTS SPECIFIC adidas Graphic Tee Wanita Hitam', 'Pakaian', 'Whether you\'re headed to the yoga studio for a morning class or enjoying a day of rest, a versatile t-shirt with effortless style is key. This crewneck is made of cotton jersey, so it\'s durable and comfortable wear after wear. The shiny adidas logo on the chest is a fresh twist on the classic tee.', '- Crewneck <br>\r\n- 100% cotton single jersey <br>\r\n- Short sleeve t-shirt <br>\r\n- Drop shoulders <br>\r\n- Shiny graphic <br>\r\n- 100% Cotton <br>', '184800', 'aea79b5c85890a2e404ca5c90e9ee41f', '1fb35f1ee4d67d141eed6d03ac20ae05', 'b95619df520556a1b18167443b54e2d1'),
(10, 'B75806', 'adidas ORIGINALS Sepatu Samba OG Pria Putih ', 'Sepatu', 'Diciptakan untuk sepak bola indoor, Samba menjadi ikon street style yang tak lekang oleh waktu. Sepatu ini tetap mempertahankan warisannya dengan upper kulit lembut dan overlay berbahan suede.', '- Menggunakan tali sepatu <br>\r\n- Upper berbahan kulit full grain dengan suede bertekstur dan detail gold foil <br>\r\n- Bagian lining dibuat dari bahan kulit  sintetis; Cupsole berbahan karet gum <br>\r\n- Outsole berbahan karet gum <br>\r\n- NOT APPLICABLE', '1600000', '14819b9a1293d05298ac943334b0137b', '737eaec58f8420148f9942cb8c823130', '737eaec58f8420148f9942cb8c823130'),
(11, 'FV8328', 'adidas RUNNING Sepatu Ultraboost 20 Pria Hitam', 'Sepatu', 'Sambut perubahan. Mulai siklus latihan baru Anda dengan sepatu running adidas yang siap untuk sesi lari jarak jauh ini. Upper dari bahan rajut yang fleksibel terasa pas di kaki, memberikan topangan di bagian yang Anda perlukan tanpa membebani langkah Anda. Benang tenun pada sepatu ini diambil dari limbah plastik yang dikumpulkan dari wilayah pesisir dan pantai. Sambut perubahan dan jadilah pemimpin perubahan itu.', '- Menggunakan tali sepatu <br>\r\n- Upper adidas Primeknit berbahan tekstil <br>\r\n- Sepatu running yang ringan dan suportif <br>\r\n- Midsole Boost yang responsif <br>\r\n- Berat: 309 g (ukuran UK 8,5) <br>\r\n- Midsole drop: 10 mm (tumit: 22 mm / forefoot: 12 mm) <br>\r\n- NOT APPLICABLE', '2340000', 'a2d05469a2eb630630eb908c25f8795d', '588027160a7400a9b228461f413fa206', '15c5909f406eb3597d3dd4de229a8088'),
(12, 'FV9888', 'adidas ORIGINALS Sepatu 3MC Slip x Disney Sport Goofy Unisex Put', 'Sepatu', 'Lahir untuk skate park, dikreasikan ulang untuk aktivitas sehari-hari. Sepatu adidas 3MC ini memiliki desain slip on yang mudah dipakai sehingga Anda dapat bergegas memulai aktivitas tanpa kehilangan ritme semangat. Karena ada begitu banyak aktivitas yang harus dilakukan, dan tapak dengan daya cengkeram yang kuat menjadikan sepatu ini wajib dimiliki.', '- Konstruksi slip-on <br>\r\n- Upper berbahan suede <br>\r\n- Adituff di bagian jari dengan keunggulan abrasion-resistant <br>\r\n- Sepatu skate-inspired dengan motif dari Disney <br>\r\n- Tread Geof \r\nlex yang kesat dan fleksibel <br>\r\n- MEDIUM', '1000000', '04130b6b0cc00a06a15530ee498142cd', '3a1195f8a6a644bea7b71b9505689252', '3a1195f8a6a644bea7b71b9505689252'),
(13, 'EG2659', 'adidas TRAINING Sepatu Roguera Pria Hitam', 'Sepatu', 'Rasakan kekuatan tren fitness di era 80-an. Sepatu ini menghadirkan sepatu klasik dengan model yang lebih modern, serta nyaman dan stylish untuk aktivitas sepanjang hari. Dilengkapi upper dari material kulit yang dilapisi dan midsole twin-cup ikonik untuk memberikan pantulan maksimal dalam langkah Anda.', '- Dilengkapi tali sepatu <br>\r\n- Upper dari bahan kulit berlapis <br>\r\n- Outsole berbahan karet; Lining dari bahan tekstil <br>\r\n- Midsole berbahan EVA yang ringan; Sockliner Adibouncy dari bahan EVA yang ringan <br>\r\n- MEDIUM', '900000', 'b60ef712beb1a9d9601f813d0ff1a787', 'ae99e0ef49ccc30c78a4188d8240944d', '582d94fddcfa23c1c8479cd060e72743'),
(14, 'FU9520', 'adidas ORIGINALS Superstar Shoes Pria Hitam', 'Sepatu', 'Walk on in harmony. Show the world what you stand for when you lace into these adidas Superstar Shoes. Celebrating inclusivity, the 3D Trefoil shows off six colours that combine to create every colour we see in the world, a representation of the beauty and power of togetherness.', '- Lace closure <br>\r\n- Leather upper <br>\r\n- Moulded sockliner <br>\r\n- Colourful shell-toe shoes <br>\r\n- Rubber cupsole <br>\r\n- NOT APPLICABLE <br>\r\n- COATED LEATHER/LEATHER', '1248000', '2d7e126a6c9712c20209dd25b74b5bbf', '2d7e126a6c9712c20209dd25b74b5bbf', '62bd926c2f2a1cc8969edd94d2c0f493'),
(15, 'FU9787', 'adidas ORIGINALS Continental 80 Shoes Pria Putih', 'Sepatu', 'The smallest impact can start a ripple. And that ripple, however small, is still movement. While these adidas Continental 80 Shoes can\'t alone save the planet, they are a step toward a better future. Crafted to reduce material waste, these shoes were designed to start a ripple. Let\'s see what we can happen when you put these on.', '- Lace closure <br>\r\n- Vegan upper with 100% recycled polyester lining <br>\r\n- OrthoLite® sockliner <br>\r\n- Vegan street shoes <br>\r\n- Algae-based EVA foam midsole: This pair of shoes features an algae-based EVA foam that helps clean at least 30 litres of polluted lake water <br>\r\n- MEDIUM <br>\r\n- These shoes are made with Primegreen, a series of high-performance recycled materials. The upper contains 70% recycled content. <br>\r\n- SYNTHETICS', '1248000', '55d24c368381b6bfdf90ce54f71abb4f', '55d24c368381b6bfdf90ce54f71abb4f', '55d24c368381b6bfdf90ce54f71abb4f'),
(16, 'EG0758', 'adidas RUNNING Sepatu Ultraboost 20 Pria', 'Sepatu', 'Hari baru. Aktivitas lari yang baru. Maksimalkan kemampuan Anda. Sepatu beperforma tinggi ini memiliki upper dari bahan rajut yang menyesuaikan dengan gerakan kaki Anda. Jahitan penguat ditempatkan secara presisi untuk memberikan Anda topangan di bagian yang paling Anda butuhkan. Material elastane lembut di bagian tumit membuat sepatu lebih nyaman dan pas di kaki. Bantalan yang responsif mengembalikan energi dalam setiap langkah Anda yang menghasilkan sensasi I-could-run-forever.', '- Menggunakan tali sepatu <br>\r\n- Upper adidas Primeknit+ dari bahan tekstil <br>\r\n- Tailored Fibre Placement yang menghasilkan locked-in fit <br>\r\n- Sepatu running beperforma tinggi <br>\r\n- Midsole Boost yang responsif <br>\r\n- Berat: 310 g (ukuran UK 8,5) <br>\r\n- Midsole drop: 10 mm (tumit 22 mm / forefoot 12 mm) <br>\r\n- NOT APPLICABLE', '1680000', '219904b9f7da01e42267b79acc2241b2', '7f6b6e340dcbcde4dabea8e6c9c5b621', '12b3d97a567ba96b39b63d951304d2f5'),
(18, 'FL4617', 'adidas TRAINING Tee FreeLift Sport Ultimate Heather Pria Ungu', 'Pakaian', 'Bergerak dengan mudah selama sesi angkat beban Anda. T-shirt ini menawarkan sensasi berkontur yang suportif sehingga Anda dapat bergerak dengan bebas dan membuat kaos tidak mudah tersingkap saat melakukan gerakan overhead. Dibuat dari kain dengan keunggulan sweat-sweeping untuk membuat Anda tetap kering, tee ini memiliki keliman yang diubah posisinya untuk mengurangi lecet selama sesi latihan Anda.', '- Crewneck <br>\r\n- Lengan model raglan <br>\r\n- 100% poliester single jersey <br>\r\n- Kain elastis dan tahan lama <br>\r\n- Kelim miring dengan bagian belakang lebih panjang', '257400', 'e0217d37f7366a25502eb6576a71b3f2', 'd259a025ff38087d5b65cba81806cb66', '226689b0bf22fbc734eea79d93d08397'),
(19, 'DU0473', 'adidas NOT SPORTS SPECIFIC Track Jacket Essentials 3-Stripes Pri', 'Pakaian', 'Tampil dengan hoodie sport-inspired yang nyaman di antara sesi olahraga Anda. Hoodie ini dihiasi 3-Stripes klasik berwarna kontras yang memanjang di bagian bahu dan lengan serta logo adidas samar di bagian dada. Track jacket yang lembut ini dibuat dari kain katun dan poliester French terry yang hangat.', '- Lengan panjang dengan manset berusuk <br>\r\n- 70% katun / 30% poliester French terry daur ulang <br>\r\n- Saku kanguru; Full zip; Tali tarik di bagian tudung <br>\r\n- Kami bermitra dengan Better Cotton  Initiative untuk meningkatkan budi daya kapas secara global', '624000', 'f3d049622960a53492d2b713fe8e32dc', '03fe2f619b8b9d4ec198ce5725483660', 'd941153c656474ab100b17b222859137'),
(20, 'DU1592', 'adidas TRAINING Celana Pendek 4KRFT Sport Badge of Sport Pria Hi', 'Pakaian', 'Tambah volume dan intensitas pada aktivitas squat dan leg press Anda. Celana pendek yang elastis ini dibuat dari kain dengan keunggulan moisture-wicking yang membuat Anda tetap kering selama aktivitas olahraga Anda. adidas Badge of Sport berukuran besar menghiasi bagian kaki.', 'Tambah volume dan intensitas pada aktivitas squat dan leg press Anda. Celana pendek yang elastis ini dibuat dari kain dengan keunggulan moisture-wicking yang membuat Anda tetap kering selama aktivitas olahraga Anda. adidas Badge of Sport berukuran besar menghiasi bagian kaki.', '450000', 'f8d2e499fc7f2136c6a377596df40a60', 'd12e711ce85eaece9edb6849b46c72bd', '2a37b102b5b2efea153473b42331783a'),
(21, 'DQ2645', 'adidas RUNNING Celana Pendek Marathon 20 Wanita Hitam', 'Pakaian', 'Style retro dengan performa yang ditingkatkan. Celana pendek running ini dibuat dari kain breathable yang cepat kering untuk menunjang aktivitas Anda dalam cuaca yang panas. Desain slim fit dan pinggang model high-rise menawarkan perlindungan yang tidak mudah tersingkap saat Anda beraktivitas.   Stay dry Climacool membuat Anda tetap merasa sejuk dan kering dalam cuaca yang panas Reflektivitas menyeluruh Reflektivitas 360 derajat', '- High rise <br>\r\n- Celana pelapis di bagian dalam <br>\r\n- Celana Pendek: 56% poliester daur ulang / 44% poliester plain weave; Celana pelapis di bagian dalam: 54% poliester / 46% poliester single jersey daur ulang <br>\r\n- Kain yang lembut dan elastis <br>\r\n- Ventilasi Climacool; Tali tarik pada karet pinggang yang elastis <br>\r\n- Reflektivitas 360 derajat', '351000', 'c3c06bff73164f5504d11ba1856f1a9c', '55ad00251587c67e7c758607a281b8e0', '30af4c1eec6f8c2c15d0580c7eecd5a6'),
(22, 'FM6928', 'adidas RUNNING Jaket Hooded Wind Own the Run Wanita Hitam', 'Pakaian', 'Soal cuaca, tidak perlu khawatir. Jaket adidas ini dilengkapi lapisan water-repellent sehingga Anda tetap dapat berlari melewati angin dingin yang kencang dan hujan ringan. Reflektivitas di semua sisi membantu Anda tetap terlihat dalam kondisi yang kurang memungkinkan. Pakai jaket Anda dan mulailah berlari.', '- Ritsleting penuh dengan tudung bertali tarik <br>\r\n- 100% poliester dobby hasil daur ulang <br>\r\n- Lapisan water-repellent yang bebas PFC <br>\r\n- Jaket lari bertudung yang melindungi dari angin dan hujan <br>\r\n- Saku di bagian depan dengan satu saku sweat-guard <br>\r\n- Reflektivitas 360 derajat <br>\r\n- Jaket ini dibuat dari poliester hasil daur ulang untuk menghemat sumber daya dan mengurangi emisi', '800000', '7d0f58d4ed8060da1c80eb277a08418f', '3302e99f9eaaa40832203c1bdc4c8f3d', '1d923718bd9a30b03e96f1606463b13b'),
(23, 'FJ7271', 'adidas TRAINING Tank Top Primeblue Wanita Biru', 'Pakaian', 'Bukan tentang apa yang Anda lakukan, namun cara Anda melakukannya. Dan pakaian bukan hanya tentang fiturnya, namun juga cara pembuatannya. Tank top olahraga ini dibuat dengan benang tenun Parley Ocean Plastic® yang berasal dari limbah plastik yang didaur ulang. Lembut dan elastis, sehingga Anda dapat berfokus untuk memaksimalkan setiap pose dan gerakan.', '- Bagian leher berdesain bundar <br>\r\n- 85% poliester hasil daur ulang, 15% elastane interlock <br>\r\n- Tank top berlapis <br>\r\n- AEROREADY yang menyerap kelembapan <br>\r\n- Kelim lengkung <br>\r\n- Tank top ini dibuat dari poliester daur ulang untuk menghemat sumber daya dan mengurangi emisi', '308000', '0351a3bea2f537dd5ad72ee12a32a312', '55334fa28df016111afd7cb296c9356a', 'd300ec412f2f8b7eb03347dcbeae1623'),
(24, 'FR8288', 'adidas NOT SPORTS SPECIFIC Jaket adidas W.N.D. Primeblue Pria', 'Pakaian', 'Cuaca di musim semi cenderung berubah-ubah. Terkadang terik dalam sekejap, lalu langsung berubah berangin dan gerimis. Jaket adidas W.N.D. melindungi Anda dengan lapisan water-repellent dan tudung dengan lining mesh untuk mempertahankan style rambut Anda. Kelebihan lainnya: Jaket ini dibuat dari sampah plastik lautan yang didaur ulang, artinya Anda akan tetap merasa kering sekaligus menjaga kelestarian bumi.  ', '- Full zip dengan tudung yang dilengkapi lining berbahan mesh <br>\r\n- 100% poliester plain weave hasil daur ulang <br>\r\n- Jaket bertudung dengan sisipan berbahan mesh <br>\r\n- Saku di keliman samping <br>\r\n- Sisipan berbahan mesh pada lengan bagian dalam <br>\r\n- Kelim dengan bungee untuk menyesuaikan fit <br>\r\n- Jaket ini dibuat dari poliester hasil daur ulang untuk menghemat sumber daya dan mengurangi emisi', '672000', '4d538ed623d2e16c3dffe3f43f49656f', 'b01ceb09352714798b13e6009f56599d', '89a6b80864d71295e0e3144ad8a09276'),
(25, 'GD3868', 'adidas NOT SPORTS SPECIFIC Brilliant Basics Pants Pria Hitam', 'Pakaian', 'Revel in your post-workout glow in these adidas track pants. They\'re soft and comfortable enough for wearing anytime. Ankle cuffs help highlight your choice of shoes.', '- Drawcord on elastic waist <br>\r\n- 68% cotton, 32% recycled polyester French terry <br>\r\n- Versatile track pants <br>\r\n- Cuffs <br>\r\n- 68% Cotton/32% rec polyester', '468000', 'db24d4c238d54f4e9168a5a345dd47a4', '988f777f09d921c5c68bb22b68e362cd', '463e98738721f76c685d3b34cf3ecd92'),
(26, 'GE0839', 'adidas ORIGINALS 3D Trefoil 3-Stripes Track Pants Pria Hitam', 'Pakaian', 'Getting dressed? Don\'t sweat it. Save yourself the effort with these adidas track pants. Originally built for comfort on the sidelines, they\'ve stepped quite a ways off of them since the \'70s. Stages. Crowds. Streets. It would almost be weird if you didn\'t see some version of the iconic style in your everyday moves. But you can still make the look your own. Because no matter what you\'re wearing, it\'s all you.', '- Elastic waist with drawcord <br>\r\n- 100% recycled polyester ripstop <br>\r\n- Mesh lined <br>\r\n- Casual track pants <br>\r\n- Front pockets <br>\r\n- Elastic hems <br>\r\n- 3D Trefoil badge', '616000', '6e8513216aa2297e271f1ffc2fcdc143', 'ed14249866eac0a7e7e47978785d35b0', '745e6763751a0f28b1105e6375402820'),
(27, 'FS9833', 'adidas RUNNING Celana Ketat 3/4 Own the Run Wanita Hitam', 'Pakaian', 'Anda berlari bukan untuk mendapatkan t-shirt tanda peserta. Anda berlari bukan untuk eksistensi di media sosial. Yang Anda butuhkan hanyalah kepuasan dalam diri Anda sendiri. Celana ketat adidas ini memiliki stay-put fit dan lutut pre-shaped untuk menghasilkan gerakan yang nyaman, sehingga Anda dapat menaiki tangga dan bukit serta melompati genangan air dengan mudah.', '- Tali tarik pada karet pinggang yang elastis <br>\r\n- 55% poliester hasil daur ulang, 28%  poliester, 17% elastane doubleknit <br>\r\n- Celana ketat running model crop <br>\r\n- AEROREADY yang menyerap kelembapan <br>\r\n- Detail reflektif <br>\r\n- Bagian lutut dengan model pre-shape', '600000', '6cf136b850f6d4b81faa2f4e534f5086', 'c1d6b9f6b7fd54947a8a1c6774cb8de7', 'b185beedd2a66aaa2da09f7beae11455'),
(28, 'GL7295', 'adidas TRAINING HEAT.RDY Training Tee Pria', 'Pakaian', 'You can\'t do sprints in a walk-in freezer. You can\'t lift weights on ice. You can\'t do burpees in the frozen food section. The truth is, it\'s going to be hot out there, but this adidas HEAT.RDY Training Tee is built to handle it. Soft, breathable material absorbs moisture to keep you dry and feeling motivated, not defeated. Ventilation in key sweat zones keeps the air flowing so you stay cool.', '- Crewneck <br>\r\n- 100% recycled polyester doubleknit <br>\r\n- Breathable training t-shirt <br>\r\n- Breathable, air-cooling HEAT.RDY <br>\r\n- Side slits on hem <br>\r\n- Zoned ventilation areas', '585000', '92003df52dfe4db1cfcdb952f387506c', 'b0e589225101cdabd4a32c2e1386049b', 'ffcf935a4ffb5f5d455f0aec1dcbb4bf'),
(29, 'GD4545', 'adidas ORIGINALS Adicolor Classic Backpack Unisex Hitam', 'Tas', 'Be ready for anything. This adidas backpack has the space you need for your on-the-go life. Stash bulky items in the main compartment, then slip your phone into the front pocket. Even your water bottles have a place to call home.', '- Volume: 24 L <br>\r\n- 100% polyester oxford <br>\r\n- Trefoil backpack <br>\r\n- Front zip pocket <br>\r\n- Side water bottle pockets <br>\r\n- Padded adjustable shoulder straps <br>\r\n- 100% Polyester', '468000', 'b36a1771469a449d0779dc69102d9caa', 'bc8075032c1b8110eed1f29f41bc491c', '189b2524390fc05c1ece5ab4905c5ea3'),
(30, 'DZ9020', 'adidas TRAINING Tas Ransel Parkhood Unisex Hitam', 'Tas', 'Bawa semua perlengkapan Anda menggunakan tas ransel dengan banyak ruang penyimpanan ini. Banyaknya saku dan sekat di bagian dalam membantu Anda untuk menyimpan barang-barang dengan rapi. Tas ini memiliki lapisan di bagian base yang membuat tas ini lebih awet. Nyaman dibawa dengan strap bahu berlapis busa.', 'Bawa semua perlengkapan Anda menggunakan tas ransel dengan banyak ruang penyimpanan ini. Banyaknya saku dan sekat di bagian dalam membantu Anda untuk menyimpan barang-barang dengan rapi. Tas ini memiliki lapisan di bagian base yang membuat tas ini lebih awet. Nyaman dibawa dengan strap bahu berlapis busa.', '429000', '727c7e06b8026fc7ac3cda7d969c0258', '71ed329d40382a74cb5b2c2c9e3c7505', 'c7629ffaa13010ffa9f7dc35fa9052be'),
(31, 'FM6768', 'adidas NOT SPORTS SPECIFIC Tas Ransel Classic Metallic Ekstra Ke', 'Tas', 'Desain dramatis? Tentu ada pada tas ransel dari adidas ini. Tampilan metalik yang berkilau tampak menonjol ke mana pun Anda membawanya. Kecil namun dengan tempat penyimpanan yang lega untuk perlengkapan sehari-hari, tas berkarakter ini mampu melakukan semuanya.', '- Volume: 15,5 L <br>\r\n- 100% nilon ripstop <br>\r\n- Sentuhan akhir berupa kilau yang menawan <br>\r\n- Tas ransel ekstra kecil <br>\r\n- Saku beritsleting di bagian depan <br>\r\n- Saku di bagian samping <br>\r\n- Strap bahu yang dapat disesuaikan', '212800', 'c8e117a467171b606f1a944057e3a432', 'b0902ad2dd23e8a1755391756df4d78c', '40635c6a4b1766179532e307418fbf14'),
(32, 'DU6795', 'adidas ORIGINALS Tas Map Unisex Hitam', 'Tas', 'Anda tidak lagi memerlukan saku karena tas yang stylish dan praktis ini dapat menampung kunci, uang tunai, dan ponsel Anda. Dibuat dari material yang kokoh dan berat dengan klip gesper untuk menempatkan barang sesuai dengan kebutuhan Anda. Strap yang dapat disesuaikan memungkinkan Anda untuk menggunakan tas di pinggang atau di bahu.', '- 100% 900D poliester plain weave <br>\r\n- Flap di bagian atas dengan gesper klip <br>\r\n- Strap yang dapat disesuaikan', '196000', 'bed0c657c719cca7eed41ebeb2fc399b', '7ad6aa04749e94159f5a016d48bfec93', '16646d8dd395eb9ece2b1f85c3366d1c'),
(33, 'FU1114', 'adidas TRAINING Tas Duffel Tiny Unisex', 'Tas', 'Cocok untuk tempat kunci atau uang tunai, Tas Duffle Tiny dari adidas ini merupakan produksi ulang dengan style yang sama persis dengan ukuran normalnya. Simpan barang-barang berukuran sangat kecil di tas dengan desain ritsleting yang simpel ini, lalu kaitkan karabinernya ke tas ransel atau lubang ikat pinggang Anda. Atau, jika Anda cukup percaya diri, mengapa tidak dengan tas duffel ini?', '- 100% poliester plain weave hasil daur ulang <br>\r\n- Tas duffel mini <br>\r\n- Tali pegangan di bagian atas', '180000', '8f64bcc767d40a1ea340818f8a7ce419', '4d7c1a5b173eaa4c0c94827a4ea8545f', '5fd46a7008e2a5bffd1f8180582e6e8e'),
(34, 'GG1027', 'adidas TRAINING Tas Ransel Graphic Power Anak Unisex', 'Tas', 'Sebelum si kecil berangkat dengan bus sekolah, pastikan ia telah mempersiapkan semua yang diperlukan. Tas ransel anak dari adidas ini didesain untuk keseharian di sekolah maupun aktivitas libur musim panas. Bekali si kecil dengan botol minuman dan snack tengah hari di saku mesh, dan mereka siap untuk berangkat.', '- Volume: 12 L <br>\r\n- 100% poliester plain weave hasil daur ulang <br>\r\n- Tas ransel dengan grafis menyeluruh <br>\r\n- Saku beritsleting di bagian depan dan saku mesh di bagian samping <br>\r\n- Strap bahu dengan bahan air mesh <br>\r\n- Strap dada dengan kait penyesuai', '507000', 'dcb718400f2aa3bc80ed44d1b6f48423', '9efcfb9836da1cf351839961fb689e23', 'bbd109dc525e3c9b2da8b4a2c0c1a560'),
(35, 'GD5511', 'adidas ORIGINALS Goofy Shopper Bag Unisex Hitam', 'Tas', 'You and Goofy have a lot in common, or at least you have an appreciation for the same activities. Off to the rock gym or headed to karate class? Take your favourite Disney character with you. This versatile adidas shopper bag is an easy go-to, whether you\'re packing a climbing harness or your black belt.', '- 100% cotton plain weave <br>\r\n- Graphic tote bag <br>\r\n- Allover print <br>\r\n- ©Disney <br>\r\n- 100% Cotton', '296400', 'e01d8c8e47b9989e864c594b326a53b8', '22a0fbcae0cd66c5875aad729e9c945b', '7f419f21e72cb706eb659396a252db2c'),
(36, 'GD8978', 'adidas TRAINING Tas Sepatu Pria', 'Tas', 'Berikan sesuatu yang layak untuk sepatu Anda. Gunakan Tas Sepatu adidas ini untuk melindungi, menyimpan, dan membawa sepatu favorit Anda. Selipkan tas yang ramping ini dengan mudah ke dalam tas gym, koper, atau lemari pakaian. Pegangan di bagian atas membuat Anda dapat membawa tas dengan mudah dan melanjutkan perjalanan.', '- Volume: 15 L <br>\r\n- 60% poliester, 40% poliester dobby hasil daur ulang <br>\r\n- Kain CORDURA® dengan keunggulan tahan goresan dan water-resistant <br>\r\n- Tas sepatu yang awet <br>\r\n- Kompartemen utama yang dilengkapi ritsleting <br>\r\n- Tali pegangan di bagian atas', '250000', '7db5da5fc94e11e0543dbe40e1701480', '39b7c964c5efd5586072bd017368db68', '7b2128875fd68fcd380eb43cc6a60225'),
(37, 'FJ9352', 'adidas TRAINING Duffel Bag 4ATHLTS Medium Unisex Hitam', 'Tas', 'Anda tidak dapat menyembunyikan gelora kemenangan. Bangga membawa perlengkapan Anda dengan memilih duffel bag adidas ini. Warna sporty klasik dipadukan dengan bisban tenun menarik dengan kesan atletik kuat yang membuat Anda tampak mencolok ke mana pun tujuan Anda.', '- Volume: 37,25 L <br>\r\n- 100% poliester plain weave hasil daur ulang <br>\r\n- Duffel bag berukuran medium <br>\r\n- Saku beritsleting di bagian samping <br>\r\n- Kompartemen utama yang dilengkapi ristleting dan saku di bagian dalam <br>\r\n- Kompartemen berventilasi di bagian luar untuk sepatu', '600000', '9b8f6678b3660a13d1980f109ffca548', '11cb9d9654877de748d36694dae477a3', '9330de11acb0578d8a73d1cb66d4398e'),
(38, 'FP8073', 'adidas TRAINING Topi Baseball WIND.RDY Unisex Hitam', 'Topi', 'Lebih dari sekedar cuaca buruk untuk membuat Anda mengubah rencana. Pakai topi ripstop adidas yang dibuat dari bahan dengan keunggulan wind-resistant dan water resistant ini sehingga Anda beraktivitas dengan percaya diri. Bagaimana pun prakiraan cuacanya, taklukkan hari dengan style sporty dan tetap terlindungi.', '- 100% poliester ripstop hasil daur ulang <br>\r\n- Sensasi lembut <br>\r\n- Topi baseball dengan keunggulan weather-resistant <br>\r\n- WIND.RDY dengan keunggulan wind-resistant dan water repellent <br>\r\n- Brim dan crown dengan model medium-curve <br>\r\n- Sweatband dengan lapisan busa', '300000', '5f3f9c345cd5288f65356018b59b64aa', 'fa0429c92ac9b0d205c8887cb62d89f6', '82b9d504e08b03031b9367aa79b4ca9d'),
(39, 'GD5510', 'adidas ORIGINALS Goofy Granddad Cap Unisex Hitam', 'Topi', 'Everyone feels down sometimes. When you need a reminder to look on the brighter side of things, reach for this adidas cap. No matter how old you are, Disney\'s Goofy is a good reminder to take life a little less seriously sometimes.', '- 100% nylon plain weave <br>\r\n- Cartoon character cap <br>\r\n- Flat brim <br>\r\n- Snapback closure <br>\r\n- Woven badge <br>\r\n- 100% Polyamide ', '240800', 'c93c045807d137c8d1a560676182564b', 'd0f5217a2ddad1e2b840998a3e64089f', '7837205f0f6109ee9f868c27ab88aedd'),
(40, 'FK0894', 'adidas TRAINING Topi Baseball 3-Stripes Twill Unisex Hitam', 'Topi', 'Sama seperti permainan baseball itu sendiri, topi baseball ini semakin stylish, berkarakter, dan menarik. Pembaruan yang fresh ini menghadirkan sensasi yang lembut dan perlindungan terintegrasi terhadap UV pada desain topi klasik. Tunjukkan kebanggaan Anda pada 3-Stripes, kini dengan corak adidas Badge of Sport.', '- 100% katun kepar <br>\r\n- Sensasi lembut <br>\r\n- Topi berlogo dengan fit yang dapat disesuaikan <br>\r\n- Brim dan crown dengan model medium-curved <br>\r\n- Sweatband dengan lapisan busa <br>\r\n- Faktor perlindungan terhadap UV 50', '250000', '9acc866f43e0f3b1c06d9e12d99a3e3f', '7a9bf6110b4337a6d48d0270c40753f8', 'be2c42d97bd31ddf00ce0ef9b99b832d'),
(41, 'FQ5411', 'adidas TRAINING Topi Baseball 3-Stripes Twill Unisex Putih', 'Topi', 'Sama seperti permainan baseball itu sendiri, topi baseball ini semakin stylish, berkarakter, dan menarik. Pembaruan yang fresh ini menghadirkan sensasi yang lembut dan perlindungan terintegrasi terhadap UV pada desain topi klasik. Tunjukkan kebanggaan Anda pada 3-Stripes, kini dengan corak adidas Badge of Sport.', 'Sama seperti permainan baseball itu sendiri, topi baseball ini semakin stylish, berkarakter, dan menarik. Pembaruan yang fresh ini menghadirkan sensasi yang lembut dan perlindungan terintegrasi terhadap UV pada desain topi klasik. Tunjukkan kebanggaan Anda pada 3-Stripes, kini dengan corak adidas Badge of Sport.', '250000', 'c7582c8c1999e7ff0e9fd52d7b6983f9', '54d42b3b627c1d9eda4480c717355e6d', 'fd0a950b8f53c4dc5ada8f25de2bd33a'),
(42, 'GD4440', 'adidas ORIGINALS Topi Snapback Trefoil Unisex Biru', 'Topi', 'Tunjukkan kebanggaan Anda pada adidas. Topi dengan flat-brim ini menunjukkan style sejati dari adidas Originals melalui bordir Trefoil berukuran besar di bagian depan. Dibuat agar nyaman digunakan, dengan konstruksi katun yang elastis dan penutup snapback yang dapat disesuaikan.', 'Tunjukkan kebanggaan Anda pada adidas. Topi dengan flat-brim ini menunjukkan style sejati dari adidas Originals melalui bordir Trefoil berukuran besar di bagian depan. Dibuat agar nyaman digunakan, dengan konstruksi katun yang elastis dan penutup snapback yang dapat disesuaikan.', '296400', '4e96a1829535ce1febcb92814b6ad290', '2eddad0b913cee1dd6238142147925ff', 'ca7e47b8328a7f4daf1b016d13825890'),
(43, 'FK0890', 'adidas TRAINING Topi Baseball Unisex Putih', 'Topi', 'Sempurnakan style Anda dengan Topi Baseball klasik ini. Dibuat khusus untuk cuaca yang terik, kain yang lembut pada topi ini melindungi Anda dari sinar matahari. adidas Badge of Sport menghiasi bagian tengah depan.', '- 100% poliester plain weave <br>\r\n- Sensasi lembut dan ringan <br>\r\n- Topi berdesain klasik dengan fit yang dapat disesuaikan <br>\r\n- Faktor perlindungan terhadap UV 50 <br>\r\n- Sweatband dengan lapisan busa <br>\r\n- Crown dan visor dengan model medium-curve', '250000', '6d010fbba2d0706d87f0fd696ca57336', '5ef85629fbcabe15beaa622013f53d60', '3dbd5f7c7ece6dc819eca2bc141689a9'),
(44, 'FK0889', 'adidas TRAINING Topi Baseball WIND.RDY Unisex', 'Topi', 'Lebih dari sekedar cuaca buruk untuk membuat Anda mengubah rencana. Pakai topi ripstop adidas yang dibuat dari bahan dengan keunggulan wind-resistant dan water resistant ini sehingga Anda beraktivitas dengan percaya diri. Bagaimana pun prakiraan cuacanya, taklukkan hari dengan style sporty dan tetap terlindungi.', '- 100% poliester ripstop hasil daur ulang <br>\r\n- Sensasi lembut <br>\r\n- Topi baseball dengan keunggulan weather-resistant <br>\r\n- WIND.RDY dengan keunggulan wind-resistant dan water repellent <br>\r\n- Brim dan crown dengan model medium-curve <br>\r\n- Sweatband dengan lapisan busa', '300000', 'fe7f8156e5950274db44bd23a4ef9e0f', '46bf7a6b0459536b42c1849397755881', 'e3f8b06c7cd1486b816ba08481ac502a'),
(45, 'FW2545', 'adidas RUNNING Lite Racer 2.0 Shoes Anak Unisex Hitam', 'Anak', 'They can rep their love of all things Pokémon™ in these kids\' adidas shoes. A fun, speedy graphic complements the running-inspired style. Soft cushioning comforts fast-moving Pikachu-like steps at recess.', '- Lace closure <br>\r\n- Mesh upper with Pokémon™ graphic\r\n\r\n- Soft, cushioned feel\r\n<br>\r\n- Shoes with Pokémon™ graphic\r\n\r\n- Textile lining\r\n<br>\r\n- MEDIUM\r\n<br>\r\n- TEXTILE/SYNTHETICS', '296800', '93c243916119ea20ec532fe52a739104', 'cf976f9a0ba44974af16063770fa73c6', 'e3f7608db4ece2c2e02a234a13144d76'),
(46, 'EG4089', 'adidas RUNNING Sepatu Tensaurus Anak Unisex Putih', 'Anak', 'Si kecil akan siap bermain dengan sepatu untuk anak yang dibuat untuk aktivitas di dalam dan di luar ruangan. Outsole dari bahan karet non-marking menghasilkan daya cengkeram yang luar biasa di lantai gym. Upper lembut dari material coated-leather dengan strap buka-tutup yang mudah serta 3-Stripes tanpa jahitan untuk tambahan tampilan yang sporty.', '- Strap penutup model rekat <br>\r\n- Upper dari bahan kulit berlapis <br>\r\n- Outsole berbahan karet; Lining dari bahan tekstil <br>\r\n- MEDIUM', '351000', '6fa0940328e1be52ea83ec9806bd492d', 'b60495a4a47c5be25c876b67fc1c6f00', '5f1c88daf3b6ac99d3576e0be7dc4cb4'),
(47, 'EF1094', 'adidas RUNNING Sepatu Tensaurus Anak Unisex Hitam', 'Anak', 'Si kecil akan siap bermain dengan sepatu untuk anak yang dibuat untuk aktivitas di dalam dan di luar ruangan. Outsole dari bahan karet non-marking menghasilkan daya cengkeram yang luar biasa di lantai gym. Upper lembut dari material coated-leather dengan strap buka-tutup yang mudah serta 3-Stripes tanpa jahitan untuk tambahan tampilan yang sporty.', '- Strap penutup model rekat <br>\r\n- Upper dari bahan kulit berlapis <br>\r\n- Outsole berbahan karet; Lining dari bahan tekstil <br>\r\n- MEDIUM', '351000', 'e07b88459687620d1e6f16e3db996e84', '24bea2cc0fb0dcabbb4c6f74e50dc0fc', 'e9374c663b9b3938a1f2cfecc1828494'),
(48, 'GG1027', 'adidas TRAINING Tas Ransel Graphic Power Anak Unisex', 'Anak', 'Sebelum si kecil berangkat dengan bus sekolah, pastikan ia telah mempersiapkan semua yang diperlukan. Tas ransel anak dari adidas ini didesain untuk keseharian di sekolah maupun aktivitas libur musim panas. Bekali si kecil dengan botol minuman dan snack tengah hari di saku mesh, dan mereka siap untuk berangkat.', '- Volume: 12 L <br>\r\n- 100% poliester plain weave hasil daur ulang <br>\r\n- Tas ransel dengan grafis menyeluruh <br>\r\n- Saku beritsleting di bagian depan dan saku mesh di bagian samping <br>\r\n- Strap bahu dengan bahan air mesh <br>\r\n- Strap dada dengan kait penyesuai', '507000', 'dcb718400f2aa3bc80ed44d1b6f48423', '9efcfb9836da1cf351839961fb689e23', 'bbd109dc525e3c9b2da8b4a2c0c1a560'),
(49, 'GG1035', 'adidas TRAINING Power Backpack Anak Unisex Hitam', 'Anak', 'For long school days and busy weekends, you need to be ready for all of your activities. Keep books, workout clothes and electronics organised in this juniors\' adidas backpack. Airy mesh on the shoulder straps ensures you stay comfortable when you\'re racing to practise before your coach marks you late.', '- Volume: 18.25 L <br>\r\n- 100% recycled polyester plain weave <br>\r\n- Backpack with compression straps <br>\r\n- Front zip pocket and side mesh pockets <br>\r\n- Air mesh on shoulder straps <br>\r\n- Chest strap with hook closure', '700000', 'a4c0fa7f357c0e98b4bffe661d9b856f', '2309d1e5f58472c7f5de37f4d8bd5fea', '1438f70002b19ce0a345659874f625c7'),
(50, 'GG1028', 'adidas TRAINING Tas Ransel Graphic Power Anak Unisex', 'Anak', 'Sebelum si kecil berangkat dengan bus sekolah, pastikan ia telah mempersiapkan semua yang diperlukan. Tas ransel anak dari adidas ini didesain untuk keseharian di sekolah maupun aktivitas libur musim panas. Bekali si kecil dengan botol minuman dan snack tengah hari di saku mesh, dan mereka siap untuk berangkat.', '- Volume: 12 L <br>\r\n- 100% poliester plain weave hasil daur ulang <br>\r\n- Tas ransel dengan grafis menyeluruh <br>\r\n- Saku beritsleting di bagian depan dan saku mesh di bagian samping <br>\r\n- Strap bahu dengan bahan air mesh <br>\r\n- Strap dada dengan kait penyesuai', '650000', '1a9ae97b28c01bdc6a1c2421261c3549', '75f654d168a326ec149f73feb86f8374', '77a6187c7f6b7e25961ea17dcb6149d7'),
(51, 'EF9482', 'adidas RUNNING Sepatu Star Wars 4UTURE Runner Anak Unisex Hitam', 'Anak', 'Cahaya yang berubah menjadi kegelapan. Sepatu running adidas junior ini memiliki upper yang fleksibel dan bantalan lembut yang membuat setiap langkah menjadi nyaman. Grafis Star Wars™ yang ikonik menghadirkan sisi lain dari tokoh Darth Vader.', '- Dilengkapi tali sepatu <br>\r\n- Upper berbahan tekstil dan sintetis <br>\r\n- Sensasi fleksibel <br>\r\n- Sepatu running dengan grafis Star Wars <br>\r\n- Midsole dari bahan EVA bertekstur lembut menjadi bantalan yang nyaman <br>\r\n- NOT APPLICABLE', '616000', '96bec68d95ea72bf2eaf1b135ecc2b58', '2d33e89cc0c72bf3149351f741bfcbc7', 'c68d65e88ab8a6746de5d2bec0ae085e'),
(52, 'FV5787', 'adidas RUNNING Sepatu Marvel Black Widow RapidaRun Elite Anak Un', 'Anak', 'Setiap pejuang memerlukan fondasi yang dapat diandalkan. Sepatu anak bertema Marvel Black Widow ini membuat si kecil tetap nyaman saat mereka mengeksplorasi kemampuan superhero mereka. Sang agen dan jagoan bela diri cilik dapat beraktivitas dengan nyaman menggunakan sepatu yang ringan ini.', '- Tali sepatu elatis dengan strap bertema Black Widow dari Marvel di bagian atas <br>\r\n- Upper berbahan tekstil <br>\r\n- Sensasi empuk dan nyaman <br>\r\n- Sepatu running yang ringan <br>\r\n- Midsole Cloudfoam yang empuk dan nyaman dengan outsole berbahan karet <br>\r\n- NOT APPLICABLE', '560000', '6f8745ea81597aa9fe8ea128ea8177f5', '112a171ab710f32f5d60d294a957a20c', '2f856943108b66be8d1156f79ca93ccb'),
(53, 'FW0651', 'adidas ORIGINALS Sepatu Nizza x Disney Sport Goofy Anak Unisex P', 'Anak', 'Siapa sangka Goofy dari Disney memiliki sisi yang sporty? Sepatu Nizza junior ini menunjukkan keahlian atletik sang karakter dengan style medali emas. Pakai sepatu ini layaknya juara adidas sejati, dan rayakan salah satu kompetisi olahraga terbesar di dunia.', '- Menggunakan tali sepatu <br>\r\n- Upper dari bahan kanvas yang kuat <br>\r\n- Sockliner OrthoLite® <br>\r\n- Sepatu skate-inspired dengan grafis Disney <br>\r\n- Outsole berbahan karet <br>\r\n- MEDIUM', '780000', '65726dada75abd729de1454b7d79a433', '5dc63277c41c327ff3914574c3284e26', '2681765a09880c6929abd3ac5acf2586'),
(54, 'EG1871', 'adidas SWIM Slides adilette Cloudfoam Plus Anak Unisex Pink', 'Anak', 'Membuat istana pasir dan bermain di sekitar kolam renang menjadi lebih nyaman dengan slides untuk anak-anak ini. Slides ini dilengkapi dengan footbed cloudfoam plus yang sangat ringan sebagai bantalan tambahan, dan strap yang dapat disesuaikan untuk kaki dalam masa pertumbuhan. Style sporty slides ini dihiasi dengan upper 3-Stripes.', '- Footbed cloudfoam plus membantu memulihkan energi Anda dengan alas seempuk bantal <br>\r\n- Footbed berkontur <br>\r\n- Merek adidas berukuran besar di bagian upper <br>\r\n- Outsole berbahan EVA dengan proses injeksi yang ringan dan nyaman <br>\r\n- MEDIUM', '296400', 'b65fb163c8617c26b064069ec3bd1cfb', '28123dcdbc659874e940e607971cc3db', 'e50a269325f4d45608558a3c59e3792a'),
(55, 'FW7286', 'adidas RUNNING FortaFaito Top Strap Shoes Anak Unisex Hitam', 'Anak', 'Kids don\'t need a workout class or yoga studio to be active. The world is their gym and it\'s always playtime. Give your kid running-inspired foot support for all-day comfort with these adidas shoes. Elastic laces and a hook-and-loop closure strap adjust easily for a quick and snug fit, letting kids slip them on and head outdoors without missing a beat.', '- Elastic laces with hook-and-loop top strap <br>\r\n- Breathable mesh upper <br>\r\n- Soft, cushioned feel <br>\r\n- Performance running-inspired shoes <br>\r\n- Soft Cloudfoam midsole <br>\r\n- NOT APPLICABLE <br>\r\n- TEXTILE/SYNTHETICS', '700000', 'd5b0c9dec01a6df8f01810aea90b4c62', 'b4bb7bb71c739774f899ddfc3acddcd3', '0562738aa4f2a3c33d04bce3427397ee'),
(56, 'FV6451', 'adidas RUNNING 4uture One Running Shoes Anak Unisex Hitam', 'Anak', 'Leisure time is about going where the mood takes you. Whether you\'re playing ultimate Frisbee in the park or video games with friends, these juniors\' adidas running shoes are designed for comfort and support. They combine a soft forefoot with responsive cushioning in the heel for an energy-filled ride.', '- Lace closure <br>\r\n- No-sew upper with suede and mesh layers <br>\r\n- Soft, cushioned feel <br>\r\n- Sporty running shoes for the streets <br>\r\n- Cloudfoam forefoot cushioning with Boost in heel <br> \r\n- MEDIUM <br>\r\n- SYNTHETICS', '840000', 'aa8521f88e1a3971405b6c504cd63688', 'fb903eb163e314fae04ecd6b28fd9e78', 'd98c2c7b66b68b11107dd3f58e2aecb2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trending_product`
--

CREATE TABLE `trending_product` (
  `id` int(11) NOT NULL,
  `kode` varchar(6) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `kategori` varchar(16) NOT NULL,
  `deskripsi` text NOT NULL,
  `detail` text NOT NULL,
  `harga` varchar(16) NOT NULL,
  `gambar` varchar(32) NOT NULL,
  `gambar2` varchar(64) NOT NULL,
  `gambar3` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `trending_product`
--

INSERT INTO `trending_product` (`id`, `kode`, `nama`, `kategori`, `deskripsi`, `detail`, `harga`, `gambar`, `gambar2`, `gambar3`) VALUES
(1, 'B22705', 'adidas ORIGINALS Sepatu 3MC Vulc Unisex Putih', 'Sepatu', 'Mengombinasikan desain skate-friendly dengan profil klasik minimalis, sepatu ini membuat Anda tampil maksimal saat bermain skate. Style sepatu yang sangat multiguna nyaman untuk digunakan bermain skate, dengan upper berbahan kanvas yang diperkuat serta outsole Geoflex yang sangat nyaman sehingga Anda dapat bergerak dengan kaki secara natural dan mendapatkan board feel terbaik.', '- Lace closure <br>\r\n- Vegan upper and jersey lining <br>\r\n- OrthoLite® sockliner <br>\r\n- Shoes made with recycled materials <br>\r\n- Rubber cupsole <br>\r\n- NOT APPLICABLE <br>\r\n- These shoes are made with Primegreen, a series of high-performance recycled materials. The upper contains 70% recycled content. <br>\r\n- SYNTHETICS', '780000', 'a03aff8977432d81da5943750626a5f1', '86f3fb0e9a17d29cd1d8c4295977f6f9', '4e49c13eeb3c2084b7f7f20f19830f51'),
(2, 'FU9609', 'adidas ORIGINALS Stan Smith Shoes Pria Putih', 'Sepatu', 'When the adidas Stan Smith Shoes stepped onto tennis courts in the \'70s, their impact could never have been predicted. But now they\'re moving with intention toward the future with a design crafted to reduce material waste. And while these shoes alone will not save the planet, they\'re a step in the right direction.', '- Lace closure <br>\r\n- Vegan upper and jersey lining <br>\r\n- OrthoLite® sockliner <br>\r\n- Shoes made with recycled materials <br>\r\n- Rubber cupsole <br>\r\n- NOT APPLICABLE <br>\r\n- These shoes are made with Primegreen, a series of high-performance recycled materials. The upper contains 70% recycled content. <br>\r\n- SYNTHETICS', '585000', '22ad5cec0eca65b1e3db45a27b1d7f92', '1ed3577600e9af2b3463f7a9cadf786f', '23000dfb6d4f1f363d0362e7e910ea93'),
(3, 'EG5201', 'adidas RUNNING Ultraboost 20 Shoes Wanita Putih', 'Sepatu', 'The best time of day is when it\'s time for your run. These adidas Ultraboost 20 Shoes are built for a memorable trip every time you lace them up. As a first step toward ending plastic waste, the foot-hugging upper is knit with yarn spun from Parley Ocean Plastic. Stitched-in reinforcement provides targeted support, and responsive cushioning gives you the comfort you need to go long.', 'The best time of day is when it\'s time for your run. These adidas Ultraboost 20 Shoes are built for a memorable trip every time you lace them up. As a first step toward ending plastic waste, the foot-hugging upper is knit with yarn spun from Parley Ocean Plastic. Stitched-in reinforcement provides targeted support, and responsive cushioning gives you the comfort you need to go long.', '2340000', '5b3274bc9f8251a2c303e4b630438703', '79276137a44a8c23aa2ec9b1fcdb33a6', '8015c4298cda13f7692e9a0146fd958d'),
(4, 'FW3742', 'adidas TRAINING Sepatu Strutter Pria Hitam', 'Sepatu', 'Menghadirkan kesan paling kental dari dad shoes, sepatu ini memiliki desain chunky yang membuat Anda tetap nyaman sepanjang hari. Upper dari bahan kulit lembut dihiasi dengan detail cutout, overlay, dan 3-Stripes yang khas. Dilengkapi dengan sculpted midsole high-profile dan outsole berdaya cengkeram kuat.', '- Dilengkapi tali sepatu <br>\r\n- Upper dari bahan kulit berlapis <br>\r\n- Outsole berbahan karet; Lining dari bahan tekstil <br>\r\n- Sockliner Adibouncy dari material EVA yang ringan <br>\r\n- MEDIUM ', '702000', 'c4fda799f1499cf6775196582be1e9b9', '5e1ced68b4ac0ab45abd95f1a28af695', 'acd774f62c79cccf98eea6fc41d9aec7'),
(5, 'M20324', 'adidas ORIGINALS Sepatu Stan Smith Pria Putih', 'Sepatu', 'Dibuat pada tahun 1971 untuk sang bintang tenis Stan Smith, sepatu bermodel clean-cut ini menempati posisi istimewa dalam catatan sejarah style. Upper dari bahan kulit full grain bertekstur halus dengan 3-Stripes berbentuk lubang-lubang kecil dan corak outsole yang dibuat dari bahan karet menjadikan sepatu low top ini sebagai ikon sneaker ternama.', '- Bagian lining dibuat dari bahan kulit sintetis <br>\r\n- 3-Stripes berbentuk lubang-lubang kecil <br>\r\n- Desain yang simpel dan menarik <br>\r\n- Logo di bagian heel tab <br>\r\n- Cupsole berbahan karet <br>\r\n- MEDIUM ', '1500000', 'd7003afaff3156fe4fe6434d149fc756', 'd6487336263934e902858cc310962108', 'ad72acef463c2cddd544deea0cee430a'),
(6, 'DT4823', 'adidas TRAINING Tas Selempang Linear Core Unisex Hitam', 'Tas', '', '', '257400', '097d64cc7d4cad635cedcf91c95e9447', 'fdbc956a2d28c86f4148336e15ab2120', '8f07632f7269a93d5c0abc485a802de2'),
(7, 'FL9658', 'adidas ORIGINALS Tas Crossbody Essential Unisex', 'Tas', '', '', '380000', '19707bd97e58e9cf15f76bfc412b1864', 'c642c5bd45d5b2ff53564d55eefc9868', 'b4c6d96a4aa8f47d1796aea68f882f9a'),
(8, 'EI7411', 'adidas ORIGINALS Tas Festival Trefoil Unisex Hitam', 'Tas', '', '', '218400', '5c1e839b9d59ca7f527a49193c81719e', 'cf4ce9636f8627525e26e6fce75b9192', '174e96e3f04fd677d97c0522b1478b4c');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'nababanm71@gmail.com', 'michaelnababan', NULL, 'default.svg', '$2y$10$.yveKJizZhPxGwx/ZUuwa.Yh3rQvgpPsNeCB3ebRpOug5eNPe7vJS', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-27 23:11:05', '2020-12-27 23:11:05', NULL),
(7, 'kaelnababan1@gmail.com', 'kaelnababann', NULL, 'default.svg', '$2y$10$sYxSlxuTk53RdX9f9q2b..IDOowHkMxJsWJnCkExxV6J/krbwuO/m', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-27 23:48:06', '2020-12-27 23:48:06', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trending_product`
--
ALTER TABLE `trending_product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `trending_product`
--
ALTER TABLE `trending_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
