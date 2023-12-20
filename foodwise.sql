-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2023 pada 13.33
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodwise`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataset`
--

CREATE TABLE `dataset` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `instructions` varchar(3000) NOT NULL,
  `ingredients` varchar(3000) NOT NULL,
  `source` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dataset`
--

INSERT INTO `dataset` (`id`, `name`, `description`, `instructions`, `ingredients`, `source`) VALUES
(1, 'Vermicomposting Tomatoes', 'Tomat merupakan buah berwarna merah yang berkhasiat tinggi air dan unsur hara sehingga dapat meningkatkan kualitas tanah.', '[“Ambil peti kayu atau kotak plastik dan buat lubang di atasnya dan tutupi dengan kawat. Tempatkan di tempat yang teduh dengan gangguan minimal.”, “Siapkan Worm Bin, Ambil peti kayu atau kotak plastik dan buat lubang di atasnya dan tutupi dengan kawat. Tempatkan di tempat yang teduh dengan gangguan minimal.”, “Sobek koran, kardus, dan kertas tisu dan sebarkan secara merata di tempat sampah. Kemudian basahi alasnya dan tutupi dengan lapisan tanah yang kuat untuk memberikan pasir bagi cacing.”, “Potong tomat busuk dan campur dengan potongan kulit telur dan sisa makanan lainnya seperti kulit buah, kulit sayur, bubuk kopi, dan bahan non- sampah dapur yang berminyak.”, “Setelah sekitar dua minggu, tambahkan segenggam cacing ke obat cacing Anda. Cacing tersebut bergerak menuju bahan makanan yang berair dan menguraikannya. Tutup kembali tempat sampah agar cacing dapat menyerang sisa makanan.”, “Karena tomat mengandung cukup air, Anda harus berhati-hati dengan kadar air di tempat sampah. Tempat cacing tidak boleh terlalu kering atau terlalu basah.”, “Pupuk tomat Anda akan siap dalam waktu 2-3 bulan.”, “Keringkan kompos selama 2-3 hari sebelum digunakan untuk tanaman, dan simpan di dalam kantong untuk menyuburkan taman Anda sepanjang musim.”]', '[\'rotten tomatoes\', \'fresh tomatoes\', \'wooden crate\' , \'red wigglers\']', 'https://springandsoil.com/compost-tomatoes/'),
(2, 'Hotcomposting Tomatoes', 'Tomat merupakan buah berwarna merah yang berkhasiat tinggi air dan unsur hara sehingga dapat meningkatkan kualitas tanah.', '[“Buatlah tempat sampah kompos dari peti plastik atau kayu dengan cara melubanginya. Pastikan wadah tersebut memiliki penutup untuk menahan panas dan mencegah masuknya hewan ke dalam kompos. Tempatkan tempat sampah kompos di tempat yang mendapat banyak sinar matahari.”, “Siapkan daun kering, jerami, serbuk gergaji, kertas dan sebarkan secara merata di dasar wadah. Bahan berwarna coklat berperan sebagai makanan bagi mikroba dan menyerap kelebihan air di tumpukan kompos.”, “Campur irisan tomat dengan sayuran atau sisa makanan lainnya, tambahkan selapis di atas daun-daunan kering, dan basahi.”, “Isi tempat sampah kompos dengan bergantian antara bahan seperti daunan kering, kertas, serbuk kayu dan bahan seperti tomat, dan sisa makanan lainnya, kemudian tutup dengan lapisan tanah yang kuat. Anda juga bisa menambahkan pupuk kandang untuk mempercepat prosesnya.”, “Balikkan tumpukan kompos menggunakan garpu rumput untuk menghasilkan panas jika kompos menjadi dingin. Ini juga membantu meningkatkan suhu di tempat sampah.”, “Dalam waktu 3-4 bulan, kompos Anda akan siap dan Anda dapat menggunakannya di tanah kebun Anda.”]', '[\'rotten tomatoes\', \'dry leaves\', \'wood chips\' , \'food scraps\']', 'https://springandsoil.com/compost-tomatoes/'),
(3, 'Baterai Alami', 'Baterai alami dengan komposisi 10 % ampas kelapa dalam 90 % filtrat tomat berpotensi memiliki arus dengan rata-rata 2,1 mA pada beda potensial 1,46 V.', '[“Haluskan 1 kg tomat busuk tanpa memberikan cairan dengan menggunakan blender selama 10 menit hingga halus. Saring jus tomat busuk dan ambil filtratnya. Selanjutnya filtrat tomat busuk diuji tingkat keasamannnya dengan menggunakan pH meter.”, “Keringkan ampas kelapa di bawah terik matahari selama ± 3 hari dan diperoleh ampas yang kering. Haluskan ampas kelapa yang sudah kering menggunakan blender hingga menjadi tepung dan diayak agar diperoleh tepung ampas kelapa yang homogen.”, “ Tepung ampas kelapa dicampurkan ke dalam filtrat tomat busuk dengan variasi konsentrasi 0 %, 5 %, 10 %, 15 % dan 100 % ampas kelapa dalam 100 %, 95 %, 90 %, 85 % dan 0 % filtrat tomat busuk dalam wadah yang berbeda.”, “ Pelapis tabung pada baterai AA dilepas menggunakan cutter kemudian dibuka bagian penutupnya. Menarik katoda secara perlahan lalu mengeluarkan isi baterai hingga tabung seng (anoda) baterai tidak mengandung elektrolit. Selanjutnya baterai tersebut diisi dengan variasi komposisi elektrolit, memasukkan katoda dari baterai AA dan menutup kembali baterai dengan penutup baterai AA hingga rapat.”]', '[‘blender’, ‘sieve’, ‘strainer’, ‘pH meter’, ‘digital scale’, ‘measuring cup’, ‘backer glass’, ‘cutter’, ‘used AA batteries’, ‘rotten tomatoes’, ‘coconut dregs’]', 'https://fisika.fmipa.unesa.ac.id/proceedings/index.php/snf/article/download/181/172/518'),
(4, 'Composting Apples', 'Membuat kompos dari apel busuk adalah cara yang baik untuk memanfaatkan sisa-sisa organik dan menghasilkan pupuk alami yang berguna untuk tanah.', '[“Pertama-tama potong apel busuk menjadi potongan-potongan kecil agar apel lebih cepat terurai.”, “Siapkan bahan-bahan untuk lapisan hijau seperti sisa-sisa sayuran yang sudah dipotong”, “Siapkan lapisan daun-daun kering, sekam jagung, jarum pinus, serbuk gergaji, parutan koran, jerami atau kulit kacang.”, “Lalu letakkan apel  yang sudah dipotong menjadi bagian kecil-kecil dan lapisan bahan hijau di atas lapisan daunan kering”, “Secara teratur, campur tumpukan kompos untuk memastikan bahan-bahan tercampur dengan baik. Siram dengan air jika perlu, tetapi hindari membuat tumpukan terlalu basah.”, “Tutupi lapisan bahan hijau dengan lapisan bahan coklat seperti daun kering atau serbuk gergaji kayu. Ini membantu menyeimbangkan rasio karbon dan nitrogen.”, “Kompos biasanya memerlukan beberapa bulan untuk matang sepenuhnya. Setelah bahan-bahan terurai dengan baik, Anda dapat menggunakannya sebagai pupuk organik untuk tanaman Anda.”]', '[\'rotten apples\', \'rotten cucumber\', \'vegetables\', \'fresh cucumber\']', 'https://www.weekand.com/home-garden/article/compost-apples-18010370.php'),
(5, 'Nata de Apple', 'Buah apel lewat matang dapat dimanfaatkan sebagai substrat pembuatan nata de apel.', '[“Bersihkan dan potong-potong kecil buah apel yang sudah lewat matang, dan buat juice menggunakan blender dengan perbandingan buah apel dan air 1:1”, “Pisahkan cairan buah apel (sari apel) dari substratnya dilakukan penyaringan menggunakan kain”, “Sari apel yang didapat diukur pHnya. Jika pH lebih dari 4, maka ditambahkan larutan asam asetat agar terjadi penurunan pH sampai mecapai pH 3.”, “Setelah pH medium 3, dilakukan pengenceran sehingga didapatkan konsentrasi 50% (sari apel A), 25% (sari apel B), 12,5% (sari apel C).”, “Sebanyak 100 ml sari apel dimasukkan ke dalam botol kaca steril dengan diameter 5 cm dan tinggi 11 cm (350ml), ditutup dengan penutup.”, “Sterilisasi botol kaca dilakukan dengan menuangkan air mendidih ke dalam botol dan didiamkan selama 10 – 15 menit.”, “Lakukan Inokulasi strater bakteri Gluconobacter xylinus setelah semua botol terisi dengan masing – masing sari apel.”, “Medium yang sudah diinokulasi diinkubasi pada suhu ruangan (20 – 25ºC) selama masa tumbuh (15 – 25 hari).”, “Kemudian secara perlahan dan seiring berjalannya waktu, lapisan nata akan terbentuk”]', '[‘fresh apples’, ‘starter bacteria Gluconobacter xylinus’, ‘universal pH indicator’, ‘acetic acid’]', 'https://media.neliti.com/media/publications/176330-ID-nata-de-apel-solusi-alternatif-pemanfaat.pdf'),
(6, 'Cairan Nutrisi Tanaman dari Pisang', 'Pisang busuk mengandung berbagai nutrisi penting yang sangat dibutuhkan oleh tanaman. Ada kalium, fosfor, kalsium, dan magnesium yang dapat membuat tanaman jadi lebih kuat dan subur.', '[“Potong pisang-pisang busuk menjadi bagian kecil agar lebih mudah diolah.”, “Letakkan potongan-potongan pisang ke dalam wadah besar.”, “Campurkan pisang busuk dengan air bersih, lalu biarkan beberapa hari sampai pisang hancur dan berfermentasi.”, “Setelah beberapa hari, saring cairan agar terpisah dengan pisang.”, “Sekarang cairan ajaib ini dapat digunakan sebagai pupuk organik.”, ”Siram tanaman anda dengan cairan ini secara teratur, kemudian lihat bagaimana tanaman anda akan tumbuh subur dan berbuah lebat”]', '[\'rotten bananas\', \'fresh water\']', 'https://radarlebong.disway.id/read/657910/punya-pisang-busuk-jangan-dibuang-bisa-diolah-jadi-cairan-ajaib-bikin-tanaman-kamu-berbuah-lebat/15'),
(7, 'Cairan Insektisida dari Jeruk', 'Jeruk sendiri sudah dikenal masyarakat sebagai limbah yang dapat mengusir nyamuk, dalam kulit jeruk terkandung zat limonene yang sangat tidak disukai oleh nyamuk dan berbagai macam hewan serangga lainnya.', '[“Kumpulkan kulit jeruk dari jeruk segar atau pun jeruk busuk, kemudian potong kecil-kecil.”, “Setelah itu rebus kulit jeruk selama beberapa menit, kemudian disaring.”, “Masukkan ke dalam botol semprot dan cairan pengusir serangga dari kulit jeruk siap untuk digunakan.”]', '[‘rotten oranges’, ‘fresh orange’, ‘water’, ‘spray bottle’]', 'https://www.cnnindonesia.com/gaya-hidup/20231016090545-284-1011697/cara-mengusir-nyamuk-secara-alami-tanpa-obat-bisa-pakai-kulit-jeruk'),
(8, 'Kulit Jeruk Bakar', 'Jeruk sendiri sudah dikenal masyarakat sebagai limbah yang dapat mengusir nyamuk, dalam kulit jeruk terkandung zat limonene yang sangat tidak disukai oleh nyamuk dan berbagai macam hewan serangga lainnya.', '[“Kumpulkan kulit jeruk dari jeruk segar atau pun jeruk busuk.”, ”Siapkan wadah, kemudian bakar kulit jeruk dengan api.”, “Asap yang dikeluarkan dari proses pembakaran akan membantu mengusir serangga”]', '[‘rotten oranges’, ‘fresh orange’, ‘fire’]', 'https://www.cnnindonesia.com/gaya-hidup/20231016090545-284-1011697/cara-mengusir-nyamuk-secara-alami-tanpa-obat-bisa-pakai-kulit-jeruk'),
(9, 'Pupuk Cair dari Timun', 'Kulit mentimun mengandung kalium dan magnesium sulfat yang ampuh untuk membentuk klorofil dan nutrisi pada tanaman', '[“haluskan kulit mentimun yang sudah disiapkan bersama 100 mililiter air menggunakan blender”, “saring kulit mentimun yang sudah dihaluskan, lalu pisahkan antara ampas dan cairan kulit mentimun di wadah yang berbeda.”, “ampas kulit mentimun dapat dimanfaatkan langsung menjadi pupuk organik”, “Masukkan 100 gram kulit bawang merah ke air kulit mentimun yang telah disaring. Lalu, campurkan juga gula merah cair sebanyak 10 mililiter.”, “Setelah itu, tambahkan sisa air yang sebelumnya telah digunakan sebanyak 500 mililiter, kemudian aduk semua bahan hingga tercampur rata. Berikutnya, tambahkan lima mililiter atau satu tutup botol EM4 dan aduk kembali hingga merata.”, “Apabila semua sudah bahan tercampur dengan baik, masukkan ke dalam wadah tertutup untuk proses fermentasi selama 14-21 hari sebelum digunakan pada tanaman.”, “Setelah 21 hari atau proses fermentasi selesai, selanjutnya saring pupuk dan isap digunakan sebagai pupuk cair organik tanaman yang ampuh dalam menyuburkan dan menyehatkan tanaman kesayanganmu.”', '[‘rotten cucumbers’, ‘fresh cucumbers’, ‘red onion’, ‘water’, ‘5 ml EM4 berwarna kuning’]', 'https://www.kompas.com/homey/read/2021/07/21/190700276/jangan-dibuang-ini-cara-membuat-pupuk-organik-dari-kulit-mentimun#google_vignette'),
(10, 'Pakan Hewan Ternak dari Kulit Pisang', 'Kulit pisang memiliki kandungan vitamin A tinggi, terutama provitamin A, yaitu beta-karoten, sebanyak 45 mg/100 g berat kering.', '[”Giling lembah kulit pisang hingga halus.”, ”Jemur dibawah terik matahari, selama 1 atau 2 hari.”, ”simpan selama 4 ( empat ) hari untuk proses fermentasi berlangsung, boleh dibolak balik.”, ” Semprotkan secara merata probiotik dengan takaran 0.5 cc, dicampur dengan 10 cc air untuk 1 Kg bahan baku kulit pisang.”, ” Kumpulkan kulit pisang pada tempat yang khusus, yang tidak terkena hujan dan sinar matahari.”, ”Pakan hewan ternak dari kulit pisang sudah bisa diberikan ke ternak peliharaan anda”]', '[‘banana peels’, ‘Probiotik EM4’, ‘Water’]', 'https://sumbarprov.go.id/home/news/9053-kulit-pisang-sebagai-pakan-ternak.html'),
(11, 'Pupuk Organik Kulit Pisang', 'Kulit pisang memiliki banyak kandungan seperti magnesium, sodium, fosfor, dan sulfur yang dapat dimanfaatkan sebagai pupuk organik.', '[“haluskan kulit pisang dengan cara diblender, atau bisa dengan cara mencincang kulit pisang tersebut hingga menjadi potongan kecil-kecil.”, “masukkan gula pasir kedalam botol plastik dengan perbandingan gula pasir”, “kulit pisang yang telah dihaluskan, kemudian dimasukkan ke dalam botol bekas yang telah berisi larutan gula pasir.”, “tambahkan air bersih kedalam botol hingga batas leher botol.”, “botol dapat ditutup dengan rapat dan didiamkan selama lebih dari 7-10 hari.”, “buka tutup botol setiap hari agar gas yang terkandung dalam botol dapat keluar.”, “Pupuk siap digunakan pada tanaman setelah didiamkan lebih dari 7 hari.”]', '[‘Banana peels’, ‘Sugar’]', 'https://jpu.ubl.ac.id/index.php/jpu/article/download/20/20'),
(12, 'Eco Enzyme', 'Eco enzyme dapat berguna sebagai bahan untuk cairan pembersih rumah serbaguna, mulai dari membersihkan furnitur, piring, pakaian, hingga penyegar udara alami.', '[“masukkan semua limbah sayuran atau buah, gula, dan air ke dalam wadah. Gunakan perbandingan 10:3:1, yakni 10 untuk air, 3 untuk limbah buah atau sayur, dan 1 untuk gula.”, “Aduk semua bahan, lalu tutup rapat dan dan biarkan selama 3 bulan.”, “Letakkan pada tempat dengan sirkulasi udara yang baik dan tidak terkena sinar matahari langsung.”, “Buka tutup wadah pada minggu pertama untuk mengeluarkan gas di dalamnya dan mencegah wadah meledak.”, “Kemudian, aduk setiap hari ke-7, hari ke-30, dan hari ke-90.”, “Setelah 3 bulan, eco enzyme bisa dipanen dan dapat digunakan.”]', '[‘banana peels’, ‘orange peels’, ‘sugar’, ‘fresh orange’, ‘fresh apples’, ‘fresh bananas’, ‘fresh cucumbers’, ‘fresh potatoes’, ‘fresh tomatoes’]', 'https://www.cnnindonesia.com/gaya-hidup/20220930154324-289-854798/cara-membuat-eco-enzyme-cairan-serbaguna-beragam-manfaat'),
(13, 'Kompos dari Kulit Telur', 'kandungan kalsium pada cangkang telur cukup tinggi dan dapat bermanfaat sebagai sumber nutrisi pada tanaman. Cangkang telur juga memiliki kandungan fosfor yang cukup yang dapat bermanfaat pula untuk tanaman.', '[“Bersihkan cangkang telur yang akan dibuat pupuk.”, “Sterilkan cangkang telur dengan memasukkan ke dalam air panas.”, “Keringkan cangkang telur dengan cara dijemur.”, “Tumbuk cangkang telur hingga menjadi serpihan halus.”, “Campurkan cangkang telur dengan air ke dalam botol bekas.”, “Tambahkan gula jawa dan EM4 dengan perbandingan 1:1 ke dalam botol.”, “Tutup botol bekas dan campurkan pupuk dengan cara mengocok botol.”, “Diamkan selama 10-14 hari untuk memaksimalkan proses fermentasi.”, “Bila perlu, sesekali buka tutup botol bekas supaya gas yang ditimbulkan selama proses fermentasi dapat keluar.”]', '[‘egg shells’, ‘brown sugar’, ‘water’, ‘Probiotik EM4’]', 'https://pertanian.ngawikab.go.id/2023/05/15/sering-dikira-limbah-tidak-berguna-ini-manfaat-cangkang-telur-bagi-tanaman/'),
(14, 'Bubuk Cangkang Telur', 'Konsumsi bubuk cangkang telur bersama vitamin D3 dan magnesium dapat memperkuat dan meningkatkan kepadatan tulang.', '[“Masukkan kulit telur ke dalam panci berisi air. Kemudian, rebus selama sekitar 15 menit. Ini akan mensterilkan kulit telur dan membuatnya aman untuk dimakan.”, ”Keringkan cangkang telur yang sudah di rebus.”, ” Selanjutnya, hancurkan cangkang telur dengan blender atau ditumbuk sampai benar-benar halus.”,  ”Setelah itu, tambahkan bubuk cangkang telur ke makanan atau minuman yang akan dikonsumsi.”, ” Bubuk cangkang telur dapat ditambahkan air atau jus. Makanan terbaik untuk ditambahkan bubuk tersebut adalah roti, spageti, pizza, dan daging goreng.”]', '[\'egg shells\' , \'water\']', 'https://www.realsimple.com/can-you-eat-eggshells-7964902'),
(15, 'Masker Wajah dari Kulit Telur', 'Cangkang telur bisa bermanfaat untuk, membantu mengecilkan pori-pori, membuat kulit bercahaya, mencegah tanda-tanda penuaan, melembabkan kulit kering, mengobati iritasi kulit, membersihkan wajah secara menyeluruh, dan mencerahkan wajah', '[”Cuci bersih kulit telur dengan air.”, “Masukkan kulit telur ke dalam loyang, kemudian panggang dengan suhu 200 F selama 10-15 menit.”, “Tumbuk kulit telur hingga halus.”, “Masukkan tepung terigu secukupnya ke dalam mangkuk kecil.”, “Tambahkan madu, dan saring kulit telur yang sudah ditumbuk, masukkan ke dalam mangkuk.”, “Aduh hingga semua bahan tercampur, dan masker siap dipakai”]', '[’egg shells’, ’honey’, ’flour’]', 'https://inovasi.sragenkab.go.id/krenova/inovasi/mas-catur'),
(16, 'Pencegahan tanaman busuk', 'Cangkang telur juga dapat dimanfaatkan untuk mencegah pembusukan pada ujung bunga dari tanaman tomat, paprika, dan terong.', '[“Cuci bersih dan keringkan cangkang telur.”, “Hancurkan hingga halus, dan masukkan ke lubang tanah sebelum anda menanam tanaman.”, “Setelah itu, letakkan cangkang telur ke sekitar pangkal tanaman setiap dua minggu sekali.”, “Kandungan kalsium yang terdapat dalam cangkang telur yang dapat diserap oleh tanaman dan membuatnya tidak mudah busuk.”]', '[\'egg shells\']', 'https://www.cnnindonesia.com/gaya-hidup/20221006111121-282-857030/7-manfaat-cangkang-telur-untuk-tanaman-bisa-mengusir-hama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES
(1, 'alfiannugroho95@Gmail.com', 'alfiannugro', '$2b$10$QYCzJtm1qqwGaUjmVmI8K.O4Y9gqMpc8QZD0/V/jVYNT9inAScw7y');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
