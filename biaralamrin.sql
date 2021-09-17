-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Sep 2021 pada 13.02
-- Versi server: 10.1.33-MariaDB
-- Versi PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biaralamrin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `nama_lengkap`, `email`, `level`, `foto`, `tanggal_input`) VALUES
(8, 'baruna', '1212', 'Baruna Marines Lekalette', 'barunamarines@gmail.com', 'admin', 'inesjepang.jpg', '2021-07-27 18:54:10'),
(11, 'Tirta', '123', 'Tirta Admaja', 'tirta12@gmailcom', 'admin', 'line_118397537725348.jpg', '2021-07-27 18:54:10'),
(12, 'Sofia F', '12345', 'Sofia Fitri', 'sofia@gmail.com', 'admin', 'item-210719-dafd396794.jpeg', '2021-07-27 18:54:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `afiliasi`
--

CREATE TABLE `afiliasi` (
  `id_afiliasi` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `afiliasi`
--

INSERT INTO `afiliasi` (`id_afiliasi`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'Bhikshuni Thubten Saldon ', '<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">2004</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">During the Mahamudra retreat led by Lama Zopa Rinpoche in Adelaide, South Australia, the IMI monks and nuns gather at a special meeting requested by Rinpoche. Discussions take place on the care of our sangha and the needs of an aging sangha community.</span></span></h5>\r\n\r\n<h5 style=\"text-align:center\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><img alt=\"\" src=\"https://imisangha.org/wp-content/uploads/2020/05/TSL-1997-small.jpg\" /></span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">2006</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">IMI monks and nuns participate in a discussion on ordination policy at the FPMT Geshe Conference held in Sarnath, India, December.</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">2007</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">In May, Ven. Losang Monlam is appointed Director of IMI by Lama Zopa Rinpoche.</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">2008</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">On January 28, IMI was formally registered as a non-profit organization, in San Francisco, California.</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">2009</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">In December,&nbsp; IMI was recognized as a church or religious order by the United States government and granted 501(c)(3) non-profit tax exempt status.</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">2013</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Ven Chantal T. Dekyi from Vajra Yogini Institute again appointed as IMI Director.</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">2016</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Dorje Pamo Nunnery is France is resurrected. Ven&nbsp;Chantal T. Dekyi is appointed the first coordinator.</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">2017</span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:12px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">On October 1st. Ven Losang Tendar from Nalanda Monastery is appointed as new IMI Director.</span></span></h5>\r\n', 'item-210723-0176b969c2.jpg', 'https://youtu.be/Xr7z3WV3RBg', '2021-07-16', '2021-08-05 14:15:41', 34);

-- --------------------------------------------------------

--
-- Struktur dari tabel `akandatang_galeri`
--

CREATE TABLE `akandatang_galeri` (
  `id_adGaleri` int(11) NOT NULL,
  `id_jadwalMendatang` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gambar_galeri` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akandatang_galeri`
--

INSERT INTO `akandatang_galeri` (`id_adGaleri`, `id_jadwalMendatang`, `slug`, `gambar_galeri`, `tanggal_input`, `admin`) VALUES
(1, 1, 'bayu-andriansyah', 'item-210909-787bb51fe2.jpg', '2021-09-09 17:47:47', 'baruna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akandatang_slideshow`
--

CREATE TABLE `akandatang_slideshow` (
  `id_adSlide` int(11) NOT NULL,
  `id_jadwalMendatang` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gambar_slideshow` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akandatang_slideshow`
--

INSERT INTO `akandatang_slideshow` (`id_adSlide`, `id_jadwalMendatang`, `slug`, `gambar_slideshow`, `tanggal_input`, `admin`) VALUES
(1, 1, 'bayu-andriansyah', 'item-210908-975a906657.jpg', '2021-09-08 12:02:28', 'baruna'),
(4, 5, 'membuat-format-tanggal-indonesia-di-codeigniter', 'item-080921-b7d88e56e2.jpg', '2021-09-08 12:01:58', 'baruna'),
(5, 2, 'adasdas-INES', 'item-080921-8030790f4a.jpg', '2021-09-08 05:46:20', 'baruna'),
(7, 1, 'bayu-andriansyah', 'item-080921-f79ca93856.jpg', '2021-09-08 12:02:59', 'baruna'),
(8, 5, 'membuat-format-tanggal-indonesia-di-codeigniter', 'item-090921-8439443eb8.jpg', '2021-09-09 13:05:35', 'baruna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivitas_harian`
--

CREATE TABLE `aktivitas_harian` (
  `id_aktivitasHarian` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aktivitas_harian`
--

INSERT INTO `aktivitas_harian` (`id_aktivitasHarian`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'Puja Praktek Pendahuluan', '<p style=\"text-align:center\"><img src=\"https://static.wixstatic.com/media/2754c2_08715f6eadf943b18be81231d57ea485~mv2.png/v1/fill/w_717,h_558,al_c,q_90,usm_0.66_1.00_0.01/2754c2_08715f6eadf943b18be81231d57ea485~mv2.webp\" /></p>\r\n', 'item-210726-7d256bf502.jpg', 'https://youtu.be/Xr7z3WV3RBg', '2021-06-10', '2021-07-29 18:09:08', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivitas_tahunan`
--

CREATE TABLE `aktivitas_tahunan` (
  `id_aktivitasTahunan` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aktivitas_tahunan`
--

INSERT INTO `aktivitas_tahunan` (`id_aktivitasTahunan`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'TOLAK BALA 2021', '<p>Ketika karma kita matang, kita tidak akan dapat menghindar. Kita hanya punya kesempatan untuk mengubahnya saat karma itu belum matang.</p>\r\n\r\n<p>Potensi-potensi negatif harus dilawan dengan potensi-potensi positif. Potensi positif itu harus dibuat, diciptakan, bukan hanya ditunggu. Tolak bala adalah salah satu aktivitas pengumpulan potensi positif itu.</p>\r\n\r\n<p>Sangha monastik bersama-sama dengan para perumah tangga Kadam Choeling Indonesia mengadakan Puja Tolak Bala yang telah menjadi Agenda Kegiatan Tahunan<a href=\"https://sanghakci.wixsite.com/sanghakadamchoeling/kurikulum\"> Kadam Choeling Indonesia.</a> Rangkaian Puja Tolak Bala 2020 diadakan di Biara Indonesia Tu?ita Vivara??cara?a Vijay??raya pada tanggal 11-14 Februari 2020 dan di Bandung pada tanggal 14-16 Februari 2020. Rangkaian puja akbar ini terdiri atas: &gt; Guru Yoga Kepada Lama Tsongkhapa (Gaden Lha Gyama) &gt; Pujian Kepada Ary? Tar? (Drolma Korcey) &gt; Pujian Kepada 16 Arahat (Ney Cu Shug So) &gt; Upacara 400 Persembahan Pengumpul Semua Kemakmuran Dan Kesejahteraan Serta Pelenyap Semua Halangan (Gyashi) &gt; Permata Pengabul Harapan Ritual Singkat Inti Sutra Bhagawan Bh&atilde;i?ajyaguru &gt; Ritual Tahapan Menghalau Mara (Sernying Dudog) &gt; Persembahan Torma kepada Penjaga Dharma (Dagwei Torbul) &gt; Ritual Tiga Bagian (Cha Sum) &gt; Pujian Kepada Sang Penakluk Jedunma (Gyelwa Jedunma) &gt; Pujian Kepada Pelindung Dharma yang Bertindak Cepat (Gonpei Toypa) &gt; Doa Agar Ajaran Je Tsongkhapa Berkembang dan Menyebar Luas (Lozang Gyeltenma) &gt; Puja Api Meningkatkan (Pau??ika Agnihotra Yaj&ntilde;?) &gt; Doa-Doa Dedikasi (Monlam)</p>\r\n\r\n<p>Semoga kebajikan yang telah dikumpulkan bersama-sama ini dapat menghalau segala ketidakberuntungan, memunculkan berbagai pertanda baik, kemakmuran, kesejahteraan, dan keberuntungan di Indonesia dan seluruh dunia. Semoga semua praktisi Dharma dapat terus mengembangkan praktik spiritual mereka di mana pun mereka berada.</p>\r\n\r\n<p>Sangha Monastik KCI membuka kesempatan bagi yang ingin menjalani kehidupan monastik untuk bersama-sama belajar dan melatih diri mengembangkan batin dengan menjalani keseharian sesuai Dharma Sang Buddha, melakukan berbagai aktivitas bajik pengembangan batin, serta mencapai tujuan tertinggi.</p>\r\n\r\n<p>Untuk memfasilitasi mereka yang beraspirasi untuk melatih gaya hidup monastik, Sangha Monastik KCI akan menggulirkan program Pelatihan Pra-Penahbisan Tahun 2020. Program ini dirancang untuk mempersiapkan para pabbajita dengan pemahaman, motivasi, serta kualitas yang diperlukan untuk melangkah maju saat menerima penahbisan sramanera dan biksu agar bisa menjalani kehidupan monastik dengan sebaik-baiknya.</p>\r\n\r\n<p>Untuk info lebih lanjut, silakan hubungi Sandi (Sekretariat Sangha Monastik KCI/0857-1804-1744)</p>\r\n\r\n<p><a href=\"https://sanghakci.wixsite.com/sanghakadamchoeling/cerita/hashtags/photo\" target=\"_self\">#photo</a> <a href=\"https://sanghakci.wixsite.com/sanghakadamchoeling/cerita/hashtags/tradisiDagpo\" target=\"_self\">#tradisiDagpo</a> <a href=\"https://sanghakci.wixsite.com/sanghakadamchoeling/cerita/hashtags/PusdiklatJinaPutraTushitavijaya\" target=\"_self\">#PusdiklatJinaPutraTushitavijaya</a> <a href=\"https://sanghakci.wixsite.com/sanghakadamchoeling/cerita/hashtags/sanghakadamchoelingindonesia\" target=\"_self\">#sanghakadamchoelingindonesia</a> <a href=\"https://sanghakci.wixsite.com/sanghakadamchoeling/cerita/hashtags/Omze\" target=\"_self\">#Omze</a> <a href=\"https://sanghakci.wixsite.com/sanghakadamchoeling/cerita/hashtags/TolakBala\" target=\"_self\">#TolakBala</a></p>\r\n', 'item-210726-7a8dc4110a.jpg', 'https://youtu.be/Xr7z3WV3RBg', '2021-07-14', '2021-07-29 18:09:57', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nama_album` varchar(255) NOT NULL,
  `gambar_album` varchar(255) NOT NULL,
  `tanggal_album` date NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `slug` varchar(255) NOT NULL,
  `admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `gambar_album`, `tanggal_album`, `lokasi`, `tanggal_input`, `slug`, `admin`) VALUES
(2, 'Bakti Sosial', 'item-300621-760e7a7b41.jpg', '2021-06-24', 'Ujung Berung, Bandung', '2021-07-15 17:41:31', 'bakti-sosial', 'admin'),
(3, 'Vassa di biara', 'item-020721-e96de0ce8f.jpg', '2021-07-02', 'Ciwidey', '2021-07-15 17:41:43', 'vassa-di-biara', 'baruna'),
(5, 'Waisak di Biara', 'item-050721-2f1aae9800.jpg', '2021-06-16', 'Biara Malang', '2021-07-15 17:42:04', 'waisak-di-biara', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_sangha`
--

CREATE TABLE `anggota_sangha` (
  `id_anggotaSangha` int(11) NOT NULL,
  `nama_tahbis` varchar(255) NOT NULL,
  `jabatan_sangha` varchar(255) NOT NULL,
  `tahun_tahbis` varchar(255) NOT NULL,
  `guru_penahbis` varchar(255) NOT NULL,
  `quote_sangha` text NOT NULL,
  `foto_sangha` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota_sangha`
--

INSERT INTO `anggota_sangha` (`id_anggotaSangha`, `nama_tahbis`, `jabatan_sangha`, `tahun_tahbis`, `guru_penahbis`, `quote_sangha`, `foto_sangha`, `tanggal_input`) VALUES
(1, 'Lobsang Oser ok', 'Biksu', '2002', 'Y.M.S. Dalai Lama XIV', '<p>&quot;Kita harus menjadi orang yang baik terhadap sesama&quot;</p>\r\n', 'item-210728-c33743a67f.jpg', '2021-07-28 20:04:17'),
(2, 'Lobsang Gyatso', 'Biksu', '2007', 'Y.M.S. Dalai Lama XIV', '\"Ini cita-cita sejak kecil tapi karena menunggu selesai studi dan kerja, maka baru terwujud pada tahun 2000. Yang membuat saya ingin berjubah adalah teladan Sang Buddha yang Agung dan tanpa cela serta kokoh dalam segala hal\"\r\n', 'Biksu-Lobsang-Gyatso.jpg', '2021-05-18 15:44:03'),
(6, 'Tenzin Wangyal', 'Biksu', '2015', 'Y.M.S. Dalai Lama XIV', '<p>&quot;Jadi bhante itu capek, tapi kalau ngga mau capek, kayaknya susah untuk bisa bebas dari samsara. Pilih mana hayo&hellip;?&quot;</p>\r\n', 'Biksu_Tenzin_Wangyal.jpg', '2021-05-18 15:47:35'),
(7, 'Lobsang Jinpa', 'Biksu', '2011', 'Y.M.S. Dalai Lama XIV', '<p>&quot;Jadi bhante di KCI beda dari yang lain. Di KCI bhante-bhantenya belajar, itu yang membuat kerasan&quot;</p>\r\n', 'Biksu_Lobsang_Jinpa.jpg', '2021-05-18 15:49:49'),
(8, 'Tenzin Konchog', 'Biksu', '2015', 'Y.M.S. Dalai Lama XIV', '<p>&quot;Setelah berjubah, rasanya hidup jadi more simple, terhindar secara otomatis dari aneka masalah pelik seperti soal relationship, harta benda. Lebih fokus buat latihan&quot;</p>\r\n', 'Biksu_Tenzin_Konchog.jpg', '2021-05-18 15:52:48'),
(9, 'Lobsang Tsultrim', 'Biksu', '2017', 'Y.M.S. Dalai Lama XIV', '<p>&quot;Ketika pertama kali mengenakan jubah terdapat perasaan yang sangat senang dan sangat enteng. Terasa dunia tidak memiliki beban dan saya tidak perlu menjalani hidup yang tidak saya sukai&quot;</p>\r\n', 'Biksu_Lobsang_Tsultrim.jpg', '2021-05-18 15:54:26'),
(10, 'Tenzin Tshojung ', 'Sramaneri', '2011', 'Y.M.S. Dalai Lama XIV', '<p>&quot;Ketika pertama kali mengenakan jubah terdapat perasaan yang sangat senang dan sangat enteng. Terasa dunia tidak memiliki beban dan saya tidak perlu menjalani hidup yang tidak saya sukai.&quot;</p>\r\n', 'Sramaneri_Tenzin_Tshojung.jpg', '2021-05-18 15:56:34'),
(11, 'Yonten Sherab', 'Biksu', '2015', 'Y.M.S. Dalai Lama XIV', '<p>&quot;Mikir untuk berjubah memakan waktu 1 tahun, akhirnya saya putuskan berkat dorongan dari Guru.&quot;</p>\r\n', 'Biksu_Yonten_Syerab.jpg', '2021-05-18 15:58:09'),
(12, 'Lobsang Phende', 'Biksu', '2015', 'Y.M.S. Dalai Lama XIV', '<p>&quot;Bersyukur dan berterima kasih karena ada komunitas yang mendukung baik dalam materi maupun spiritual khususnya dalam belajar dan praktek Dharma&quot;</p>\r\n', 'Biksu_Lobsang_Phende.jpg', '2021-05-18 15:59:54'),
(13, 'Tenzin Chograb', 'Biksu', '2010', 'Y.M.S. Dalai Lama XIV', '<p>&quot;Banyak kesempatan latihan batin dengan berkah Guru&quot;</p>\r\n', 'Biksu_Tenzin_Chograb.jpg', '2021-05-18 16:01:03'),
(14, 'Tenzin Tringyal', 'Biksu', '2010', 'Y.M.S. Dalai Lama XIV', '<p>&quot;Saya rasa apa yang saya alami dan jalani sejauh ini semua hanya karena satu sebab, yakni kebaikan Guruku.&quot;</p>\r\n', 'Biksu_Tenzin_Tringyal.jpg', '2021-05-18 16:02:12'),
(15, 'Lobsang Nyima', 'Rabjung', '2019', 'Biksu Lobsang Gyatso', '<p>&quot;Setelah berjubah, hidup lebih damai, lebih banyak waktu untuk introspeksi diri.&quot;</p>\r\n', 'Rabjung_Lobsang_Nyima.jpg', '2021-05-18 16:03:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `jumlahVisitor`) VALUES
(8, 'Sasti Halim', 'halim.sasti@gmail.com', 'kirim pesan pada admin', 'Min mau bertanya jika saya ingin berdonasi lewat mana dan mekanismenya seperti apa ya? terimkasih', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dharma_work`
--

CREATE TABLE `dharma_work` (
  `id_dharmaWork` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dharma_work`
--

INSERT INTO `dharma_work` (`id_dharmaWork`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'Menghancurkan Penghalang Belajar Dharma', '<p>Jika melihat tak terhitungnya kelahiran kita di samsara, tentu saja banyak kebajikan dan keburukan yang telah kita lakukan disepanjang hidup kita. Banyaknya kebaikan dan keburukan yang telah kita kumpulkan di masa lampau, tentu saja berbuah dan berpengaruh pada apa yang kita dapatkan di kehidupan saat ini. Pengaruhnya sangat besar, berpengaruh pada kondisi dimana kita dilahirkan, kelengkapan tubuh kita, tingkat kecerdasan, hingga kemampuan kita dalam bertemu, belajar, dan berpraktek Ajaran Sang Buddha. Untuk lebih lengkapnya, dapat dilihat pada artikel kelahiran yang berharga sebagai manusia.</p>\r\n\r\n<p>Hukum Karma dalam Ajaran Buddha, tidaklah dipelajari hanya untuk berpasrah padanya tanpa sesuatu yang bisa diperbuat. Mempelajari hukum karma justru diperlukan untuk bisa melihat segala sesuatu menjadi lebih jelas dan kita berusaha untuk merubah kondisi yang kita terima dengan melakukan kebalikan dan tidak menciptakan kondisi-kondisi yang dapat menyebabkan karma buruk terus menerus berbuah.</p>\r\n\r\n<p>Untuk tidak menciptakan kondisi-kondisi yang tidak menyenangkan dan membuat kondisi-kondisi menyenangkan, ada sebuah praktik purifikasi yang dapat dilakukan. Praktik purifikasi ini memiliki 4 kekuatan penawar dalam menjalaninya, yaitu :</p>\r\n\r\n<ol style=\"margin-left:40px\">\r\n	<li>\r\n	<p>Penyesalan</p>\r\n	</li>\r\n	<li>\r\n	<p>Basis Yang Mendasari (Berlindung dan Membangkitkan Bodhicita)</p>\r\n	</li>\r\n	<li>\r\n	<p>Bertekad Tidak Mengulanginya Lagi</p>\r\n	</li>\r\n	<li>\r\n	<p>Melakukan Aksi Sebaliknya</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Dengan melakukan praktek purifikasi 35 Buddha, diharapkan dapat mempermudah kita dalam bertemu, belajar dan berpraktik, Ajaran Mulia Sang Buddha.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://static.wixstatic.com/media/2754c2_624de3636a0f46079480be99e8726eb3~mv2_d_4032_3024_s_4_2.jpg/v1/fill/w_248,h_137,al_c,q_80,usm_0.66_1.00_0.01/2754c2_624de3636a0f46079480be99e8726eb3~mv2_d_4032_3024_s_4_2.webp\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://static.wixstatic.com/media/2754c2_9aba579354e14d7483b9599c19cab8ea~mv2_d_4032_3024_s_4_2.jpg/v1/fill/w_225,h_137,al_c,q_80,usm_0.66_1.00_0.01/2754c2_9aba579354e14d7483b9599c19cab8ea~mv2_d_4032_3024_s_4_2.webp\" /></p>\r\n\r\n<h2>Mengumpulkan kebajikan dengan Mengalihbahasakan Teks</h2>\r\n\r\n<p>Untuk mendukung proses pembelajaran, diperlukan teks-teks yang benar-benar dapat dipahami sepenuhnya. Dalam konteks belajar Agama Buddha, terdapat banyak sekali buku yang dapat dipelajari. Diantaranya, kitab-kitab tripitaka, kitab komentar Tripitaka, biografi guru silsilah, teks gubahan seorang guru yang mencapai realisasi tertentu, dan sebagainya.</p>\r\n\r\n<p>Teks-teks tersebut kebanyakan masih berbahasa asli tibet ataupun sudah ada terjemahan dalam bahasa Inggris. Untuk mempermudah dalam pembelajaran, Sangha KCI juga membantu penerjemahan teks-teks ke dalam bahasa Indonesia yang tidak hanya digunakan oleh Sangha KCI, namun juga digunakan oleh umat awam Kadam Choeling Indonesia.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://static.wixstatic.com/media/2754c2_5038fdde2acf47e99ace0c02bb68adf2~mv2.jpeg/v1/fill/w_200,h_258,al_c,q_80,usm_0.66_1.00_0.01/2754c2_5038fdde2acf47e99ace0c02bb68adf2~mv2.webp\" /></p>\r\n\r\n<h2>Mengisi Rupang Menciptakan Sumber Kebajikan</h2>\r\n\r\n<p><em>Engkau yang tubuhnya dihasilkan dari sepuluh juta kebajikan,<br />\r\nYang ucapannya memenuhi harapan jumlah makhluk yang tak terhingga,<br />\r\nYang batinnya mencerap semua fenomena sebagaimana adanya,<br />\r\nOh yang terunggul di antara Para Sakya, aku memberi hormat kepadamu!</em></p>\r\n\r\n<p><em>Je Tsongkhapa - Baris-baris Pengalaman&nbsp;</em></p>\r\n\r\n<p>Tubuh Buddha terdiri dari banyak kebajikan yang dikumpulkan selama berkalpa-kalpa.</p>\r\n\r\n<p>Dengan mewujudkan kembali tubuh Buddha dalam bentuk rupang/Tsa-Tsa dan</p>\r\n\r\n<p>sebagainya, kebajikan yang kita kumpulkan tentunya terbilang besar pula.</p>\r\n\r\n<p>Mewujudkan kembali tubuh Buddha juga memberikan kebajikan yang besar karena keyakinan dapat muncul dengan melihat perwujudan Buddha. Jadi, selama perwujudan Buddha tersebut ada dan membangkitkan keyakinan, maka selama itu pula kebajikan kita kumpulkan.</p>\r\n\r\n<p>Sangha Kadam Choeling Indonesia turut serta dalam pengumpulan kebajikan dengan mengisi rupang-rupang di KCI Bandung, KCI Jakarta, KCI Surabaya, dan lainnya.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://static.wixstatic.com/media/2754c2_205cf7a30d4445d7b8ebc871ab4df4d4~mv2.jpeg/v1/fill/w_182,h_316,al_c,q_80,usm_0.66_1.00_0.01/2754c2_205cf7a30d4445d7b8ebc871ab4df4d4~mv2.webp\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://static.wixstatic.com/media/2754c2_97abfd8ee5f8437d85dd487589859bab~mv2.jpeg/v1/fill/w_375,h_211,al_c,q_80,usm_0.66_1.00_0.01/2754c2_97abfd8ee5f8437d85dd487589859bab~mv2.webp\" /></p>\r\n\r\n<h2>Membuat Persembahan Untuk Ladang Kebajikan</h2>\r\n\r\n<p>Memberikan persembahan merupakan salah satu hal termudah untuk mengumpulkan kebajikan. Namun, besar kecilnya kebajikan yang kita dapatkan dari aktivitas tersebut, tergantung dari beberapa hal, antara lain</p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li>\r\n	<p>motivasi aktivitas,</p>\r\n	</li>\r\n	<li>\r\n	<p>kegiatan pendukung&nbsp;aktivitas tersebut,</p>\r\n	</li>\r\n	<li>\r\n	<p>subjek dari aktivitas tersebut, dan</p>\r\n	</li>\r\n	<li>\r\n	<p>objek dari aktivitas tersebut.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Memberikan persembahan pada ladang kebajikan yang berjuang untuk kebaikan semua makhluk tentunya akan memberikan buah kebajikan yang lebih besar karena aktivitas kebajikan kita dikalikan jumlah semua makhluk yang tak hingga. Melihat besarnya kebajikan dari memberikan persembahan kepada ladang kebajikan, Sangha Kadam Choeling Indonesia jg berperan untuk mempersiapkan torma-torma persembahan yang akan digunakan dibeberapa kegiatan puja besar. torma-torma tersebut terdiri dari makanan ringan yang siap disusun, maupun torma dari champa yang perlu dibuat dan dibentuk secara khusus</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://static.wixstatic.com/media/2754c2_5582c500986a405890fe38b80e2561d1~mv2.jpeg/v1/fill/w_169,h_224,al_c,q_80,usm_0.66_1.00_0.01/2754c2_5582c500986a405890fe38b80e2561d1~mv2.webp\" /></p>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://static.wixstatic.com/media/2754c2_612fbe7903084736a20e0b74d0212f46~mv2.jpeg/v1/fill/w_178,h_224,al_c,q_80,usm_0.66_1.00_0.01/2754c2_612fbe7903084736a20e0b74d0212f46~mv2.webp\" /></p>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://static.wixstatic.com/media/2754c2_be5015ea792b4b6390867b55b7fb77c7~mv2.jpeg/v1/fill/w_317,h_224,al_c,q_80,usm_0.66_1.00_0.01/2754c2_be5015ea792b4b6390867b55b7fb77c7~mv2.webp\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'item-210726-0ef770cca4.jpg', 'https://youtu.be/GOfYgMjYBlk', '2021-06-11', '2021-07-29 18:57:47', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi`
--

CREATE TABLE `donasi` (
  `id_donasi` int(11) NOT NULL,
  `judul_donasi` varchar(255) NOT NULL,
  `jumlah_terkumpul` varchar(255) NOT NULL,
  `jumlah_semula` varchar(255) NOT NULL,
  `jumlah_bar` varchar(255) NOT NULL,
  `jumlah_donasi` varchar(255) NOT NULL,
  `sisa_hari` varchar(255) NOT NULL,
  `gambar_donasi` varchar(255) NOT NULL,
  `deskripsi_donasi` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donasi`
--

INSERT INTO `donasi` (`id_donasi`, `judul_donasi`, `jumlah_terkumpul`, `jumlah_semula`, `jumlah_bar`, `jumlah_donasi`, `sisa_hari`, `gambar_donasi`, `deskripsi_donasi`, `slug`, `jumlahVisitor`) VALUES
(12, 'Berbagi Kado Pak Rusman', 'Rp 31.893.000', 'Rp 100.000', '22%', '40', '17', 'item-210721-726fdac32d.jpg', '<p><span style=\"font-size:12.499999999999998pt\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"color:#262626\"><span style=\"background-color:#ffffff\"><strong>SAMUDRA PERSEMBAHAN UNTUK MENJALIN PERSAHABATAN DENGAN PARA NAGA</strong></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"color:#3c4043\"><span style=\"background-color:#ffffff\">Kesehatan, kemakmuran, dan kedamaian kita di kehidupan lampau, kini, dan akan datang bergantung pada banyak faktor, termasuk perilaku kita sendiri dan hubungan kita dengan banyak makhluk.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"color:#3c4043\"><span style=\"background-color:#ffffff\">Perilaku mengotori atau merusak alam bisa menjadi sebab hubungan buruk dengan para Naga di kehidupan ini sehingga kita terlahir di tahun tertentu dan rentan terhadap penyakit atau kemalangan tertentu.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Berdasarkan astrologi India Utara yang menjadi basis astrologi Kalachakra Tantra yang diajarkan oleh Buddha, orang-orang yang lahir pada tahun:</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>1942, 1945, 1951, 1954, 1960, 1963, 1972, 1978, 1981, 1987, 1990, 1996, 1999, 2005, 2007, 2014, dan 2017 </strong></span></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">memiliki hubungan buruk dengan para Naga.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Selain itu, hubungan buruk dengan para Naga juga bisa diindikasi dari kehadiran beberapa penyakit seperti penyakit kulit, autoimun, liver, dan kanker.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Melalui rangkaian Puja Naga, kita dapat memberi berbagai persembahan untuk menyenangkan para Naga sekaligus memperbaiki hubungan yang telah dibawa dari masa lampau.&nbsp;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>MARI MENJALIN HUBUNGAN BAIK DENGAN PARA NAGA</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Upacara Puja Naga</strong></span></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"> adalah aktivitas pengumpulan kebajikan melalui penghormatan pada Triratna serta sarana berkomunikasi dengan para Naga yang meliputi:</span></span></span></p>\r\n\r\n<ol style=\"margin-left:40px\">\r\n	<li style=\"list-style-type:decimal\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Si?han?da Homa ( ?????????? ): persembahan puja api kepada </span></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Sang Panglima Naga Begawan Avalokiste?vara Si?han?da</strong></span></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"> untuk mendamaikan Raja Naga dan rombongannya.</span></span></span></li>\r\n	<li style=\"list-style-type:decimal\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">N?gabali ( ????????? ): sesaji amerta jnana dan obat yang dapat menghilangkan semua penderitaan serta menganugerahkan kenikmatan yang diinginkan Raja Naga beserta rombongannya.</span></span></span></li>\r\n	<li style=\"list-style-type:decimal\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">N?gadh?pa ( ????????? ): persembahan wewangian untuk memurnikan dan menyenangkan Raja Naga dan rombongannya.</span></span></span></li>\r\n</ol>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><em>Upacara ini khusus dilakukan pada saat Hari Naga dan tidak bisa dilakukan sembarang orang.&nbsp;</em></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Pada tahun 2021, Puja Naga akan dilakukan dalam 4x kesempatan.</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Puja Naga Perdana telah dilakukan pada 28 Juni 2021. Simak foto-fotonya melalui tautan </span></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#0000ff\"><strong><em>ini.</em></strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Segera daftarkan diri Anda! Jangan sampai ketinggalan!</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Bagaimana berpartisipasi dalam Puja Naga?</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Kita bisa turut memberikan persembahan untuk para Naga melalui paket berikut:&nbsp;</span></span></span></p>\r\n\r\n<div>\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; border:none; width:522px\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:67px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Paket</strong></span></span></span></p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:157px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Jenis Persembahan</strong></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"3\" style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:102px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Frekuensi Pelaksanaan</strong></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:67px\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">1x</span></span></span></strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:157px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>3x</strong></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:102px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>8x</strong></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:67px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">1</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:157px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Si?han?da Homa, N?gabali, dan N?gadh?pa</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:102px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">3,200,000</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:96px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">&nbsp; &nbsp; 8,000,000</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:100px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">&nbsp; 20,800,000</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:67px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">2</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:157px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">N?gabali dan N?gadh?pa</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:102px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">&nbsp; &nbsp;1,200,000</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:96px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">3,000,000</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:100px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">&nbsp; &nbsp; 7,800,000</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:67px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">3</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:157px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">N?gadh?pa</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:102px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">&nbsp; &nbsp; 200,000</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:96px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp; 500,000</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:top; width:100px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">&nbsp; &nbsp; 1,300,000</span></span></span><br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Syarat &amp; Ketentuan:</strong></span></span></span></p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li style=\"list-style-type:disc\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">A</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"color:#3c4043\"><span style=\"background-color:#ffffff\">pabila memiliki penyakit tertentu, disarankan mengambil paket 1.&nbsp;</span></span></span></span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"color:#3c4043\"><span style=\"background-color:#ffffff\">Tanggal pelaksanaan menyesuaikan jadwal Sangha dan Hari Naga.</span></span></span></span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"color:#3c4043\"><span style=\"background-color:#ffffff\">Setiap selesai upacara, para donatur akan memperoleh dokumentasi kegiatan dan pembacaan nama dedikasi.</span></span></span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Dana yang terkumpul akan digunakan untuk:</span></span></span></p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li style=\"list-style-type:disc\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Pengadaan bahan persembahan dan perlengkapan upacara.</span></span></span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Penghimpunan kebajikan terhadap Ladang Kebajikan yang memiliki kekuatan unggul, seperti: menyokong Sangha dan membantu pembangunan serta pengelolaan Biara Indonesia Tu?ita Vivara??cara?a Vijay??raya.</span></span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:11.5pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Cara mendaftar, dengan transfer ke:</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11.5pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><img src=\"https://lh5.googleusercontent.com/wMVOukmmf8p63E-SWdJf0VOtiLXSJn-0JKWI4pBvz3GO8M9IyoiZ95I8qbpmQZiqSEjubz8atnogJhQJL74LqRKMbRSMYcz6i2jst6cEfDim99A9-dOaeLl2m-Pw9C_k_PEDAQYR\" style=\"height:101px; width:322px\" /></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Lihat nama dedikasi yang telah terdaftar, di <a href=\"https://docs.google.com/document/d/1C58m20K4sKFgjrH9T5ggwonCVnBxAGRaEEZ3GGFOA2c/edit\">sini</a></strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>PENDAFTARAN</strong></span></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong> &amp; INFORMASI LEBIH LANJUT klik di <a href=\"https://codeigniter.com/userguide3/database/query_builder.html?highlight=join#CI_DB_query_builder::join\">sini</a></strong></span></span></span></p>\r\n', 'berbagi-kado-pak-rusman', 196),
(13, 'Berbagi Kado Baruna Marines L 123', 'Rp 3.893.000', 'Rp 100.000', '92%', '40', '16', 'item-210721-ee2fef986f.jpg', '<p style=\"text-align:center\"><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/DY9rmp0O-qE\" title=\"YouTube video player\" width=\"560\"></iframe></p>\r\n\r\n<p>mantap</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><iframe frameborder=\"0\" height=\"1318\" src=\"https://docs.google.com/forms/d/e/1FAIpQLScwAiHNJhz6eb4T_Avmbz_NOWvMYvDzp43uvT5UE9sL4r6m6A/viewform?embedded=true\" width=\"640\">Loading&amp;hellip;</iframe></p>\r\n', 'berbagi-kado-baruna-marines-l-123', 42),
(16, 'oke gass', 'Rp 3.893.000', 'Rp 100.000', '100%', '403', '171', 'item-210722-c939385ff3.jpg', '<p>asdasdasdsadas</p>\r\n', 'oke-gass', 17),
(17, 'I\'ll Be There For You', 'Rp 31.893.000', 'Rp 100.000', '92%', '40', '10', 'item-050821-56344a11d3.jpg', '<p>sadasdasdasdas</p>\r\n', 'i-ll-be-there-for-you', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi_galeri`
--

CREATE TABLE `donasi_galeri` (
  `id_donasiGaleri` int(11) NOT NULL,
  `id_donasi` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gambar_galeri` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donasi_galeri`
--

INSERT INTO `donasi_galeri` (`id_donasiGaleri`, `id_donasi`, `slug`, `gambar_galeri`, `tanggal_input`, `admin`) VALUES
(1, 12, 'berbagi-kado-pak-rusman', 'item-020821-287fb751d2.jpg', '2021-08-05 09:01:42', 'baruna'),
(2, 12, 'berbagi-kado-pak-rusman', 'item-020821-d6f8cfe2c9.jpg', '2021-08-05 09:01:39', 'baruna'),
(3, 12, 'berbagi-kado-pak-rusman', 'item-020821-73fddae16d.jpg', '2021-08-05 09:01:36', 'baruna'),
(4, 17, 'i-ll-be-there-for-you', 'item-050821-35eeda4803.jpeg', '2021-08-05 08:56:03', 'baruna'),
(6, 16, 'oke-gass', 'item-050821-8fd8c04e2f.jpg', '2021-08-05 09:13:12', 'baruna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi_slideshow`
--

CREATE TABLE `donasi_slideshow` (
  `id_donasiSlide` int(11) NOT NULL,
  `id_donasi` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gambar_slideshow` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donasi_slideshow`
--

INSERT INTO `donasi_slideshow` (`id_donasiSlide`, `id_donasi`, `slug`, `gambar_slideshow`, `tanggal_input`, `admin`) VALUES
(1, 12, 'berbagi-kado-pak-rusman', 'item-210802-51debc179b.jpg', '2021-08-05 09:01:52', 'baruna'),
(2, 12, 'berbagi-kado-pak-rusman', 'item-210802-0d14f2ca74.jpg', '2021-08-05 09:02:11', 'baruna'),
(3, 13, 'berbagi-kado-baruna-marines-l-123', 'item-300721-65626db4d8.jpg', '2021-08-05 09:02:18', 'baruna'),
(4, 16, 'oke-gass', 'item-300721-a95da94a63.jpg', '2021-08-05 09:21:24', 'baruna'),
(5, 17, 'i-ll-be-there-for-you', 'item-050821-f412c81322.jpg', '2021-08-05 08:53:38', 'baruna'),
(6, 17, 'i-ll-be-there-for-you', 'item-050821-10356b31fe.JPG', '2021-08-05 08:53:45', 'baruna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri2`
--

CREATE TABLE `galeri2` (
  `id_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(255) NOT NULL,
  `gambar_sampul` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `tempat_content` varchar(255) NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `desGambar_content` text NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri2`
--

INSERT INTO `galeri2` (`id_galeri`, `nama_galeri`, `gambar_sampul`, `tanggal_content`, `judul_content`, `tempat_content`, `gambar_content`, `desGambar_content`, `tanggal_input`) VALUES
(1, 'Liburan', 'WhatsApp_Image_2021-06-17_at_14_34_33.jpeg', '2021-06-30', 'Public Teaching Berlindung', 'Jakarta, Indonesia', 'WhatsApp_Image_2021-05-07_at_11_49_35.jpeg', '<p>Acara dalam zoom</p>\r\n', '2021-06-30 17:16:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_album`
--

CREATE TABLE `galeri_album` (
  `id_galeri` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `gambar_galeri` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `slug` varchar(255) NOT NULL,
  `admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri_album`
--

INSERT INTO `galeri_album` (`id_galeri`, `id_album`, `gambar_galeri`, `tanggal_input`, `slug`, `admin`) VALUES
(49, 3, 'item-020721-1e7edfcaf0.jpg', '2021-07-16 13:32:54', 'vassa-di-biara', 'baruna'),
(51, 2, 'item-020721-173caac844.jpg', '2021-07-15 20:12:11', 'bakti-sosial', 'baruna'),
(52, 3, 'item-020721-158dbf2b11.jpg', '2021-07-16 13:33:03', 'vassa-di-biara', 'baruna'),
(53, 2, 'item-050721-e40b738e2f.jpg', '2021-07-15 20:12:26', 'bakti-sosial', 'admin'),
(55, 5, 'item-050721-fb2bd0aaa2.jpg', '2021-07-15 19:05:19', 'waisak-di-biara', 'admin'),
(56, 5, 'item-160721-fe3d34cf17.jpg', '2021-07-16 13:37:23', 'waisak-di-biara', 'baruna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `nama_gallery` varchar(255) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `gambar_sampul` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `nama_gallery`, `judul_content`, `deskripsi`, `gambar`, `tanggal_content`, `lokasi`, `gambar_sampul`, `tanggal_input`) VALUES
(1, 'Baksos', 'Perayaan 15 tahun KCI', '<p><strong>Pernahkah anda membuat Gallery foto</strong> dengan menggunakan Codeigniter ?</p>\r\n', 'biara_indonesia_tusita.jpg', '2021-06-01', 'Ujung Berung, Bandung', 'aula.jpg', '2021-06-22 15:54:28'),
(3, 'motoran', '', '<p>Buat yang gak mau repot, bisa menggunakan library</p>\r\n', 'DSC07604-01.jpeg', '2021-06-16', '', '', '2021-06-15 11:55:30'),
(5, '', '', '', 'item-210630-5e3058c2e1.jpg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(6, '', '', '', 'item-210630-ed50c31b9c.jpg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(7, '', '', '', 'item-210630-9832e56d46.jpg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(8, '', '', '', 'item-210630-1a473a7c28.jpg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(9, '', '', '', 'item-210630-1fb59d6af9.jpg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(10, '', '', '', 'item-210630-672dea3236.jpg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(11, '', '', '', 'item-210630-2517055f2b.jpg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(12, '', '', '', 'item-210630-4ba56bef2d.jpg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(13, '', '', '', 'item-210630-3f36a76267.jpg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(14, '', '', '', 'item-210630-eeb9468451.jpg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(15, '', '', '', 'item-210630-c743eb4f68.jpg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(16, '', '', '', 'item-210630-d991efc4a8.jpg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(17, '', '', '', 'item-210630-923a11c0a4.jpeg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(18, '', '', '', 'item-210630-9765ccddda.jpeg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(19, '', '', '', 'item-210630-f3fccb63f2.jpeg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(20, '', '', '', 'item-210630-5c0745291c.jpeg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(21, '', '', '', 'item-210630-004bc1c41f.jpeg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(22, '', '', '', 'item-210630-2ad273f725.jpeg', '0000-00-00', '', '', '2021-06-30 13:13:48'),
(23, '', '', '', 'item-210630-0217289642.jpeg', '0000-00-00', '', '', '2021-06-30 13:13:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'Guru Pembimbing', '<h2 style=\"text-align:center\"><img src=\"https://static.wixstatic.com/media/2754c2_b3b5d588481f44c8ad890e84d856c1e6.jpg/v1/crop/x_0,y_0,w_4473,h_4780/fill/w_291,h_338,al_c,q_80,usm_0.66_1.00_0.01/2754c2_b3b5d588481f44c8ad890e84d856c1e6.webp\" /></h2>\r\n\r\n<h5>YM Dagpo Rinpoche, pembimbing utama KCI</h5>\r\n\r\n<p>Dikenali oleh His Holiness Dalai Lama XIII sebagai reinkarnasi dari Guru Dagpo Lama Rinpoche Jampel Lhundrup. Pada kehidupan lampau, beliau juga adalah Suvarnadvipa Dharmakirti, pemegang silsilah instruksi batin pencerahan (Bodhicitta) yang tinggal di Palembang pada masa kerajaan Sriwijaya pada abad 11 Masehi.Pada tahun 1960, Rinpoche diundang ke Perancis untuk mengajar bahasa dan kebudayaan Tibet di School of Oriental Studies di Paris. Beliau mengajar di lembaga tersebut selama 30 tahun.Hingga saat ini, Rinpoche menetap di Perancis dan mendirikan Dharma Centre yang telah tersebar di berbagai kota di berbagai negara seperti Perancis, Belanda, Malaysia, dan Indonesia. Sampai sekarang Beliau masih aktif mengajar di berbagai Center Beliau termasuk di Indonesia. Untuk Indonesia sendiri, Beliau telah aktif mengajar selama lebih dari 25 tahun.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://static.wixstatic.com/media/2754c2_994d351e31964459a7dd43a3bc597e52~mv2.jpeg/v1/crop/x_86,y_108,w_514,h_830/fill/w_291,h_407,al_c,q_80,usm_0.66_1.00_0.01/2754c2_994d351e31964459a7dd43a3bc597e52~mv2.webp\" /></p>\r\n\r\n<h2>YM Biksu Bhadraruci</h2>\r\n\r\n<p>Sebagai pencetus dan pendiri KCI, YM Biksu Bhadraruci Sthavira telah berkecimpung dalam pembinaan generasi muda sejak tahun 2001 dan bahkan jauh sebelumnya. Kebaikan hati dan keseriusan beliau telah menyalakan dan mempertahankan semangat murid-muridnya hingga kini KCI menjadi institusi yang siap melestarikan Sutra dan Tantra.Sekarang Beliau menjabat sebagai Maha Lekhanadikari SAGIN, Sekretaris Jendral KASI sekaligus juga Nayaka Sangha Tantrayana SAGIN.Merupakan pakar di bidang Buddhisme Indonesia, candi-candi Buddhis, arkeologi dan budaya tionghoa. Beliau pun berpartisipasi dalam berbagai seminar tentang hal-hal tersebut, baik di tingkat nasional ataupun internasional.Aktifitas Beliau mayoritas adalah mengajar di 9 Dharma Center cabang KCI sambil berkarya untuk guru Beliau dan pelestarian Buddha Dharma khususnya di Indonesia. Salah satu mimpi Beliau adalah agar Dharma dapat dialihbahasakan ke bahasa Indonesia juga bahasa-bahasa daerah.</p>\r\n\r\n<h2>Silsilah Guru Penahbis</h2>\r\n\r\n<h2>HH Dalai Lama XIV Tenzin Gyatso</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://static.wixstatic.com/media/2754c2_e0d7330009ad4110b95d62b05899e7f8.jpg/v1/crop/x_411,y_511,w_1532,h_2295/fill/w_291,h_436,al_c,q_80,usm_0.66_1.00_0.01/2754c2_e0d7330009ad4110b95d62b05899e7f8.webp\" /></p>\r\n\r\n<p>Yang Maha Suci Dalai Lama XIV Tenzin Gyatso adalah pemimpin spiritual rakyat Tibet, pemimpin politik pemerintahan Tibet dalam pengasingan (hingga tahun 2011), seorang guru besar Buddhisme Tibetan, kepala biara, penerima hadiah nobel perdamaian, dan banyak lagi peran Beliau; namun demikian, YMS Dalai Lama lebih sering menyebut dirinya sendiri sebagai seorang biksu Buddhis biasa. Terlepas dari bagaimana Beliau &lsquo;menyederhanakan&rsquo; kualitas dirinya sendiri, dunia tak sanggup untuk mengatakan bahwa karya YMS Dalai Lama XIV adalah hal yang biasa.&nbsp;Sebagai biksu Buddhis, Beliau adalah panutan ideal umat Buddhis, awam maupun monastik, akan sebuah kesederhanaan dan kedisiplinan hidup seorang pertapa, contoh hidup welas asih universal untuk semua makhluk, dan sebuah manifestasi kedalaman praktek spiritual.</p>\r\n\r\n<p>Sebagai seorang Guru Besar Buddhadharma, wawasan Beliau ibarat ensiklopedia dengan keterbukaan terhadap perkembangan dunia modern. Sejak pertengahan tahun 1980-an, Beliau memulai dialog multi-disiplin dengan para ilmuwan yang menginisiasi sebuah kolaborasi unik modern-tradisional dalam rangka membantu seseorang memperoleh kebahagiaan dalam batinnya.</p>\r\n\r\n<p>Sebagai pemimpin politik (sekarang telah pensiun), YMS Dalai Lama menakjubkan dunia dengan pendekatan politik Beliau, demi kebebasan rakyat Tibet. Walau berhadapan dengan kekuatan komunis yang agresif dan luar-biasa brutal, Beliau tetap setia pada Buddhadharma, nilai kemanusiaan, dan non-kekerasan. Nobel Perdamaian tahun 1989 yang dianugerahkan kepada Beliau merupakan wujud pengakuan dunia terhadap sumbangsih besar YMS Dalai Lama. Beliau juga terus mempromosikan toleransi antar agama, dialog,&nbsp; dan demokratisasi selama pemerintahannya dalam pengungsian.</p>\r\n\r\n<p>YMS Dalai Lama XIV Tenzin Gyatso sekarang berumur 85 tahun, dan menetap di Dharamsala negara bagian Himachal Pradesh yang juga dikenal sebagai &lsquo;land of god / tanah dewata&rsquo;, di India. Beliau masih aktif dalam studi-kontemplasi-dan meditasi, menahbiskan biarawan, mengajar, berdialog lintas agama, ilmu, dan keyakinan; tidak hanya di India atau Asia, tapi di berbagai benua, puluhan negara. Dengan cara demikian, Beliau senantiasa memberkahi dunia.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://static.wixstatic.com/media/2754c2_c390ac56831b4bdb9944bb8d2f8f8e71~mv2.jpeg/v1/fill/w_291,h_385,al_c,q_80,usm_0.66_1.00_0.01/2754c2_c390ac56831b4bdb9944bb8d2f8f8e71~mv2.webp\" /></p>\r\n\r\n<h2>YM Khenzur Rinpoche Lobsang Tenpa</h2>\r\n\r\n<p>Khenzur Rinpoche Lobsang Tenpa adalah Pemimpin Biara Drepung (Drepung Tripa) sampai dengan sekarang, setelah sebelumnya menjadi Kepala Biara Drepung Gomang (satu dari tiga biara utama tadisi Gelug selain Ganden dan Sera). Khensur Lobsang Tenpa, lahir pada tahun 1938, di Amdo, provinsi Tibet Timur. Beliau menjalani kehidupan monasti sejak usia11 tahun di biara Taktsang Lhamo. Pada usia 18 tahun, Beliau pergi ke selatan Lhasa dan bergabung dengan Biara Drepung Gomang.</p>\r\n\r\n<p>Pada tahun 1959, beliau melarikan diri dari Tibet mengikuti H. H. Dalai Lama ke India ketika Tiongkok melakukan invasi terhadap Tibet dan menetap di kemah transit selama 10 tahun. Pada tahun 1970, beliau memasuki Universitas Central Institute of Higher Studies di Varanasi dan mendapatkan gelar Acharya dengan hasil yang sempurna. Pada tahun 1973, beliau kembali ke Biara Drepung Gomang untuk mempelajari Abhidharma dan Vinaya. Dan lulus ujian geshe (setara doktoral) di mana beliau menempati posisi pertama mengungguli semua peserta dari ketiga biara besar.&nbsp;</p>\r\n\r\n<p>Khenzur Rinpoche dipilih oleh H.H. Dalai Lama untuk menjadi kepala biara pada tahun 1989. Rinpoche telah memberikan pembabaran Dharma ke Tibet, Rusia dan Mongolia, serta ke Eropa. Beliau juga berkunjung ke Indonesia untuk mengajar Sangha Kadam Choeling Indonesia sekaligus memberikan penahbisan. Dengan pengakuan dan pencapaian beliau dalam doktrin Sutra dan Tantra Buddhis, Rinpoche menjadi inspirasi besar bagi para praktisi Dharma baik kalangan monastik maupun perumahtangga.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://static.wixstatic.com/media/2754c2_202927763cc849d698e6a37440f19f5d~mv2.png/v1/crop/x_30,y_0,w_435,h_538/fill/w_291,h_360,al_c,q_85,usm_0.66_1.00_0.01/2754c2_202927763cc849d698e6a37440f19f5d~mv2.webp\" /></p>\r\n\r\n<h2>YM Geshe Yonten Gyatso</h2>\r\n\r\n<p>Geshe Yonten Gyatso lahir di Propinsi Amdo, Tibet, pada tahun 1932. Pada usia 7 tahun, beliau memasuki biara Bura Ngonpotang di Bura, dan ditahbiskan menjadi Bhiksu. Menjelang usia 17 tahun, Beliau melanjutkan studi Filsafat Buddhisme di Universitas Monastik Labrang Trashi Kyil, Propinsi Amdo. Tahun 1954, Beliau berangkat menuju Lhasa dan bergabung dengan Universitas Drepung Gomang, dan belajar di bawah Guru Besar Mongolia Geshe Ngawang Nyima. Setelah mengajar sekian lama di Biara Trashi Kyil, pada tahun 1995 beliau diundang ke Biara Drepung Gomang di Mundgod, India Selatan dan menetap di sana untuk mengajar. Geshe Yundun telah diundang ke manca negara untuk mengajar agama Buddha, di antaranya di Perancis, Amerika Serikat, Selandia Baru dan sekarang, di Indonesia.</p>\r\n', 'item-210726-219e63c394.jpg', 'https://youtu.be/Xr7z3WV3RBg', '2021-07-10', '2021-07-29 18:08:09', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_kutipan`
--

CREATE TABLE `home_kutipan` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `teks` text NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `teks_tombol` varchar(255) NOT NULL,
  `link_tombol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `home_kutipan`
--

INSERT INTO `home_kutipan` (`id`, `gambar`, `teks`, `nama`, `jabatan`, `teks_tombol`, `link_tombol`) VALUES
(1, 'DagpoRinpoche2.jpg', '“… dengan kepala panas dan semangat yang makin besar, para bhiksu mengalami saat-saat berbahagia. Merasakan kecerdasan meningkat dan pelajaran yang diterima mengasah penalaran menjadi sangat tajam.”', 'Dagpo Rinpoche', 'Guru', '', ''),
(2, 'BiksuBhadraRuci.jpg', '\"Mereka yang beraspirasi meraih kebahagiaan diri sendiri ataupun mahkluk lain, bertekad untuk mengalihkan pemikiran mereka dari duniawi, bersedia untuk melatih diri untuk penyempurnaan batin, maka, merekalah latihan sebagai biksu akan menghasilkan panen kualitas penolakan samsara, dan berbagai kualitas baik lainnya\"', 'Y.M. Bhadra Ruci', 'Biksu', '', ''),
(3, 'Dalailamajpg.jpg', '\"Jika mampu tolong dan bantulah orang lain, jika tidak setidaknya jangan mencelakakan orang lain\"', 'HH Dalai Lama XIV Tenzin Gyatso', 'Guru Besar Buddhadharma', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_lainnya`
--

CREATE TABLE `home_lainnya` (
  `id` int(11) NOT NULL,
  `bagian` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `a_silsilah_gambar` varchar(255) NOT NULL,
  `a_silsilah_judul` varchar(255) NOT NULL,
  `a_silsilah_deskripsi` text NOT NULL,
  `a_silsilah_tombol_teks` varchar(255) NOT NULL,
  `a_silsilah_tombol_link` varchar(255) NOT NULL,
  `a_biara_gambar` varchar(255) NOT NULL,
  `a_biara_judul` varchar(255) NOT NULL,
  `a_biara_deskripsi` text NOT NULL,
  `a_biara_tombol_teks` varchar(255) NOT NULL,
  `a_biara_tombol_link` varchar(255) NOT NULL,
  `a_silasrama_gambar` varchar(255) NOT NULL,
  `a_silasrama_judul` varchar(255) NOT NULL,
  `a_silasrama_deskripsi` text NOT NULL,
  `a_silasrama_tombol_teks` varchar(255) NOT NULL,
  `a_silasrama_tombol_link` varchar(255) NOT NULL,
  `b_gambar` varchar(255) NOT NULL,
  `b_subjudul` varchar(255) NOT NULL,
  `b_judul` varchar(255) NOT NULL,
  `b_about_gambar` varchar(255) NOT NULL,
  `b_about_teks` varchar(255) NOT NULL,
  `b_deskripsi` text NOT NULL,
  `b_video_link` varchar(255) NOT NULL,
  `b_video_icon` varchar(255) NOT NULL,
  `b_video_teks` varchar(255) NOT NULL,
  `c_gambar` varchar(255) NOT NULL,
  `c_kutipan` varchar(255) NOT NULL,
  `c_nama` varchar(255) NOT NULL,
  `c_tombol_teks` varchar(255) NOT NULL,
  `c_tombol_link` varchar(255) NOT NULL,
  `d_gambar` varchar(255) NOT NULL,
  `d_judul` varchar(255) NOT NULL,
  `d_teks_kuning` text NOT NULL,
  `d_teks_putih` text NOT NULL,
  `d_kotak_icon` varchar(255) NOT NULL,
  `d_kotak_angka` varchar(255) NOT NULL,
  `d_kotak_teks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `home_lainnya`
--

INSERT INTO `home_lainnya` (`id`, `bagian`, `isi`, `a_silsilah_gambar`, `a_silsilah_judul`, `a_silsilah_deskripsi`, `a_silsilah_tombol_teks`, `a_silsilah_tombol_link`, `a_biara_gambar`, `a_biara_judul`, `a_biara_deskripsi`, `a_biara_tombol_teks`, `a_biara_tombol_link`, `a_silasrama_gambar`, `a_silasrama_judul`, `a_silasrama_deskripsi`, `a_silasrama_tombol_teks`, `a_silasrama_tombol_link`, `b_gambar`, `b_subjudul`, `b_judul`, `b_about_gambar`, `b_about_teks`, `b_deskripsi`, `b_video_link`, `b_video_icon`, `b_video_teks`, `c_gambar`, `c_kutipan`, `c_nama`, `c_tombol_teks`, `c_tombol_link`, `d_gambar`, `d_judul`, `d_teks_kuning`, `d_teks_putih`, `d_kotak_icon`, `d_kotak_angka`, `d_kotak_teks`) VALUES
(1, 'a_silsilah_gambar', '', 'item-230721-e138409a89.jpg', 'Silsilah 1', '<p>Biara Indonesia Tuṣita Vivaraṇācaraṇa Vijayāśraya mewarisi silsilah ajaran Lamrim turun-temurun yang autentik dan dapat ditelusuri hingga Buddha Sakyamuni</p>\r\n', 'Klik', '#', 'DSC09937_1.jpg', 'Biara Hari Ini', '<p>Mari lebih dekat dengan Biara Indonesia Tuṣita Vivaraṇācaraṇa Vijayāśraya dengan mengikuti berita harian biara terkini</p>\r\n', 'Klik', '#', 'item-230721-bda9353195.jpeg', 'Silasrama', '<p>Mari lebih dekat dengan Biara Indonesia Tuṣita Vivaraṇācaraṇa Vijayāśraya dengan mengikuti berita harian biara terkini</p>\r\n', 'Klik', '#', 'item-220721-f3a6dc90b2.jpeg', 'Welcome to Biaralamrim.com', 'Tentang Biara Indonesia Tuṣita Vivaraṇācaraṇa Vijayāśraya', 'sangha2.jpg', 'Biaralamrin berdiri sejak tahun 1970 dengan banyak sejarah', '<p>Biara adalah Tanah Suci kita. Beraktivitas di sana ibarat kita beraktivitas di Tushita, di mana burung menyanyikan mantram, embusan angin menyadarkan kita untuk memeditasikan Lamrim, pohon mede mengingatkan kita untuk senantiasa menjaga Empat Kewaspadaan</p>\r\n', 'https://youtu.be/q7kgmHL3J2c', 'item-230721-22bfb58dc8.jpg', 'Aula Maha Karuna Sri Prabha Gumelar - Pusdiklat Jina Putra Tushitavijaya, Watch video', 'item-230721-2d5cad9148.jpg', '<p>&ldquo;Kondisi yang ideal adalah kita bisa bahagia dalam kehidupan sekarang ini dan bahagia dalam kehidupan yang akan datang, berikutnya dan seterusnya&rdquo;</p>\r\n', '- Guru Dagpo Rinpoche -', 'Klik Untuk Donasi', '#', 'item-230721-9a4a9b7acc.jpg', 'Donasi', 'Mari bahu-membahu dan gotong-royong bersama dalam menghimpun sebab bajik bagi kepulangan kembali Buddhisme ke Nusantara!', '<p>&ldquo;Umat awam yang mendukung pembangunan sebuah biara, meskipun tidak hidup di dalam biara akan mendapatkan kebajikan yang setara dengan mereka yang di dalam biara tersebut.&rdquo; - Y. M. Guru Dagpo Rinpoche</p>\r\n', 'donation.png', '200', 'Total Donatur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_slideshow`
--

CREATE TABLE `home_slideshow` (
  `id` int(11) NOT NULL,
  `posisi` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `teks_tombol` varchar(255) NOT NULL,
  `link_tombol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `home_slideshow`
--

INSERT INTO `home_slideshow` (`id`, `posisi`, `gambar`, `judul`, `deskripsi`, `teks_tombol`, `link_tombol`) VALUES
(1, 'kiri', 'item-220721-eeb5f954bd.jpg', 'Biara Indonesia Tusita Vivaranācarana Vijayāśraya 12', '<p>Institusi Pendidikan Monastik Sutra &amp; dan Tantra pertama di Asia Tenggara berdasarkan tradisi Silsilah Emas Guru Suwarnadwipa adasdas</p>\r\n', 'Klik Selanjutnya', 'http://localhost/biaralamrim/index.php/PageC/Home'),
(2, 'kanan', 'homepage1-min.jpg', '7 Tahun Membuka Pintu Tradisi Monastik Nusantara', 'Peringatan Debat Filosofis Buddhis Pertama di Nusantara Sejak Keruntuhan Majapahit', 'Klik Selanjutnya', 'http://localhost/biaralamrim/index.php/PageC/Home'),
(3, 'kiri', 'homepage4-min3.jpg', 'Silsilah Ajaran Biara', '<p>Silsilah merupakan salah satu cara untuk memastikan keaslian Dharma</p>\r\n', 'Klik Selanjutnya', 'http://localhost/biaralamrim4/PageC/Silsilah_ajaran'),
(5, 'kanan', 'item-220721-327b0144f6.jpg', 'joan mir', '<p>adasdas</p>\r\n', 'Klik Selanjutnya', 'http://localhost/biaralamrim4/PageC/Tentang_sangha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_bulanan`
--

CREATE TABLE `jadwal_bulanan` (
  `id_jadwalBulanan` int(11) NOT NULL,
  `acara` varchar(300) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(255) NOT NULL,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal_bulanan`
--

INSERT INTO `jadwal_bulanan` (`id_jadwalBulanan`, `acara`, `slug`, `tanggal`, `isi_content`, `gambar_content`, `tanggal_input`, `admin`, `jumlahVisitor`) VALUES
(4, 'Membuat Format Tanggal Indonesia di CodeIgniter', 'membuat-format-tanggal-indonesia-di-codeigniter', '2021-05-26', '<p>Pada saat memasukan data kedalam database sering kali kita mendapatkan tanggal berformat Inggris, contoh pada fungsi date(&#39;Y-m-d&#39;) maka akan menghasilkan output 2019-08-25. Format tanggal tersebut tidak mempengaruhi sistem yang kita buat, akan tetapi akan sangat berpengaruh jika kita membuat sistem untuk laporan yang tentunya harus menggunakan format sesuai Negara kita yaitu Indonesia.</p>\r\n', 'Home_8.jpg', '2021-09-13 15:23:15', 'Tirta', 10),
(6, 'Cara Mencegah SQL Injection pada CodeIgniter INES', 'cara-mencegah-sql-injection-pada-codeigniter-ines', '2021-06-16', '<p>Formulir ini berisi katalog produk PO Tim Danus DNBF 3.0 beserta form pemesanannya untuk periode 23 Mei 2021 - 30 Mei 2021</p>\r\n', 'Home_3.jpg', '2021-09-13 15:47:39', 'Tirta', 13),
(7, 'Kelas Meditasi', 'kelas-meditasi', '2021-08-26', '<p>Instead if I set limit and start works! If limit and start are null, Why doesn&#39;t return result? I don&#39;t want to make a second function or a control if limit and start are null. How can I solve this when limit and start are null without a control or a second function to make useful the code and more efficient?</p>\r\n', 'item-200821-b6729341da.jpg', '2021-09-13 15:50:30', 'Tirta', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_mendatang`
--

CREATE TABLE `jadwal_mendatang` (
  `id_jadwalMendatang` int(11) NOT NULL,
  `acara` varchar(300) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(255) NOT NULL,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal_mendatang`
--

INSERT INTO `jadwal_mendatang` (`id_jadwalMendatang`, `acara`, `slug`, `tanggal`, `isi_content`, `gambar_content`, `tanggal_input`, `admin`, `jumlahVisitor`) VALUES
(1, 'Bayu Andriansyah', 'bayu-andriansyah', '2021-05-20', '<p>Simpan, lalu kita panggil Helper yang telah kita buat menggunakan autoload. Buka folder application/config dan buka file autoload.php cari kode $autoload[&#39;helper&#39;] = array(); dan rubah menjadi seperti dibawah ini.</p>\r\n', 'hidup_di_biara_Home_1.jpg', '2021-09-14 09:04:48', '', 59),
(2, 'adasdas INES', 'adasdas-ines', '2021-05-06', '<p>Halo mas taufik, wah untuk case memanggil helper di controller saya sendiri belum pernah. Btw kebutuhanya untuk apa mas? Atau boleh dicoba dulu mas. Harusnya bisa, dengan syarat helper panggil dulu dicontroller. CMIIW&nbsp;</p>\r\n', 'Home_7.jpg', '2021-09-09 18:00:40', '', 9),
(5, 'Membuat Format Tanggal Indonesia di CodeIgniter', 'membuat-format-tanggal-indonesia-di-codeigniter', '2021-08-20', '<p>Instead if I set limit and start works! If limit and start are null, Why doesn&#39;t return result? I don&#39;t want to make a second function or a control if limit and start are null. How can I solve this when limit and start are null without a control or a second function to make useful the code and more efficient?</p>\r\n', 'item-200821-71a48d955c.jpeg', '2021-09-10 06:03:58', 'baruna', 28);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_mingguan`
--

CREATE TABLE `jadwal_mingguan` (
  `id_jadwalMingguan` int(11) NOT NULL,
  `acara` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(200) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(255) NOT NULL,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal_mingguan`
--

INSERT INTO `jadwal_mingguan` (`id_jadwalMingguan`, `acara`, `slug`, `tanggal`, `isi_content`, `gambar_content`, `tanggal_input`, `admin`, `jumlahVisitor`) VALUES
(3, 'Latihan Ngondro', 'latihan-ngondro', '2021-04-09', '<p><em>Kapan: Setiap hari Minggu, 10:00 &ndash; 11:30</em><br />\r\n<em>Di mana: Mani House</em><br />\r\n<em>Gratis</em><br />\r\n<em>Pendaftaran tidak diperlukan</em></p>\r\n\r\n<blockquote>\r\n<p>&ldquo;Setiap orang yang hatinya digerakkan oleh cinta dan kasih sayang, yang secara mendalam dan tulus bertindak untuk kepentingan orang lain tanpa memperhatikan ketenaran, keuntungan, status sosial, atau pengakuan, ini mengekspresikan tindakan Chenrezig.&rdquo; &ndash; Bokar Rinpoche.</p>\r\n</blockquote>\r\n\r\n<p>Chenrezig terkenal sebagai perwujudan welas asih dari semua Buddha, Bodhisattva Welas Asih. Doa-doa ini dilantunkan dalam bahasa Tibet, termasuk mantra Om Mani Padme Hung, dan terbuka untuk semua.</p>\r\n', 'WhatsApp_Image_2021-03-29_at_17_21_22.jpeg', '2021-09-14 07:32:34', '', 12),
(4, 'asdsadsadas', 'asdsadsadas', '2021-04-23', '<p><em>Kapan: Setiap hari Jumat, 7 &ndash; 8:30 malam</em><br />\r\n<em>Di mana: Mani House</em><br />\r\n<em>Gratis</em><br />\r\n<em>Pendaftaran tidak diperlukan</em></p>\r\n\r\n<p>Bergabunglah dengan kelas Meditasi kami pada hari Jumat. Ini adalah cara yang bagus untuk membangun batin yang kuat, melalui latihan meditasi harian yang lembut.<br />\r\nDalam sesi ini, kita akan berlatih meditasi Buddhis yang akan membangun fokus dan stabilitas batin. Sesi ini terbuka untuk umum, semua tingkatan, termasuk pemula.</p>\r\n', 'Heboh_sekeluarga_lepas_lele_2_karung_fangshen_Buddhis.JPG', '2021-09-13 18:46:55', '', 7),
(5, 'Best for any industrial & business solution', 'best-for-any-industrial-business-solution', '2021-08-20', '<p>Instead if I set limit and start works! If limit and start are null, Why doesn&#39;t return result? I don&#39;t want to make a second function or a control if limit and start are null. How can I solve this when limit and start are null without a control or a second function to make useful the code and more efficient?</p>\r\n', 'item-200821-67bf43b0d6.JPG', '2021-09-13 18:44:01', 'Tirta', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_tahunan`
--

CREATE TABLE `jadwal_tahunan` (
  `id_jadwalTahunan` int(11) NOT NULL,
  `acara` varchar(300) NOT NULL,
  `tanggal` date NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal_tahunan`
--

INSERT INTO `jadwal_tahunan` (`id_jadwalTahunan`, `acara`, `tanggal`, `isi_content`, `gambar_content`, `tanggal_input`) VALUES
(1, 'Cara Membuat Captcha dengan CodeIgniter', '2021-04-01', '<p>Mungkin cukup sekian tutorial tentang Cara Membuat Format Tanggal Indonesia pada Framework CodeIgniter, jika bermanfaat silahkan share keteman-teman kalian supaya mereka tau apa yang kalian tau. Jika ada kesulitan silahkan tinggalkan komentar.</p>\r\n', 'Home_7.jpg', '2021-05-25 07:40:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kantor_sangha`
--

CREATE TABLE `kantor_sangha` (
  `id_kantorSangha` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `tanggung_jawab` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kantor_sangha`
--

INSERT INTO `kantor_sangha` (`id_kantorSangha`, `nama`, `jabatan`, `tanggung_jawab`, `gambar_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'Shandi', 'Direktur', '<p><span style=\"font-size:9pt\"><span style=\"font-family:Arial\">Program Donasi saklek untuk Biara, Sangha, dan current events yang nanti bisa ngelink ke halaman masing</span></span></p>\r\n', 'item-210729-4bfc522d38.jpg', '2021-07-29 18:07:09', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_induk_komentar` int(11) DEFAULT NULL,
  `tabel_induk` varchar(255) NOT NULL COMMENT 'diisi dengan tbl_artikel atau tbl_berita',
  `id_tabel_induk` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `komentar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_user`, `id_induk_komentar`, `tabel_induk`, `id_tabel_induk`, `waktu`, `komentar`) VALUES
(1, 2, NULL, 'tbl_artikel', 1, '2021-05-19 07:04:36', 'Tes'),
(2, 1, 1, 'tbl_artikel', 1, '2021-05-19 07:27:17', 'Tes 2'),
(3, 2, 2, 'tbl_artikel', 1, '2021-05-20 07:52:59', 'Test123'),
(4, 2, NULL, 'tbl_artikel', 1, '2021-05-24 09:56:33', 'oke');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi_dana`
--

CREATE TABLE `konfirmasi_dana` (
  `id_konfirmasiDana` int(11) NOT NULL,
  `nama_pendaftar` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `pilih_donasi` varchar(255) NOT NULL,
  `bank_transfer` varchar(255) NOT NULL,
  `jumlah_transfer` int(11) NOT NULL,
  `jumlah_paket` varchar(255) NOT NULL,
  `jenis_paket` varchar(255) NOT NULL,
  `nama_dedikasi` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfirmasi_dana`
--

INSERT INTO `konfirmasi_dana` (`id_konfirmasiDana`, `nama_pendaftar`, `email`, `alamat`, `no_telp`, `tanggal_transfer`, `pilih_donasi`, `bank_transfer`, `jumlah_transfer`, `jumlah_paket`, `jenis_paket`, `nama_dedikasi`, `pesan`, `tanggal_input`) VALUES
(15, 'Baruna Marines', 'barunamarines@gmail.com', 'JL. Cigiringsing, Girimekar, Kec. Ujung Berung', '083120344378', '2021-08-12', 'oke gass', 'BCA a.n Baruna', 200, '1A', 'Paket 2, frekuensi 3x', 'Iting', 'More \"Try it Yourself\" examples below. sadsadasd', '2021-08-10 14:34:05'),
(54, 'Sasti', 'barunamarines@gmail.com', 'JL. Cigiringsing, Girimekar, Kec. Ujung Berung', '083120344378', '2021-08-11', 'oke gass', 'BCA a.n Baruna', 122, '1A', 'Paket 2, frekuensi 3x', 'Iting', 'asdadda', '2021-08-18 15:00:23'),
(55, 'Baruna Marines', 'barunamarines@gmail.com', 'JL. Cigiringsing, Girimekar, Kec. Ujung Berung', '083120344378', '2021-07-20', 'I\'ll Be There For You', 'BCA a.n Baruna', 123, '1A', 'Paket 2, frekuensi 3x', 'Iting', 'adasdasd', '2021-08-18 18:21:40'),
(56, 'Baruna Marines', 'barunamarines@gmail.com', 'JL. Cigiringsing, Girimekar, Kec. Ujung Berung', '083120344378', '2021-06-16', 'Berbagi Kado Baruna Marines L 123', 'BCA a.n Baruna', 200, '1A', 'Paket 2, frekuensi 3x', 'Iting', 'okee', '2021-08-18 18:29:30'),
(57, 'Sasti', 'barunamarines@gmail.com', 'JL. Cigiringsing, Girimekar, Kec. Ujung Berung', '083120344378', '2021-06-16', 'Berbagi Kado Baruna Marines L 123', 'BCA a.n Baruna', 300000, '1A', 'Paket 2, frekuensi 3x', 'Iting', 'okee', '2021-08-18 18:34:40'),
(60, 'Baruna Marines', 'barunamarines@gmail.com', 'JL. Cigiringsing, Girimekar, Kec. Ujung Berung', '083120344378', '2021-09-07', 'Berbagi Kado Baruna Marines L 123', 'BCA a.n Baruna', 21123, '1A Frekuensi 2B Frekuensi 3C Frekuensi', 'Dana Naga - Raya 200rb Dana Naga - Toothless 500rb Dana Naga -  Fang 750rb', 'Iting', 'Input groups include support for custom selects and custom file inputs. Browser default versions of these are not supported.', '2021-09-06 17:36:20'),
(61, 'Sasti', 'barunamarines@gmail.com', 'JL. Cigiringsing, Girimekar, Kec. Ujung Berung', '083120344378', '2021-09-10', 'I\'ll Be There For You', 'BCA a.n Baruna', 24456, '1A Frekuensi, 2B Frekuensi, 3C Frekuensi', 'Dana Vassa - Meta 50rb, Dana Vassa - Karuna 200rb, Dana Vassa - Mudita 1jt', 'Iting', 'Input groups include support for custom selects and custom file inputs. Browser default versions of these are not supported.', '2021-09-06 17:38:17'),
(62, 'Baruna Marines', 'barunamarines@gmail.com', 'JL. Cigiringsing, Girimekar, Kec. Ujung Berung', '083120344378', '2021-09-15', 'Berbagi Kado Pak Rusman', 'BCA a.n Baruna', 24445, '1A Frekuensi, , ', 'Dana Vassa - Mudita 1jt, - List Jenis Paket -, - List Jenis Paket -', 'Iting', 'Input groups include support for custom selects and custom file inputs. Browser default versions of these are not supported.', '2021-09-06 17:42:29'),
(63, 'Baruna Marines', 'barunamarines@gmail.com', 'JL. Cigiringsing, Girimekar, Kec. Ujung Berung', '083120344378', '2021-09-01', 'Berbagi Kado Baruna Marines L 123', 'BCA a.n Baruna', 123000, '1A, 2B Frekuensi, 3C Frekuensi', 'Dana Vassa - Meta 50rb, Dana Vassa - Karuna 200rb, Dana Vassa - Mudita 1jt', 'Iting', 'Input groups include support for custom selects and custom file inputs. Browser default versions of these are not supported.', '2021-09-06 19:51:46'),
(64, 'Barunce', 'barunamarines@gmail.com', 'JL. Cigiringsing, Girimekar, Kec. Ujung Berung', '083120344378', '2021-09-01', 'Berbagi Kado Baruna Marines L 123', 'BCA a.n Baruna', 200000, '1A, 2B Frekuensi, 3C Frekuensi', 'Dana Vassa - Meta 50rb, Dana Vassa - Karuna 200rb, Dana Vassa - Mudita 1jt', 'Suma', 'Input groups include support for custom selects and custom file inputs. Browser default versions of these are not supported.', '2021-09-06 20:00:09'),
(65, 'Arya', 'barunamarines@gmail.com', 'JL. Cigiringsing, Girimekar, Kec. Ujung Berung', '083120344378', '2021-09-30', 'I\'ll Be There For You', 'BCA a.n Baruna', 100000, '1A, , ', 'Dana Vassa - Mudita 1jt, - List Jenis Paket -, - List Jenis Paket -', 'Iting', 'Input groups include support for custom selects and custom file inputs. Browser default versions of these are not supported.', '2021-09-06 20:02:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id_kurikulum` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kurikulum`
--

INSERT INTO `kurikulum` (`id_kurikulum`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'Kurikulum', '<p>Sejak 14 Maret 2021, Sangha Kadam Choeling Indonesia melakukan rangkaian Puja Tolak Bala yang bertujuan untuk menghalau berbagai penghalang dan menghimpun kebajikan. Selain puja yang biasa dilakukan, keunikan Puja Tolak Bala kali ini adalah dilaksanakannya Puja Api (Agnihotra) 4 aktivitas dan ritual konsekrasi air berkah. Kedua aktivitas bajik ini hanya dilakukan pada saat Puja Tolak Bala saja.</p>\r\n\r\n<p>Semua rangkaian aktivitas bajik ini tentunya didedikasikan demi kesehatan dan kesejahteraan komunitas KCI, seluruh warga Indonesia, dan semua makhluk. Terima kasih kepada seluruh donatur yang telah berpartisipasi, semoga kita semua dapat terus mempraktikkan Dharma dengan baik.</p>\r\n\r\n<p>Bagi yang nama dedikasinya belum tercantum atau belum konfirmasi, silahkan melakukan konfirmasi ke Call Center Kadam Choeling Indonesia (0815-7321-0000).</p>\r\n\r\n<p>Klik&nbsp;<a href=\"https://www.kadamchoeling.or.id/wp-content/uploads/2021/03/DEDIKASI-TOLAK-BALA-2021-WEB.pdf\" rel=\"noopener\" target=\"_blank\">di sini</a>&nbsp;berikut, untuk melihat lampiran daftar nama dedikasi Tolak Bala 2021</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://www.kadamchoeling.or.id/rangkaian-puja-tolak-bala-kci-2021/skci/\" rel=\"attachment wp-att-10712\"><img alt=\"Rangkaian Puja Tolak Bala KCI 2021\" src=\"https://www.kadamchoeling.or.id/wp-content/uploads/2021/03/SKCI-e1616470097302.jpg\" style=\"height:455px; width:456px\" /></a></p>\r\n', 'item-210726-ca02a20d77.jpg', 'https://www.youtube.com/watch?v=qLvzzIqkrNE', '2021-07-23', '2021-07-29 18:08:59', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `management_biara`
--

CREATE TABLE `management_biara` (
  `id_managementBiara` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `management_biara`
--

INSERT INTO `management_biara` (`id_managementBiara`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'About IMI oke', '<h5><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">1992</span></span></h5>\r\n\r\n<h5><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">The first Sangha Magazine published at Kopan, edited by Ven. Fran.</span></span></h5>\r\n\r\n<h5><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">1994</span></span></h5>\r\n\r\n<h5><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">The eighty nuns of Khachoe Ghakyil move into their own premises in the valley below Kopan.</span></span></h5>\r\n\r\n<h5><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">1995</span></span></h5>\r\n\r\n<h5><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Ven. Roger Kunsang is appointed Director of IMI by Lama Zopa Rinpoche.</span></span></h5>\r\n\r\n<h5 style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img alt=\"\" src=\"https://imisangha.org/images/mahamudra2004-small.jpg\" /><img alt=\"\" src=\"https://imisangha.org/wp-content/uploads/2020/05/mahamudra2004-small.jpg\" style=\"height:203px; width:300px\" /></span></span></h5>\r\n\r\n<h5><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">1996</span></span></h5>\r\n\r\n<h5><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">The community of nuns at Chenrezig Nuns community officially established as Chenrezig Nuns Community at Chenrezig Insitute.</span></span></h5>\r\n\r\n<h5><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">A three-week nuns training course is organized in February in Bodhgaya entitled &ldquo;Life as a Western Buddhist Nun&rdquo; with Vens. Tenzin Palmo and Thubten Chodron, with IMI nuns Vens. Sangye Khadro, Jampa Chokyi and Siliana particitating.</span></span></h5>\r\n\r\n<h5><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Currently, there are 150 IMI monks and nuns. Since the first ordinations in 1970, of the 225 western men and women who have taken vows, seventy-five have disrobed.</span></span></h5>\r\n\r\n<h5><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Lama Zopa Rinpoche indicates that he would like newly ordained monks and nuns to commit themselves to living in a sangha community, or similarly conducive environment that supports subduing the mind: five years for a monk and four years for a nun. There needs to be balanced education available, particularly for those first years, Rinpoche said. This education does not just mean philosophical study, but a balanced education to produce good monk and nuns. Rinpoche has said time and again that the main protection for one&rsquo;s ordination is the study and meditation of lam-rim, to generate some experience.</span></span></h5>\r\n', 'item-210723-e6af7b1376.jpg', 'https://www.youtube.com/watch?v=qLvzzIqkrNE', '2021-07-13', '2021-07-29 18:07:31', 23);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menjadi_sangha`
--

CREATE TABLE `menjadi_sangha` (
  `id_menjadiSangha` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menjadi_sangha`
--

INSERT INTO `menjadi_sangha` (`id_menjadiSangha`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'Preparing to Become a Buddhist Monk or Nun nun', '<blockquote>\r\n<p style=\"margin-left:40px\">&quot;According to Buddhist practice, there are three stages or steps. The initial stage is to reduce attachment towards life. The second stage is the elimination of desire and attachment to this samsara. Then in the third stage, self-cherishing is eliminated.&quot;</p>\r\n\r\n<p style=\"margin-left:40px\">HH Dalai Lama</p>\r\n</blockquote>\r\n\r\n<p>Becoming a Buddhist monk or nun is truly a meaningful and worthwhile way to spend your life, and to be of benefit to others. We are very fortunate that the monastic tradition started by the Buddha is still alive today, thanks to the devotion, dedication and efforts of many thousands of monks and nuns in Asia over the last 2500 years. Although there is great benefit in becoming ordained, the life of a Buddhist monk or nun also carries a deep responsibility for oneself and for others.</p>\r\n\r\n<h4><strong>Knowing the Buddhist Teachings</strong></h4>\r\n\r\n<p>Before making the decision to take ordination, one should have a thorough foundation in the teachings of the Buddha, such as the Four Noble Truths, the Eightfold Path, and the Stages of the Path to Enlightenment (Lamrim). Traditionally a student requesting ordination has completed several years of study and practice under the guidance of a qualified teacher. If you are beginning, check your local area for a center or study group where you can generate an understanding of the teachings, gather the support of other dharma students and have the guidance of a qualified teacher.</p>\r\n\r\n<h4><strong>Having a Spiritual Guide</strong></h4>\r\n\r\n<p>In any venture we undertake, we need someone who can teach and guide us. This is especially true in our spiritual journey where a qualified teacher can provide the guidance we need to be successful in our practice. Our teacher can help provide the foundation for the monastic life, and will understand when we are ready to take on the commitment required for the monastic vows of ordination. You need to have a teacher who can give you permission to be ordained, and you need to be following one of the Buddhist traditions (e.g. Theravada, Tibetan, etc.).</p>\r\n\r\n<h4><strong>Entering the Buddhist Path</strong></h4>\r\n\r\n<p>Take the time you need in developing your spiritual practice. Once one understands the value of the Buddha&rsquo;s teachings and feels they are appropriate for one&rsquo;s own spiritual development, the next step is to formally establish yourself as a Buddhist by taking &ldquo;refuge&rdquo;.</p>\r\n\r\n<p>It is also important to strengthen one&rsquo;s practice by taking &ldquo;lay vows&rdquo; preparing one for living with vows; many students will also practice celibacy for a period prior to taking ordination. Know yourself and know whether you will feel comfortable being a monk or nun.</p>\r\n\r\n<p><strong>Considering Ordination</strong><br />\r\nIf possible spend some time living in a monastic community receiving advice from the resident monks or nuns on what it is like to be a monastic. Discuss with monks and nuns who have lived with the vows and can offer very practical information on how to maintain one&rsquo;s commitment. Members of the monastic community are happy that you are interested in following the monastic path and want to support you in your ordination. Resources and articles are also available online.</p>\r\n\r\n<p>Programs are being developed where lay practitioners considering ordination can gain an understanding and experience of the monastic life in protected retreat environment.</p>\r\n\r\n<p><strong>A Lifelong Commitment</strong><br />\r\nThe vows of a Buddhist monk or nun are taken for life, therefore it is important to spend time and take great care in reflecting on the various advantages and disadvantages before making a decision. Some monasteries in Asia (e.g. in Thailand) offer part-time ordination programs, usually for men, which allow one the possibility to live as a monastic for a few days, weeks, months, or years. However, in the Tibetan tradition, one makes a commitment for life. And although there are cases of people who take vows and later give them back and return to lay life, this is not recommended. The vows are taken with the determination to keep them for the rest of one&rsquo;s life.</p>\r\n\r\n<p><strong>Being Part of a Community</strong><br />\r\nBecoming a Buddhist monastic means that you are joining a community&mdash;the Sangha. The purpose of the community is to study and practice the Buddha&rsquo;s teachings, and whenever possible, to share them with others. Traditionally, one stays in a monastic community for at least 5 years after becoming ordained. However, as monastic communities are still in development in many parts of the world, this is not always possible. In some cases, one can also reside within a dharma center under the guidance and protection of one&rsquo;s teachers. One should investigate the possibilities that are available to join monastic communities prior to ordination.</p>\r\n\r\n<p>Living in community also means that we share our resources, our habits, our practice and our personalities. In learning to live in a community one can face many difficulties, particularly as many of us have been raised in cultures of individual expression. In order to protect our ordination, the vinaya (code of conduct) for monastic life is very explicit in how we live in community.</p>\r\n\r\n<p><strong>Supporting Yourself</strong><br />\r\nTraditionally, when one joins a monastic community, the four basic requisites of food, clothing, dwelling and medicine are provided. However, as Buddhism is relatively new to many parts of the world, resources to support the monastic communities are limited. For those considering ordination, it is important to consider what resources are available for support once one has taken ordination. Many monks and nuns provide service to their local dharma communities in exchange for their basic needs. IMI also provides support in dependence on available resources. It is contrary to the Vinaya (code of conduct) for monks and nuns to work in worldly jobs to support themselves. Those seeking to become monks or nuns should discuss their situation with their teacher or senior sangha to ensure their stability once they have taken ordination.</p>\r\n', 'item-210726-59cba250da.jpg', 'https://youtu.be/GOfYgMjYBlk', '2021-07-23', '2021-07-29 18:57:54', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nasihat_untuk_sangha`
--

CREATE TABLE `nasihat_untuk_sangha` (
  `id_nasihatuntukSangha` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nasihat_untuk_sangha`
--

INSERT INTO `nasihat_untuk_sangha` (`id_nasihatuntukSangha`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'Pesan Guru: Tentang Menjalani Sebuah Pilihan', '<blockquote>\r\n<p style=\"margin-left:40px\">&quot;Dalam berpraktek itu,<br />\r\nadalah hati dan&nbsp;cuma hati inilah&nbsp;yang paling penting.&quot;<br />\r\n- YM Bhadraruci -</p>\r\n</blockquote>\r\n\r\n<p>Adalah satu kenyataan bahwa sampai sekarang mutu pendidikan kebiksuan di Indonesia masih sangat rendah. Belum ada program pendidikan yang terstruktur dan memadai untuk mendidik seseorang dalam menempuh jalan kebiksuan dengan baik&hellip; Oleh karenanya, orang-orang yang ingin masuk ke dunia per-biksu-an biasanya hanya bermodal semangat juang&hellip;</p>\r\n\r\n<p>&hellip; Biksu-biksu muda kini muncul dengan seperangkat gadget canggih... Mereka kini tampil dengan laptop, blackberry, iphone, ipod, ipad dan pot-pet pot-pet lainnya. Seakan-akan untuk menunjukkan kesan intelektualitas. Nah, mengenai kesan-kesan yang hanya penampakan luar ini aku punya contoh bagus, yakni tentang orang-orang yang vege. Aku tak pernah bilang bahwa vege itu tak baik. Baik sekali malah. Tapi kan kita harus paham dulu, apa sebenarnya motivasi mereka melakukan vege itu?</p>\r\n\r\n<p>Sama halnya dengan Pabbaja. Esensi dari Pabbaja itu bukan hanya pakai jubah lalu kepala gundul. Aku tidak butuh kepala gundul. Buddha tidak butuh orang-orang berkepala gundul. Pabbaja itu hanya satu media saja &ndash; media refleksi diri sendiri. Pabbaja satu tahun belum tentu setara dengan dikurung dalam kamar dan bermeditasi selama seminggu. Yang diutamakan adalah perenungan.</p>\r\n\r\n<p>Ada yang bilang kalau Pabbaja dengan Bhante Bhadraruci itu berat sekali. Lebih enak dengan Bhante-bhante yang lain. Lha, kalau mau enak, ya tak usah ikut Pabbaja. Kenapa tak sekalian saja cukur gundul lalu pergi liburan ke Bali?</p>\r\n\r\n<p>Ada juga keluhan kalau aku ini terlalu galak dalam membimbing. Sedikit-sedikit main pukul&hellip; Lantas kenapa harus dipukul? Kenapa tidak dinasehati saja, seperti bhante lain yang terkenal karena kelembutan akhlaknya? Begini logikanya. Ketika peserta Pabbaja aku suruh untuk bermeditasi, pada satu titik, mereka pasti akan mengalami jalan buntu. Kebuntuan ini tidak dapat dielakkan. Perenungan yang sudah dibawa terlalu jauh pada akhirnya akan membentur tembok. Nah, percaya atau tidak, aku memukul untuk memecah tembok-tembok penghalang ini. Dari tampilan luarnya, orang-orang tentu tak akan bisa paham.</p>\r\n\r\n<p>Aku ingin orang-orang tahu kalau Pabbaja dengan Bhante Bhadraruci itu memang beginilah adanya.&nbsp;</p>\r\n\r\n<p>Mlanya, para peserta akan digiring untuk keluar dari samsara. Ini baru tahap motivasi menengah. Setelah itu, mereka akan aku paksa berhadapan dengan egonya masing-masing. Di sini mereka akan melihat betapa kurang ajarnya diri mereka, betapa egoisnya mereka selama ini. Di tahap inilah &lsquo;siksaan&rsquo; yang sesungguhnya akan terjadi. Bagiku, inilah yang paling penting. Aku tak butuh jubah-jubah yang dililit rapi dan kepala-kepala yang gundul. Tampilan luar yang seperti itu, tak penting bagiku.</p>\r\n\r\n<p>Di India, pelajaran Vinaya baru akan dipelajari di tingkat atas. Sebelum itu, kita dituntut terlebih dulu untuk mempelajari kerangka berpikir filosofis. Di Indonesia, menurutku, pelajaran Vinaya ini seharusnya jadi prioritas utama bagi para biksu. Biksu-biksu di Indonesia butuh Vinaya. Mereka butuh peraturan-peraturan untuk mendisiplinkan diri. Biksu-biksu di Indonesia itu terlalu kaku. Mereka sepertinya tidak tahu bagaimana cara menikmati hidup ini. Seakan-akan, jika seseorang menjadi biksu, maka dia juga telah memilih untuk melepaskan kegembiran dari hidupnya. Seolah-olah biksu dan kegembiraan adalah dua kutub yang saling berlawanan dan tak akan pernah bisa dipersatukan.</p>\r\n\r\n<p>Prinsipku, jadi biksu itu harus dilalui dengan hati gembira. Sila-sila yang diambil seorang biksu bukanlah bertujuan untuk mengikat dirinya. Kalau mau diibaratkan, sila adalah semacam pagar yang menjaga kita. Kita boleh berbuat sesuka hati di dalam batas pagar ini, tapi jangan sekali-kali menerabas keluar darinya. Sila itu bukanlah rantai yang mengikat kita dengan kuat dan mencegah kita untuk bertingkah laku selayaknya manusia biasa. Oleh karenanya, Vinaya ini menjadi kebutuhan yang pokok sekali, menurutku. Dasar-dasar filosofis seperti Prajna Paramitta dan Abhidhamma boleh menyusul kemudian setelah itu. Bukannya aku merasa sok tahu segala-gala atau merasa menjadi seorang revolusioner, tapi memang kondisi di Indonesia itu sama sekali berbeda dengan kondisi di India.</p>\r\n\r\n<p>Kita semua harus ingat bahwa dalam berpraktek Dharma, bukan kesan-kesan luar yang harus kita utamakan. Ingat kisah Geshe Ben, renungkan kisah Naropa, selami kisah Marpa Sang Penerjemah. Dalam berpraktek itu, adalah hati dan cuma hati inilah yang paling penting.</p>\r\n', 'item-210726-9b27b23ccf.jpeg', 'https://youtu.be/Xr7z3WV3RBg', '2021-07-20', '2021-07-29 18:10:50', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_dana`
--

CREATE TABLE `paket_dana` (
  `id` int(11) NOT NULL,
  `program_dana` varchar(255) NOT NULL,
  `jenis_paket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket_dana`
--

INSERT INTO `paket_dana` (`id`, `program_dana`, `jenis_paket`) VALUES
(1, 'Dana Naga', 'Raya 200rb'),
(2, 'Dana Naga', 'Toothless 500rb'),
(3, 'Dana Naga', 'Fang 750rb'),
(7, 'Dana Vassa', 'Meta 50rb'),
(8, 'Dana Vassa', 'Karuna 200rb'),
(9, 'Dana Vassa', 'Mudita 1jt');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_dana2`
--

CREATE TABLE `paket_dana2` (
  `id` int(11) NOT NULL,
  `program_dana` varchar(255) NOT NULL,
  `jenis_paket` varchar(255) NOT NULL,
  `jenis_paket2` varchar(255) NOT NULL,
  `jenis_paket3` varchar(255) NOT NULL,
  `jenis_paket4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket_dana2`
--

INSERT INTO `paket_dana2` (`id`, `program_dana`, `jenis_paket`, `jenis_paket2`, `jenis_paket3`, `jenis_paket4`) VALUES
(1, 'Dana Naga', 'DN - Raya 200rb', 'DN - Toothless 500rb', 'DN - Fang 750rb', ''),
(2, 'Dana Vassa', 'DV - Meta 50rb', 'DV - Karuna 200rb', 'DV - Mudita 1jt', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_dana3`
--

CREATE TABLE `paket_dana3` (
  `id` int(11) NOT NULL,
  `jenis_paket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket_dana3`
--

INSERT INTO `paket_dana3` (`id`, `jenis_paket`) VALUES
(1, 'Dana Naga - Raya 200rb'),
(2, 'Dana Naga - Toothless 500rb'),
(3, 'Dana Naga -  Fang 750rb'),
(4, 'Dana Vassa - Meta 50rb'),
(5, 'Dana Vassa - Karuna 200rb'),
(6, 'Dana Vassa - Mudita 1jt');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_dana4`
--

CREATE TABLE `paket_dana4` (
  `id_dana` int(11) NOT NULL,
  `id_donasi` int(11) NOT NULL,
  `jenis_paket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket_dana4`
--

INSERT INTO `paket_dana4` (`id_dana`, `id_donasi`, `jenis_paket`) VALUES
(1, 12, 'Dana Naga - Raya 200rb'),
(2, 12, 'Dana Naga - Toothless 500rb'),
(3, 12, 'Dana Naga -  Fang 750rb'),
(4, 12, 'Dana Naga -  Test 100rb'),
(5, 13, 'Dana Vassa - Meta 50rb'),
(6, 13, 'Dana Vassa - Karuna 200rb'),
(7, 13, 'Dana Vassa - Mudita 1jt'),
(8, 13, 'Dana Vassa - Test 500rb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_dana5`
--

CREATE TABLE `paket_dana5` (
  `id_dana` int(11) NOT NULL,
  `id_donasi` int(11) NOT NULL,
  `jenis_paket1` varchar(255) NOT NULL,
  `jenis_paket2` varchar(255) NOT NULL,
  `jenis_paket3` varchar(255) NOT NULL,
  `jenis_paket4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket_dana5`
--

INSERT INTO `paket_dana5` (`id_dana`, `id_donasi`, `jenis_paket1`, `jenis_paket2`, `jenis_paket3`, `jenis_paket4`) VALUES
(1, 12, 'Dana Naga - Raya 200rb', 'Dana Naga - Toothless 500rb', 'Dana Naga -  Fang 750rb', 'Dana Naga -  Test 100rb'),
(2, 13, 'Dana Vassa - Meta 50rb', 'Dana Vassa - Karuna 200rb', 'Dana Vassa - Mudita 1jt', 'Dana Vassa - Test 500rb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `persiapan`
--

CREATE TABLE `persiapan` (
  `id_persiapan` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `persiapan`
--

INSERT INTO `persiapan` (`id_persiapan`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'Penyelenggaraan Kebajikan dalam Untaian Doa Bagi yang Beruntung 123', '<p>Kebajikan dalam Untaian Doa Bagi yang Beruntung merupakan kegiatan pengumpulan kebajikan secara ekstensif. Pada kegiatan ini, peserta diajak untuk melantunkan untaian-untain doa sebagai bentuk rasa terima kasih kepada para Guru dan Buddha karena kita masih memiliki kesempatan untuk praktik Dharma dengan baik. Selain itu, bentuk terima kasih ini juga dipertuntukkan atas kondisi-kondisi positif yang masih bisa kita dapatkan, serta kita juga doakan alam semesta, bumi pertiwi, dan semua makhluk di seluruh penjuru dunia agar pulih dan lebih berbahagia.</p>\r\n\r\n<p>Acara ini dapat dilaksanakan atas berkah dan kebaikan hati dari Y.M. Biksu Bhadra Ruci, yang diselenggarakan pada:</p>\r\n\r\n<p>Waktu: 24 Desember 2020 &ndash; 1 Januari 2021</p>\r\n\r\n<p>Diadakan secara daring melalui aplikasi Zoom</p>\r\n\r\n<p>Penyelenggaraan Kebajikan dalam Untaian Doa Bagi yang Beruntung selama 9 hari meliputi tiga sesi per hari. Sesi pagi diisi dengan pengumpulan kebajikan melalui puja Enam Praktik Pendahuluan. Sesi siang diisi dengan pengumpulan kebajikan berupa melantunkan puja Tara Hijau/16 Arahat dan Permohonan Umur Panjang Guru-guru. Lalu, sesi ketiga dilanjutkan dengan mendengarkan siaran pengajaran Dharma oleh Y.M. Drepung Tripa Khenzur Rinpoche dengan topik &ldquo;Karma &amp; Akibatnya&rdquo; dan &ldquo;4 Segel Agung Dharma&rdquo;.</p>\r\n\r\n<h4><strong>Peserta Acara Kebajikan dalam Untaian Doa Bagi yang Beruntung</strong></h4>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li>Acara Kebajikan dalam Untaian Doa Bagi yang Beruntung terdiri dari 458 peserta yang terdaftar dan berasal dari 21 provinsi yang tersebar di Indonesia, Singapura, Moscow, Jerman, India, serta Malaysia.</li>\r\n	<li>Persentase peserta berdasarkan umur: 179 dari 457 peserta berusia 29 s/d 39 tahun (39,2%)&nbsp;</li>\r\n	<li>Pencapaian peserta yang terdaftar lebih banyak 34,4% dari target peserta sebanyak 300 orang.</li>\r\n	<li>97,9% : kepuasan peserta terhadap penyelenggaraan Kebajikan dalam Untaian Doa Bagi yang Beruntung</li>\r\n	<li>81,9% : peserta merasa bahwa penyelenggaraan Kebajikan dalam Untaian Doa Bagi yang Beruntung sangat bermanfaat</li>\r\n	<li>68,1% : ketertarikan peserta jika acara serupa diadakan kembali</li>\r\n	<li>80,8% : kepuasan peserta terhadap materi pembabaran Dharma</li>\r\n</ul>\r\n\r\n<p><strong>Laporan Keuangan</strong></p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li>Posisi Keuangan</li>\r\n</ul>\r\n\r\n<p>Pemasukan : Rp 453.252.409</p>\r\n\r\n<p>Pengeluaran : Rp 51.587.885</p>\r\n\r\n<p>Surplus dana :&nbsp;<strong>Rp</strong>&nbsp;<strong>401.664.524</strong></p>\r\n\r\n<p>*Catatan : Kelebihan dana pada acara Kebajikan dalam Untaian Doa Bagi yang Beruntung akan digunakan kembali untuk upaya-upaya pelestarian dan penyebarluasan buku Dharma, pembangunan Biara Indonesia Tu?ita Vivara??cara?a Vijay??raya, kebutuhan Sangha dan Dharma Center (MAH), serta berbagai aktivitas bajik lainnya.</p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li>Sumber Pemasukan</li>\r\n</ul>\r\n\r\n<p>Donasi perorangan oleh 781 donatur Rp 453.252.409 (termasuk dana untuk Puja Naga)</p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li>Pengeluaran Acara</li>\r\n</ul>\r\n\r\n<p>&ndash; Offering : Rp 20.945.204</p>\r\n\r\n<p>&ndash; Fangshen : Rp 1.628.000</p>\r\n\r\n<p>&ndash; Zoom Pro : Rp 1.022.781</p>\r\n\r\n<p>&ndash; Suvenir donatur : Rp 9.002.400</p>\r\n\r\n<p>&ndash; Ongkos kirim suvenir donatur : Rp 3.128.525</p>\r\n\r\n<p>&ndash; Kebutuhan teknis acara : Rp 3.129.975</p>\r\n\r\n<p>&ndash; Dana Sangha : Rp 12.500.000</p>\r\n\r\n<p>&ndash; Pengiriman suvenir &amp; offering Malang &ndash; Bandung : Rp 231.000</p>\r\n\r\n<p>Total : Rp 51.587.885</p>\r\n\r\n<p><strong>Ucapan Terima Kasih</strong></p>\r\n\r\n<p>Pertama-tama, seluruh panitia Kebajikan dalam Untaian Doa Bagi yang Beruntung menghaturkan hormat dan syukur kepada Tiga Permata. Berkat berkah dan bimbingan dari Tiga Permata, para Guru, khususnya Y.M. Biksu Bhadra Ruci dan Y.M. Drepung Tripa Khenzur Rinpoche, acara ini dapat diselenggarakan dengan baik dan dapat memberikan manfaat bagi banyak pihak.</p>\r\n\r\n<p>Selanjutnya, kami ingin mengucapkan terima kasih dan turut bermudita kepada para donatur dan peserta yang telah meluangkan waktu serta berkontribusi dalam penyelenggaraan acara ini. Semoga seluruh dukungan dalam bentuk apapun dapat berbuah menjadi karma bajik dan dapat dirasakan manfaatnya.</p>\r\n\r\n<p>Semoga acara ini dapat memberikan manfaat bagi pengembangan batin dan praktik spiritual. Semoga acara-acara serupa di masa mendatang akan terus dapat memenuhi tujuan bajik dan lebih baik lagi. Semoga semua makhluk di seluruh penjuru dunia mendapatkan manfaat dan semoga kebahagiaan terus menyertai mereka, serta kepada semua pihak yang mendukung dan berpartisipasi dalam acara Kebajikan dalam Untaian Doa Bagi yang Beruntung kami doakan semoga selalu dalam perlindungan Triratna sehingga selalu berbahagia, sehat, dan sejahtera.</p>\r\n\r\n<p><strong>Lampiran 1: Testimoni dari Peserta</strong></p>\r\n\r\n<p><strong>Shierlen Octavia (Mahasiswa S2 Profesi Psikologi &amp; Konselor Pendidikan di Ruangguru)</strong></p>\r\n\r\n<blockquote>\r\n<p><em>&ldquo;Bersyukur banget kemarin bisa ikutan retret akhir tahunnya KCI&rdquo;.</em></p>\r\n</blockquote>\r\n\r\n<p>Banyak belajar dan diingatkan kembali soal betapa pentingnya buat terus semangat dalam berlatih mempraktikkan poin-poin Lamrim di tahun 2021 ini oleh Rinpoche. Selain belajar lagi soal karma, aku juga belajar banyak hal baru tentang Empat Segel Dharma. Walaupun tahun kemarin kita harus terpisah jarak, tapi adanya puja bersama kemarin membuat aku jadi merasa gak sendirian dalam menghadapi tahun baru dan senang karena bisa bikin kebajikan bareng-bareng lagi&nbsp;</p>\r\n\r\n<p>Makasih buat para panitia yang sudah mempersiapkan acaranya dengan sangat baik sehingga biarpun acaranya daring, tetap kondusif buatku ikutan acaranya&nbsp;</p>\r\n\r\n<p><strong>Rayno</strong></p>\r\n\r\n<p>Ceramah dari Khenzur Rinpoche sangat dalam dan bagus, mengajarkan topik tentang penderitaan dan cara untuk mengatasi penderitaan. Akar dari sgala sebab penderitaan/klesha adalah ketidaktahuan tentang ketiadaan inti yang kekal dan&nbsp;<em>independent</em>&nbsp;dalam segala hal. Hanya pengetahuan ttg ketiadaan inti segala hal yang bisa menghilangkan ketidaktahuan tersebut . Saya suka dgn contoh yang dipakai Rinpoche,&nbsp;&nbsp;<em>sound system</em>&nbsp;dan meja hanyalah&nbsp; label nama yang diberikan pada perpaduan bagian2&nbsp;<em>sound system</em>&nbsp;dan meja. Tidak dapat ditemukan inti&nbsp;<em>sound system</em>&nbsp;yang nyata yang&nbsp;<em>independent</em>, terpisah dri bagian2&nbsp;<em>sound system</em>. Begitu juga dengan aku yg hanyalah label nama dri kumpulan skandha, begitu juga dengan segala hal lain. Mengetahui hal ini, penderitaan bisa diakhiri.</p>\r\n\r\n<p><strong>Lampiran 2 : Foto-Foto Selama Acara</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><strong><a href=\"https://www.kadamchoeling.or.id/laporan-kegiatan-kebajikan-dalam-untaian-doa-bagi-yang-beruntung/whatsapp-image-2021-01-01-at-10-52-23-am/\" rel=\"attachment wp-att-10695\"><img alt=\"\" src=\"https://www.kadamchoeling.or.id/wp-content/uploads/2021/03/WhatsApp-Image-2021-01-01-at-10.52.23-AM.jpeg\" style=\"height:429px; width:322px\" /></a><a href=\"https://www.kadamchoeling.or.id/laporan-kegiatan-kebajikan-dalam-untaian-doa-bagi-yang-beruntung/whatsapp-image-2021-01-01-at-10-47-45-am-1/\" rel=\"attachment wp-att-10694\"><img alt=\"\" src=\"https://www.kadamchoeling.or.id/wp-content/uploads/2021/03/WhatsApp-Image-2021-01-01-at-10.47.45-AM-1.jpeg\" style=\"height:430px; width:323px\" /></a><a href=\"https://www.kadamchoeling.or.id/laporan-kegiatan-kebajikan-dalam-untaian-doa-bagi-yang-beruntung/whatsapp-image-2020-12-31-at-9-42-15-am/\" rel=\"attachment wp-att-10693\"><img alt=\"\" src=\"https://www.kadamchoeling.or.id/wp-content/uploads/2021/03/WhatsApp-Image-2020-12-31-at-9.42.15-AM.jpeg\" style=\"height:426px; width:320px\" /></a><a href=\"https://www.kadamchoeling.or.id/laporan-kegiatan-kebajikan-dalam-untaian-doa-bagi-yang-beruntung/whatsapp-image-2020-12-28-at-11-36-53-am/\" rel=\"attachment wp-att-10690\"><img alt=\"\" src=\"https://www.kadamchoeling.or.id/wp-content/uploads/2021/03/WhatsApp-Image-2020-12-28-at-11.36.53-AM.jpeg\" style=\"height:431px; width:323px\" /></a><a href=\"https://www.kadamchoeling.or.id/laporan-kegiatan-kebajikan-dalam-untaian-doa-bagi-yang-beruntung/whatsapp-image-2020-12-25-at-12-07-17-pm/\" rel=\"attachment wp-att-10686\"><img alt=\"\" src=\"https://www.kadamchoeling.or.id/wp-content/uploads/2021/03/WhatsApp-Image-2020-12-25-at-12.07.17-PM.jpeg\" style=\"height:430px; width:323px\" /></a><a href=\"https://www.kadamchoeling.or.id/laporan-kegiatan-kebajikan-dalam-untaian-doa-bagi-yang-beruntung/whatsapp-image-2020-12-31-at-9-41-21-pm/\" rel=\"attachment wp-att-10702\"><img alt=\"\" src=\"https://www.kadamchoeling.or.id/wp-content/uploads/2021/03/WhatsApp-Image-2020-12-31-at-9.41.21-PM.jpeg\" style=\"height:428px; width:321px\" /></a></strong></strong></p>\r\n\r\n<p><strong>7. Penutup</strong></p>\r\n\r\n<p>Terima kasih telah turut berkontribusi dalam penyelenggaraan acara Kebajikan dalam Untaian Doa Bagi yang Beruntung. Semoga rangkaian kegiatan ini dapat menjadi dapat menjadi angin yang melenyapkan awan pandangan salah dan pelita yang menerangi gelapnya batin semua makhluk.</p>\r\n\r\n<p>Semoga semua makhluk di seluruh penjuru alam semesta mendapatkan manfaat dan semoga kebahagiaan selalu ada di dalam diri mereka. Dan semoga semua pihak yang mendukung dan berpartisipasi dalam acara Kebajikan dalam Untaian Doa Bagi yang Beruntung selalu bahagia, sehat, sejahtera, serta selalu mendapatkan perlindungan dari Buddha, Dharma, dan Sangha.</p>\r\n', 'item-210726-b372a111e4.jpg', 'https://www.youtube.com/watch?v=qLvzzIqkrNE', '2021-07-02', '2021-07-29 18:10:54', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `password`) VALUES
(1, 'Marines', 'barunamarines@gmail.com', '12345'),
(2, 'baruna', 'tiras@gmailcom', '$2y$10$IvAlHAmHQj6EXXHfMz2wF.rLJU7pBO94DAFrtP2l17R');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sedangberjalan_galeri`
--

CREATE TABLE `sedangberjalan_galeri` (
  `id_sbGaleri` int(11) NOT NULL,
  `id_jadwalMingguan` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gambar_galeri` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sedangberjalan_galeri`
--

INSERT INTO `sedangberjalan_galeri` (`id_sbGaleri`, `id_jadwalMingguan`, `slug`, `gambar_galeri`, `tanggal_input`, `admin`) VALUES
(1, 3, 'latihan-ngondro', 'item-210913-39799b6f45.jpg', '2021-09-13 18:40:48', 'baruna'),
(3, 4, 'asdsadsadas', 'item-130921-903ecd9b96.jpg', '2021-09-13 18:42:45', 'baruna'),
(4, 5, 'best-for-any-industrial-business-solution', 'item-130921-9490c2fbcf.jpg', '2021-09-13 18:43:48', 'baruna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sedangberjalan_slideshow`
--

CREATE TABLE `sedangberjalan_slideshow` (
  `id_sbSlide` int(11) NOT NULL,
  `id_jadwalMingguan` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gambar_slideshow` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sedangberjalan_slideshow`
--

INSERT INTO `sedangberjalan_slideshow` (`id_sbSlide`, `id_jadwalMingguan`, `slug`, `gambar_slideshow`, `tanggal_input`, `admin`) VALUES
(1, 3, 'latihan-ngondro', 'item-130921-5b54c15d3d.jpg', '2021-09-13 17:49:37', 'baruna'),
(2, 4, 'asdsadsadas', 'item-130921-52111a19c2.jpg', '2021-09-13 18:10:24', 'baruna'),
(3, 5, 'best-for-any-industrial-business-solution', 'item-130921-3af55b002a.jpg', '2021-09-13 18:20:39', 'baruna'),
(4, 4, 'asdsadsadas', 'item-130921-61c3ee69b2.jpg', '2021-09-13 18:46:45', 'baruna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah_biara`
--

CREATE TABLE `sejarah_biara` (
  `id_sejarahBiara` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sejarah_biara`
--

INSERT INTO `sejarah_biara` (`id_sejarahBiara`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(2, 'IMI History', '<h5 style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:14.0pt\">Nggak Cuma Medsos, Buku Juga Mau Temenan Sama Kamu, Tuh!</span></strong></span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Wilwatikta Foundation baru saja mengadakan </span><a href=\"https://www.instagram.com/tv/CPfXC-3nVIy/\"><em><span style=\"font-size:12.0pt\">mini-talk</span></em></a><a href=\"https://www.instagram.com/tv/CPfXC-3nVIy/\"><span style=\"font-size:12.0pt\"> &ldquo;Reformasi Diri Lewat Membaca Buku&rdquo;</span></a><span style=\"font-size:12.0pt\"> melalui IG Live pada 30 Mei 2021 lalu. Bersama Shierlen Octavia, penggerak&nbsp; </span><a href=\"https://www.instagram.com/gerakanseribubuku/\"><span style=\"font-size:12.0pt\">@gerakanseribubuku</span></a><span style=\"font-size:12.0pt\"> dan konselor di </span><a href=\"https://www.instagram.com/counselemon/\"><span style=\"font-size:12.0pt\">@counselemon</span></a><span style=\"font-size:12.0pt\">, Wilwatikta mencoba membuka pemahaman para <em>followers</em> terkait pentingnya membangun minat baca dan cara menyeimbangkannya dengan penggunaan media sosial.</span></span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Awal ketertarikan Shierlen terhadap membaca buku dimulai saat ia mendapat buku &quot;turunan&quot; dari sang kakak.&nbsp; Begitu juga, kebiasaan ibu Shierlen membacakan buku untuknya memberikan dorongan yang besar bagi dirinya untuk terus membangkitkan minat bacanya tersebut. Bagi Shierlen, membaca bukan hanya sekedar kebiasaan tapi merupakan keterampilan mendasar. Layaknya jembatan yang mengantarkan kita menemukan jalan baru, membaca juga dapat mengantarkan kita bertemu dengan berbagai pengetahuan, wawasan, minat, dan bakat kita.</span></span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Menanggapi sebuah pertanyaan dari moderator mengenai sulitnya membangun minat baca, Shierlen merespon dengan mengangkat kondisi <em>privilege</em> yang dimiliki anak muda perkotaan: toko buku dan perpustakaan yang menjamur dimana-mana serta mudahnya mengakses <em>e-book</em> melalui <em>gadget</em>. Kemewahan ini tentu tidak dimiliki semua teman kita, terutamanya yang tinggal di daerah pedesaan. Sangat disayangkan bila kita tidak memanfaatkannya dengan baik. </span></span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Meski begitu, menumbuhkan kebiasaan membaca tentu ada tantangannya tersendiri. Kebiasaan ini tidak datang dengan instan sehingga perlu dilatih terus-menerus. Tantangan yang dihadapi Shierlen sendiri adalah tidak sesuainya harapan dengan isi bacaan buku serta mudahnya terdistraksi dengan banyak hal (terutama <em>gadget</em>).</span></span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Shierlen membagikan tips membacanya yaitu metode 2-7-1 dimana ia akan membagi waktu 20% untuk membaca cepat dahulu agar memahami garis besar isi buku; 70% untuk membaca secara menyeluruh dan mendalam; dan sisa 10% dari waktu digunakan untuk merenungkan isi bacaan dalam diri. Membaca keseluruhan buku di awal bertujuan untuk&nbsp; menilai apakah isi buku sesuai atau tidak dengan harapan kita. Apabila buku dirasa tidak sesuai dan sulit, kita bisa mengganti membaca buku yang lainnya. <span style=\"background-color:white\">Selain itu, merenungkan hasil bacaan di akhir membaca buku bisa memantapkan pemahaman kita </span>dan mendorong kita untuk semangat membaca buku selanjutnya.</span></span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Sekarang ini, banyak orang sekarang yang sudah mengurangi aktivitas membaca buku karena lebih tertarik membaca konten media sosial yang instan. Kendati demikian, informasi di jagat maya tidak selalu tersaji secara menyeluruh dan utuh. Bahkan, kadang kala informasi tersebut rentan terhadap <em>hoax.</em> Untuk itu, tetap penting bagi kita menyeimbangkan gaya hidup kita yang serba digital dengan tetap membaca buku. Seperti yang dikatakan Shierlen, &quot;Membuka media sosial dan membaca buku harus menjadi bagian dari gaya hidup kita.&rdquo;</span></span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Tips membaca lainnya yang dibagikan Shierlen lewat pengalaman membaca buku bersama teman-temannya adalah berkomitmen untuk membaca sekian halaman setiap harinya. Terakhir, dia membagikan tips bagi teman-teman yang mungkin masih kesulitan bahkan setelah menerapkan tips-tips yang telah disampaikan, yaitu mendengarkan <em>audiobook</em>. </span></span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Di penghujung acara, Shierlen mengajak para <em>followers</em> Wilwatikta Foundation untuk berpartisipasi dalam donasi buku di &quot;Gerakan Seribu Buku&quot; untuk memulihkan Perpustakaan STAI Al-Jami Kalimantan Selatan yang pernah terbakar. <span style=\"background-color:white\">Shierlen juga masih berencana menggarap lebih banyak program donasi buku lainnya yang akan diumumkan di akun Instagram @counselemon</span>. </span></span></span></h5>\r\n\r\n<h5 style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Akhir kata, semoga kisah singkat inspiratif ini bisa menambah semangatmu untuk mulai membaca buku! Kamu masih bisa menonton mini-talk ini dan mendengarkan penjelasan Shierlen lebih lengkap lagi di akun Instagram @wilwatiktafoundation ya</span></span></span></h5>\r\n', 'item-210723-d84a9700fa.jpg', 'https://youtu.be/GOfYgMjYBlk', '2021-07-16', '2021-07-29 18:55:58', 85);

-- --------------------------------------------------------

--
-- Struktur dari tabel `silasrama`
--

CREATE TABLE `silasrama` (
  `id_silasrama` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `silasrama`
--

INSERT INTO `silasrama` (`id_silasrama`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'Persembahan Doa Kepada Naga dan Awalokite?wara Penakluk Naga', '<p>Ingin melihat video dokumentasi klik <a href=\"https://youtu.be/pXjlpKeM-q4\">disni</a></p>\r\n\r\n<p>Persembahan Doa Kepada Naga dan Awalokite?wara Penakluk Naga dalam Rangkaian Acara Kebajikan dalam Untaian Doa Bagi yang Beruntung</p>\r\n\r\n<p>Para Naga dikenal sebagai makhluk yang mencintai keindahan dan kelestarian alam. Naga sangat sensitif terhadap kecerobohan manusia, terutama perilaku tidak pantas dan merusak alam. Ketika tersinggung, Naga dapat menimbulkan penyakit, rintangan, dan bencana alam.</p>\r\n\r\n<p>Puja Naga merupakan suatu puja yang dilakukan untuk menjalin hubungan baik dengan para Naga melalui pemberian persembahan. Praktik ini juga merupakan bentuk penghormatan dan terima kasih kepada para Naga yang berperan dalam pelestarian Buddhadharma.</p>\r\n\r\n<p>Puja Naga sangat langka karena prosesnya rumit dan tak bisa dilakukan sembarang orang. Puja ini ditujukan untuk menjalin hubungan baik dengan para Naga demi kemakmuran, kondisi positif untuk praktik spiritual kita, dan menghalau segala bencana di tahun baru dan di kehidupan-kehidupan berikutnya.</p>\r\n\r\n<p>Pada 28 Desember 2020, Sangha Kadam Choeling Indonesia memimpin Puja Naga di Biara Indonesia Tu?ita Vivara??cara?a Vijay??raya dan menghaturkan ??ntika Agnihotra Yaj&ntilde;a (Puja Api) kepada Istadewata Awalokite?wara Si?han?da, Sang Welas Asih Pengendara Singa dan Penakluk Naga sebagai rangkaian acara Kebajikan dalam Untaian Doa Bagi yang Beruntung.</p>\r\n\r\n<p>Terima kasih kepada para donatur dan semua pihak yang telah berpartisipasi dan mari bermudita atas seluruh kebajikan yang telah dilakukan dalam Puja Naga ini.</p>\r\n', 'item-210726-c7b677c9ef.jpg', 'https://www.youtube.com/watch?v=qLvzzIqkrNE', '2021-06-19', '2021-08-04 19:41:11', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `silsilah_ajaran`
--

CREATE TABLE `silsilah_ajaran` (
  `id_silsilahAjaran` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `silsilah_ajaran`
--

INSERT INTO `silsilah_ajaran` (`id_silsilahAjaran`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(5, 'Sang Pemegang Silsilah BIARA YWSN', '<p><span style=\"color:#999999\">Silsilah merupakan salah satu cara untuk memastikan keaslian Dharma. Seorang guru Dharma autentik yang telah merealisasikan Dharma memilih muridnya yang juga telah merampungkan pembelajaran, meraih realisasi, dan memiliki kemampuan untuk membimbing makhluk lain di jalan kebenaran dengan tetap menjaga kemurnian ajaran. Menelusuri silsilah guru-murid hingga kepada Buddha sendiri merupakan salah satu cara untuk memastikan ajaran dari seorang guru Dharma benar-benar autentik dan tidak menyimpang dari yang diajarkan oleh Sang Buddha.</span></p>\r\n\r\n<p><span style=\"color:#999999\">Yang Mulia Dagpo Rinpoche merupakan salah satu dari segelintir guru autentik yang menerima transmisi Dharma lengkap dari guru-guru Buddhis Tibet yang menjunjung tinggi pentingnya silsilah ajaran. Secara khusus, Dagpo Rinpoche berasal dari Dagpo Shedrupling, institusi pendidikan monastik Tibet yang terkenal akan winaya yang ketat serta dijuluki &ldquo;Biara Lamrim&rdquo;.</span></p>\r\n\r\n<p><span style=\"color:#999999\">Silsilah lengkap guru-guru yang menjaga Dharma Sang Buddha hingga sampai kepada Dagpo Rinpoche dan diajarkan kepada kita tergambar dalam ilustrasi berikut:</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#999999\"><img alt=\"\" src=\"https://en.wikipedia.org/wiki/Refuge_tree#/media/File:KagyuRefugeTree.jpg\" /><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/a/a6/KagyuRefugeTree.jpg\" style=\"height:435px; width:307px\" /></span></p>\r\n', 'item-210723-3e964b14ae.jpg', 'https://www.youtube.com/watch?v=qLvzzIqkrNE', '2021-07-16', '2021-07-29 18:56:43', 48);

-- --------------------------------------------------------

--
-- Struktur dari tabel `silsilah_penahbisan`
--

CREATE TABLE `silsilah_penahbisan` (
  `id_silsilahPenahbisan` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `silsilah_penahbisan`
--

INSERT INTO `silsilah_penahbisan` (`id_silsilahPenahbisan`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(2, 'Silsilah Mulasarvastivada', '<h2 style=\"text-align:center\"><span style=\"font-family:Comic Sans MS,cursive\"><img src=\"https://static.wixstatic.com/media/2754c2_9b67184a993c402cb33f029cd5cc5702.jpg/v1/crop/x_100,y_0,w_3644,h_4456/fill/w_368,h_387,al_c,q_80,usm_0.66_1.00_0.01/2754c2_9b67184a993c402cb33f029cd5cc5702.webp\" /></span></h2>\r\n\r\n<h2><span style=\"font-family:Comic Sans MS,cursive\">Silsilah Mulasarvastivada</span></h2>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\">Silsilah Vinaya Mulasarvastivada adalah satu dari tiga silsilah Vinaya yang masih bertahan hingga saat ini, bersama dengan Dharmaguptaka dan Sautantrika (Theravada). Perkembangan pesat dari silsilah ini terutama di Tibet dan Cina pada abad 9 dan 8 masehi, dan menurut catatan ziarah Yijing di Sriwijaya pada abad ke-7, Vinaya Mulasarvastivada dianut secara luas di wilayah tersebut.&nbsp; Dengan demikian, antara Indonesia dengan silsilah Vinaya ini sudah terjalin hubungan berumur ribuan tahun lamanya.</span></p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\">Silsilah Emas</span></p>\r\n\r\n<h2><span style=\"font-family:Comic Sans MS,cursive\">Warisan Buddhadharma dari Nusantara</span></h2>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Comic Sans MS,cursive\"><img alt=\"\" src=\"https://static.wixstatic.com/media/2754c2_773a82fc95cd4978b954fc2b499e3842.jpg/v1/crop/x_256,y_0,w_407,h_622/fill/w_228,h_346,al_c,q_80,usm_0.66_1.00_0.01/2754c2_773a82fc95cd4978b954fc2b499e3842.webp\" /></span></p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\">Pada abad 11 Masehi, Nusantara pada era pemerintahan Sriwijaya kedatangan Mahaguru Atisha Dipankara Srijnana, guru besar Biara Vikramasila dan Nalanda, 2 biara utama di India yang merupakan pusat peradaban Buddhisme dunia pada masa tersebut. Yang Mulia Atisha bersama 125 pengikut Beliau menempuh perjalanan laut selama 13 bulan, menuju Nusantara untuk berguru pada Yang Mulia Serlingpa Dharmakirti, terutama untuk memperoleh instruksi tentang Bodhicitta.</span></p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\">Seusai Yang Mulia Atisha berguru selama 12 tahun dari Lama Serlingpa, Beliau kembali ke India dan dari sana aktivitasnya meluas hingga ke dataran Tibet. Beliau diundang ke Tibet untuk memurnikan kembali Buddhisme yang sedang merosot. Di Tibet-lah, Beliau kemudian menggubah karya &lsquo;Pelita Sang Jalan menuju Pencerahan&rsquo; (Bodhipathapradipa) dan dari sana memulai sebuah tradisi ajaran Lamrim (Tahapan Jalan) yang lestari hingga detik ini utamanya dalam aliran Gelugpa. Lamrim menginspirasi banyak orang karena mampu membimbing berbagai tingkatan dan kecenderungan makhluk yang berbeda dalam suatu tahapan jalan menuju pencerahan lengkap sempurna; dan menguak intisari dari ajaran yang paling subtil dalam suatu instruksi praktis. Karena alasan inilah, ajaran Lamrim bisa diterima dan diadopsi oleh berbagai aliran buddhisme di Tibet (Nyingma, Sakya, dan Kagyu). Dikatakan bahwa kualitas sang guru, bermanifestasi dalam karya muridnya; Yang Mulia Atisha dalam hal ini menampakkan kualitas Sang Guru Utama Beliau, Guru Serlingpa Dharmakirti melalui karya ajaran Beliau, Lamrim yang terentang selama ribuan tahun dari upaya studi, kontemplasi, dan meditasi oleh begitu banyak praktisi.</span></p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\">Dengan demikianlah, benang sejarah antara Nusantara Indonesia dengan Tibet terjalin melalui hubungan guru-murid Lama Serlingpa dan Yang Mulia Atisha. Dan kini, 1000 tahun sudah berlalu, Kadam Choeling Indonesia mendapatkan anugerah teramat besar, tersebab Yang Mulia Dagpo Rinpoche Jamphel Jampa Gyatso bersedia membimbing komunitas ini. Beliau diyakini oleh masyarakat Tibet sebagai reinkarnasi Yang Mulia Serlingpa Dharmakirti, sehingga tentu saja ini merupakan pertanda baik yang luar biasa akan awal kembalinya kejayaan suatu silsilah spiritual otentik yang bermula dari Indonesia, Silsilah Emas (Serlingpa).</span></p>\r\n', 'item-210726-6b0bb9e6dd.jpg', 'https://youtu.be/Xr7z3WV3RBg', '2021-07-22', '2021-07-29 18:08:01', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tag`
--

INSERT INTO `tag` (`id_tag`, `nama`) VALUES
(1, 'Life'),
(2, 'Sport'),
(3, 'Tech'),
(4, 'Sport');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag_artikel`
--

CREATE TABLE `tag_artikel` (
  `id_tag` int(11) NOT NULL,
  `id_artikel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tag_artikel`
--

INSERT INTO `tag_artikel` (`id_tag`, `id_artikel`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag_berita`
--

CREATE TABLE `tag_berita` (
  `id_tag` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(500) NOT NULL,
  `subjudul_artikel` varchar(500) NOT NULL,
  `youtube_artikel` varchar(500) NOT NULL,
  `kategori_artikel` varchar(255) NOT NULL,
  `headline_artikel` varchar(255) NOT NULL,
  `isi_artikel` text NOT NULL,
  `gambar_artikel` varchar(500) NOT NULL,
  `ketgambar_artikel` varchar(500) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal_content` date NOT NULL,
  `tag_artikel` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id_artikel`, `judul_artikel`, `subjudul_artikel`, `youtube_artikel`, `kategori_artikel`, `headline_artikel`, `isi_artikel`, `gambar_artikel`, `ketgambar_artikel`, `tanggal_input`, `tanggal_content`, `tag_artikel`, `slug`, `jumlahVisitor`) VALUES
(1, 'Kebajikan dalam Untaian Doa: Umat Buddhis atau Filsuf Buddhis; Kamu yang Mana?', 'Pergantian tahun. Sebuah momen yang tidak hanya ditunggu-tunggu, namun juga dimaknai secara sakral oleh banyak orang.', 'https://youtu.be/K-AX0Jl5VQM', 'artikel', 'utama', '<p>oleh Silvi Wilanda</p>\r\n\r\n<p>Pergantian tahun. Sebuah momen yang tidak hanya ditunggu-tunggu, namun juga dimaknai secara sakral oleh banyak orang. Banyak aktivitas-aktivitas khas yang rasanya &ldquo;wajib&rdquo; dilakukan, misalnya makan bersama keluarga, menyalakan kembang api, kumpul bareng teman, serta membuat resolusi tahun baru. Ya, banyak cara untuk merayakan momen pergantian tahun, begitu juga halnya dengan Kadam Choeling Indonesia (KCI). Setiap tahunnya, KCI selalu memaknai momen pergantian tahun dengan menghimpun kebajikan dengan melakukan retret penyunyian bersama. Adapun aktivitas kebajikan yang dilakukan adalah puja dan mendengarkan pembabaran Dharma.&nbsp;</p>\r\n\r\n<p>Tak terkecuali pada pergantian tahun 2020 menuju 2021, KCI juga kembali mengadakan pengumpulan kebajikan dan siaran pengajaran Dharma &ldquo;Kebajikan Dalam Untaian Doa Bagi yang Beruntung&rdquo; secara daring melalui aplikasi Zoom pada 25 Desember 2020 hingga 1 Januari 2021. Acara kali ini terdiri atas puja bersama pada sesi pertama dan kedua serta mendengarkan siaran pembabaran Dharma pada sesi ketiga. Sesi pembabaran Dharma sendiri merupakan tayangan ulang pembabaran topik &ldquo;Empat Segel Agung&rdquo; serta &ldquo;Karma dan Akibatnya&rdquo; yang pernah diberikan oleh Y.M. Drepung Tripa Khenzur Rinpoche. Tulisan ini secara khusus akan membahas kembali pembabaran Dharma topik &ldquo;Empat Segel Agung&rdquo; oleh Y. M. Khenzur Rinpoche melalui kacamata penulis.&nbsp;</p>\r\n\r\n<h3><strong>Filsuf Buddhis: Mempelajari Empat Segel Agung&nbsp;</strong></h3>\r\n\r\n<p>Rinpoche menjelaskan bahwa Empat Segel Agung merupakan empat pandangan, prinsip, serta filsafat dalam Buddhisme, yang diantaranya adalah sebagai berikut.&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Semua fenomena komposit tidak kekal.</li>\r\n	<li>Semua fenomena tercemar memiliki sifat dasar menderita.</li>\r\n	<li>Semua fenomena tidak memiliki aku, sunya dalam eksistensi yang inheren.&nbsp;</li>\r\n	<li>Nirwana adalah kedamaian tertinggi.&nbsp;</li>\r\n</ol>\r\n\r\n<p>Topik Empat Segel Agung merupakan topik yang amat penting dipelajari karena merupakan pandangan mendasar dalam filsafat Buddhis. Suatu ajaran dikatakan sejalan dengan Buddhisme jika ajaran tersebut berpijak pada Empat Segel Agung ini. Seseorang yang memahami dan menerima ajaran Empat Segel Agung tidak hanya dikatakan sebagai seorang Buddhis saja, melainkan juga seorang filsuf Buddhis.&nbsp;&nbsp;</p>\r\n\r\n<p>Lebih lanjut, Rinpoche membabarkan perbedaan antara seorang Buddhis dan seorang filsuf Buddhis. Seorang Buddhis merupakan seseorang yang mengambil praktik berlindung (tisarana) kepada Buddha, Dharma, dan Sangha (Triratna). Sedangkan, seperti yang telah disebutkan sebelumnya, seorang filsuf Buddhis merupakan seseorang yang sudah memahami dan menerima topik Empat Segel Agung. Seorang filsuf Buddhis sudah pasti merupakan seorang Buddhis, namun seorang buddhis belum tentu merupakan seorang filsuf buddhis. Seseorang yang mempraktikkan Tisarana belum tentu berpegang pada Empat Segel Agung, sedangkan seseorang yang sudah berpegang pada Empat Segel Agung dengan kuat seyogyanya sudah melakukan praktik berlindung. Dari sini, dapat ditarik kesimpulan bahwa seorang filsuf Buddhis adalah seseorang yang berada pada tahapan lebih lanjut dibanding seorang yang hanya Buddhis semata. Dengan demikian, topik Empat Segel Agung penting untuk dipelajari agar kita dapat mengembangkan diri ke tahapan yang lebih lanjut, yakni menjadi filsuf Buddhis (tentunya setelah sebelumnya menjadi seorang Buddhis terlebih dahulu dengan mengambil perlindungan kepada Triratna).&nbsp;</p>\r\n\r\n<p>Tapi, sebenarnya apa yang dimaksud dengan filsuf buddhis? Mari kita dalami maknanya. Sebelumnya, mari kita bahas dulu arti kata &ldquo;filsuf&rdquo;. Menurut KBBI, filsuf adalah 1) ahli filsafat, ahli pikir; 2) orang berfilsafat. Berdasarkan pengertian ini, dapat kita artikan bahwa filsuf buddhis adalah seorang ahli filsafat Buddhis, ahli pikir Buddhis, dan orang yang berfilsafat buddhis. Seorang filsuf Buddhis memiliki pemikiran, cara pandang, dan pemahaman yang berpegang pada prinsip-prinsip dasar buddhis, yaitu Empat Segel Agung.&nbsp;</p>\r\n\r\n<p>Mengapa kita perlu menjadi filsuf Buddhis? Untuk menjadi bahagia, tidak cukup bagi kita untuk melakukan praktik-praktik Dharma saja. Kita juga perlu memiliki pola pikir dan cara pandang Buddhis. Bayangkan saja jika kita hanya berdoa kepada Buddha tanpa memahami Dharma yang Beliau ajarkan, tentu akan sia-sia bukan? Padahal Buddha sendiri mengajarkan Dharma agar kita dapat mengubah cara pandang kita terhadap kehidupan sehingga semakin dekat dengan kebahagiaan sejati. Untuk itu, penting bagi kita memiliki pola pikir dan cara pandang Buddhis agar kita memiliki kacamata yang tepat dalam menjalani hidup dan dapat mengembangkan batin hingga akhirnya bebas dari penderitaan.&nbsp;</p>\r\n\r\n<p>Selain itu, seperti halnya dengan mendalami filsafat lainnya, seorang filsuf Buddhis juga mampu kritis dalam menghadapi setiap permasalahan yang dihadapinya dalam kehidupan. Misalnya, ketika kita merasa sedih. Kita bisa menganalisisnya melalui Empat Segel Agung. Misalnya, Segel Agung pertama mengingatkan kepada kita bahwa kesedihan kita bukanlah sesuatu yang kekal sehingga kita memiliki peluang untuk terbebas dari kesedihan. Segel Agung kedua mengingatkan kita bahwa perasaan sedih adalah perasaan yang wajar dan tidak perlu ditolak karena semua fenomena tercemar memiliki sifat dasar menderita sehingga kita bisa menerima penderitaan kita dengan lapang dada.</p>\r\n\r\n<h4><strong>Pengalaman Mendengarkan Pembabaran Empat Segel Agung</strong></h4>\r\n\r\n<p>Pada sesi pembabaran Dharma, Rinpoche membedah setiap prinsip Empat Segel Agung dengan amat terperinci. Bahkan lebih dari itu, Rinpoche juga membabarkan topik-topik dasar sebagai penunjang bagi para pendengar ajaran untuk memahami topik Empat Segel Agung itu sendiri.&nbsp; Misalnya saat menjelaskan mengenai segel pertama, yakni &ldquo;semua fenomena komposit tidak kekal&rdquo;, Rinpoche membedah definisi konsep &ldquo;fenomena komposit&rdquo; serta &ldquo;ketidakkekalan&rdquo; itu sendiri dengan sangat rinci. Rinpoche juga membahas topik kematian sebagai topik pendukung untuk memahami konsep ketidakkekalan yang telah disebutkan sebelumnya. Selebihnya, penjelasan Rinpoche tidak perlu saya jabarkan lebih lanjut di sini karena bisa dibaca buku transkrip &ldquo;4 Segel Agung Dharma&rdquo; yang telah diterbitkan (dan akan diterbitkan ulang) oleh Yayasan Pelestarian dan Pengembangan Lamrim Nusantara.</p>\r\n\r\n<p>Saya sendiri sangat terpukau dengan ketulusan Y.M. Khenzur Rinpoche ketika mengajar. Bagaimana tidak? Agar para pendengar ajaran bisa memahami topik Empat Segel Agung secara tepat dan lebih mendalam, Beliau rela mengajar dengan sangat rinci dan bahkan membahas topik-topik mendasar sebelum sampai pada pembabaran topik utama, yakni topik Empat Segel Agung itu sendiri. Berkat kebaikan hati Rinpoche itulah, saya bisa memiliki pemahaman yang sedikit lebih mendalam terhadap topik Empat Segel Agung. Saya sendiri melihat bahwa Empat Segel Agung merupakan ringkasan dari Lamrim (Tahapan Jalan Menuju Pencerahan) dan Empat Kebenaran Arya. Segel pertama, yakni &ldquo;semua fenomena komposit tidak kekal&rdquo;, mendorong kita untuk menyadari bahwa kehidupan kita sekarang ini adalah tidak kekal sehingga perlu membangkitkan ketertarikan pada kehidupan mendatang (motivasi awal Lamrim). Kemudian, segel kedua, yakni &ldquo;semua fenomena tercemar memiliki sifat dasar menderita&rdquo;, membuat kita melihat bahwa hakikat dasar setiap bentuk kehidupan adalah penderitaan sehingga mendorong kita untuk meraih pembebasan dari samsara (motivasi menengah dan agung Lamrim). Kemudian segel ketiga, &ldquo;semua fenomena tidak memiliki aku, sunya dalam eksistensi yang inheren&rdquo; mendorong kita untuk melihat sang jalan menuju pembebasan (Kebenaran Arya yang ketiga), yakni melalui perenungan akan kesunyataan yang memotong&nbsp;<em>klesha</em>&nbsp;ketidaktahuan, akar utama dari segala penderitaan samsara. Terakhir, segel keempat, &ldquo;nirwana adalah kedamaian tertinggi&rdquo;, mendorong kita untuk melihat tujuan yang seharusnya kita raih (Kebenaran Arya yang Keempat).&nbsp;</p>\r\n\r\n<p>Selain itu, saya merasa lebih memahami topik Empat Segel Agung melalui mendengar dibanding dengan hanya membaca transkrip. Ketika mendengar secara langsung, kita tidak hanya memahami topik ajaran, namun juga memperoleh rasa akan pemahaman dan pengalaman dari Sang Guru itu sendiri. Hal ini sesuai dengan perkataan Y.M. Biksu Bhadra Ruci yang kurang lebih mengatakan bahwa ketika membabarkan ajaran, Sang Guru tidak hanya menyalurkan pemahaman, namun juga rasa dan pengalaman Sang Guru akan topik tersebut. Namun, jika Anda kemarin melewatkan kesempatan untuk mengikuti retret &ldquo;Kebajikan Dalam Untaian Doa Bagi yang Beruntung&rdquo; ataupun ingin mempelajari kembali topik Empat Segel Agung, membaca transkrip juga merupakan tindakan yang bajik.&nbsp;</p>\r\n\r\n<p>Jadi, apakah Anda siap untuk menjadi filsuf buddhis dengan memahami lebih mendalam topik Empat Segel Agung?&nbsp;</p>\r\n', 'maxresdefault1.jpg', 'ini gambar', '2021-07-29 18:45:35', '2021-07-08', '4 Segel Agung Dharma Agama Buddha Indonesia Drepun', 'kebajikan-dalam-untaian-doa-umat-buddhis-atau-filsuf-buddhis-kamu-yang-mana', 29),
(3, 'Berapapun yang Anda berikan saya akan sangat berterimakasih atas donasinya.', 'https://youtu.be/K-AX0Jl5VQM', 'https://youtu.be/K-AX0Jl5VQM', 'artikel', 'utama', '<p>oleh Silvi Wilanda</p>\r\n\r\n<p>Pergantian tahun. Sebuah momen yang tidak hanya ditunggu-tunggu, namun juga dimaknai secara sakral oleh banyak orang. Banyak aktivitas-aktivitas khas yang rasanya &ldquo;wajib&rdquo; dilakukan, misalnya makan bersama keluarga, menyalakan kembang api, kumpul bareng teman, serta membuat resolusi tahun baru. Ya, banyak cara untuk merayakan momen pergantian tahun, begitu juga halnya dengan Kadam Choeling Indonesia (KCI). Setiap tahunnya, KCI selalu memaknai momen pergantian tahun dengan menghimpun kebajikan dengan melakukan retret penyunyian bersama. Adapun aktivitas kebajikan yang dilakukan adalah puja dan mendengarkan pembabaran Dharma.&nbsp;</p>\r\n\r\n<p>Tak terkecuali pada pergantian tahun 2020 menuju 2021, KCI juga kembali mengadakan pengumpulan kebajikan dan siaran pengajaran Dharma &ldquo;Kebajikan Dalam Untaian Doa Bagi yang Beruntung&rdquo; secara daring melalui aplikasi Zoom pada 25 Desember 2020 hingga 1 Januari 2021. Acara kali ini terdiri atas puja bersama pada sesi pertama dan kedua serta mendengarkan siaran pembabaran Dharma pada sesi ketiga. Sesi pembabaran Dharma sendiri merupakan tayangan ulang pembabaran topik &ldquo;Empat Segel Agung&rdquo; serta &ldquo;Karma dan Akibatnya&rdquo; yang pernah diberikan oleh Y.M. Drepung Tripa Khenzur Rinpoche. Tulisan ini secara khusus akan membahas kembali pembabaran Dharma topik &ldquo;Empat Segel Agung&rdquo; oleh Y. M. Khenzur Rinpoche melalui kacamata penulis.&nbsp;</p>\r\n\r\n<h3><strong>Filsuf Buddhis: Mempelajari Empat Segel Agung&nbsp;</strong></h3>\r\n\r\n<p>Rinpoche menjelaskan bahwa Empat Segel Agung merupakan empat pandangan, prinsip, serta filsafat dalam Buddhisme, yang diantaranya adalah sebagai berikut.&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Semua fenomena komposit tidak kekal.</li>\r\n	<li>Semua fenomena tercemar memiliki sifat dasar menderita.</li>\r\n	<li>Semua fenomena tidak memiliki aku, sunya dalam eksistensi yang inheren.&nbsp;</li>\r\n	<li>Nirwana adalah kedamaian tertinggi.&nbsp;</li>\r\n</ol>\r\n\r\n<p>Topik Empat Segel Agung merupakan topik yang amat penting dipelajari karena merupakan pandangan mendasar dalam filsafat Buddhis. Suatu ajaran dikatakan sejalan dengan Buddhisme jika ajaran tersebut berpijak pada Empat Segel Agung ini. Seseorang yang memahami dan menerima ajaran Empat Segel Agung tidak hanya dikatakan sebagai seorang Buddhis saja, melainkan juga seorang filsuf Buddhis.&nbsp;&nbsp;</p>\r\n\r\n<p>Lebih lanjut, Rinpoche membabarkan perbedaan antara seorang Buddhis dan seorang filsuf Buddhis. Seorang Buddhis merupakan seseorang yang mengambil praktik berlindung (tisarana) kepada Buddha, Dharma, dan Sangha (Triratna). Sedangkan, seperti yang telah disebutkan sebelumnya, seorang filsuf Buddhis merupakan seseorang yang sudah memahami dan menerima topik Empat Segel Agung. Seorang filsuf Buddhis sudah pasti merupakan seorang Buddhis, namun seorang buddhis belum tentu merupakan seorang filsuf buddhis. Seseorang yang mempraktikkan Tisarana belum tentu berpegang pada Empat Segel Agung, sedangkan seseorang yang sudah berpegang pada Empat Segel Agung dengan kuat seyogyanya sudah melakukan praktik berlindung. Dari sini, dapat ditarik kesimpulan bahwa seorang filsuf Buddhis adalah seseorang yang berada pada tahapan lebih lanjut dibanding seorang yang hanya Buddhis semata. Dengan demikian, topik Empat Segel Agung penting untuk dipelajari agar kita dapat mengembangkan diri ke tahapan yang lebih lanjut, yakni menjadi filsuf Buddhis (tentunya setelah sebelumnya menjadi seorang Buddhis terlebih dahulu dengan mengambil perlindungan kepada Triratna).&nbsp;</p>\r\n\r\n<p>Tapi, sebenarnya apa yang dimaksud dengan filsuf buddhis? Mari kita dalami maknanya. Sebelumnya, mari kita bahas dulu arti kata &ldquo;filsuf&rdquo;. Menurut KBBI, filsuf adalah 1) ahli filsafat, ahli pikir; 2) orang berfilsafat. Berdasarkan pengertian ini, dapat kita artikan bahwa filsuf buddhis adalah seorang ahli filsafat Buddhis, ahli pikir Buddhis, dan orang yang berfilsafat buddhis. Seorang filsuf Buddhis memiliki pemikiran, cara pandang, dan pemahaman yang berpegang pada prinsip-prinsip dasar buddhis, yaitu Empat Segel Agung.&nbsp;</p>\r\n\r\n<p>Mengapa kita perlu menjadi filsuf Buddhis? Untuk menjadi bahagia, tidak cukup bagi kita untuk melakukan praktik-praktik Dharma saja. Kita juga perlu memiliki pola pikir dan cara pandang Buddhis. Bayangkan saja jika kita hanya berdoa kepada Buddha tanpa memahami Dharma yang Beliau ajarkan, tentu akan sia-sia bukan? Padahal Buddha sendiri mengajarkan Dharma agar kita dapat mengubah cara pandang kita terhadap kehidupan sehingga semakin dekat dengan kebahagiaan sejati. Untuk itu, penting bagi kita memiliki pola pikir dan cara pandang Buddhis agar kita memiliki kacamata yang tepat dalam menjalani hidup dan dapat mengembangkan batin hingga akhirnya bebas dari penderitaan.&nbsp;</p>\r\n\r\n<p>Selain itu, seperti halnya dengan mendalami filsafat lainnya, seorang filsuf Buddhis juga mampu kritis dalam menghadapi setiap permasalahan yang dihadapinya dalam kehidupan. Misalnya, ketika kita merasa sedih. Kita bisa menganalisisnya melalui Empat Segel Agung. Misalnya, Segel Agung pertama mengingatkan kepada kita bahwa kesedihan kita bukanlah sesuatu yang kekal sehingga kita memiliki peluang untuk terbebas dari kesedihan. Segel Agung kedua mengingatkan kita bahwa perasaan sedih adalah perasaan yang wajar dan tidak perlu ditolak karena semua fenomena tercemar memiliki sifat dasar menderita sehingga kita bisa menerima penderitaan kita dengan lapang dada.</p>\r\n\r\n<h4><strong>Pengalaman Mendengarkan Pembabaran Empat Segel Agung</strong></h4>\r\n\r\n<p>Pada sesi pembabaran Dharma, Rinpoche membedah setiap prinsip Empat Segel Agung dengan amat terperinci. Bahkan lebih dari itu, Rinpoche juga membabarkan topik-topik dasar sebagai penunjang bagi para pendengar ajaran untuk memahami topik Empat Segel Agung itu sendiri.&nbsp; Misalnya saat menjelaskan mengenai segel pertama, yakni &ldquo;semua fenomena komposit tidak kekal&rdquo;, Rinpoche membedah definisi konsep &ldquo;fenomena komposit&rdquo; serta &ldquo;ketidakkekalan&rdquo; itu sendiri dengan sangat rinci. Rinpoche juga membahas topik kematian sebagai topik pendukung untuk memahami konsep ketidakkekalan yang telah disebutkan sebelumnya. Selebihnya, penjelasan Rinpoche tidak perlu saya jabarkan lebih lanjut di sini karena bisa dibaca buku transkrip &ldquo;4 Segel Agung Dharma&rdquo; yang telah diterbitkan (dan akan diterbitkan ulang) oleh Yayasan Pelestarian dan Pengembangan Lamrim Nusantara.</p>\r\n\r\n<p>Saya sendiri sangat terpukau dengan ketulusan Y.M. Khenzur Rinpoche ketika mengajar. Bagaimana tidak? Agar para pendengar ajaran bisa memahami topik Empat Segel Agung secara tepat dan lebih mendalam, Beliau rela mengajar dengan sangat rinci dan bahkan membahas topik-topik mendasar sebelum sampai pada pembabaran topik utama, yakni topik Empat Segel Agung itu sendiri. Berkat kebaikan hati Rinpoche itulah, saya bisa memiliki pemahaman yang sedikit lebih mendalam terhadap topik Empat Segel Agung. Saya sendiri melihat bahwa Empat Segel Agung merupakan ringkasan dari Lamrim (Tahapan Jalan Menuju Pencerahan) dan Empat Kebenaran Arya. Segel pertama, yakni &ldquo;semua fenomena komposit tidak kekal&rdquo;, mendorong kita untuk menyadari bahwa kehidupan kita sekarang ini adalah tidak kekal sehingga perlu membangkitkan ketertarikan pada kehidupan mendatang (motivasi awal Lamrim). Kemudian, segel kedua, yakni &ldquo;semua fenomena tercemar memiliki sifat dasar menderita&rdquo;, membuat kita melihat bahwa hakikat dasar setiap bentuk kehidupan adalah penderitaan sehingga mendorong kita untuk meraih pembebasan dari samsara (motivasi menengah dan agung Lamrim). Kemudian segel ketiga, &ldquo;semua fenomena tidak memiliki aku, sunya dalam eksistensi yang inheren&rdquo; mendorong kita untuk melihat sang jalan menuju pembebasan (Kebenaran Arya yang ketiga), yakni melalui perenungan akan kesunyataan yang memotong&nbsp;<em>klesha</em>&nbsp;ketidaktahuan, akar utama dari segala penderitaan samsara. Terakhir, segel keempat, &ldquo;nirwana adalah kedamaian tertinggi&rdquo;, mendorong kita untuk melihat tujuan yang seharusnya kita raih (Kebenaran Arya yang Keempat).&nbsp;</p>\r\n\r\n<p>Selain itu, saya merasa lebih memahami topik Empat Segel Agung melalui mendengar dibanding dengan hanya membaca transkrip. Ketika mendengar secara langsung, kita tidak hanya memahami topik ajaran, namun juga memperoleh rasa akan pemahaman dan pengalaman dari Sang Guru itu sendiri. Hal ini sesuai dengan perkataan Y.M. Biksu Bhadra Ruci yang kurang lebih mengatakan bahwa ketika membabarkan ajaran, Sang Guru tidak hanya menyalurkan pemahaman, namun juga rasa dan pengalaman Sang Guru akan topik tersebut. Namun, jika Anda kemarin melewatkan kesempatan untuk mengikuti retret &ldquo;Kebajikan Dalam Untaian Doa Bagi yang Beruntung&rdquo; ataupun ingin mempelajari kembali topik Empat Segel Agung, membaca transkrip juga merupakan tindakan yang bajik.&nbsp;</p>\r\n\r\n<p>Jadi, apakah Anda siap untuk menjadi filsuf buddhis dengan memahami lebih mendalam topik Empat Segel Agung?&nbsp;</p>\r\n', 'maxresdefault3.jpg', 'ini gambar', '2021-07-29 18:45:53', '2021-07-04', '4 Segel Agung Dharma Agama Buddha Indonesia Drepun', 'berapapun-yang-anda-berikan-saya-akan-sangat-berterimakasih-atas-donasinya', 17),
(13, 'Wilwatikta Foundation', 'Leher artikel', ' Isi artikel', 'gsx', 'adad', '<p>Nah struktur yang terakhir adalah bagian kesimpulan. Bagian ini isinya kesimpulan dari bahasan inti artikel dan rangkuman artikel secara lengkap. Bagian penutup ini biasanya terletak pada paragraf bagian paling bawah dari artikel.</p>\r\n\r\n<p>Penerapan struktur artikel seperti diatas bisa Anda terapkan untuk keperluan artikel apa saja, termasuk artikel untuk keperluan blog. Tinggal dimainkan saja pada kata kunci yang sedang ditarget dengan memasukkannya dalam pembahasan artikel, tetapi ingat cukup mengulanginya beberapa kali saja jangan terlalu banyak memasukan kata kunci.</p>\r\n\r\n<p>Perlu diketahui bahwa&nbsp;<strong>Qwords</strong>&nbsp;saat ini terus berupaya untuk memberikan edukasi kepada semua pembaca setia blog dengan artikel-artikel terbaru. Jangan lupa untuk melakukan subscribe email Anda dan dapatkan potongan cashback ekstra untuk pembelian&nbsp;<a href=\"https://www.qwords.com/\" rel=\"noopener noreferrer\" target=\"_blank\">hosting terbaik&nbsp;</a>dari Kami.</p>\r\n\r\n<p>Terima kasih</p>\r\n', 'Home_3.jpg', 'Penutup', '2021-07-29 18:39:42', '2021-07-09', 'oke', 'wilwatikta-foundation', 12),
(14, 'Joan mir suzuki', '', '', '', '', '<p>Joan Mir Mayrata adalah seorang Pembalap motor Grand Prix Spanyol. Mir juga pernah menjadi pesaing di Red Bull MotoGP Rookies Cup dan CEV Moto3 Championship. Dia memenangkan Kejuaraan Dunia Moto3 2017 dengan Leopard Racing</p>\r\n', 'Duffstudio.jpg', 'ini joan mir', '2021-07-29 18:39:48', '2021-06-16', '', 'joan-mir-suzuki', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(300) NOT NULL,
  `subjudul_berita` varchar(500) NOT NULL,
  `video_youtube` varchar(400) NOT NULL,
  `kategori_berita` varchar(255) NOT NULL,
  `headline_berita` varchar(255) NOT NULL,
  `isi_berita` text NOT NULL,
  `gambar_berita` varchar(255) NOT NULL,
  `ketgambar_berita` varchar(500) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tag_berita` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_berita`
--

INSERT INTO `tbl_berita` (`id_berita`, `judul_berita`, `subjudul_berita`, `video_youtube`, `kategori_berita`, `headline_berita`, `isi_berita`, `gambar_berita`, `ketgambar_berita`, `tanggal_content`, `tanggal_input`, `tag_berita`, `slug`, `jumlahVisitor`) VALUES
(1, 'Cara mencari jadi diri', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'https://www.youtube.com/watch?v=qLvzzIqkrNE', 'biara', 'utama', '<h2><span style=\"font-size:48px\">Cara ingin menjadi pintar&nbsp;</span></h2>\r\n\r\n<blockquote>\r\n<p>Pada line 17 di model&nbsp;Siswa_model&nbsp;kita buat method dengan nama&nbsp;getById&nbsp;dan memiliki parameter&nbsp;$id, dalam method ini kita buat perintah query untuk mencari data siswa berdasarkan&nbsp;kd_siswa&nbsp;yang sama dengan nilai dari variabel&nbsp;$id.&nbsp;Pada line 17 di model&nbsp;Siswa_model&nbsp;kita buat method dengan nama&nbsp;getById&nbsp;dan memiliki parameter&nbsp;$id, dalam method ini kita buat perintah query untuk mencari data siswa berdasarkan&nbsp;kd_siswa&nbsp;yang sama dengan nilai dari variabel&nbsp;$id.</p>\r\n</blockquote>\r\n\r\n<p><strong>Pada line 17</strong> di model&nbsp;Siswa_model&nbsp;kita buat method dengan nama&nbsp;getById&nbsp;dan memiliki parameter&nbsp;$id, dalam method ini kita buat perintah query untuk mencari data siswa berdasarkan&nbsp;kd_siswa&nbsp;yang sama dengan nilai dari variabel&nbsp;$id.</p>\r\n\r\n<p><em>Pada line 17 </em><u>di model&nbsp;Siswa_model&nbsp;kita buat method dengan nama&nbsp;getById</u>&nbsp;dan memiliki parameter&nbsp;$id, dalam method ini kita buat perintah query untuk mencari data siswa berdasarkan&nbsp;kd_siswa&nbsp;yang sama dengan nilai dari variabel&nbsp;$id.</p>\r\n\r\n<p><s>Pada line 17 di model&nbsp;Siswa_model&nbsp;kita buat method dengan nama&nbsp;getById&nbsp;dan memiliki parameter&nbsp;$id, dalam method ini kita buat perintah query untuk mencari data siswa berdasarkan&nbsp;kd_siswa&nbsp;yang sama dengan nilai dari variabel&nbsp;$id.</s></p>\r\n', 'image_5.jpg', 'ini gambar', '2021-06-01', '2021-07-29 19:05:46', 'basket', 'cara-mencari-jadi-diri', 27),
(3, 'Belajar motor', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 'https://youtu.be/Xr7z3WV3RBg', 'bola', 'utama', '<h1>The standard Lorem Ipsum passage, used since the 1500s&nbsp;</h1>\r\n\r\n<blockquote>\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n\r\n<h3>Section 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.&quot;</p>\r\n', 'C360_2015-09-05-15-46-12-371.jpg', 'ini gambar', '2021-07-05', '2021-08-09 21:37:46', 'basket', 'belajar-motor', 10),
(10, 'Liputan Lamrim Talk: “Perempuan Hebat Perempuan Berkarya”', 'Pergantian tahun. Sebuah momen yang tidak hanya ditunggu-tunggu, namun juga dimaknai secara sakral oleh banyak orang. ', 'https://www.youtube.com/watch?v=qLvzzIqkrNE', 'biara', 'utama', '<p>oleh Junarsih</p>\r\n\r\n<p><em>Masa sih perempuan bisa berkarya?</em></p>\r\n\r\n<p>Sekarang udah bukan zamannya meragukan kemampuan perempuan. Sejak awal juga perempuan memiliki potensi untuk berkarya seperti laki-laki. Perempuan mampu untuk menjadi hebat dan mampu berkarya sesuai kapasitas masing-masing. Dan yang paling penting, Dharma bisa membantu perempuan menunjukkan kehebatannya dan siap berkarya.</p>\r\n\r\n<p>Untuk membahas lebih lanjut tentang Dharma dan perempuan hebat, pada Jumat, 23 April 2021 lalu Lamrimnesia kembali mengadakan Lamrim Talk dengan mengundang dua perempuan hebat yang siap membagikan inspirasi untuk perempuan mampu berkarya dan sukses di bidangnya masing-masing. Dua perempuan hebat ini adalah Serlina Wijaya, Chief Executive Officer (CEO) Pegipegi, dan Noviana Kusumawardhani (Bude Novi), seorang pembaca tarot sekaligus penulis.</p>\r\n\r\n<p>Singkatnya, Serlina menjelaskan hubungan Lamrim dan karir serta konsep kepemimpinan yang terdapat dalam Kebuddhaan. Pemaparan Serlina kemudian dilanjutkan oleh Bude Novi dengan ungkapan &ldquo;dunia akan bahagia kalau perempuannya bahagia&rdquo;. Secara tidak langsung, perempuan adalah akar kebahagiaan dunia. Kalau semua perempuan merasakan kebahagiaan dan ia juga memahami Dharma, bukan hanya kebahagiaan dunia yang tercipta, tapi cinta kasih akan tersebar di seluruh penjuru dunia.</p>\r\n\r\n<p>Lalu, poin menarik apa yang bisa kita angkat dari acara ini? Ada dua poin yang berkesan untuk saya sebagai penulis, yakni tentang pemahaman Dharma mengenai konsep cinta kasih dan kebijaksanaan dalam berkarir serta konsep kebahagiaan dengan berteman dengan diri sendiri. Saya yakin, dua poin ini juga bakal bermanfaat untuk Sahabat Lamrimnesia juga!</p>\r\n\r\n<h4><strong>Berkarir dalam Dharma</strong></h4>\r\n\r\n<p>Belajar Dharma itu bukan sekadar tahu teori habis itu selesai. Tapi, Dharma itu harus dipraktikkan supaya esensinya lebih mengena pada batin kita. Dharma tanpa praktik ibaratnya sayur tanpa garam, hambar, kurang maknyusss.&nbsp;</p>\r\n\r\n<p>Dharma pun tidak hanya dipelajari dan dipraktikkan di Biara bersama anggota Sangha, romo pandita, atau guru spiritual secara langsung maupun virtual. Tapi, Dharma juga harus dipelajari dan dipraktikkan setiap saat. Setiap aktivitas juga haruslah dilandasi Dharma. Apalagi kalau kita adalah perempuan yang sedang berkarir baik dengan merintis usaha sendiri atau bahkan bekerja di suatu perusahaan. Tentunya kita harus menerapkan Dharma yang dilandasi cinta kasih dan kebijaksanaan untuk menjalankan aktivitas di toko atau kantor. Kita tidak bisa asal memarahi orang lain hanya karena proyek gagal. Lebih baik kita mencari tahu dahulu penyebab kegagalan proyek tersebut tanpa langsung menyalahkan orang lain. Ini adalah bentuk kebijaksanaan.&nbsp;</p>\r\n\r\n<p>Ketika kita bisa mengendalikan diri untuk tidak melontarkan kemarahan pada orang lain, maka kita sudah mempraktikkan salah satu bentuk cinta kasih. Saya sebagai seorang perempuan tidak bisa memenangkan ego sendiri untuk menghancurkan orang lain. Sebaliknya, dengan bekal Dharma, saya bisa lebih memahami orang lain saat bekerja sama. Lebih luas lagi, Dharma tidak hanya dipraktikkan ketika sedang bekerja. Saat bercakap dengan teman sekontrakan, saya usahakan juga berbicara yang baik &mdash; dengan tidak berkata yang kasar dan tidak benar yang bisa menyakiti hati mereka. Dalam hubungan dengan pacar juga harus sambil praktik Dharma. Jangan sampai hanya karena kekasih sedang berbicara dengan teman, saya malah jadi marah-marah tidak jelas. Menjadi bijak dengan mencoba berpikir dengan jernih dan tenang adalah solusinya. Dengan begitu, saya jadi tidak mudah marah meski kekasih sedang berbicara dengan orang lain.</p>\r\n\r\n<p>Saya kemudian lanjut memikirkan kira-kira praktik Dharma apa lagi yang bisa saya terapkan sebagai seorang perempuan. Ketika bekerja sebagai penulis, saya punya motivasi untuk bekerja tidak hanya untuk diri sendiri. Tapi tulisan yang sudah diterbitkan di media tidak sekadar memberikan informasi,, tapi juga memberikan manfaat dan pandangan baru terhadap orang-orang yang membacanya.&nbsp;</p>\r\n\r\n<h4><strong>Bahagia dengan Berteman Terhadap Diri Sendiri</strong></h4>\r\n\r\n<p>Kalau Serlina menggunakan sudut pandang Buddhis, Bude Novi menjelaskan dari sudut pandang umum yang nilainya juga sejalan dengan prinsip Dharma. Kata Bude Novi, kebanyakan perempuan tidak bahagia karena ia tidak berteman dengan dirinya sendiri. Banyak hal yang menjadi penyebab ketidakbahagiaan perempuan, mulai dari harus melakukan hal-hal yang seharusnya merupakan pilihan tapi dianggap sebagai kewajiban, misalnya perempuan harus bisa masak enak, harus menikah, dan harus punya anak. Ketiga hal ini sebenarnya adalah pilihan. Perempuan boleh untuk tidak menikah, tidak masak, dan tidak punya anak.</p>\r\n\r\n<p>Namun, karena beban dari masyarakat yang mengharuskan perempuan untuk bisa melakukan tiga hal itu, perempuan jadi tidak bahagia. Kalau perempuan harus bisa masak, tapi dia tidak memiliki bakat, padahal sudah berulang kali mencoba dan tetap saja tidak bisa, gimana dong? Kalau terus dipaksa ya pasti perempuan merasa tidak bahagia. Selain itu, perempuan juga dihadapkan dengan tekanan terhadap standar kecantikan yang ada, baik melalui media sosial, majalah, dan televisi. Kalau perempuan merasa tidak cantik, maka ia akan berusaha melakukan apapun untuk terlihat cantik: menggunakan&nbsp;<em>make up</em>&nbsp;tebal dan bermerk, perawatan kulit di salon, bahkan sampai tidak mau terpapar sinar matahari. Kalau usaha ini tidak membuahkan hasil, perempuan bisa stres, tidak percaya diri, dan akhirnya tidak bahagia.</p>\r\n\r\n<p>Jujur saja, kadang saya juga merasa tidak bahagia karena tidak bisa memahami ataupun berteman dengan diri sendiri. Kadang saya merasa iri dengan keberhasilan dan keberhasilan orang lain. Tapi, saya kembali menilik pada diri sendiri, akankah saya selalu merasa iri dengan orang lain hanya karena saya tidak sesuai dengan standar mereka? Jawabannya adalah tidak. Saya berusaha untuk menentukan standar terhadap diri saya sendiri. Kalau tidak bisa secantik model ya sudah, saya tidak akan mendorong diri lebih jauh bila tidak membuat bahagia. Lebih baik saya bersyukur dengan rupa yang sudah dimiliki dan bahagia dengan keadaan ini.</p>\r\n\r\n<p>Ketika saya gagal, saya pernah juga merasa tidak bahagia. Kalau dipikir-pikir, mana mungkin saya akan terus terpuruk dan merasa rendah daripada orang lain. Jadi, standar keberhasilan setiap orang itu berbeda-beda. Bisa saja saya gagal hari ini tapi sukses di hari esok. Saat kegagalan datang, ambil waktu untuk istirahat dan sejenak&nbsp;<em>refreshing</em>. Entah jalan-jalan ke sawah, makan makanan favorit, atau bahkan nonton film. Buat diri rileks dulu, baru berpikir lagi untuk menyusun rencana membuat kesuksesan yang baru. Saat kita bisa bangkit, kita akan menemukan kebahagiaan dalam diri dan mudah menentukan tujuan hidup.</p>\r\n\r\n<h4><strong>Kesimpulan</strong></h4>\r\n\r\n<p>Menjadi perempuan itu tidak rumit, yang rumit hanyalah pikiran kita yang penuh dengan racun-racun standar kehidupan. Standar kecantikan dan tubuh molek kadang membuat perempuan tidak bahagia. Lebih jauh lagi perempuan ditekan dengan standar dari masyarakat yaitu &mdash; harus bisa masak, menikah, dan punya anak. Mau kita bisa masak atau tidak, mau punya anak atau tidak, itu pilihan kita. Perempuan itu hebat, punya banyak bakat. Perempuan itu hebat, mampu berkarya. Dan yang terpenting adalah memahami Dharma. Hidup kita tidak hanya untuk diri sendiri, tapi juga untuk orang lain. Kalau memilih untuk berkarir, maka berkarirlah sesuai potensi dengan menerapkan cinta kasih dan kebijaksanaan dalam berkarya serta jangan iri dengan orang lain. Jangan lupa, bahagialah bersama diri sendiri dahulu supaya kita bisa melakukan apapun dengan senang hati dan bisa membahagiakan orang lain.</p>\r\n', 'buku_dharma.jpg', 'ini gambar', '2021-07-02', '2021-07-29 18:58:23', 'lamrim', 'liputan-lamrim-talk-perempuan-hebat-perempuan-berkarya', 9),
(11, 'Cara Menggunakan Query Builder di Codeigniter', 'Selamat datang di warungbelajar, dalam tutorial kali ini kita akan melanjutkan pembahasan mengenai codeigniter, kali ini kita bahas mengenai query builder di codeigniter.', '', '', '', '<p>Selamat datang di warungbelajar, dalam tutorial kali ini kita akan melanjutkan pembahasan mengenai codeigniter, kali ini kita bahas mengenai query builder di codeigniter.</p>\r\n\r\n<p>Query Builder adalah class yang disediakan oleh codeigniter, yang digunakan untuk berkomunikasi dengan database, dengan adanya query builder, anda dapat melakukan perintah seperti insert, select, update &amp; delete, dengan perintah query yang lebih minimal.</p>\r\n', 'item-150721-c428ed2b52.jpg', 'Codeigniter', '2021-07-08', '2021-07-29 19:06:09', '', 'cara-menggunakan-query-builder-di-codeigniter', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `telahberakhir_galeri`
--

CREATE TABLE `telahberakhir_galeri` (
  `id_tbGaleri` int(11) NOT NULL,
  `id_jadwalBulanan` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gambar_galeri` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `telahberakhir_galeri`
--

INSERT INTO `telahberakhir_galeri` (`id_tbGaleri`, `id_jadwalBulanan`, `slug`, `gambar_galeri`, `tanggal_input`, `admin`) VALUES
(2, 4, 'membuat-format-tanggal-indonesia-di-codeigniter', 'item-210913-f5c7bb582a.jpg', '2021-09-13 14:53:00', 'baruna'),
(3, 6, 'cara-mencegah-sql-injection-pada-codeigniter-ines', 'item-130921-12d49cc456.jpg', '2021-09-13 15:47:34', 'baruna'),
(4, 7, 'kelas-meditasi', 'item-130921-aa417d01dd.jpg', '2021-09-13 15:50:25', 'baruna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `telahberakhir_slideshow`
--

CREATE TABLE `telahberakhir_slideshow` (
  `id_tbSlide` int(11) NOT NULL,
  `id_jadwalBulanan` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gambar_slideshow` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `telahberakhir_slideshow`
--

INSERT INTO `telahberakhir_slideshow` (`id_tbSlide`, `id_jadwalBulanan`, `slug`, `gambar_slideshow`, `tanggal_input`, `admin`) VALUES
(1, 4, 'membuat-format-tanggal-indonesia-di-codeigniter', 'item-210912-275e6db373.jpg', '2021-09-12 15:38:53', 'baruna'),
(2, 6, 'cara-mencegah-sql-injection-pada-codeigniter-ines', 'item-130921-7c61969542.jpg', '2021-09-13 15:45:44', 'baruna'),
(3, 6, 'cara-mencegah-sql-injection-pada-codeigniter-ines', 'item-130921-362d20dda6.jpg', '2021-09-13 15:46:47', 'baruna'),
(4, 7, 'kelas-meditasi', 'item-210913-341a522a75.jpg', '2021-09-13 15:49:36', 'baruna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang_biara`
--

CREATE TABLE `tentang_biara` (
  `id_tentangBiara` int(11) NOT NULL,
  `judul_content` varchar(300) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `slug` varchar(255) NOT NULL,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tentang_biara`
--

INSERT INTO `tentang_biara` (`id_tentangBiara`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `slug`, `jumlahVisitor`) VALUES
(3, 'Tentang Biara ', '<h5><span style=\"font-size:12pt\">Di atas tanah berbukit seluas 25 hektar di Desa Sumberoto, Kecamatan Donomulyo, Kabupaten Malang, Jawa Timur, Biara Indonesia Tu?ita Vivara??cara?a Vijay??raya telah berdiri megah. Dalam Bahasa Tibet, Biara ini disebut Biara Indonesia<a href=\"https://www.apacara.com/tutorial/html/html-article-tag.html\"> Gaden Syeydrub Nampar Gyelwei Ling</a> yang berarti &ldquo;Pusat Belajar dan Praktik Para Penakluk Tushita&rdquo;</span></h5>\r\n\r\n<h5><strong><span style=\"font-size:12pt\">Apa itu biara?</span></strong></h5>\r\n\r\n<h5><span style=\"font-size:12pt\">Biara merupakan tempat bagi umat Buddha, khususnya para biksu/biksuni, untuk fokus belajar dan melatih diri sesuai ajaran Buddha. Sebagai sebuah institusi, Biara menjaga kemurnian silsilah ajaran dan berbagai tradisi yang menyertainya dari generasi ke generasi.</span></h5>\r\n\r\n<h5><span style=\"font-size:12pt\">Mengapa perlu mendirikan biara di Indonesia?</span></h5>\r\n\r\n<blockquote>\r\n<h5><span style=\"font-size:12pt\">&ldquo;Sangha butuh tempat, kondisi, atmosfer, situasi. Ini hanya kita bisa dapatkan dari sebuah Biara yang institusinya matang, jelas, kemudian dijaga kondisinya sangat steril. Maka kita perlu memikirkan kita harus bangun biara.&rdquo;</span><br />\r\n<span style=\"font-size:12pt\">-Y.M. Biksu Bhadra Ruci, Kepala Biara Indonesia Tu?ita Vivara??cara?a Vijay??raya</span></h5>\r\n</blockquote>\r\n\r\n<h5><span style=\"font-size:12pt\">Welas asih, terima kasih, sopan santun, dan keramahtamahan yang identik dengan budaya Nusantara bersumber dari Bodhicita--tekad agung untuk menyempurnakan diri demi membebaskan semua makhluk dari segala bentuk penderitaan, poin kunci dalam Buddhadharma yang merupakan ajaran khas Guru Suwarnadwipa Dharmakirti dari Sriwijaya. Satu-satunya cara agar nilai bajik ini tetap lestari dan terus memberikan manfaat dari masa ke masa adalah dengan mendirikan institusi tempat orang-orang dapat mencurahkan seluruh jiwa dan raga untuk mendalami dan mempraktikkan Buddhadharma hingga mencapai realisasi yang nyata. Orang-orang inilah yang nantinya akan membagikan dan meneruskan ajaran ini dari generasi ke generasi.</span></h5>\r\n\r\n<h5><span style=\"font-size:12pt\">Biara Indonesia Tu?ita Vivara??cara?a Vijay??raya adalah institusi pembelajaran Sutra dan Tantra yang lengkap dan menyeluruh. Biara juga mewarisi sistem pendidikan monastik Gelug yang dikembangkan berdasarkan tradisi Nalanda, sistem pendidikan tertua di dunia yang menjunjung tinggi penalaran logis dan pendekatan ilmiah dan pernah menjadi identitas peradaban Buddhis Nusantara. Dengan berdirinya Biara Indonesia Tu?ita Vivara??cara?a Vijay??raya, guru-guru Dharma nan bijaksana akan lahir dan membimbing banyak orang menyempurnakan batin. Niscaya, nilai bajik Buddhadharma pun akan lestari dan mendekatkan semua makhluk ke kebahagiaan sejati</span></h5>\r\n', 'item-210722-1d1600dfbe.jpg', 'https://youtu.be/GOfYgMjYBlk', '2021-06-16', '2021-08-30 21:01:00', 'tentang-biara', 75);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang_sangha`
--

CREATE TABLE `tentang_sangha` (
  `id_tentangSangha` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tentang_sangha`
--

INSERT INTO `tentang_sangha` (`id_tentangSangha`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(1, 'Sangha, Sang Penerus Ajaran', '<p>Sadar akan sangat berharganya dapat bertemu dengan Guru dan Ajaran yang otentik serta berkualitas dan ingin memastikan dapat memperoleh manfaat sebesar-besarnya, sekelompok murid menempuh jalan penahbisan. Dengan menjalani penahbisan, mereka ingin fokus memanfaatkan kelahiran manusia yang berharga dan memastikan berada di lingkungan kondusif untuk menjalani praktik Dharma yang intensif.<br />\r\n<br />\r\n4 orang pada awalnya, terus bertambah, hingga sekarang berjumlah 17 orang yang berada dalam &ldquo;Persaudaraan&rdquo; Monastik dalam naungan Kadam Choeling Indonesia. Baik memilih pada pembelajaran filsafat Buddhis ataupun pengumpulan kebajikan intensif, dijalani dengan sepenuh hati dan sebaik-baiknya.</p>\r\n\r\n<p>Aktivitas berupa kelas serta hafalan filsafat Buddhis, meditasi dan perenungan, debat dialektika, retret pribadi maupun bersama-sama, hingga aktivitas pengumpulan kebajikan dan purifikasi, semuanya dijalani dengan penuh kesadaran untuk perkembangan spiritual setahap demi setahap pada Sang Jalan.</p>\r\n\r\n<p>Segala pencapaian ini adalah berkat kebaikan hati dan berkah dari Guru Dagpo Rinpoche yang terus membimbing dan mendukung Sangha Monastik KCI ini. Semoga tanpa pernah terpisahkan, Sangha Monastik bisa terus berada dalam naungan Guru sejak saat ini hingga pencapaian Kebuddhaan yang lengkap dan sempurna demi kebaikan semua makhluk.</p>\r\n', 'item-210726-ba8cd32bd6.jpg', 'https://youtu.be/GOfYgMjYBlk', '2021-06-18', '2021-07-29 18:08:29', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tradisi_gelug`
--

CREATE TABLE `tradisi_gelug` (
  `id_tradisiGelug` int(11) NOT NULL,
  `judul_content` varchar(255) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar_content` varchar(255) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `tanggal_content` date NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tradisi_gelug`
--

INSERT INTO `tradisi_gelug` (`id_tradisiGelug`, `judul_content`, `isi_content`, `gambar_content`, `video_youtube`, `tanggal_content`, `tanggal_input`, `jumlahVisitor`) VALUES
(5, 'Tradisi Gelug', '<p><a href=\"https://sanghakci.wixsite.com/sanghakadamchoeling/single-post/2019/05/09/gelukpa-monastik-tidak-hanya-ritual\">Tatanan</a> monastik yang disebut Gelukpa didirikan oleh cendekiawan besar dan reformator Yang Agung Tsongkhapa Losang Drakpa (1357-1419 M). Seorang cendekiawan luar biasa yang belajar dengan banyak guru di sekitar tibet, terutama dengan Yang Mulia Rendawa dari tradisi Sakya, Beliau mulai menulis risalah filosofis pada usia tiga puluh dua tahun. Pada akhir usia tigapuluhan, beliau mendapatkan penglihatan seorang Bodhisattva atau personifikasi dari Buddha Kebijaksanaan, Manjusri, yang dikatakan telah memberikan pengajaran Dharma secara langsung. Penglihatan penting lainnya terjadi selama menyusun karyanya yang terbesar, Risalah Agung Tahapan Sang Jalan. Kali ini, beliau diyakini telah belajar langsung dari penampakan pandit (cendekiawan) India, Yang Agung Atisa, yang menghidupkan kembali agama Buddha Tibet pada abad ke-11 dan meninggal di Tibet. Yang Agung Tsongkhapa menarik banyak pengikut dengan perpaduan cemerlangnya mengenai filsafat India dan kitab komentar Tibet. Secara khusus, penjelasannya tentang Ajaran Madyamika secara terampil, berlapis-lapis, dan persuasif yang dianggap pembelajaran tertinggi oleh orang tibet.</p>\r\n\r\n<p>Yang Agung Tsongkhapa tidak pernah mengumumkan pembentukan tatanan monastik baru, tetapi mulai terbentuk setelah pendirian Biara Ganden dekat lhasa pada tahun 1410. Tradisi lain menyebut para pengikut Yang Agung Tsongkhapa sebagai Gandenpa. Setelah tulisan-tulisan Tsongkhapa dikritik oleh para penulis tradisi Sakya, para Gandenpa memisahkan diri mereka dari Sakya</p>\r\n\r\n<p>dengan menyebut diri mereka sendiri sebagai Gelukpa (Yang berbudi luhur). Mereka juga disebut sebagai pengikut tradisi Kadampa Baru yang mengacu pada tatanan Kadampa yang didirikan oleh murid Yang Agung Atisa, Yang Agung Dromtonpa (1005-1064 M). Seperti Yang Agung Atisa, Yang Agung Dromtonpa, dan terutama cendekiawan besar dan penerjemah Ngok Loden Sherab (1059-1109 M), Yang Agung Tsongkhapa menekankan bahwa monastisisme seharusnya tidak hanya tentang ritual tetapi harus melibatkan studi yang keras tentang filsafat Buddha.</p>\r\n\r\n<p>Dikarenakan memiliki silsilah dan biara asal yang sama, pembelajaran mengenai filsafat Buddha inilah nilai yang dipegang oleh Sangha Kadam Choeling Indonesia. Sangha KCI menjalani kelas-kelas rutin pembelajaran Filsafat setiap hari untuk mempelajari 5 teks besar, baik di India maupun di Indonesia.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://static.wixstatic.com/media/2754c2_9d274a6cc9964dafa2ca785a065b90fe~mv2.jpeg/v1/fill/w_285,h_214,al_c,q_90/2754c2_9d274a6cc9964dafa2ca785a065b90fe~mv2.webp\" /></p>\r\n\r\n<p>Setelah menjalani beberapa waktu pembelajaran di Drepung Gomang Monastery di India, kini Sangha KCI bisa melanjutkan di Indonesia atas kebaikan hati dari Ven. Lobsang Palbar yang berkenan tinggal di Indonesia selama proses pembelajaran berlangsung.</p>\r\n\r\n<p>Sangha Kadam Choeling Indonesia telah memulai kelas baru pada tanggal 26 Maret 2019 serta melanjutkan pembelajaran filsafat Buddhis pada 21 Februari 2019.</p>\r\n', 'item-210726-3199f25f79.jpg', 'https://youtu.be/GOfYgMjYBlk', '2021-07-06', '2021-07-29 18:57:04', 44);

-- --------------------------------------------------------

--
-- Struktur dari tabel `visit_anggotasangha`
--

CREATE TABLE `visit_anggotasangha` (
  `idVisit` int(11) NOT NULL,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `visit_anggotasangha`
--

INSERT INTO `visit_anggotasangha` (`idVisit`, `jumlahVisitor`) VALUES
(1, 156);

-- --------------------------------------------------------

--
-- Struktur dari tabel `visit_dana`
--

CREATE TABLE `visit_dana` (
  `idVisit` int(11) NOT NULL,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `visit_dana`
--

INSERT INTO `visit_dana` (`idVisit`, `jumlahVisitor`) VALUES
(1, 1709);

-- --------------------------------------------------------

--
-- Struktur dari tabel `visit_galeri`
--

CREATE TABLE `visit_galeri` (
  `idVisit` int(11) NOT NULL,
  `jumlahVisitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `visit_galeri`
--

INSERT INTO `visit_galeri` (`idVisit`, `jumlahVisitor`) VALUES
(1, 60);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `afiliasi`
--
ALTER TABLE `afiliasi`
  ADD PRIMARY KEY (`id_afiliasi`);

--
-- Indeks untuk tabel `akandatang_galeri`
--
ALTER TABLE `akandatang_galeri`
  ADD PRIMARY KEY (`id_adGaleri`),
  ADD KEY `id_jadwalMendatang` (`id_jadwalMendatang`);

--
-- Indeks untuk tabel `akandatang_slideshow`
--
ALTER TABLE `akandatang_slideshow`
  ADD PRIMARY KEY (`id_adSlide`),
  ADD KEY `id_jadwalMendatang` (`id_jadwalMendatang`);

--
-- Indeks untuk tabel `aktivitas_harian`
--
ALTER TABLE `aktivitas_harian`
  ADD PRIMARY KEY (`id_aktivitasHarian`);

--
-- Indeks untuk tabel `aktivitas_tahunan`
--
ALTER TABLE `aktivitas_tahunan`
  ADD PRIMARY KEY (`id_aktivitasTahunan`);

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indeks untuk tabel `anggota_sangha`
--
ALTER TABLE `anggota_sangha`
  ADD PRIMARY KEY (`id_anggotaSangha`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dharma_work`
--
ALTER TABLE `dharma_work`
  ADD PRIMARY KEY (`id_dharmaWork`);

--
-- Indeks untuk tabel `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`id_donasi`);

--
-- Indeks untuk tabel `donasi_galeri`
--
ALTER TABLE `donasi_galeri`
  ADD PRIMARY KEY (`id_donasiGaleri`),
  ADD KEY `donasi_galeri_ibfk_1` (`id_donasi`);

--
-- Indeks untuk tabel `donasi_slideshow`
--
ALTER TABLE `donasi_slideshow`
  ADD PRIMARY KEY (`id_donasiSlide`),
  ADD KEY `id_donasi` (`id_donasi`);

--
-- Indeks untuk tabel `galeri2`
--
ALTER TABLE `galeri2`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `galeri_album`
--
ALTER TABLE `galeri_album`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `id_album` (`id_album`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `home_kutipan`
--
ALTER TABLE `home_kutipan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home_lainnya`
--
ALTER TABLE `home_lainnya`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home_slideshow`
--
ALTER TABLE `home_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal_bulanan`
--
ALTER TABLE `jadwal_bulanan`
  ADD PRIMARY KEY (`id_jadwalBulanan`);

--
-- Indeks untuk tabel `jadwal_mendatang`
--
ALTER TABLE `jadwal_mendatang`
  ADD PRIMARY KEY (`id_jadwalMendatang`);

--
-- Indeks untuk tabel `jadwal_mingguan`
--
ALTER TABLE `jadwal_mingguan`
  ADD PRIMARY KEY (`id_jadwalMingguan`);

--
-- Indeks untuk tabel `jadwal_tahunan`
--
ALTER TABLE `jadwal_tahunan`
  ADD PRIMARY KEY (`id_jadwalTahunan`);

--
-- Indeks untuk tabel `kantor_sangha`
--
ALTER TABLE `kantor_sangha`
  ADD PRIMARY KEY (`id_kantorSangha`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_induk_komentar` (`id_induk_komentar`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `konfirmasi_dana`
--
ALTER TABLE `konfirmasi_dana`
  ADD PRIMARY KEY (`id_konfirmasiDana`);

--
-- Indeks untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indeks untuk tabel `management_biara`
--
ALTER TABLE `management_biara`
  ADD PRIMARY KEY (`id_managementBiara`);

--
-- Indeks untuk tabel `menjadi_sangha`
--
ALTER TABLE `menjadi_sangha`
  ADD PRIMARY KEY (`id_menjadiSangha`);

--
-- Indeks untuk tabel `nasihat_untuk_sangha`
--
ALTER TABLE `nasihat_untuk_sangha`
  ADD PRIMARY KEY (`id_nasihatuntukSangha`);

--
-- Indeks untuk tabel `paket_dana`
--
ALTER TABLE `paket_dana`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paket_dana2`
--
ALTER TABLE `paket_dana2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paket_dana3`
--
ALTER TABLE `paket_dana3`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paket_dana4`
--
ALTER TABLE `paket_dana4`
  ADD PRIMARY KEY (`id_dana`),
  ADD KEY `id_donasi` (`id_donasi`);

--
-- Indeks untuk tabel `paket_dana5`
--
ALTER TABLE `paket_dana5`
  ADD PRIMARY KEY (`id_dana`),
  ADD KEY `id_donasi` (`id_donasi`);

--
-- Indeks untuk tabel `persiapan`
--
ALTER TABLE `persiapan`
  ADD PRIMARY KEY (`id_persiapan`);

--
-- Indeks untuk tabel `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sedangberjalan_galeri`
--
ALTER TABLE `sedangberjalan_galeri`
  ADD PRIMARY KEY (`id_sbGaleri`),
  ADD KEY `id_jadwalMingguan` (`id_jadwalMingguan`);

--
-- Indeks untuk tabel `sedangberjalan_slideshow`
--
ALTER TABLE `sedangberjalan_slideshow`
  ADD PRIMARY KEY (`id_sbSlide`),
  ADD KEY `id_jadwalMingguan` (`id_jadwalMingguan`);

--
-- Indeks untuk tabel `sejarah_biara`
--
ALTER TABLE `sejarah_biara`
  ADD PRIMARY KEY (`id_sejarahBiara`);

--
-- Indeks untuk tabel `silasrama`
--
ALTER TABLE `silasrama`
  ADD PRIMARY KEY (`id_silasrama`);

--
-- Indeks untuk tabel `silsilah_ajaran`
--
ALTER TABLE `silsilah_ajaran`
  ADD PRIMARY KEY (`id_silsilahAjaran`);

--
-- Indeks untuk tabel `silsilah_penahbisan`
--
ALTER TABLE `silsilah_penahbisan`
  ADD PRIMARY KEY (`id_silsilahPenahbisan`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indeks untuk tabel `tag_artikel`
--
ALTER TABLE `tag_artikel`
  ADD PRIMARY KEY (`id_tag`,`id_artikel`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indeks untuk tabel `tag_berita`
--
ALTER TABLE `tag_berita`
  ADD PRIMARY KEY (`id_tag`,`id_berita`),
  ADD KEY `id_berita` (`id_berita`);

--
-- Indeks untuk tabel `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `telahberakhir_galeri`
--
ALTER TABLE `telahberakhir_galeri`
  ADD PRIMARY KEY (`id_tbGaleri`),
  ADD KEY `id_jadwalBulanan` (`id_jadwalBulanan`);

--
-- Indeks untuk tabel `telahberakhir_slideshow`
--
ALTER TABLE `telahberakhir_slideshow`
  ADD PRIMARY KEY (`id_tbSlide`),
  ADD KEY `id_jadwalBulanan` (`id_jadwalBulanan`);

--
-- Indeks untuk tabel `tentang_biara`
--
ALTER TABLE `tentang_biara`
  ADD PRIMARY KEY (`id_tentangBiara`);

--
-- Indeks untuk tabel `tentang_sangha`
--
ALTER TABLE `tentang_sangha`
  ADD PRIMARY KEY (`id_tentangSangha`);

--
-- Indeks untuk tabel `tradisi_gelug`
--
ALTER TABLE `tradisi_gelug`
  ADD PRIMARY KEY (`id_tradisiGelug`);

--
-- Indeks untuk tabel `visit_anggotasangha`
--
ALTER TABLE `visit_anggotasangha`
  ADD PRIMARY KEY (`idVisit`);

--
-- Indeks untuk tabel `visit_dana`
--
ALTER TABLE `visit_dana`
  ADD PRIMARY KEY (`idVisit`);

--
-- Indeks untuk tabel `visit_galeri`
--
ALTER TABLE `visit_galeri`
  ADD PRIMARY KEY (`idVisit`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `afiliasi`
--
ALTER TABLE `afiliasi`
  MODIFY `id_afiliasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `akandatang_galeri`
--
ALTER TABLE `akandatang_galeri`
  MODIFY `id_adGaleri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `akandatang_slideshow`
--
ALTER TABLE `akandatang_slideshow`
  MODIFY `id_adSlide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `aktivitas_harian`
--
ALTER TABLE `aktivitas_harian`
  MODIFY `id_aktivitasHarian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `aktivitas_tahunan`
--
ALTER TABLE `aktivitas_tahunan`
  MODIFY `id_aktivitasTahunan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `anggota_sangha`
--
ALTER TABLE `anggota_sangha`
  MODIFY `id_anggotaSangha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `dharma_work`
--
ALTER TABLE `dharma_work`
  MODIFY `id_dharmaWork` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `donasi`
--
ALTER TABLE `donasi`
  MODIFY `id_donasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `donasi_galeri`
--
ALTER TABLE `donasi_galeri`
  MODIFY `id_donasiGaleri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `donasi_slideshow`
--
ALTER TABLE `donasi_slideshow`
  MODIFY `id_donasiSlide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `galeri2`
--
ALTER TABLE `galeri2`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galeri_album`
--
ALTER TABLE `galeri_album`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `home_kutipan`
--
ALTER TABLE `home_kutipan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `home_lainnya`
--
ALTER TABLE `home_lainnya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `home_slideshow`
--
ALTER TABLE `home_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwal_bulanan`
--
ALTER TABLE `jadwal_bulanan`
  MODIFY `id_jadwalBulanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jadwal_mendatang`
--
ALTER TABLE `jadwal_mendatang`
  MODIFY `id_jadwalMendatang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwal_mingguan`
--
ALTER TABLE `jadwal_mingguan`
  MODIFY `id_jadwalMingguan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwal_tahunan`
--
ALTER TABLE `jadwal_tahunan`
  MODIFY `id_jadwalTahunan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kantor_sangha`
--
ALTER TABLE `kantor_sangha`
  MODIFY `id_kantorSangha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi_dana`
--
ALTER TABLE `konfirmasi_dana`
  MODIFY `id_konfirmasiDana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id_kurikulum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `management_biara`
--
ALTER TABLE `management_biara`
  MODIFY `id_managementBiara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menjadi_sangha`
--
ALTER TABLE `menjadi_sangha`
  MODIFY `id_menjadiSangha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `nasihat_untuk_sangha`
--
ALTER TABLE `nasihat_untuk_sangha`
  MODIFY `id_nasihatuntukSangha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `paket_dana`
--
ALTER TABLE `paket_dana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `paket_dana2`
--
ALTER TABLE `paket_dana2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `paket_dana3`
--
ALTER TABLE `paket_dana3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `paket_dana4`
--
ALTER TABLE `paket_dana4`
  MODIFY `id_dana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `paket_dana5`
--
ALTER TABLE `paket_dana5`
  MODIFY `id_dana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `persiapan`
--
ALTER TABLE `persiapan`
  MODIFY `id_persiapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sedangberjalan_galeri`
--
ALTER TABLE `sedangberjalan_galeri`
  MODIFY `id_sbGaleri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sedangberjalan_slideshow`
--
ALTER TABLE `sedangberjalan_slideshow`
  MODIFY `id_sbSlide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sejarah_biara`
--
ALTER TABLE `sejarah_biara`
  MODIFY `id_sejarahBiara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `silasrama`
--
ALTER TABLE `silasrama`
  MODIFY `id_silasrama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `silsilah_ajaran`
--
ALTER TABLE `silsilah_ajaran`
  MODIFY `id_silsilahAjaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `silsilah_penahbisan`
--
ALTER TABLE `silsilah_penahbisan`
  MODIFY `id_silsilahPenahbisan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `telahberakhir_galeri`
--
ALTER TABLE `telahberakhir_galeri`
  MODIFY `id_tbGaleri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `telahberakhir_slideshow`
--
ALTER TABLE `telahberakhir_slideshow`
  MODIFY `id_tbSlide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tentang_biara`
--
ALTER TABLE `tentang_biara`
  MODIFY `id_tentangBiara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tentang_sangha`
--
ALTER TABLE `tentang_sangha`
  MODIFY `id_tentangSangha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tradisi_gelug`
--
ALTER TABLE `tradisi_gelug`
  MODIFY `id_tradisiGelug` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `visit_anggotasangha`
--
ALTER TABLE `visit_anggotasangha`
  MODIFY `idVisit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `visit_dana`
--
ALTER TABLE `visit_dana`
  MODIFY `idVisit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `visit_galeri`
--
ALTER TABLE `visit_galeri`
  MODIFY `idVisit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `akandatang_galeri`
--
ALTER TABLE `akandatang_galeri`
  ADD CONSTRAINT `akandatang_galeri_ibfk_1` FOREIGN KEY (`id_jadwalMendatang`) REFERENCES `jadwal_mendatang` (`id_jadwalMendatang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `akandatang_slideshow`
--
ALTER TABLE `akandatang_slideshow`
  ADD CONSTRAINT `akandatang_slideshow_ibfk_1` FOREIGN KEY (`id_jadwalMendatang`) REFERENCES `jadwal_mendatang` (`id_jadwalMendatang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `donasi_galeri`
--
ALTER TABLE `donasi_galeri`
  ADD CONSTRAINT `donasi_galeri_ibfk_1` FOREIGN KEY (`id_donasi`) REFERENCES `donasi` (`id_donasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `donasi_slideshow`
--
ALTER TABLE `donasi_slideshow`
  ADD CONSTRAINT `donasi_slideshow_ibfk_1` FOREIGN KEY (`id_donasi`) REFERENCES `donasi` (`id_donasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `galeri_album`
--
ALTER TABLE `galeri_album`
  ADD CONSTRAINT `galeri_album_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_induk_komentar`) REFERENCES `komentar` (`id_komentar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `register` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `paket_dana4`
--
ALTER TABLE `paket_dana4`
  ADD CONSTRAINT `paket_dana4_ibfk_1` FOREIGN KEY (`id_donasi`) REFERENCES `donasi` (`id_donasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `paket_dana5`
--
ALTER TABLE `paket_dana5`
  ADD CONSTRAINT `paket_dana5_ibfk_1` FOREIGN KEY (`id_donasi`) REFERENCES `donasi` (`id_donasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sedangberjalan_galeri`
--
ALTER TABLE `sedangberjalan_galeri`
  ADD CONSTRAINT `sedangberjalan_galeri_ibfk_1` FOREIGN KEY (`id_jadwalMingguan`) REFERENCES `jadwal_mingguan` (`id_jadwalMingguan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sedangberjalan_slideshow`
--
ALTER TABLE `sedangberjalan_slideshow`
  ADD CONSTRAINT `sedangberjalan_slideshow_ibfk_1` FOREIGN KEY (`id_jadwalMingguan`) REFERENCES `jadwal_mingguan` (`id_jadwalMingguan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tag_artikel`
--
ALTER TABLE `tag_artikel`
  ADD CONSTRAINT `tag_artikel_ibfk_1` FOREIGN KEY (`id_artikel`) REFERENCES `tbl_artikel` (`id_artikel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tag_artikel_ibfk_2` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id_tag`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tag_berita`
--
ALTER TABLE `tag_berita`
  ADD CONSTRAINT `tag_berita_ibfk_1` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id_tag`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tag_berita_ibfk_2` FOREIGN KEY (`id_berita`) REFERENCES `tbl_berita` (`id_berita`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `telahberakhir_galeri`
--
ALTER TABLE `telahberakhir_galeri`
  ADD CONSTRAINT `telahberakhir_galeri_ibfk_1` FOREIGN KEY (`id_jadwalBulanan`) REFERENCES `jadwal_bulanan` (`id_jadwalBulanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `telahberakhir_slideshow`
--
ALTER TABLE `telahberakhir_slideshow`
  ADD CONSTRAINT `telahberakhir_slideshow_ibfk_1` FOREIGN KEY (`id_jadwalBulanan`) REFERENCES `jadwal_bulanan` (`id_jadwalBulanan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
