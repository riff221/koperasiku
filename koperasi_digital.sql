-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Feb 2024 pada 06.13
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
-- Database: `koperasi_digital`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id_cart` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `carts`
--

INSERT INTO `carts` (`id_cart`, `user_id`, `product_id`, `banyak`, `total`) VALUES
(95, 14, 1, 1, 3000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`) VALUES
(1, 'Pulpen', 'pulpen'),
(2, 'BolPoint', 'bolpoint'),
(3, 'Pensil', 'pensil'),
(4, 'Buku', 'buku'),
(5, 'Penghapus', 'penghapus'),
(6, 'Spidol', 'spidol'),
(7, 'Ikat Pinggang', 'ikat pinggang'),
(8, 'Bet', 'bet');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id_product`, `product_name`, `unit`, `price`, `descriptions`, `category_id`, `stock`) VALUES
(1, 'Pulpen', 1, '3000', '<p>Tinta gacor plus nyata, bisa menjadikan seseorang menjadi hitam, bisa untuk menulis surat wasiat seseorang.</p>\r\n', 1, '62'),
(2, 'BolPoint', 1, '5000', '<p>Tinta tidak macet macet keluar secara merata, memiliki warna hitam yang pekat, Hitamkan lalu Tuliskan. gacoir</p>\r\n', 2, '0'),
(3, 'Pensil', 1, '2000', '<p>Mudah diserut, mempunyai ketebalan huruf yang sempurna.</p>\r\n', 3, '-921'),
(4, 'Buku', 1, '7500', '<p>Tidak mudah robek, memiliki ketebalan yang sempurna, di impor dari warung lain.</p>\r\n', 4, '95'),
(5, 'Penghapus', 1, '1500', '<p>Dapat menghapus tinta yang kau buat didalam hati ini.</p>\r\n', 5, '97'),
(6, 'Spidol', 1, '8000', '<p>Tinta tidak mudah habis dan tahan lama, dapat menghitamkan dunia ini dan orang lain.</p>\r\n', 6, '120'),
(7, 'Ikat Pinggang', 1, '20000', '<p>Anti putus dibuat dari material pilihan yang hanya dapat diambil oleh para profesional.</p>\r\n', 7, '4'),
(8, 'Bet', 1, '5000', '<p>Logo pilihan terbaik dibuat oleh para profesional memakai bahan yang langka.</p>\r\n', 8, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products_galleries`
--

