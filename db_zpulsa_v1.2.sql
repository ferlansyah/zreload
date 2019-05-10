-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2019 at 07:49 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_zpulsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `deskripsi`, `tanggal`) VALUES
(1, 'Jadwal Offline Internet Banking', '<h3>Bank BCA</h3>\r\n<dl>\r\n<dt>Senin - Jumat</dt><dd>21.00 - 00.30 WIB</dd>\r\n<dt>Sabtu</dt><dd>18.00 - 20.00 WIB</dd>\r\n<dt>Minggu</dt><dd>00.00 - 06.00 WIB</dd>\r\n</dl>\r\n<h3>Bank Mandiri</h3>\r\n<dl>\r\n<dt>Senin - Jumat</dt><dd>23.00 - 04.00 WIB</dd>\r\n<dt>Sabtu</dt><dd>22.00 - 06.00 WIB</dd>\r\n<dt>Minggu</dt><dd>22.00 - 06.00 WIB</dd>\r\n</dl>\r\n\r\nTransaksi otomatis hanya diproses pada jam-jam online saja, jika anda melakukan transaksi pada jam-jam offline maka transaksi akan diproses ketika jam Internet banking sudah aktif kembali', 1452012085),
(2, 'Paket Data Murah', '<p><a href=\"zreload.com\">zreload.com</a> -&nbsp;Internet sudah menjadi kebutuhan utama pada zaman sekarang, bukan hanya untuk orang dewasa atau anda yang berbisnis saja, saat ini anak-anak kita pun sudah membutuhkan koneksi internet, untuk sekedar browsing, main game, mencari ilmu sampai menonton video di youtube.</p>\r\n<p>Dari perkembangan zaman, banyak operator seluler menawarkan paket internet yang beraneka ragam, mulai dari Quota besar, Quota khusus tengah malam sampai unlimited atau tidak terbatas. Namun harga yang ditawarkan masing-masing operator berbeda. di ZReload.com kami memberikan harga paket internet dibawah harga resmi operator bersangkutan, Kok Bisa ? Resmi gak ?, tenang saja ZReload memberikan <strong>paket internet murah</strong> secara resmi dan legal, kami menjamin paket data anda sesuai namun dengan harga dibawah harga operator resmi.</p>', 1526798894);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `inv_id` varchar(32) NOT NULL DEFAULT '',
  `pesan` varchar(160) NOT NULL,
  `baca` tinyint(1) NOT NULL DEFAULT '0',
  `tanggal` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `nama`, `email`, `no_hp`, `inv_id`, `pesan`, `baca`, `tanggal`) VALUES
(1, 'Sopian', 'sopian.infokom@gmail.com', '08121298129', 'inv453715', 'Test', 0, 1557454382);

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `op_id` int(5) UNSIGNED NOT NULL,
  `op_produk` varchar(32) NOT NULL,
  `op_nama` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`op_id`, `op_produk`, `op_nama`) VALUES
(1, 'pulsa', 'TELKOMSEL'),
(2, 'pulsa', 'XL AXIATA'),
(3, 'pulsa', 'INDOSAT'),
(4, 'pulsa', 'AXIS'),
(5, 'pulsa', 'TRI'),
(6, 'pulsa', 'SMARTFREN'),
(7, 'pulsa', 'ESIA'),
(8, 'pulsa', 'BOLT'),
(12, 'paket_internet', 'Axis Internet Gaul'),
(11, 'token_pln', 'PLN Prabayar'),
(13, 'paket_internet', 'Indosat Data'),
(14, 'paket_internet', 'Indosat Xtra Data'),
(15, 'paket_internet', 'Telkomsel Data'),
(16, 'voucher_game', 'PlayStation US Card'),
(19, 'voucher_game', 'Spotify Premium');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_trx`
--

CREATE TABLE `paypal_trx` (
  `id` int(10) UNSIGNED NOT NULL,
  `trx_date` varchar(10) NOT NULL DEFAULT '0000-00-00',
  `trx_data` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(10) NOT NULL,
  `trx_id` int(10) NOT NULL,
  `bank` varchar(32) NOT NULL,
  `kredit` int(10) NOT NULL,
  `keterangan` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `tanggal` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setelan`
