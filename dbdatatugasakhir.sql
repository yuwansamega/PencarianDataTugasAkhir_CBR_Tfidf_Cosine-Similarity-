-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2021 pada 09.43
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbdatatugasakhir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbkeyword`
--

CREATE TABLE `tbkeyword` (
  `id` int(100) NOT NULL,
  `term` varchar(1000) NOT NULL,
  `jumlahTerm` int(100) NOT NULL,
  `tfidf` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsimilarity`
--

CREATE TABLE `tbsimilarity` (
  `id` int(255) NOT NULL,
  `dokumenId` int(255) NOT NULL,
  `cosineSimilarity` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbstem`
--

CREATE TABLE `tbstem` (
  `Id` int(11) NOT NULL,
  `Term` varchar(30) NOT NULL,
  `Stem` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbstem`
--

INSERT INTO `tbstem` (`Id`, `Term`, `Stem`) VALUES
(1, 'pertemuan', 'temu'),
(2, 'bertemu', 'temu'),
(4, 'kepindahan', 'pindah'),
(5, 'menembus', 'tembus'),
(6, 'menyusut', 'susut'),
(8, 'peningkatan', 'tingkat'),
(9, 'pemalsuan', 'palsu'),
(10, 'mengnosa', 'diagnosis'),
(11, 'penyakit', 'sakit'),
(12, 'mengalami', 'alam'),
(13, 'mengkonsumsi', 'konsumsi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbterm`
--

CREATE TABLE `tbterm` (
  `id` int(11) NOT NULL,
  `term` varchar(100) NOT NULL,
  `dokumenId` int(11) NOT NULL,
  `jumlahTerm` int(11) NOT NULL,
  `tfidf` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbtugasakhir`
--

CREATE TABLE `tbtugasakhir` (
  `id` int(100) NOT NULL,
  `stud_name` varchar(100) NOT NULL,
  `nim` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `abstract` mediumtext NOT NULL,
  `research_area` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbtugasakhir`
--

INSERT INTO `tbtugasakhir` (`id`, `stud_name`, `nim`, `class`, `year`, `title`, `abstract`, `research_area`, `status`) VALUES
(1, 'Ayu Hiliana Putri', 2147483647, 'Reguler', 2012, 'Identifikasi Kalimat Ambigu Dalam Bahasa Indonesia Menggunakan Top Down Parsing', 'Dalam suatu penulisan kalimat seringkali terdapat kesalahan yang tidak disadari seorang penulis yang dapat membingungkan dalam menafsirkan arti dari suatu kalimat karena adanya kegandaan makna dalam suatu kalimat. Dalam penelitian ini dibuat perangkat lunak yang dapat mengidentifikasi kalimat ambigu dalam bahasa Indonesia menggunakan Top Down Parsing. Masukan perangkat lunak ini berupa kalimat tunggal dalam bahasa Indonesia. Penelitian ini melibatkan tiga proses praproses yaitu casefolding tokenizing dan Part of Speech(POS) Tagging. Hasil dari praproses yang digunakan untuk proses identifikasi kalimat. Pada proses identifikasi kalimat digunakan metode Top Down Parsing untuk mendapatkan hasil identifikasi dari suatu kalimat. Penelitian ini dapat mengidentifikasi suatu kalimat berupa kalimat ambigu atau tidak ambigu. TIngkat keberhasilan identifikasi kalimat ambigu ini mencapai 88%.', 'Natural Language Processing', 'Selesai'),
(2, 'Ade Rahma Youanda ', 2147483647, 'Reguler', 2013, 'Penyeleaian Capacitated Vehicle Routing Problem Menggunakan Algoritma Genetika Untuk  Pencarian Jalur Terbaik', 'Capacitated Vehicle Routing Problem (CVRP) adalah salah satu permasalahan kombinatorial yang memiliki constraint kapasitas daya angkut dan tidak boleh melewati node lebih dari satu kali dengan adanya constraint tersebut implementasi CVRP mengalami permasalahan yaitu ada pelanggan yang tidak telayani karena terbatasnya kendaraan dan membutuhkan jarak tempuh lebih jauh. Algoritma genetika adalah salah satu bagian kecerdasan buatan yang digunakan untuk mengoptimasi masalah. Penelitian ini menggunakan algoritma genetika sebagai solusi untuk mengoptimasi CVRP. Hasil penelitian menunjukkan bahwa algoritma genetika mampu mengoptimasi CVRP dengan hasil dapat mempersingkat total jarak tempuh secara signifikan berkurangnya jumlah kendaraan terpakai secara signifikan dengan tetap mampu melayani jumlah pelanggan yang sama walaupun demikian sebagai konsekuensi waktu komputasi meningkat secara signifikan.', 'Soft Computing', 'Selesai'),
(3, 'Annisa Septi Anugrah', 2147483647, 'Reguler', 2013, 'Hybrid Clarke Wright Saving Algorithm (HCWSA) Pada Permasalahan Capacitated Vehicle Routing Problem (CVRP)', 'Vehicle Routing Prooblem (VRP) merupakan suatu permasalahan penentuan rute optimal yang melibatkan lebih dari satu kendaraan. Jenis dari Vehicle Routing Prooblem (VRP) salah satunya Capacitated Vehicle Routing Problem (CVRP) dimana CVRP merupakan permasalahan penentuan rute dengan aturan kapasitas tetap dan sama untuk setiap kendaraan. Penelitian ini mencoba menyelesaikan permasalahan penentuan rute dengan menggunaan Hybrid Clarke Wright Saving Algorithm (HCWSA) dengan tujuan meminimalisasi rute yang akan dilauli setiap kendaraan dan memberi kapasitas tetap untuk setiap kendaraan. Penelitian dilakukan di sebuah perusahaan distributor PT Putra Serasan Jaya dengan jumlah kendaraan dua buah mobil jenis pickup box yang mempunyai kapasitas sebanyak 150 karton untuk masing-masing kendaraan dan rute yang di lalui rute di area Kota Palembang. Hasil dari penelitian teradap 24 hari yang dijadikan uji coba kasus pada bulan Juli 2017 yaitu dengan persentase penghematan yang dilakukan sebanyak 625%. Maka dapat dikatakan pada penelitian ini untuk menyelesaikan permasalahan Capacitated Vehicle Routing Problem (CVRP) dengan Hybrid Clarke Wright Saving Algorithm (HCWSA) cukup baik.', 'Soft Computing', 'Selesai'),
(4, 'Auzan Lazuardi', 2147483647, 'Reguler', 2013, 'Ekstraksi Ciri Wajah Pada Citra Multi-Object Menggunakan Algoritma Local Binary Pattern Berbasis Content Based Image Retrieval', 'Algoritma Local Binary Pattern (LBP) yang diterapkan pada penelitian ini bertujuan untuk melakukan ekstraksi ciri pada citra wajah berdasarkan ekstraksi tekstur. Penelitian ini menggunakan 20 citra wajah mahasiswa yang diambil masing-masing 10 sisi yang berbeda-beda sehingga jumlah data keseluruhan adalah 200 citra wajah. Hasil penelitian ini membuktikan bahwa algoritma LBP pada citra dengan pencahayaan yang berbeda tetap stabil. Hal ini dikarenakan LBP menyesuaikan tingkat skala keabu-abuan yang dapat mendukung analisis tekstur pada citra sehingga hasil ekstraksi ciri pada citra dapat digunakan untuk dioleh oleh metode selanjutnya.', 'Grafis dan Visualisasi', 'Selesai'),
(5, 'Badria Riswanda', 2147483647, 'Reguler', 2013, 'Pendeteksian Api Melalui Unmanned Aerial Vehicle (UAV) Menggunakan Citra Kamera Near-Infrared (NIR) Dan Background Substraction', 'Pendeteksian kebakaran tradisional menggunakan menara pemantau atau sensor tidak praktis digunakan dan rentan terjadi kesalahan. Sehingga pendeteksian melalui sensor vision dengan kamera menjadi cara yang cepat dalam mendeteksi keberadaan api. Warna dan gerak api sering digunakan sebagai ciri dari api. Namun pada warna RGB memiliki kelemahan terhadap luminasi. Maka pada penelitian ini digunakan spektral Near-Infrared untuk mendapatkan ciri dari warna api. Metode yang digunakan pada penelitian ini adalah Filtering warna dan Background Substraction. Kandidat api disegmentasi dengan mengisolasi api dengan background berdasarkan rentang warna kandidat api pada filtering warna. Lalu dengan Background Substraction gerak dari kandidat api akan dikenali sebagai foreground berdasarkan perbandingan piksel pada background dan frame. hasil Pengujian pada video api menunjukkan algoritma berhasil mendeteksi keberadaan api ketika kondisi cahaya terang atau gelap. Rata-rata akurasi menunjukkan hasil yang baik dengan nilai F1-Score 78% Precision sebesar 75% dan Recall sebesar 88%. Waktu komputasi pendeteksian cukup cepat dengan rata-rata waktu deteksi sebesar 0168 detik per frame.', 'Grafis dan Visualisasi', 'Selesai'),
(6, 'Deri Yuliansyah', 2147483647, 'Reguler', 2013, 'Perbandingan ALgoritma Naive Bayes Dengan Regresi Logistik Untuk Klasifikasi Hate Speech', 'Klasifikasi teks atau klasifikasi dokumen merupakan salah satu tugas utama dalam text data mining dan information retrieval. Klasifikasi digunakan untuk memprediksi keanggotaan kelompok terhadap suatu data instances. Hate Speech merupakan tindakan komunikasi yang menjelekkan dengan target individu atau karakteristik kelompok tertentu seperti ras etnis gender agama dan lain-lain. Algoritma Na?ve Bayes adalah adalah sebuah algoritma yang berdasarkan pada konsep dari probabilitas Bayes sedangkan Regresi logistik merupakan suatu model yang digunakan untuk mencari hubungan antara 2 variabel yakni variabel respon dua kategori atau variabel yang bersifat dichotomous maupun variabel dengan dua kategori atau lebih yang bersifat polychotomous dengan satu atau lebih prediktor berskala kategori ataupun kontinu. Dalam peneitian ini dilakukan perbandingan antara algoritma Na?ve Bayes dengan Regresi Logistik untuk mengklasifikasi hate speech. Penelitian ini bertujuan untuk mengetahui perbandingan akurasi dan waktu komputasi dari algoritma yang digunakan.', 'Natural Language Processing', 'Selesai'),
(7, 'Dian Lestari', 2147483647, 'Reguler', 2013, 'Perbandingan Algoritma TF*IDF dan TF*PDF dalam Pembobotan Kata untuk Klasifikasi Tugas Akhir di Jurusan Teknik Informatika Menggunakan Algoritma KNN', 'Jurusan Teknik Informatika Universitas Sriwijaya belum mengklasifikasikan Tugas Akhir berdasarkan Bidang Kompetensi yaitu Sistem Cerdas Sistem Terdistribusi dan Grafika Komputer dan Multimedia. Proses pengklasifikasian dilakukan meggunakan Algoritma KNN. Namun sebelum melakukan pengklasifikasian dibutuhkan pembobotan kata. Untuk melakukan pembobotan kata digunakan dua Algoritma yaitu TF*PDF dan TF*IDF untuk membandingkan hasil tingkat akurasi waktu komputasi dan memori yang dipakai. Berdasarkan hasil percobaan Algoritma TF*PDF memberikan tingkat akurasi yang lebih tinggi yaitu 60% sedangkan Algorutma TF*IDF hanya 413%', 'Natural Language Processing', 'Selesai'),
(8, 'Fitria Fiviyan', 2147483647, 'Reguler', 2013, 'Pengenalan Telapak Tangan Menggunakan Biomimetic Pattern Recognition ', 'Sistem pengenalan biometrik merupakan sistem pengenalan pola untuk menyediakan skema pengenalan pribadi yang handal. Pengenalan telapak tangan merupakan penelitian penting dalam bidang teknologi biometrik fisiologis. Pendekatan-pendekatan yang selama ini digunakan dalam mengenali telapak tangan seseorang merupakan pendekatan yang didasarkan pada Pengenalan Pola Statistik (PPS). Penelitian ini menggunakan Biomimetic Pattern Recognition (BPR) sebagai pendekatan alternative untuk mengenali telapak tangan seseorang. Jaringan Hypersausage Neural Network (HSNN) digunakan sebagai representasi dari BPR dalam pembentukan pelingkupan ruang ciri. Citra telapak tangan yang digunakan direpresentasikan dalam bentuk ciri yang dihasilkan oleh proses ekstraksi ciri menggunakan metode Zernike Aspect Moment Invariant (ZAMI) yang kemudian digunakan dalam pembentukan jaringan HSNN. Pengujian dilakukan menggunakan beberapa scenario yang memiliki rasio data latih dan data uji yang berbeda. Hasil pengujian menunjukkan bahwa pengenalan telapak tangan menggunakan pendekatan HSNN-ZAMI memiliki tingkat akurasi yang lebih tinggi dibandingkan menggunakan pendekatan HSNN-ZMI.', 'Grafis dan Visualisasi', 'Selesai'),
(9, 'Irwan Jeri Sihite', 2147483647, 'Reguler', 2013, 'Implementasi Fuzzy Time Series Multivariat Untuk Memprediksi Curah Hujan Di Kota Palembang', 'Prediksi curah hujan dilakukan sebagai upaya untuk mengetahui keadaan curah hujan di masa yang akan datang. Karena besarnya curah hujan yang akan terjadi tidak mudah di ketahui secara pasti. Maka pada penelitian ini melakukan prediksim enggunakan Metode Fuzzy Time Series Multivariat karena dapat memproyeksikan data yang akan datang berdasarkan data secara runtut waktu. Kelebihan metode Fuzzy Time Series multivariat memiliki 2 faktor 1 variabel sebagai faktor utama dan 8 variabel sebagai faktor pendukung. Tingkat error dihitung menggunakan AFER. Berdasarkan pengujian dalam prediksi curah hujan di kota Palembang menggunakan metode Fuzzy Time Series Multivariat di dapatkan hasil prediksi yang mendekati data aktual adalah tanggal 04 januari 2016 menggunakan data selama 3 tahun sebesar 4.034435 dengan intensitas curah hujan sangat ringan dan AFER sebesar 0.1455%.', 'Soft Computing', 'Selesai'),
(10, 'Kurnia Sandi Pratama', 2147483647, 'Reguler', 2013, 'Pengenalan Ekspresi Wajah Manusia Menggunakan Convolutional Neural Network', 'Pengenalan ekspresi wajah manusia telah menjadi tantangan tersendiri bagi para peneliti untuk memfasilitasi antarmuka manusia-mesin yang lebih bersahabat pada produk multimedia. Namun pengenalan ekspresi wajah manusia bukan masalah yang mudah dalam metode pembelajaran mesin. Pada penelitian ini digunakan metode convolutional neural network karena pada penelitian yang dilakukan oleh Alberto et al. (2016) dan Pitaloka et al (2017) menunjukkan performa metode convolutional neural network yang cukup baik dalam mengenali ekspresi wajah manusia. Dalam penelitian ini metode convolutional neural network digunakan untuk mengenali 4 ekspresi dasar wajah manusia yaitu senang netral sedih dan terkejut. Sebelum dilakukan pengenalan citra masukan dilakukan praproses yaitu citra ekspresi wajah dideteksi terlebih dahulu dengan menggunakan metode viola jones yang digunakan pada pengambilan area wajah. Selanjutnya dilakukan binerisasi citra yang bertujuan untuk mengasilkan citra bernilai 0 dan 1 agar citra lebih mudah diolah dan menghasilkan fitur dari suatu citra. Selanjutnya metode convolutional neural network digunakan pada proses pengenalan wajah yang terdiri dari dua tahap yaitu feedforward dan backpropagation. Berdasarkan evaluasi yang dilakukan pada metode convolutional neural network pada pengenalan ekspresi wajah manusia menggunakan JAFFE dataset sebanyak 100 citra sebagai dataset pelatihan dan 20 citra sebagai dataset pengujian mendapatkan rata-rata akurasi sebesar 90% yang dihitung menggunakan confusion matrix. Berdasarkan hasil tersebut menunjukkan bahwa metode convolutional neural network memiliki performa yang baik.', 'Grafis dan Visualisasi', 'Selesai'),
(11, 'Lidya A.Panjaitan', 2147483647, 'Reguler', 2013, 'Perbandingan Algoritma Na?ve Bayes dan Algoritma C4.5 Dalam Klasifikasi Data', 'Data mining adalah analisis terhadap data yang berukuran besar untuk menemukan hubungna yang jelas serta menyimpulkan yang belum diketahui sebelumnya dengan cara terkini dan mudah dipahami dan berguna bagi pemilik data. Klasifikasi merupakan proses pengelompokkan sebuah variabel ke dalam kelas yang sudah ditentukan. Penelitian ini membandingkan algoritma Naive Bayes dan algoritma C4.5 yang merupakan algoritma berbasis tree dalam pembentukan rule. Penelitian ini menghasilkan perbandingan akurasi dan waktu ekseskusi dari masing-masing algoritma dalam menjalankan proses klasifikasi terhadap dat ayang telah ditentukan. Pada pengujian ini didapatkan nilai rata-rata akurasi dari perbandingan kedua metode yaitu metode Naive Bayes pada proses Split Validation sebesar 92.98% dan pada proses Cross Validation sebesar 91.37%. Sedangkan rata-rata waktu untuk watu eksekusi dari perbandingan klasifikasi kedua algoritma menghasilkan metode Naive Bayes lebih cepat dibandingkan C4.5', 'Data Mining', 'Selesai'),
(12, 'Meila Kusuma Perdana', 2147483647, 'Reguler', 2013, 'Steganografi Teks Pada Citra Menggunakan Parity Bit dan AES (Advanced Encryption Standard)', 'Fokus penelitian ini adalah melakukan penyisipan pesan teks yang telah dienkripsi menggunakan AES (Advanced Encryption Standard) pada citra berwarna dengan metode parity bit. Penelitian terdiri dari proses enkripsi proses penyisipan proses ekstraksi dan proses dekripsi pesan. Pengujian dilakukan pada 11 citra yang terdiri dari resolusi 256x256 512x512 dan 720x576 dengan masing-masing pesan yang disisipkan berisi 1000 katakter ASCII. Proses penyisipan dilakukan pada empat skenario pengujian berdasarkan posisi warna yang dijadikan tempat penyisipan bit pesan yaitu warna merah warna hijau warna biru dan paduan dari ketiga warna tersebut. Proses penyisipan dengan parity bit dilakukan pada komponen warna citra penampung merah hijau dan biru dengan nilai parity ditentukan berdasarkan hasil dari modulus komponen warna citra penampung berupa nilai genap atau ganjil. Untuk proses ekstraksi dilakukan dengan mengumpulkan nilai parity sebagai pesan hasil pengekstraksian. Kualitas citra hasil penyisipan diukur berdasarkan perhitungan PSNR (Peak Signal Noise Rasio) yang dipengaruhi oleh nilai MSE (Mean Square rror). Berdasarkan hasil pengujian yang dilakukan diketahui bahwa semua posisi penyisipan pesan memiliki nilai PSNR yang sama. Nilai tertinggi PSNR dari semua jenis resolusi citra diperoleh nilai sebesar 6398740628 dB. Untuk kategori citra 256x256 sebesar 5630350714 dB dan 6208848 dB pada resolusi 512x512. Sedangkan rata- rata waktu penyisipan yang tercepat pada warna biru selama 020 detik. Penyisipan pada warna merah 024 hijau 021 dan kombinasi warna merah dan hijau 022 detik.', 'Grafis dan Visualisasi', 'Selesai'),
(13, 'Meita Jayani', 2147483647, 'Reguler', 2013, 'Pengenalan Aksara Lampung Menggunakan Structured Support Vector Machine', 'Penelitian ini mengembangkan suatu aplikasi untuk mengenali citra Aksara Lampung dengan metode Structured Support Vector Machine (SSVM) serta mengukur tingkat akurasi dari hasil pengenalan. Proses pengenalan Aksara Lampung menggunakan tiga tahapan yaitu preprocessing dengan melakukan binerisasi cropping skeletonisasi dan resizing; ekstraksi ciri dengan metode zona; dan pengenalan dengan metode SSVM. Penelitian ini menggunakan 1000 citra huruf induk sebagai masukan. Rata-rata akurasi keberhasilan yang didapat sebesar 2256% untuk masing-masing pasangan data latih dan data uji. Banyaknya data yang digunakan akan memengaruhi hasil pengenalan semakin banyak data latih yang digunakan dalam pelatihan maka semakin besar pula akurasi keberhasilan pengenalan yang didapatkan. ', 'Grafis dan Visualisasi', 'Selesai'),
(14, 'Melly Wulan Dari Tambunan', 2147483647, 'Reguler', 2013, 'Penerjemahan Frasa Bahasa Inggris - Bahasa Indonesia Menggunakan Ruled Based Algorithm dan Adj Technique', 'Penerjemahan frasa Bahasa Inggris ? Bahasa Indonesia sangat penting dilakukan untuk menjadi rujukan sistem dari penerjemahan kalimat Bahasa Inggris ? Bahasa Indonesia. Penerjemahan frasa secara otomatis dapat dilakukan dengan Ruled Based Algorithm dan ADJ Technique. Penentuan pola jenis frasa dilakukan dengan menentukan pola bentukan jenis frasa itu sendiri sehingga didapatkannya pola frasa yang diinginkan dengan menggunakan Ruled Based Algorithm. Penerjemahan frasa dilakukan dengan cara menerjemahkan frasa masukan sesuai pola jenis frasa yang telat dilakukan oleh proses sebelumnya dengan menggunakan ADJ Technique. Hasil percobaan yang telah dilakukan pada penelitian ini menunjukkan tingkat akurasi metode Ruled Based Algorithm dan ADJ Technique dalam penerjemahan frasa Bahasa Inggris ? Bahasa Indonesia sebesar 8712%.', 'Natural Language Processing', 'Selesai'),
(15, 'Moh Azmi', 2147483647, 'Reguler', 2013, 'Penerapan Metode PCA (Principal Component Analysis) dan Euclidean Distance Untuk Pengenalan Wajah Berkelompok', 'Wajah merupakan bagian unik yang dimiliki setiap individu manusia. Untuk itu wajah dapat menjadi acuan untuk mengenali seseorang. Mungkin untuk mengenali wajah seseorang dalam jumlah sedikit bisa dikatakan mudah. Namun untuk mengenali wajah dalam jumlah yang banyak dan mengingat namanya dalam jangka waktu yang panjang merupakan sesuatu hal yang sulit mengingat keterbatasan dari setiap individu manusia. Tujuan penelian ini adalah mengembangkan sebuah perangkat lunak pengenalan wajah berkelompok. Pada penelitian ini perangkat lunak pengenalan wajah berkelompok menggunakan metode PCA untuk mengekstraksi fitur pada citra wajah dan metode Euclidean Distance digunakan untuk mengukur tingkat kesamaan antar dua buah objek. Data yang digunakan pada penelitian ini berjumlah 100 citra  yang terbagi menjadi 90 citra wajah tunggal sebagai data latih dan 10 citra wajah berkelompok sebagai data uji. Persentase kegagalan terhadap posisi wajah sedikit miring sebesar 8%. Perangkat lunak pengenalan wajah berkelompok dengan metode PCA dan Euclidean Distance memperoleh hasil Accuracy sebesar 80% Precision sebesar 100% dan Recall sebesar 80%.', 'Grafis dan Visualisasi', 'Selesai'),
(16, 'Muhammad Agung Multazam', 2147483647, 'Reguler', 2013, 'Perbandingan Metode Interpolasi Bicubic dan Gabungan Metode Interpolasi Bicubic Dengan Dual Tree Complex Wavelet Transform Pada Peningkatan Kualitas Citra Medis', 'Citra hasil MRI (Magnetic Resonance Imaging) dapat digunakan untuk membantu dokter atau ahli radiografi untuk menganalisis cacat atau memberi diagnosis yang akurat dari suatu penyakit tetapi citra MRI yang dihasilkan memiliki resolusi yang rendah dan masih terdapat noise. Noise pada citra dapat menimbulkan kesalahan saat dokter atau ahli radiografi melakukan diagnosa penyakit. Pada penelitian ini akan dikembangkan perangkat lunak peningkatan kualitas citra MRI dengan membandingkan performa metode Interpolasi Bicubic untuk perbesaran citra dan metode Dual Tree Complex Wavelet Transform untuk meningkatkan kualitas citra yang diperbesar dan gabungan dari kedua metode tersebut. Data yang digunakan pada penelitian ini sebanyak 200 citra MRI dan performa dari kedua metode dihitung berdasarkan nilai PSNR. Berdasarkan hasil pengujian yang dilakukan diketahui bahwa gabungan Interpolasi Bicubic dan DTCWT menghasilkan nilai rata-rata PSNR yang lebih baik yaitu sebesar 32323(dB).', 'Grafis dan Visualisasi', 'Selesai'),
(17, 'Mukhammad Arifin Fikri', 2147483647, 'Reguler', 2013, 'Perbandingan Algoritma Boyer-Moore dan Brute Force dalam Menyelesaikan Game Puzzle Sudoku 9x9 Original', 'Game puzzle sudoku merupakan game teka-teki angka yang terdiri dari angka 1 sampai 9 kedalam papan sudoku berukuran 9 x 9 dengan aturan permainan tidak boleh ada angka yang sama disetiap baris kolom dan kotak. Game puzzle sudoku banyak diminati mulai dari anak-anak sampai orang tua dalam menyelesaikan puzzle angka ini pemain tidak harus mempunyai tingkat kecerdasan yang tinggi dan tidak perlu handal dalam berhitung karena yang dibutuhkan dalam menyelesaikan puzzle ini adalah mempunyai kemampuan berpikir secara logika ketajaman akurasi dan kesabaran tinggi. Jika salah satu syarat tidak terpenuhi pemain akan kesulitan dalam menyelesaikan soal puzzle sudoku. Penelitian ini menggunakan dua algoritma pembanding yaitu algoritma Boyer-Moore dan Brute Force untuk menyelesaikan game puzzle sudoku berdasarkan kecepatan dan jumlah iterasi. Berdasarkan hasil penelitian algoritma Boyer-Moore dan Brute Force mampu menyelesaikan data soal-soal setiap level dengan tingkat akurasi 100% dalam parameter waktu eksekusi algoritma Boyer-Moore lebih lambat dari algoritma Brute force waktu eksekusi rata-rata algoritma Boyer-Moore adalah 1750ms dan waktu eksekusi rata-rata algoritma Brute Force adalah 529ms sedangkan dalam parameter jumlah iterasi algoritma Boyer-Moore  lebih sedikit dari algoritma Brute Force jumlah iterasi rata-rata algoritma Boyer-Moore adalah 1153065 kali dan jumlah iterasi rata-rata algoritma Brute Force adalah 3751613 kali.', 'Pengembangan Game', 'Selesai'),
(18, 'Nadia Tri Oktaviani', 2147483647, 'Reguler', 2013, 'Menentukan Kosmetik yang Sesuai dengan Kulit Wajah Menggunakan Metode Elimination and Choice Expressing Reality dan Technique for Order Preference by Similarity to Ideal Solution', 'Kebutuhan masyarakat akan kosmetik saat ini sangatlah besar apalagi bagi wanita yang kebanyakan dari mereka selalu ingin tampil cantik dan menarik. Menentukan kosmetik yang sesuai dengan jenis kulit wajah bukan merupakan hal yang mudah karena efek yang akan ditimbulkan tehadap kulit tidak akan diketahui selama kosmetik tersebut belum digunakan. Pada penelitian ini dikembangkan sebuah sistem pendukung keputusan penentuan kosmetik yang sesuai dengan jenis kulit wajah menggunakan metode Elimination and Choice Expressing Reality (ELECTRE) dan Technique for Order Preference by Similarity to Ideal Solution (TOPSIS). Pada penelitian ini metode ELECTRE digunakan untuk pembobotan dari setiap alternatif dalam pemilihan kosmetik berdasarkan kriteria dalam pengambilan keputusan dan metode TOPSIS digunakan untuk perangkingan. Hasil dari penelitian ini sistem dapat memberikan keputusan alternatif kosmetik yang akan dijadikan sebagai acuan untuk menentukan kosmetik yang sesuai dengan jenis kulit wajah. Sehingga sistem pendukung keputusan ini berfungsi sebagai alat bantu untuk pemilihan kosmetik yang aman dan sesuai dengan kebutuhan.', 'Soft Computing', 'Selesai'),
(19, 'Nisva Syakhbania', 2147483647, 'Reguler', 2013, 'Perbandingan Algoritma Jaro-Wrinkler Distance dan Levenshtein Distance Dalam Mendeteksi Kemiripan Dokumen Bahasa Indonesia', 'Deteksi kemiripan dokumen digunakan untuk mengetahui kemiripan antara dua buah dokumen yang biasanya diukur berdasarkan kesamaan semantik atau kesamaan leksikal. Pada penelitian ini dilakukan deteksi kemiripan secara leksikal dengan cara melakukan pencocokan string pada setiap dokumen. Algoritma JaroWinkler Distance dan Levenshtein Distance merupakan algoritma yang sering digunakan dalam teknik pencocokan pola. Algoritma Jaro-Winkler Distance menghitung panjang kata dalam dokumen kata yang sama dan jumlah transposisi. Sedangkan algoritma Levenshtein Distance menghitung jarak yang dibutuhkan untuk mengubah satu kata menjadi kata lain. Pengujian dilakukan dengan menggunakan 19 dokumen asli dan 6 dokumen pembanding menghasilkan rata-rata nilai error sebesar 786% untuk algoritma Levenshtein Distance dan 2445% untuk algoritma Jaro-Winkler Distance. Untuk waktu proses empat dari lima skenario pengujian menunjukkan Jaro-Winkler Distance memiliki waktu komputasi yang lebih cepat daripada Levenshtein Distance. ', 'Natural Language Processing', 'Selesai'),
(20, 'Nova Hasti', 2147483647, 'Reguler', 2013, 'Implementasi Metode Fuzzy Time Series Pada Peramalan TIngkat Inflasi Bulanan Berdasarkan Indeks Harga Konsumen', 'Inflasi merupakan merosotnya nilai uang (kertas) karena banyaknya uang kertas yang beredar sehingga menyebabkan naiknya harga barang-barang. Sebelumnya untuk menentukan inflasi dilakukan menggunakan metode ARIMA. Namun metode ini memiliki tingkat akurasi yang kurang baik. Pada penelitian ini dikembangkan sebuah perangkat lunak untuk menentukan tingkat inflasi tersebut. Metode yang digunakan adalah Fuzzy Time Series. FTS digunakan untuk mencari pola data pada masa lalu kemudian digunakan  untuk memproyeksikan data pada masa yang akan datang. Metode ini tidak membutuhkan sistem yang rumit pada proses perhitungannya. Pengujian pada penelitian ini dilakukan dengan cara membandingkan hasil keluaran perangkat lunak dengan data aktual. Berdasarkan data aktual hasil peramalan menggunakan data latih 3 tahun nilai MAPE adalah 165 % MSE 0.13. Sedangkan jika menggunakan data latih 2 tahun nilai MAPE adalah 176 % dan MSE 0.15. Hal ini menunjukkan bahwa semakin banyak data latih yang digunakan maka hasil akurasinya semakin bagus.', 'Soft Computing', 'Selesai'),
(21, 'Rezi Apriliansyah', 2147483647, 'Reguler', 2013, 'Penerapan Steepest Ascent Hill Climbing Algorithm Untuk Pembentukan Papan Jawaban Pada Permainan Teka Teki Silang', 'Papan teka-teki silang memiliki banyak variasi papan berdasarkan huruf yang diatur dari jumlah karakter terbanyak. Steepest Ascent Hill Climbing Algorithm diterapkan untuk menentukan ventuk optimal dari papan silang inisial awal dipilih dari karakter paling banyak successor berikutnya adalah dipilih dari karakter terpanjang kedua hingga semua jawaban dipilih maka pada langkah terakhir adalah hitung nilai fitness untuk mengevaluasi papan jawaban dibentuk dengan menghitung persimpangan jawaban dan sejumlah pertanyaan yang dapat digunakan pada jawaban. Pengujian dalam penelitian ini dilakukan menguji jumlah kolom dan baris yang sama dan bervariasi untuk memperoleh jumlah nilai fitness yang tidak terlalu signifikan berbeda jumlah kotak hitam yang lebih sedikit dan ratio antara jumlah kolom dan baris yang tidak terlalu melebar.', 'Pengembangan Game', 'Selesai'),
(22, 'Sinta Amelia', 2147483647, 'Reguler', 2013, 'Algoritma Random Forest dan Chi Square Test Dalam Pendeteksian XSS Attack di Web Application', 'Rentannya keadaan web application mengakibatkan penyerang dapat mudah memasuki dan mengambil data-data yang ada pada web application yang ditargetkan. Salah satu kerentanan yang sering terjadi pada web application adalah serangan cross-site scripting (XSS). Serangan XSS ini terjadi ketika penyerang memasukan script berbahaya kedalam web application. Salah satu faktor penyebab terjadinya serangan ini dikarenakan developer tidak memperhatikan tingkat keamanan web pada source code yang dibuat. Pada penelitian ini dilakukan proses pencarian berdasarkan fitur yang memiliki ciri-ciri source code yang memiliki kerentanan akan serangan XSS. Setelah semua fitur dikumpulkan selanjutnya dilakukan klasifikasi dengan algoritma random forest dan fitur seleksi chi-square untuk memperoleh hasil fitur yang didapat merupakan source code yang rentan atau tidak. Penggabungan dari fitur seleksi chi square dan klasifikasi random forest menghasilkan nilai akurai yang lebih tinggi sebesar 2%. Hasil akhir percobaan untuk nilai akurasi yang didapat dengan akurasi rata-rata untuk data training   90% dan data testing  80% .', 'Soft Computing', 'Selesai'),
(23, 'Usman Firnandes', 2147483647, 'Reguler', 2013, 'Sistem Pakar Untuk Menentukan Jenis Penyakit Kulit Psoriasis Menggunakan Metode Demster-Shafer', 'Psoriasis merupakan jenis penyakit kulit yang penderitanya mengalami proses pergantian kulit yang terlalu cepat. Kemunculan penyakit ini terkadang untuk jangka waktu lama atau timbul hilang. Secara klinis penyakit ini tidak mengancam jiwa dan tidak menular tetapi pada beberapa kasus penyakit ini dapat timbul di bagian organ vital tubuh sehingga dapat menyebabkan terjadinya komplikasi yang dapat menyebabkan kematian. Tujuan dari penelitian ini adalah membuat sistem yang dapat berfungsi sebagai media untuk mendapatkan diagnosa awal bagi penderitanya. Pada penelitian ini dibangun sebuah sistem pakar diagnosa jenis penyakit kulit prosiasis menggunakan metode Dempster-Shafer. Dempster-Shafer merupakan salah satu metode pembuktian dengan melihat nilai belief function dan plausible reasoning kemudian dilakukan perhitungan nilai kepercayaan terhadap gejala-gejala yang dimiliki oleh pasien sehingga akan menghasilkan suatu diagnosa penyakit. Penelitian ini menggunakan 50 kasus uji dengan hasil akurasi sebesar 90%', 'Sistem Pakar', 'Selesai'),
(24, 'Zhita Zhefira Maulidya', 2147483647, 'Reguler', 2013, 'Seleksi Fitur Chi-Square dan Latent Semantic Analysis (LSA) dalam Optimasi Klasifikasi Dokumen Tugas Akhir', 'Klasifikasi merupakan metode text mining yang menjadi alternatif untuk mengolah data dengan jumlah yang besar dan banyak. Salah satu tahapan penting dalam klasifikasi adalah term-weigting atau pembobotan kata yang dilakukan pada proses pelatihan. Pada tahapan pembobotan kata menghasilkan sebuah matrik term-document. Namun dengan besarnya dimensi pada matrik term-document dapat membuat kinerja dari algoritma klasifikasi menjadi tidak efektif dan efisien. Pada penelitian ini menggunakan metode seleksi fitur Chi-square dan dan Latent Semantic Analysis (LSA). Pada tahap pelatihan menggunakan metode Chi-square untuk memilih fitur yang relevan dan LSA melalui Singular Value Decomposition untuk mereduksi dimensi matrik pembobotan. Pada tahap pengujian dilakukan klasifikasi dokumen tugas akhir dengan menggunakan cosine similirity. Algoritma Chi Square dan LSA dengan data latih sebanyak 190 data memiliki akurasi dan estimasi waktu yang paling baik. Nilai rata-rata yang dihasilkan adalah Preccison sebesar 7554% dan Recall sebesar 727% serta estimasi waktu pemrosesan sekitar 33s', 'Data Mining', 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbvektor`
--

CREATE TABLE `tbvektor` (
  `dokumenId` int(255) NOT NULL,
  `panjangVektor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbwdwdi`
--

CREATE TABLE `tbwdwdi` (
  `id` int(255) NOT NULL,
  `dokumenId` int(255) NOT NULL,
  `wdwdi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbkeyword`
--
ALTER TABLE `tbkeyword`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbsimilarity`
--
ALTER TABLE `tbsimilarity`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbstem`
--
ALTER TABLE `tbstem`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `tbterm`
--
ALTER TABLE `tbterm`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbtugasakhir`
--
ALTER TABLE `tbtugasakhir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbvektor`
--
ALTER TABLE `tbvektor`
  ADD PRIMARY KEY (`dokumenId`);

--
-- Indeks untuk tabel `tbwdwdi`
--
ALTER TABLE `tbwdwdi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbkeyword`
--
ALTER TABLE `tbkeyword`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbsimilarity`
--
ALTER TABLE `tbsimilarity`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbstem`
--
ALTER TABLE `tbstem`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbterm`
--
ALTER TABLE `tbterm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbtugasakhir`
--
ALTER TABLE `tbtugasakhir`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tbvektor`
--
ALTER TABLE `tbvektor`
  MODIFY `dokumenId` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbwdwdi`
--
ALTER TABLE `tbwdwdi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