CREATE TABLE `products_galleries` (
  `id_gallery` int(11) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products_galleries`
--

INSERT INTO `products_galleries` (`id_gallery`, `photos`, `product_id`) VALUES
(1, 'pensil.jpg', 3),
(2, 'pulpen1.jpg', 1),
(3, 'pulpen.jpg', 1),
(34, 'buku.jpg', 4),
(35, 'penghapus.jpg', 5),
(36, 'spidol.jpg', 6),
(37, 'ikat.png', 7),
(38, 'bolpoint.jpg', 2),
(39, '65b44c0a76d57.jpg', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening_numbers`
--

CREATE TABLE `rekening_numbers` (
  `id_rekening` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `rekening_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rekening_numbers`
--

INSERT INTO `rekening_numbers` (`id_rekening`, `bank_name`, `number`, `rekening_name`) VALUES
(1, 'BCA', '0989878998787', 'Sayudi Cenah'),
(2, 'Mandiri', '076543212123', 'Mimin'),
(3, 'Syariah', '09999977656', 'Subardjoe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id_transaction` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `rekening_id` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `weight_total` int(11) NOT NULL,
  `delivered` int(11) NOT NULL,
  `photo_transaction` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `time_arrived` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id_transaction`, `user_id`, `total_price`, `city`, `rekening_id`, `transaction_status`, `weight_total`, `delivered`, `photo_transaction`, `code`, `receiver`, `time_arrived`, `created_at`) VALUES
(1, 3, 260000, 'JAKARTA', 3, 'TERKIRIM', 4000, 0, '600d9b95c0711.jpg', 'EZM-57924', '', NULL, '2021-01-24 16:08:32'),
(2, 6, 200000, 'JAKARTA', 1, 'TERKIRIM', 4000, 0, '600d9c6b4e0d8.jpg', 'EZM-9366', '', NULL, '2021-01-24 16:12:13'),
(3, 9, 560000, 'JAKARTA', 1, 'KONFIRMASI', 3000, 0, '600e62cb73e61.png', 'EZM-86335', '', NULL, '2021-01-25 06:17:49'),
(4, 6, 100000, 'JAKARTA', 2, 'KONFIRMASI', 1000, 0, '600eba552a23c.png', 'EZM-81471', '', NULL, '2021-01-25 12:31:43'),
(5, 3, 218000, 'JAKARTA', 2, 'TERKONFIRMASI', 6000, 0, '6010cc60e12da.png', 'EZM-51571', '', NULL, '2021-01-25 13:06:50'),
(6, 9, 370000, 'JAKARTA', 1, 'TERKIRIM', 10000, 1, '6010ce5c5fc7f.png', 'EZM-98816', 'Mumun', '2021-01-27 05:26:45', '2021-01-27 02:21:26'),
(7, 13, 15500, '', 0, 'BELUM KONFIRMASI', 2, 1, '', 'EZM-16936', '', NULL, '2023-11-24 10:44:21'),
(8, 14, 2000, '', 0, 'BELUM KONFIRMASI', 1, 1, '', 'EZM-20440', '', NULL, '2023-12-09 02:06:02'),
(9, 16, 2000, '', 0, 'BELUM KONFIRMASI', 1, 0, '', 'EZM-86338', '', NULL, '2024-01-27 01:42:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions_details`
--

CREATE TABLE `transactions_details` (
  `id_transaction_detail` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `code_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transactions_details`
--

INSERT INTO `transactions_details` (`id_transaction_detail`, `transaction_id`, `product_id`, `price`, `banyak`, `code_product`) VALUES
(1, 1, 1, 50000, 2, 'PRD-12943'),
(2, 1, 2, 80000, 2, 'PRD-12943'),
(3, 2, 1, 50000, 2, 'PRD-13113'),
(4, 2, 1, 50000, 2, 'PRD-13113'),
(5, 3, 2, 80000, 2, 'PRD-40981'),
(6, 3, 6, 400000, 1, 'PRD-40981'),
(7, 4, 3, 100000, 1, 'PRD-60879'),
(8, 5, 5, 20000, 2, 'PRD-71011'),
(9, 5, 10, 75000, 2, 'PRD-71011'),
(10, 5, 12, 14000, 2, 'PRD-71011'),
(11, 6, 4, 36000, 5, 'PRD-94186'),
(12, 6, 1, 30000, 1, 'PRD-94186'),
(13, 6, 2, 40000, 4, 'PRD-94186'),
(14, 7, 4, 7500, 1, 'PRD-26909'),
(15, 7, 7, 8000, 1, 'PRD-26909'),
(16, 8, 3, 2000, 1, 'PRD-17838'),
(17, 8, 1, 3000, 1, 'PRD-79791'),
(18, 8, 1, 3000, 1, 'PRD-28189'),
(19, 8, 5, 1500, 1, 'PRD-56514'),
(20, 8, 5, 1500, 1, 'PRD-98023'),
(21, 8, 1, 3000, 1, 'PRD-58565'),
(22, 8, 1, 3000, 1, 'PRD-49073'),
(23, 8, 3, 2000, 1, 'PRD-16065'),
(24, 8, 3, 2000, 1, 'PRD-93258'),
(25, 8, 1, 3000, 1, 'PRD-41194'),
(26, 8, 3, 2000, 1, 'PRD-91152'),
(27, 8, 3, 2000, 1, 'PRD-73984'),
(28, 8, 3, 2000, 1, 'PRD-2113'),
(29, 8, 3, 2000, 1, 'PRD-89449'),
(30, 8, 1, 3000, 1, 'PRD-65284'),
(31, 8, 3, 2000, 1, 'PRD-81025'),
(32, 8, 3, 2000, 1, 'PRD-45100'),
(33, 8, 3, 2000, 1, 'PRD-94165'),
(34, 8, 3, 2000, 1, 'PRD-59876'),
(35, 8, 3, 2000, 1, 'PRD-26015'),
(36, 8, 3, 2000, 1, 'PRD-59110'),
(37, 8, 3, 2000, 1, 'PRD-38187'),
(38, 8, 3, 2000, 1, 'PRD-5194'),
(39, 8, 3, 2000, 1, 'PRD-61693'),
(40, 8, 3, 2000, 1, 'PRD-3322'),
(41, 8, 5, 1500, 1, 'PRD-69846'),
(42, 8, 3, 2000, 1, 'PRD-99105'),
(43, 8, 3, 2000, 1, 'PRD-61369'),
(44, 8, 1, 3000, 1, 'PRD-47845'),
(45, 8, 1, 3000, 1, 'PRD-49337'),
(46, 9, 3, 2000, 1, 'PRD-89561'),
(47, 9, 4, 7500, 1, 'PRD-21988'),
(48, 9, 4, 7500, 1, 'PRD-75615'),
(49, 9, 6, 8000, 1, 'PRD-74514'),
(50, 9, 4, 7500, 1, 'PRD-71152'),
(51, 9, 1, 3000, 1, 'PRD-62011'),
(52, 9, 1, 3000, 1, 'PRD-48457'),
(53, 9, 1, 3000, 1, 'PRD-71430'),
(54, 9, 1, 3000, 1, 'PRD-40111'),
(55, 9, 4, 7500, 1, 'PRD-68873'),
(56, 9, 4, 7500, 1, 'PRD-98263'),
(57, 9, 1, 3000, 1, 'PRD-7098'),
(58, 9, 1, 3000, 1, 'PRD-42157');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `postal_code` varchar(191) NOT NULL,
  `roles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `password`, `address`, `phone_number`, `postal_code`, `roles`) VALUES
(1, 'Hafizh Maulana Y', 'hafizhmy26@gmail.com', '$2y$10$FfLwZ3XFtFMf2reMKIgIzOZl2ax6B1jtL7VpAHgBskPbSA0i/5mLe', '<p>Jln Gang Hamzah No 22</p>\r\n', '098987898765', '11111111', 'ADMIN'),
(3, 'AMANDA PUTRI', 'manda@gmail.com', '$2y$10$2jrwSDZqHQgKlTUxPGnRau8ZD8Jgj9lNE4tBvRDsuNKNzVnEsbtxG', '<p>Jln Kampung Gunung No 22</p>\r\n', '099998887776', '224455', 'USER'),
(6, 'Vita Mahandari', 'vita@gmail.com', '$2y$10$2s/dgjADHLW1D5Ha.1qdz.as3ShDVYB/2V8fHh/P81dqtlKK2V8nG', '<p>Jln Rawa Belong No 54</p>\r\n', '098765432111', '445566', 'USER'),
(9, 'riski', 'riski@gmail.com', '$2y$10$xrt0u8OUv5S7n7L94MMSfuKtykPNnpvnrRLp0LQuV1dD5lsgpeuLW', '<p>Jln Athar Muhammad No 24</p>\r\n', '12345678', '10101010', 'USER'),
(10, 'Syatya Athary', 'athar@gmail.com', '$2y$10$08qL0V72XpaU3U5f41NZY.bdQh8PAYTvrxl.QpNCuhfMEfALLbAPm', '<p>Jln H sanusi Gang Hamzah No 28</p>\r\n', '098777776668', '12345', 'OWNER'),
(11, 'admin123', 'admin123@gmail.com', '$2y$10$B8sCWiTy0FGPO/v2x7ctjeIF2K9H1kiIvcFzm9fs/F2cgIYEgheeC', 'Bumi', '098765414', '', 'ADMIN'),
(12, 'joni', 'joni@gmail.com', '$2y$10$LoYL3IpR5SO9Wmtp5g7o0uOdRftwjUEVxFWb7Htt/V64QlYQ5Aa76', '<p>asdasdasd</p>\r\n', '087654321', '', 'USER'),
(16, 'sas', 'sas@gmail.com', '$2y$10$HMq3pzO98fF.aq8pHs.KDu4rYFxzWGtQvByc.EaAziyr2v7OgpMM2', '<p>XII rpl</p>\r\n', '0898982', '', 'USER'),
(17, 'kuci', 'kuci@gmail.com', '$2y$10$px2QgpxHP6XpTjaowVVXFulFRb/G7G7P/8LIeS/W5AmaHrHe7iEj6', '<p>jgjg</p>\r\n', '01232183', '', 'USER'),
(18, 'jon', 'jon@gmail.com', '$2y$10$XhCW1ikiQLyB5WMXy8.ZOeEN.x.ELIR/qUHAs5bTzBflhSmtYypJm', '<p>address</p>\r\n', '01232183', '', 'USER'),
(19, 'kn12@gmail.com', 'kn12@gmail.com', '$2y$10$biEfIhn3Tm6pp7.Edzn8EO5krhtLkUxQyYuBjxbyRWlRrXuTqK0jq', '<p>address</p>\r\n', '098080887', '', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `products_galleries`
--
ALTER TABLE `products_galleries`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id_transaction`);

--
-- Indeks untuk tabel `transactions_details`
--
ALTER TABLE `transactions_details`
  ADD PRIMARY KEY (`id_transaction_detail`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `products_galleries`
--
ALTER TABLE `products_galleries`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transactions_details`
--
ALTER TABLE `transactions_details`
  MODIFY `id_transaction_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