--

CREATE TABLE `setelan` (
  `set_key` varchar(32) NOT NULL,
  `set_val` text NOT NULL,
  `set_autoload` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setelan`
--

INSERT INTO `setelan` (`set_key`, `set_val`, `set_autoload`) VALUES
('paypal_api', '{\"username\":\"\",\"password\":\"\",\"signature\":\"\"}', 'no'),
('admin', '{\"username\":\"shopyan\",\"password\":\"YXNyYXRlY2gxMjM=\"}', 'no'),
('list_per_page', '20', 'yes'),
('pin', '1234', 'no'),
('site_name', 'ZReload', 'yes'),
('site_url', '/zpulsa/', 'yes'),
('envaya_sms', '{\"password\":\"12345678\"}', 'no'),
('zona_waktu', '+7', 'yes'),
('sms_center', '+6285710250005', 'no'),
('smsg_aktif', '0', 'yes'),
('produk', '{\"pulsa\":{\"nama\":\"Pulsa\",\"format_trx\":\"{KODE}.{NO_HP}.{PIN}\",\"status\":\"on\"},\"paket_internet\":{\"nama\":\"Paket Internet\",\"format_trx\":\"{KODE}.{NO_HP}.{PIN}\",\"status\":\"on\"},\"token_pln\":{\"nama\":\"Token PLN\",\"format_trx\":\"{KODE}.{ID_PLN}.{PIN}.{NO_HP}\",\"status\":\"on\"},\"voucher_game\":{\"nama\":\"Voucher Game & Premium Account\",\"format_trx\":\"{KODE}.{NO_HP}.{PIN}\",\"status\":\"on\"}}', 'yes'),
('jam_pembayaran', '1', 'yes'),
('maintenance', 'off', 'yes'),
('metode_pembayaran', '{\"bank_bca\":{\"nama\":\"Bank BCA - Transfer\",\"nomor_rekening\":\"6630288884\",\"nama_rekening\":\"Ahmad Sopian\",\"api\":{\"username\":\"ahmadsop2809\",\"password\":\"890928\"},\"mutasi\":{\"durasi\":1,\"terakhir\":0},\"status\":\"on\"},\"bank_mandiri\":{\"nama\":\"Bank MANDIRI\",\"nomor_rekening\":\"\",\"nama_rekening\":\"\",\"api\":{\"username\":\"\",\"password\":\"\"},\"mutasi\":{\"durasi\":0,\"terakhir\":0},\"status\":\"off\"},\"bank_bri\":{\"nama\":\"Bank BRI\",\"nomor_rekening\":\"\",\"nama_rekening\":\"\",\"api\":{\"username\":\"usernameDomosquare:usernameBRI\",\"password\":\"passwordBRI\"},\"mutasi\":{\"durasi\":0,\"terakhir\":0},\"status\":\"off\"},\"bank_bni\":{\"nama\":\"Bank BNI\",\"nomor_rekening\":\"\",\"nama_rekening\":\"\",\"api\":{\"username\":\"usernameDomosquare:usernameBNI\",\"password\":\"passwordBNI\"},\"mutasi\":{\"durasi\":0,\"terakhir\":0},\"status\":\"off\"},\"paypal\":{\"nama\":\"PayPal\",\"nomor_rekening\":\"\",\"nama_rekening\":\"\",\"api\":{\"username\":\"\",\"password\":\"\",\"signature\":\"\"},\"rate\":13000,\"status\":\"off\"}}', 'yes'),
('paypal_lastdate', '0', 'yes'),
('saldo', '20000000', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `sms_keluar`
--

CREATE TABLE `sms_keluar` (
  `out_id` int(10) UNSIGNED NOT NULL,
  `out_to` varchar(16) NOT NULL,
  `out_message` text NOT NULL,
  `out_status` varchar(12) NOT NULL DEFAULT '',
  `out_error` varchar(255) NOT NULL DEFAULT '',
  `out_submit_date` int(10) NOT NULL,
  `out_send_date` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_masuk`
--

CREATE TABLE `sms_masuk` (
  `in_id` int(10) UNSIGNED NOT NULL,
  `in_from` varchar(16) NOT NULL,
  `in_message` text NOT NULL,
  `in_timestamp` int(13) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(32) NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `pesan` text NOT NULL,
  `moderasi` enum('0','1') NOT NULL DEFAULT '1',
  `tanggal` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `tr_id` int(10) UNSIGNED NOT NULL,
  `op_id` int(10) NOT NULL,
  `op_produk` varchar(32) NOT NULL,
  `op_nama` varchar(64) NOT NULL,
  `vo_id` int(10) NOT NULL,
  `vo_kode` varchar(12) NOT NULL,
  `vo_nominal` varchar(64) NOT NULL,
  `tr_id_pln` varchar(32) NOT NULL DEFAULT '',
  `tr_no_hp` varchar(16) NOT NULL,
  `tr_harga` int(12) NOT NULL,
  `tr_harga2` int(12) NOT NULL,
  `tr_rate` int(5) NOT NULL DEFAULT '0',
  `tr_pembayaran` varchar(32) NOT NULL,
  `tr_status_pembayaran` varchar(32) NOT NULL,
  `tr_id_pembayaran` varchar(32) NOT NULL,
  `tr_cek_mutasi` int(10) NOT NULL DEFAULT '0',
  `tr_status` varchar(32) NOT NULL DEFAULT 'pending',
  `tr_tanggal` int(10) NOT NULL,
  `tr_terkirim` int(10) NOT NULL,
  `tr_vo_keterangan` varchar(200) DEFAULT NULL,
  `tr_email` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`tr_id`, `op_id`, `op_produk`, `op_nama`, `vo_id`, `vo_kode`, `vo_nominal`, `tr_id_pln`, `tr_no_hp`, `tr_harga`, `tr_harga2`, `tr_rate`, `tr_pembayaran`, `tr_status_pembayaran`, `tr_id_pembayaran`, `tr_cek_mutasi`, `tr_status`, `tr_tanggal`, `tr_terkirim`, `tr_vo_keterangan`, `tr_email`) VALUES
(1, 4, 'pulsa', 'AXIS', 18, 'AX10', '10.000', '', '087770003244', 11001, 11000, 0, 'bank_bca', 'pending', 'inv795518', 0, 'pending', 1526795518, 0, NULL, NULL),
(2, 4, 'pulsa', 'AXIS', 18, 'AX10', '10.000', '', '081219093977', 11001, 11000, 0, 'bank_bca', 'pending', 'inv612482', 0, 'pending', 1556612482, 0, NULL, NULL),
(3, 12, 'paket_internet', 'Axis Internet Gaul', 48, 'Data 1 Gb,Da', 'AIG35', 'Inet Gaul Bulanan FUP 1,5GB', '081219093977', 33501, 33500, 0, 'bank_bca', 'pending', 'inv613987', 0, 'pending', 1556613987, 0, '', NULL),
(4, 12, 'paket_internet', 'Axis Internet Gaul', 48, 'Data 1 Gb,Da', 'AIG35', 'Inet Gaul Bulanan FUP 1,5GB', '0812190939772', 33502, 33500, 0, 'bank_bca', 'pending', 'inv768613', 0, 'pending', 1556768613, 0, '', NULL),
(5, 13, 'paket_internet', 'Indosat Data', 49, 'ID1', 'ISAT DATA 1GB 30 Hari', '', '081219093977', 23301, 23300, 0, 'bank_bca', 'pending', 'inv394039', 0, 'pending', 1557394039, 0, NULL, NULL),
(6, 19, 'voucher_game', 'Spotify Premium', 71, 'SPTFY01', 'Seumur Hidup', '', '091029019021', 25001, 25000, 0, 'bank_bca', 'pending', 'inv453715', 0, 'pending', 1557453715, 0, NULL, 'sopian.infokom@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `vo_id` int(5) UNSIGNED NOT NULL,
  `op_id` int(6) NOT NULL,
  `vo_nominal` varchar(64) NOT NULL,
  `vo_harga` int(12) NOT NULL,
  `vo_keterangan` varchar(100) DEFAULT NULL,
  `vo_kode` varchar(12) NOT NULL,
  `vo_status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`vo_id`, `op_id`, `vo_nominal`, `vo_harga`, `vo_keterangan`, `vo_kode`, `vo_status`) VALUES
(1, 1, '5.000', 6000, NULL, 'S5', '1'),
(2, 1, '10.000', 11000, NULL, 'S10', '1'),
(3, 1, '20.000', 21000, NULL, 'S20', '1'),
(4, 1, '25.000', 26000, NULL, 'S25', '1'),
(5, 1, '50.000', 51000, NULL, 'S50', '1'),
(6, 1, '100.000', 99000, NULL, 'S100', '1'),
(7, 2, '5.000', 6000, NULL, 'X5', '0'),
(8, 2, '10.000', 11000, NULL, 'X10', '1'),
(9, 2, '25.000', 26000, NULL, 'X25', '1'),
(10, 2, '50.000', 51000, NULL, 'X50', '1'),
(11, 2, '100.000', 99000, NULL, 'X100', '1'),
(12, 3, '5.000', 6000, NULL, 'M5', '0'),
(13, 3, '10.000', 11000, NULL, 'M10', '1'),
(14, 3, '25.000', 26000, NULL, 'M25', '1'),
(15, 3, '50.000', 51000, NULL, 'M50', '1'),
(16, 3, '100.000', 99000, NULL, 'M100', '1'),
(17, 4, '5.000', 6000, NULL, 'AX5', '0'),
(18, 4, '10.000', 11000, NULL, 'AX10', '1'),
(19, 4, '20.000', 21000, NULL, 'AX20', '1'),
(20, 4, '25.000', 26000, NULL, 'AX25', '1'),
(21, 4, '50.000', 51000, NULL, 'AX50', '1'),
(22, 4, '100.000', 99000, NULL, 'AX100', '1'),
(23, 5, '5.000', 6000, NULL, 'T5', '0'),
(24, 5, '10.000', 11000, NULL, 'T10', '1'),
(25, 5, '20.000', 21000, NULL, 'T20', '1'),
(26, 5, '50.000', 51000, NULL, 'T50', '1'),
(27, 5, '100.000', 99000, NULL, 'T100', '1'),
(28, 6, '5.000', 6000, NULL, 'SM5', '0'),
(29, 6, '10.000', 11000, NULL, 'SM10', '1'),
(30, 6, '20.000', 21000, NULL, 'SM20', '1'),
(31, 6, '25.000', 26000, NULL, 'SM25', '1'),
(32, 6, '50.000', 51000, NULL, 'SM50', '1'),
(33, 6, '100.000', 99000, NULL, 'SM100', '1'),
(34, 7, '5.000', 6000, NULL, 'E5', '0'),
(35, 7, '10.000', 11000, NULL, 'E10', '1'),
(36, 7, '20.000', 21000, NULL, 'E20', '1'),
(37, 7, '25.000', 26000, NULL, 'E25', '1'),
(38, 7, '50.000', 51000, NULL, 'E50', '1'),
(39, 7, '100.000', 99000, NULL, 'E100', '1'),
(40, 11, '20.000', 21000, NULL, 'PLN20', '1'),
(41, 11, '50.000', 51000, NULL, 'PLN50', '1'),
(42, 11, '100.000', 110000, NULL, 'PLN100', '1'),
(43, 8, '25.000', 25500, NULL, 'B25', '1'),
(44, 8, '50.000', 50000, NULL, 'B50', '1'),
(45, 8, '100.000', 99000, NULL, 'B100', '1'),
(46, 8, '150.000', 146500, NULL, 'B150', '1'),
(47, 8, '200.000', 195800, NULL, 'B200', '1'),
(48, 12, 'Inet Gaul Bulanan FUP 1,5GB', 33500, 'Data 1 Gb,Data Video 2Gb, Video Max 3 Gb, Music Max 5 Gb', 'AIG35', '1'),
(49, 13, 'ISAT DATA 1GB 30 Hari', 23300, NULL, 'ID1', '1'),
(50, 13, 'ISAT DATA 2GB 30 Hari', 40300, NULL, 'ID2', '1'),
(51, 13, 'MENTARI DATA 3GB 90 Hari', 50800, NULL, 'ID3', '1'),
(52, 13, 'ISAT DATA 4,5GB 30 Hari', 41300, NULL, 'ID45', '1'),
(53, 13, 'ISAT DATA 5GB 30 Hari', 86300, NULL, 'ID5', '1'),
(54, 13, 'ISAT DATA 9,5GB 30 Hari', 71300, NULL, 'ID95', '1'),
(55, 13, 'ISAT BB GAUL BANGET 30 Hari', 61200, NULL, 'IDB30', '1'),
(56, 13, 'ISAT BB GAUL BANGET 90 Hari', 90300, NULL, 'IDB90', '1'),
(57, 14, 'ISAT XTra 2GB', 36300, NULL, 'IDX2', '1'),
(58, 14, 'ISAT XTra 4GB', 56300, NULL, 'IDX4', '1'),
(59, 14, 'ISAT XTra 6GB', 71300, NULL, 'IDX6', '1'),
(60, 15, 'Data Telkomsel 22MB/7Hari', 6700, NULL, 'SD5', '1'),
(61, 15, 'Data Telkomsel 70MB/7Hari', 11600, NULL, 'SD10', '1'),
(62, 15, 'Data Telkomsel 250MB/7Hari', 21300, NULL, 'SD20', '1'),
(63, 15, 'Data Telkomsel 360MB/30Hari', 26500, NULL, 'SD25', '1'),
(64, 15, 'Data Telkomsel 800MB/30 Hari', 50500, NULL, 'SD50', '1'),
(65, 15, 'Data Telkomsel 2.5GB/30Hari', 98500, NULL, 'SD100', '0'),
(66, 16, 'PlayStation 10$ US Card', 144600, NULL, 'PS10', '1'),
(67, 16, 'PlayStation 20$ US Card', 261000, NULL, 'PS20', '1'),
(68, 16, 'PlayStation 50$ US Card', 648500, NULL, 'PS50', '1'),
(71, 19, 'Seumur Hidup', 25000, NULL, 'SPTFY01', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no_hp` (`no_hp`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`op_id`);

--
-- Indexes for table `paypal_trx`
--
ALTER TABLE `paypal_trx`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trx_date` (`trx_date`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trx_id` (`trx_id`);

--
-- Indexes for table `setelan`
--
ALTER TABLE `setelan`
  ADD PRIMARY KEY (`set_key`);

--
-- Indexes for table `sms_keluar`
--
ALTER TABLE `sms_keluar`
  ADD PRIMARY KEY (`out_id`),
  ADD KEY `out_to` (`out_to`);

--
-- Indexes for table `sms_masuk`
--
ALTER TABLE `sms_masuk`
  ADD PRIMARY KEY (`in_id`),
  ADD KEY `in_from` (`in_from`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`tr_id`),
  ADD KEY `op_id` (`op_id`,`vo_kode`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`vo_id`),
  ADD KEY `op_id` (`op_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `op_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `paypal_trx`
--
ALTER TABLE `paypal_trx`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_keluar`
--
ALTER TABLE `sms_keluar`
  MODIFY `out_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_masuk`
--
ALTER TABLE `sms_masuk`
  MODIFY `in_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `tr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `vo_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
