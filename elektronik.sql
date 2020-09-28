-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28 Sep 2020 pada 10.09
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elektronik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ac`
--

CREATE TABLE `ac` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `speksifikasi` varchar(1000) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `harga` varchar(55) NOT NULL,
  `foto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ac`
--

INSERT INTO `ac` (`id`, `nama`, `deskripsi`, `speksifikasi`, `brand`, `harga`, `foto`) VALUES
(1, 'PANASONIC AC Stardard Non Inverter [1 PK] YN9TKJ ', 'PANASONIC AC 1 PK YN9TKJ adalah Air Conditioner yang dapat menyesuaikan kebutuhan pendinginan untuk ruangan Anda. Memiliki kapasitas pendinginan 9000 BTU/h membuat Anda nyaman dalam menggunakan Air Conditioner ini. ', 'Kapasitas Pendinginan 9000 Btu/h |\r\n\r\nEER rated 11.25 Btu/hW |\r\n\r\nDaya 800 Watt / 220 Volt / 3.7 A |\r\n\r\nSirkulasi udara 8.2m3 / menit |\r\n\r\nTingkat kebisingan Indoor 35/29 dB-A, outdoor 48 dB A |\r\n\r\nDimensi Indoor (HxWxD) : 290x799x197 mm |\r\n\r\nDImensi Outdoor (HxWxD) : 490x650x230 mm |\r\n\r\nBerat indoor : 8KG |\r\n\r\nBerat outdoor : 21 KG |', 'Panasonic', '3,049,000,00', 'ac1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(25) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `speksifikasi` varchar(750) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `kategori` varchar(75) NOT NULL,
  `harga` varchar(55) NOT NULL,
  `foto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `deskripsi`, `speksifikasi`, `brand`, `kategori`, `harga`, `foto`) VALUES
(15, 'FUJIFILM X-A3 Brown Kit XC 16-50mm Lens', 'FUJIFILM X-A3 memiliki desain retro yang menarik bagi generasi muda. ', '21-25MP |\r\nAPS-C Format |\r\n3 inchi |', 'Fujifilm', 'Camera', '6,299,000,00', 'c1.jpg'),
(17, 'Redmi Note 7', 'Hp terbaru dari sub-brand Xiaomi ini resmi masuk pasar Indonesia. dan redmi note 7 di banderol dengan harga mulai dari Rp.1.999 juta dan hingga Rp.2.599 juta', 'SIM Hybrid Dual SIM (Nano-SIM, dual stand-by) |Size 6.3 inches, 97.4 cm2 (~81.4% screen-to-body ratio) |PLATFORM OS Android 9.0 (Pie); MIUI 10 |ChipsetQualcomm SDM660 Snapdragon 660 (14 nm) |CPU Octa-core (4x2.2 GHz Kryo 260', 'Xiaomi', 'Handphone', '2.625.900,00', 'redminote7.png'),
(18, 'Realme 3 Pro', 'Realme 3 Pro resmi meluncur di Indonesia yang mengunggulkan kinerjanya dengan dukungan spesifikasi baterai besar, harga mulai Rp3 juta.', '6.3-inch FHD display @2340 x 1080px | Corning Gorilla Glass 5 | Qualcomm Snapdragon 710 10nm 2.2GHz AIE octa-core | Adreno 616 GPU | 4GB/6GB RAM | 16MP f/1.7 Sony IMX 519 5MP f/2.4 dual rear cameras | 960fps Super Slow Motion | 4K video recording | Ultra HD, Nightscape, Speed Shot | 25MP f/2.0 front camera | Hyperboost 2.0 | Smart Power Amplifier | Fingerprint scanner (rear-mounted) | Face Unlock | ColorOS 6.0 (Android 9 Pie) | 4,045mAh battery w/ 20W VOOC 3.0 flash charging technology |', 'Realme ', 'Handphone', '3.799.000.00', 'realme3.png'),
(19, 'Samsung A30', ' Dengan layar FHD + sAMOLED yang dekat dengan bezel, Galaxy A30 mendesain ulang hiburan untuk memberi Anda lebih banyak dari apa yang Anda sukai', 'Ukuran layar: 6.4 inci, 1080 x 2340 pixels, 19.5:9 ratio, Super AMOLED Infinity-U capacitive touchscreen, 16M colors |\r\nMemori: RAM 4 GB, ROM 64 GB, MicroSD up to 512 GB |\r\nSistem operasi: Android 9.0 (Pie) |\r\nCPU: Exynos 7904 Octa (14 nm), Octa-core (2x1.8 GHz Cortex-A73 & 6x1.6 GHz Cortex-A53) |\r\nGPU: Mali-G71 MP2 |\r\nKamera: Dual 16 MP, f/1.7, PDAF. 5 MP, f/2.2, 12mm, (ultrawide), depan 16 MP, f/2.0 |\r\nSIM: Dual SIM (Nano-SIM) |\r\nBaterai: 4000 mAh |\r\nBerat: 165 gr3GHz. |', 'Samsung', 'Handphone', '3.499.000,00', 'samsunghp1.jpg'),
(20, 'Huawei P30 Pro', 'Salah satu jualan Huawei dari flagship ini teknologi kameranya. Huawei P30 Pro menggunakan Leica Quad Camera System di bagian belakang, yaitu kamera utama dengan sensor beresolusi 40 MP, lensa sudut lebar 20 MP, lensa telefoto 8 MP, dan sensor berteknologi Time of Flight.', 'Dimensi: 158 x 73.4 x 8.4 mm |\r\nBerat: 192 g |\r\nLayar: 6,47 inch, resolusi 2,340 x 1,080 pixel, OLED |\r\nProsesor: Kirin 980 |\r\nSistem operasi: Android 9 Pie dengan Huawei Emotion UI 9 |\r\nStorage: 128 GB / 256 GB / 512 GB |\r\nRAM: 8 GB |\r\nKamera belakang: 40 MP 27mm f/1.6 aperture + 20 MP 16mm ultrawide sensor, f/2.2 + 8 MP 5x optical periscope prism f/3.4 + Huawei TOF (time-of-flight) | \r\nKamera depan: 32 MP f/2.0 |\r\nBaterai: 4200 mAh with fast charging 40W, Reverse Wireless Charging |\r\nFitur: Fingerprint under display, USB Type C, Dolby Atmos, Bluetooth 5.0, WiFi dan IP68 |', 'Huawei', 'Handphone', '13.199.000,00', 'huawei1.jpg'),
(21, 'Samsung LED TV Full HD 40K6300', 'Full HD yang tajam dan jelas mencapai 200 PQI dengan gambar hidup yang disampaikan melalui teknologi Wide Colour Enhancer.', 'Package Size (WxHxD): 964 x 622 x 122 mm |Set Size with Stand (WxHxD): 901.1 x 620.1 x 179.0 mm |Set Size without Stand (WxHxD): 901.1 x 550.8 x 78.0 mm |Set Weight with Stand: 8.5 kg |Series: 5 |Resolution: 1,920 × 1,080', 'Samsung', 'TV', '4.189.000,00', '1.png'),
(23, 'LG LED TV 49UJ632T 49 Inch UHD Smart TV', 'LG UHD Smart TV J632T mengusung tampilan layar Ultra High Definition dengan fitur digital pintar yang mampu mengakomodasi kebutuhan multimedia secara optimal. i.', 'LED |\r\n49 inch |\r\n3840x2160 |\r\n20 watt |\r\n2Ch |\r\n3x HDMI, 2x USB2.0, LAN, Composite In, RF In, WiFi 802.11 ac, Digital Audio Output (Optical), line out, headphone out |', 'LG', 'TV', '9,729,000,00', 'lgtv.jpg'),
(24, 'SONY LED Smart TV 4K 55 Inch - KD-55X8500', 'SONY mempersembahkan produk terbarunya berupa Y LED Smart Android TV 4K 55 Inch \r\n\r\nUntuk yang terbaik dalam kualitas gambar, TV memadukan kecemerlangan 4K dengan kecerahan, warna, dan detail High Dynamic Range (HDR).', 'Layar 55 inci |\r\n\r\n3.840 x 2.160 (UHD) |\r\n\r\nSmart TV |\r\n\r\n4K High Dynamic Range |\r\n\r\n4K X-reality PRO |\r\n\r\nYoutube & Netflix |\r\n\r\nSmartphone Plug & Play |\r\n\r\nClearAudio+ |\r\n\r\nHDMI & USB |\r\n\r\nKonsumsi Daya150 |\r\n\r\nResolusi3.840 x 2.160 (UHD) |\r\n\r\nkelengkapan PaketTV, Remote TV, Buku Manual dll. |', 'Sony', 'TV', '13,699,000,00', 'sonytv.jpg'),
(25, 'Sony Full HD Smart TV 40W650D', 'Nikmati kualitas gambar Full HD yang memukau, apa pun yang Anda tonton. Mesin pemrosesan unik Sony X-Reality PRO menganalisis, membersihkan, dan memperhalus gambar. ', 'Smart TV | 40&quot; | Android |', 'Sony', 'TV', '4,775,000,00', 'sonytv1.jpg'),
(26, 'HARMAN KARDON Onyx Studio 4 Bluetooth Portable Speaker', 'Harman Kardon Onyx Studio 4 adalah sebuah speaker portabel dengan dukungan koneksi Bluetooth yang memiliki kemampuan untuk mengalirkan audio secara powerful dari sebuah desain ikonik produsen ini. ', 'Bluetooth version: 4.2 | \r\n\r\nSupport: A2DP 1.3, AVRCP 1.6, HFP 1.6 | \r\n\r\nTransducers: Woofer 2 x 75mm, Tweeter 2 x 20mm |\r\n\r\nRated Power: 4 x 15W (AC mode); 4 x 7.5W (Battery mode) | \r\n\r\nFrequency response: 50Hz - 20kHz (-6dB) | \r\n\r\nSignal to noise ratio: 80dB A-weighted • Power supply: 19V/2A | \r\n\r\nBattery type: 3.7V/3000mAh Lithium-ion | ', 'Harman Kardon', 'Speaker', '1.950.000,00', 's1.png'),
(27, 'DOSS Touch Wireless Bluetooth V4.0 ', '\r\nDengan 20 tahun inovasi dan tim desain Worldwide dari Amerika Serikat, Kanada, dan Jerman, DOSS tetap kompetitif di industri audio sebagai profesional di seluruh dunia.', 'Broad Compatibility |\r\nMusic on the Go |\r\nCompact and Superior |\r\nSleek Design, Perfect Companion |\r\nSensitive Touch, Elegant Control |', 'Doss', 'Speaker', '389,000,00', 's2.png'),
(28, 'Xiaomi Portable Bluetooth Speaker', 'Xiaomi Mi Portable Mini Bluetooth Speaker merupakan speaker praktis yang dibuat dengan ukuran mungil untuk mendukung portabilitas yang optimal. ', 'Bluetooth version: 4.0 |\r\n\r\nEffective distance: 5 m |\r\n\r\nRated power: 2 W |\r\n\r\nSNR: 53 dB |\r\n\r\nType of battery: Built-in rechargeable lithium battery | \r\n\r\nBattery life: 4 hours (60dBA / 1m, pink noise) |\r\n\r\nBody weight: 58 g |\r\n\r\nDimension: 52x52x25mm |', 'Xiaomi', 'Speaker', '161,000,00', '5cd573e42711f.png'),
(29, 'Logitech Speaker X100 Orange', 'Logitech kini meluncurkan produk terbaru nya yaitu Logitech X100 Mobile Speaker, sebuah speaker wireless portabel yang menawarkan portabilitas tinggi dengan kualitas suara terbaik di kelasnya khusus bagi pengguna dengan gaya hidup aktif. ', 'Connectivity: Wireless Bluetooth, A2DP |\r\n\r\nOutput Audio: 3.5 mm |\r\n\r\nRange Wireless Bluetooth: 30 feet / 9 meter |\r\n\r\nBattery: Lithium-ion, up to 5 hours |', 'Logitech', 'Speaker', '599,000,00', 's3.jpg'),
(30, 'PANASONIC Lumix DMC-G7 kit 14-42mm f/3.5-5.6 II APSH', '\r\nPanasonic Lumix DMC-G7 silver adalah kamera mirrorless hybrid sejati yang memadukan video 4K UHD dengan kemampuan menangkap dan burst yang canggih.', '16 MP Live MOS Sensor |\r\n\r\nVenus Engine 9 Image Processor |\r\n\r\nMicro Four Thirds System |\r\n\r\n4K UHD Video Recording at 30/24 fps |\r\nBuilt-In Wi-Fi Connectivity |\r\n', 'Panasonic', 'Camera', '6,499,000,00', 'c3.jpg'),
(31, 'Nikon 1 J5 Kit 10-30mm', 'Nikon 1 J5 Kit 10-30mm merupakan kamera digital mirrorless yang ramping dan  dirancang untuk multimedia fotografer on the go. ', '20.8MP  BSI CMOS Sensor |\r\n\r\nEXPEED 5A Image Processor |\r\n\r\nUHD 2160p/15 and Full HD 1080p/60 Video |\r\n\r\nHybrid AF with 105 Phase-Detection Areas |\r\n\r\nUp to 60 fps Shooting, 20 fps with AF-C |\r\n\r\nISO 12800 and High ISO Noise Reduction |\r\n\r\nSports Mode and In-Camera Time Lapse |\r\n', 'Nikon', 'Camera', '4,888,000,00', 'c4.jpg'),
(32, 'SONY MDR-ZX110AP Headphone', 'SONY MDR-ZX110AP mengombinasikan desain ergonomis dan inovasi teknologi audio baru untuk menunjang berbagai kebutuhan hiburan Anda.', 'Weight: 120 g |\r\n\r\nSensitivities (DB/MW): 98 dB/mW |\r\n\r\nCord length: 1.2 m |\r\n\r\nCord type: YShape |\r\n\r\nDriver unit: 30 mm dynamic  Dome type |\r\n\r\nFrequency response: 1222,000Hz |\r\n\r\nWearing style: Headband, Over-Ear |\r\n\r\nUnit of microphone: Electric Condenser Microphone |\r\n\r\nDirectional of in-line microphone: Omni direction  |\r\n\r\n', 'Sony', 'Headphone', '189,000,00', '5cd5bfe29bf06.png'),
(33, 'JABRA Move Wireless Headphone', 'Jabra Move menghadirkan pengalaman terbaik mendengarkan musik secara nirkabel. Dirancang oleh berbagai ahli suara terkemuka membuat Jabra Move Wireless menjadi yang terbaik dikelasnya.', 'Operating Principle: Closed System |\r\nSound Output: Stereo |\r\nFrequency (Low): 20 Hz |\r\nFrequency (High): 20 kHz |\r\nInputs Supported: Bluetooth |\r\nSensitivity: Medium sensitivity range, no amp required |\r\nRecommended Music: Pop or Rock |\r\nTalk Time Up: 8 hours |\r\nStandby Time Up: 288 hours |', 'Jabra', 'Headphone', '699.000,00', 'jabra1.png'),
(34, 'MARSHALL Major II Headphone', 'Marshall Major II merupakan headset yang didesain stylish serta dapat dilipat untuk memudahkan penyimpanan dan penggunaan yang lebih mudah. ', 'Sound Principle: 40 mm Handmade Drivers |\r\n\r\nFrequency Response: Yes |\r\n\r\nImpedance: 64O |\r\n\r\nSensitivity: 99dB |\r\n\r\nMax Input Power: Yes |\r\n\r\nConnection: 3,5mm plug |', 'Marshall', 'Headphone', '799.000,00', 'marshal1.jpg'),
(35, 'HAVIT Headphone HV-H2218D', 'HAVIT Headphone HV-H2218D merupakan headphone canggih yang hadir dengan desain fleksibel yang dapat Anda lipat dengan mudah. Dengan desain yang dapat Anda lipat ini, Anda dapat membawa headphone ini saat berpergian tanpa takut headphone akan patah ataupun rusak. ', 'Speaker: 40 mm |\r\n\r\nSensitivity: 110dB &plusmn; 3dB | \r\n\r\nFrequency response: 20 Hz to 20KHZ | \r\n\r\nCord length: Approx 1.2 m &plusmn; 10% |\r\n\r\nPlug Type: 3.5 mm | \r\n\r\nEarphone size: 15 * 16.5 * 6.5 cm | ', 'Havit', 'Headphone', '99.000,00', 'havit1.jpg'),
(36, 'DAIKIN AC Standard [1 PK] - R32 - RV + FTV25BXV14 ', 'Merupakan AC Split dengan kapasitas pendinginan 1 PK serta mengonsumsi daya 780 watt. AC Split ini menggunakan freon yang cepat dingin dan ramah lingkungan. ', 'AC Split |\r\nKapasitas pendinginan 1 PK |\r\nDaya 780 watt |\r\n\r\nMenggunakan freon yang cepat dingin dan ramah lingkungan |\r\n\r\nPengatur Waktu On/Off 24 Jam |\r\n\r\nDimensi Indoor 288x800x206 | \r\n\r\nDimensi Outdoor 485x566x256 |\r\n\r\nBerat Indoor 9 kg |\r\n\r\nBerat Outdoor 21 kg |\r\n\r\nGaransi AC 1 tahun, kompresor 3 tahun (3 tahun spare parts, 1 tahun service) |', 'Daikin', 'AC', '3,299,000', '5cd5c28bc967e.jpg'),
(37, 'PANASONIC AC Stardard Non Inverter [1 PK] YN9TKJ ', 'PANASONIC AC 1 PK YN9TKJ adalah Air Conditioner yang dapat menyesuaikan kebutuhan pendinginan untuk ruangan Anda. Memiliki kapasitas pendinginan 9000 BTU/h membuat Anda nyaman dalam menggunakan Air Conditioner ini. ', 'Kapasitas Pendinginan 9000 Btu/h |\r\n\r\nEER rated 11.25 Btu/hW |\r\n\r\nDaya 800 Watt / 220 Volt / 3.7 A |\r\n\r\nSirkulasi udara 8.2m3 / menit |\r\n\r\nTingkat kebisingan Indoor 35/29 dB-A, outdoor 48 dB A |\r\n\r\nDimensi Indoor (HxWxD) : 290x799x197 mm |\r\n\r\nDImensi Outdoor (HxWxD) : 490x650x230 mm |\r\n\r\nBerat indoor : 8KG |\r\n\r\nBerat outdoor : 21 KG |', 'Panasonic', 'AC', '3,049,000,00', '5cd5c2da9327b.jpg'),
(38, 'SHARP AC New Jetstream Series 1/2 PK - AH-A5SAY ', 'Sharp yakin bahwa langkah terbaik untuk mengurangi dampak kerusakan lingkungan adalah dengan mempertimbangkan segala faktor penyumbang pemanasan global mulai dari kebocoran refrigeran pada saat instalasi sampai konsumsi listrik peralatan elektronik.', 'AC Split |\r\nKapasitas pendinginan 1 PK |\r\nDaya 780 watt |\r\n\r\nMenggunakan freon yang cepat dingin dan ramah lingkungan |\r\n\r\nPengatur Waktu On/Off 24 Jam |\r\n\r\nDimensi Indoor 288x800x206 | \r\n\r\nDimensi Outdoor 485x566x256 |\r\n\r\nBerat Indoor 9 kg |\r\n\r\nBerat Outdoor 21 kg |\r\n\r\nGaransi AC 1 tahun, kompresor 3 tahun (3 tahun spare parts, 1 tahun service) |', 'Sharp', 'AC', '2,519,000,00', '5cd5c38c6fad2.png'),
(39, 'AQUA AC Standard 1/2 PK AQA-KCR5ANE', 'Merupakan AC Split dengan kapasitas pendinginan 1 PK serta mengonsumsi daya 780 watt. AC Split ini menggunakan freon yang cepat dingin dan ramah lingkungan. ', 'Kapasitas Pendinginan 9000 Btu/h |\r\n\r\nEER rated 11.25 Btu/hW |\r\n\r\nDaya 800 Watt / 220 Volt / 3.7 A |\r\n\r\nSirkulasi udara 8.2m3 / menit |\r\n\r\nTingkat kebisingan Indoor 35/29 dB-A, outdoor 48 dB A |\r\n\r\nDimensi Indoor (HxWxD) : 290x799x197 mm |\r\n\r\nDImensi Outdoor (HxWxD) : 490x650x230 mm |\r\n\r\nBerat indoor : 8KG |\r\n\r\nBerat outdoor : 21 KG |', 'AQUA', 'AC', '2,449,000,00', '5cd5c3f163b16.png'),
(40, 'ASUS E203MAH-FD011T', 'Asus menghadirkan Notebook dengan seri Eeebook E203, memiliki beragam performa handal yang lebih optimal dengan harga yang terjangkau. ASUS Eeebook E203 menggabungkan performa perangkat keras yang sangat cepat dengan desain notebook yang ergonomis dan juga stylish.', 'Processor: Intel Celeron N4000 |\r\nSystem Operation Windows 10 Home |\r\nMemory: 2 GB SDRAM |\r\nDisplay: 11.6&quot; (16:9) LED-backlit HD (1366x768) 60Hz | Panel with 45% NTSC With ASUS Splendid |\r\nGraphic Card: Intel HD Graphics |\r\nHard Drives: 500GB 5400RPM SATA HDD |\r\nKeyboard: Chiclet keyboard |\r\nCard Reader: Multi-format card reader |\r\nWebCam: VGA Web Camera |\r\nNetworking: Wi-Fi Integrated 802.11 AC |\r\nBluetooth: Built-in Bluetooth V4.1 |', 'Asus', 'Laptop', '3,495,000,00', '5cd5c4bfb44a2.jpg'),
(41, 'ZYREX Sky 232 S2 ', 'Asus menghadirkan Notebook dengan seri Eeebook E203, memiliki beragam performa handal yang lebih optimal dengan harga yang terjangkau. ASUS Eeebook E203 menggabungkan performa perangkat keras yang sangat cepat dengan desain notebook yang ergonomis dan juga stylish.', 'RAM 4GB |\r\nIntegrated Intel HD Graphics |\r\nWindows 10 |\r\n256 GB SSD |\r\n14&quot; |\r\nIntel Celeron |', 'Zyrex', 'Laptop', '3,499,000,00', '5cd5c54c5a85d.png'),
(42, 'HP 14-CM0094AU', 'HP memperkenalkan perangkat notebook harian yang hadir dengan harga terjangkau dan fitur yang tercipta khusus untuk kebutuhan Anda. Dapatkan semua kecanggihan yang Anda butuhkan dalam perangkat notebook dari brand terpercaya HP. ', 'Processor: Intel Celeron N4000 | System Operation Windows 10 Home | Memory: 2 GB SDRAM | Display: 11.6&amp;quot; (16:9) LED-backlit HD (1366x768) 60Hz | Panel with 45% NTSC With ASUS Splendid | Graphic Card: Intel HD Graphics | Hard Drives: 500GB 5400RPM SATA HDD | Keyboard: Chiclet keyboard | Card Reader: Multi-format card reader | WebCam: VGA Web Camera | Networking: Wi-Fi Integrated 802.11 AC | Bluetooth: Built-in Bluetooth V4.1 |', 'HP', 'Laptop', '3.650.000,00', '5cd5c5f1868ad.jpg'),
(44, 'SAMSUNG Kulkas 2 Pintu [203L] RT20FARWDSA/SE', 'Lemari es samsung RT20FARWDSA terbaru hadir dengan Daya tahan lebih lama. Compressor dengan teknologi Digital Inverter  lebih tahan lama dan lebih kuat, tidak berisik dan efisien dalam pemakaian energi.', 'Kapasitas total : 203 Liter |\r\nKapasitas kulkas : 150 Liter |\r\nKapasitas freezer : 53 Liter |\r\nTwist Ice Maker |\r\nLED Interior Light |\r\nBig Box |\r\nDeodorizing Filter |\r\nBerat 50 kg |', 'Samsung', 'Kulkas', '3,699,000,00', '5cd5c74a1fc2c.jpg'),
(45, 'AQUA Kulkas 2 Pintu [220 L] AQR-D270 DS ', 'PANASONIC AC 1 PK YN9TKJ adalah Air Conditioner yang dapat menyesuaikan kebutuhan pendinginan untuk ruangan Anda. Memiliki kapasitas pendinginan 9000 BTU/h membuat Anda nyaman dalam menggunakan Air Conditioner ini. ', '- Kulkas 2 Pintu\r\n\r\n- Warna Dark silver\r\n\r\n- Full Insulation\r\n\r\n- Multi Air Flow\r\n\r\n- Bigger Vegetable Box\r\n\r\n- Anti Bacteria\r\n\r\n- Dimensi (WxDxH) : 54 x 65.5 x 153 cm \r\n\r\n- Daya 60 Watt', 'AQUA JAPAN', 'Kulkas', '2.625.999,00', '5cd5c81ebfd89.jpg'),
(46, 'SHARP Kulkas 1 Pintu [133 L] SJ-N166F-FB', 'Sharp Kulkas 1 Pintu SJ-N166F merupakan kulkas dengan desain sederhana yang dapat Anda gunakan untuk menjaga kesegaran makanan saat disimpan di rumah. Desain kulkas ini dibuat dengan bentuk sederhana dengan satu pintu yang dilapisi ornamen dekorasi bunga yang cantik dan modern.', '- Cooling system: direct cooling\r\n- Refrigerant (Non CFC): HFC-134a\r\n- Defrosting: semi-automatic\r\n- Nett capacity: 109 liter (refrigerator), 19 liter (freezer)\r\n- Power source: 220-240 volt\r\n- Power consumption: 84 watt\r\n- Dimension: 53.5 x 97.7 x 54.5 cm\r\n- Weight: 24 kg', 'Sharp', 'Kulkas', '1,529,000,00', '5cd5c87351de9.jpg'),
(47, 'SANKEN Kulkas 1 Pintu [160 L] SK-V163A-SG', 'Sanken SK-V163A-SG, hadir dengan dinding HD tebal dan padat yang dilengkapi karet pintu berkualitas, sehingga menjadikan kulkas atau lemari es ini meraih skor rata-rata Running Ratio 36%. ', 'Kapasitas Pendinginan 9000 Btu/h |EER rated 11.25 Btu/hW |Daya 800 Watt / 220 Volt / 3.7 A |Sirkulasi udara 8.2m3 / menit |Tingkat kebisingan Indoor 35/29 dB-A, outdoor 48 dB A |Dimensi Indoor (HxWxD) : 290x799x197 mm |DImensi Outdoor (HxWxD) : 490x650x230 mm |Berat indoor : 8KG |Berat outdoor : 21 KG |', 'Sanken', 'Kulkas', '1,459,000,00', '5cd5c8cf7483c.jpg'),
(50, 'Mi Robot Vacuum Cleaner', 'Think Like a Human begitulah robot pintar ini disebut. Xiaomi Mi Robot ini merupakan robot pembersih debu yang menawarkan daya hisap yang lebih besar dan daya tahan baterai yang lebih lama. Dari segi harga pun jauh lebih hemat dari produk pesaing di kelas', 'jdaopjawjopawpdjwpo', 'Xiaomi', 'wadadd', '3.000.000,00', '5cd635d241e9b.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `camera`
--

CREATE TABLE `camera` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `speksifikasi` varchar(1000) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `harga` varchar(55) NOT NULL,
  `foto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `camera`
--

INSERT INTO `camera` (`id`, `nama`, `deskripsi`, `speksifikasi`, `brand`, `harga`, `foto`) VALUES
(1, 'FUJIFILM X-A3 Brown Kit XC 16-50mm Lens', 'FUJIFILM X-A3 memiliki desain retro yang menarik bagi generasi muda. ', '21-25MP |\r\nAPS-C Format |\r\n3 inchi |', 'Fujifilm', '6,299,000,00', 'c1.jpg'),
(2, 'CANON EOS M100 Black Kit 15-45mm', 'Canon memperkenalkan generasi mirrorless terbaru Canon EOS M100. Kamera ini memiliki fitur dan teknologi canggih dengan balutan desain yang trendi dan berkelas.', '21-25MP |APS-C Format |3 inchi |', 'Canon', '5,499,000', 'c2.jpg'),
(3, 'PANASONIC Lumix DMC-G7 kit 14-42mm f/3.5-5.6 II APSH', '\r\nPanasonic Lumix DMC-G7 silver adalah kamera mirrorless hybrid sejati yang memadukan video 4K UHD dengan kemampuan menangkap dan burst yang canggih.', '16 MP Live MOS Sensor |\r\n\r\nVenus Engine 9 Image Processor |\r\n\r\nMicro Four Thirds System |\r\n\r\n4K UHD Video Recording at 30/24 fps |\r\nBuilt-In Wi-Fi Connectivity |\r\n', 'Panasonic', '6,499,000,00', 'c3.jpg'),
(4, 'Nikon 1 J5 Kit 10-30mm', 'Nikon 1 J5 Kit 10-30mm merupakan kamera digital mirrorless yang ramping dan  dirancang untuk multimedia fotografer on the go. ', '20.8MP  BSI CMOS Sensor |\r\n\r\nEXPEED 5A Image Processor |\r\n\r\nUHD 2160p/15 and Full HD 1080p/60 Video |\r\n\r\nHybrid AF with 105 Phase-Detection Areas |\r\n\r\nUp to 60 fps Shooting, 20 fps with AF-C |\r\n\r\nISO 12800 and High ISO Noise Reduction |\r\n\r\nSports Mode and In-Camera Time Lapse |\r\n', 'Nikon', '4,888,000,00', 'c4.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `earphone`
--

CREATE TABLE `earphone` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `speksifikasi` varchar(1000) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `harga` varchar(55) NOT NULL,
  `foto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `earphone`
--

INSERT INTO `earphone` (`id`, `nama`, `deskripsi`, `speksifikasi`, `brand`, `harga`, `foto`) VALUES
(1, 'SONY MDR-ZX110AP Headphone', 'SONY MDR-ZX110AP mengombinasikan desain ergonomis dan inovasi teknologi audio baru untuk menunjang berbagai kebutuhan hiburan Anda.', 'Weight: 120 g |\r\n\r\nSensitivities (DB/MW): 98 dB/mW |\r\n\r\nCord length: 1.2 m |\r\n\r\nCord type: YShape |\r\n\r\nDriver unit: 30 mm dynamic  Dome type |\r\n\r\nFrequency response: 1222,000Hz |\r\n\r\nWearing style: Headband, Over-Ear |\r\n\r\nUnit of microphone: Electric Condenser Microphone |\r\n\r\nDirectional of in-line microphone: Omni direction  |\r\n\r\n', 'Sony', '189,000,00', 'headsony1.png'),
(2, 'JABRA Move Wireless Headphone', 'Jabra Move menghadirkan pengalaman terbaik mendengarkan musik secara nirkabel. Dirancang oleh berbagai ahli suara terkemuka membuat Jabra Move Wireless menjadi yang terbaik dikelasnya.', 'Operating Principle: Closed System |\r\nSound Output: Stereo |\r\nFrequency (Low): 20 Hz |\r\nFrequency (High): 20 kHz |\r\nInputs Supported: Bluetooth |\r\nSensitivity: Medium sensitivity range, no amp required |\r\nRecommended Music: Pop or Rock |\r\nTalk Time Up: 8 hours |\r\nStandby Time Up: 288 hours |', 'Jabra', '699.000,00', 'jabra1.png'),
(3, 'MARSHALL Major II Headphone', 'Marshall Major II merupakan headset yang didesain stylish serta dapat dilipat untuk memudahkan penyimpanan dan penggunaan yang lebih mudah. ', 'Sound Principle: 40 mm Handmade Drivers |\r\n\r\nFrequency Response: Yes |\r\n\r\nImpedance: 64O |\r\n\r\nSensitivity: 99dB |\r\n\r\nMax Input Power: Yes |\r\n\r\nConnection: 3,5mm plug |', 'Marshall', '799.000,00', 'marshal1.jpg'),
(4, 'HAVIT Headphone HV-H2218D', 'HAVIT Headphone HV-H2218D merupakan headphone canggih yang hadir dengan desain fleksibel yang dapat Anda lipat dengan mudah. Dengan desain yang dapat Anda lipat ini, Anda dapat membawa headphone ini saat berpergian tanpa takut headphone akan patah ataupun rusak. ', 'Speaker: 40 mm |\r\n\r\nSensitivity: 110dB &plusmn; 3dB | \r\n\r\nFrequency response: 20 Hz to 20KHZ | \r\n\r\nCord length: Approx 1.2 m &plusmn; 10% |\r\n\r\nPlug Type: 3.5 mm | \r\n\r\nEarphone size: 15 * 16.5 * 6.5 cm | ', 'Havit', '99.000,00', 'havit1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotlist`
--

CREATE TABLE `hotlist` (
  `id` int(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `speksifikasi` varchar(1000) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `kategori` varchar(75) NOT NULL,
  `harga` varchar(55) NOT NULL,
  `foto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hotlist`
--

INSERT INTO `hotlist` (`id`, `nama`, `deskripsi`, `speksifikasi`, `brand`, `kategori`, `harga`, `foto`) VALUES
(1, 'Redmi Note 7', 'Hp terbaru dari sub-brand Xiaomi  ini resmi masuk pasar Indonesia. dan redmi note 7 di banderol dengan harga  mulai dari Rp.1.999 juta dan hingga Rp.2.599 juta', 'SIM Hybrid Dual SIM (Nano-SIM, dual stand-by) |Size 6.3 inches, 97.4 cm2 (~81.4% screen-to-body ratio) |PLATFORM OS Android 9.0 (Pie); MIUI 10 |Chipset	Qualcomm SDM660 Snapdragon 660 (14 nm) |CPU Octa-core (4x2.2 GHz Kryo 260 &amp; 4x1.8 GHz Kryo 260) |GPU Adreno 512 |Internal 64 GB, 4 GB RAM | MAIN CAMERA Dual 48 MP,5 MP, |SELFIE CAMERA Single 13 MP, f/2.2, 1.25&amp;#30176; |BATTERY	Non-removable Li-Po 4000 mAh battery |', 'Xiaomi', 'Handphone', '2.625.900,00', 'redminote7.png'),
(2, 'Realme 3 Pro', 'Realme 3 Pro resmi meluncur di Indonesia yang mengunggulkan kinerjanya dengan dukungan spesifikasi baterai besar, harga mulai Rp3 juta.', '6.3-inch FHD+ display @2340 x 1080px |                                           \r\nCorning Gorilla Glass 5 |                                            \r\nQualcomm Snapdragon 710 10nm 2.2GHz AIE octa-core | \r\nAdreno 616 GPU | \r\n4GB/6GB RAM | \r\n16MP f/1.7 Sony IMX 519 + 5MP f/2.4 dual rear cameras | \r\n960fps Super Slow Motion | \r\n4K video recording | \r\nUltra HD, Nightscape, Speed Shot | \r\n25MP f/2.0 front camera | \r\nHyperboost 2.0 | \r\nSmart Power Amplifier | \r\nFingerprint scanner (rear-mounted) | \r\nFace Unlock | \r\nColorOS 6.0 (Android 9 Pie) | \r\n4,045mAh battery w/ 20W VOOC 3.0 flash charging technology | ', 'Realme ', 'Handphone', ' 3.799.000.00', 'realme3.png'),
(3, 'Audio Technica ATH-M40X Headphone ', 'Headphone monitor profesional Seri M ATH M40x disetel datar untuk pemantauan audio yang sangat akurat di rentang frekuensi yang diperluas. ', 'Closed-back dynamic |\r\n40 mm |\r\nNeodymium |\r\nVoice Coil CCAW (Copper-clad aluminum wire) |\r\n15 - 24,000 Hz |\r\n1,600 mW at 1 kHz |\r\n98 dB |\r\n35 ohms |\r\n240 g (8.5 oz), without cable and connector \r\nCable Includes two interchangeable cables |\r\ndetachable 1.2 m - 3.0 m (3.9'' - 9.8'') coiled cable and detachable 3.0 m (9.8'') straight cable ', 'Audio Technica', 'Headphone', '1.125.000,00', 'AT1.jpg'),
(4, 'Samsung LED TV Full HD 40K6300', 'Full HD yang tajam dan jelas mencapai 200 PQI dengan gambar hidup yang disampaikan melalui teknologi Wide Colour Enhancer. ', 'Package Size (WxHxD): 964 x 622 x 122 mm |\r\nSet Size with Stand (WxHxD): 901.1 x 620.1 x 179.0 mm |\r\nSet Size without Stand (WxHxD): 901.1 x 550.8 x 78.0 mm |\r\nSet Weight with Stand: 8.5 kg |\r\nSeries: 5 |\r\nResolution: 1,920 &times; 1,080', 'Samsung', 'TV', '4.189.000,00', 'samsungstv1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hp`
--

CREATE TABLE `hp` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `speksifikasi` varchar(1000) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `harga` varchar(55) NOT NULL,
  `foto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hp`
--

INSERT INTO `hp` (`id`, `nama`, `deskripsi`, `speksifikasi`, `brand`, `harga`, `foto`) VALUES
(1, 'Redmi Note 7', 'Hp terbaru dari sub-brand Xiaomi ini resmi masuk pasar Indonesia. dan redmi note 7 di banderol dengan harga mulai dari Rp.1.999 juta dan hingga Rp.2.599 juta', 'SIM Hybrid Dual SIM (Nano-SIM, dual stand-by) |Size 6.3 inches, 97.4 cm2 (~81.4% screen-to-body ratio) |PLATFORM OS Android 9.0 (Pie); MIUI 10 |ChipsetQualcomm SDM660 Snapdragon 660 (14 nm) |CPU Octa-core (4x2.2 GHz Kryo 260', 'Xiaomi', '.2.625.900,00', 'redminote7.png'),
(2, 'Realme 3 Pro', 'Realme 3 Pro resmi meluncur di Indonesia yang mengunggulkan kinerjanya dengan dukungan spesifikasi baterai besar, harga mulai Rp3 juta.', '6.3-inch FHD display @2340 x 1080px | Corning Gorilla Glass 5 | Qualcomm Snapdragon 710 10nm 2.2GHz AIE octa-core | Adreno 616 GPU | 4GB/6GB RAM | 16MP f/1.7 Sony IMX 519 5MP f/2.4 dual rear cameras | 960fps Super Slow Motion | 4K video recording | Ultra HD, Nightscape, Speed Shot | 25MP f/2.0 front camera | Hyperboost 2.0 | Smart Power Amplifier | Fingerprint scanner (rear-mounted) | Face Unlock | ColorOS 6.0 (Android 9 Pie) | 4,045mAh battery w/ 20W VOOC 3.0 flash charging technology |', 'Realme ', '3.799.000.00', 'realme3.png'),
(3, 'Samsung A30', ' Dengan layar FHD + sAMOLED yang dekat dengan bezel, Galaxy A30 mendesain ulang hiburan untuk memberi Anda lebih banyak dari apa yang Anda sukai', 'Ukuran layar: 6.4 inci, 1080 x 2340 pixels, 19.5:9 ratio, Super AMOLED Infinity-U capacitive touchscreen, 16M colors |\r\nMemori: RAM 4 GB, ROM 64 GB, MicroSD up to 512 GB |\r\nSistem operasi: Android 9.0 (Pie) |\r\nCPU: Exynos 7904 Octa (14 nm), Octa-core (2x1.8 GHz Cortex-A73 & 6x1.6 GHz Cortex-A53) |\r\nGPU: Mali-G71 MP2 |\r\nKamera: Dual 16 MP, f/1.7, PDAF. 5 MP, f/2.2, 12mm, (ultrawide), depan 16 MP, f/2.0 |\r\nSIM: Dual SIM (Nano-SIM) |\r\nBaterai: 4000 mAh |\r\nBerat: 165 gr3GHz. |', 'Samsung', '3.499.000,00', 'samsunghp1.jpg'),
(4, 'Huawei P30 Pro', 'Salah satu jualan Huawei dari flagship ini teknologi kameranya. Huawei P30 Pro menggunakan Leica Quad Camera System di bagian belakang, yaitu kamera utama dengan sensor beresolusi 40 MP, lensa sudut lebar 20 MP, lensa telefoto 8 MP, dan sensor berteknologi Time of Flight.', 'Dimensi: 158 x 73.4 x 8.4 mm |\r\nBerat: 192 g |\r\nLayar: 6,47 inch, resolusi 2,340 x 1,080 pixel, OLED |\r\nProsesor: Kirin 980 |\r\nSistem operasi: Android 9 Pie dengan Huawei Emotion UI 9 |\r\nStorage: 128 GB / 256 GB / 512 GB |\r\nRAM: 8 GB |\r\nKamera belakang: 40 MP 27mm f/1.6 aperture + 20 MP 16mm ultrawide sensor, f/2.2 + 8 MP 5x optical periscope prism f/3.4 + Huawei TOF (time-of-flight) | \r\nKamera depan: 32 MP f/2.0 |\r\nBaterai: 4200 mAh with fast charging 40W, Reverse Wireless Charging |\r\nFitur: Fingerprint under display, USB Type C, Dolby Atmos, Bluetooth 5.0, WiFi dan IP68 |', 'Huawei', '13.199.000,00', 'huawei1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(55) NOT NULL,
  `foto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`, `foto`) VALUES
(1, 'TV', 'tv1.png'),
(2, 'Handphone', 'ipx.png'),
(3, 'Earphone', 'AT2.jpg'),
(4, 'Speaker', 'mispeaker.png'),
(5, 'Camera', 'son.jpg'),
(6, 'AC', 'ac1.png'),
(7, 'Laptop', '6.jpg'),
(8, 'Kulkas', 'kul1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kulkas`
--

CREATE TABLE `kulkas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `speksifikasi` varchar(1000) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `harga` varchar(55) NOT NULL,
  `foto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laptop`
--

CREATE TABLE `laptop` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `speksifikasi` varchar(1000) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `harga` varchar(55) NOT NULL,
  `foto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `speaker`
--

CREATE TABLE `speaker` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `speksifikasi` varchar(1000) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `harga` varchar(55) NOT NULL,
  `foto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `speaker`
--

INSERT INTO `speaker` (`id`, `nama`, `deskripsi`, `speksifikasi`, `brand`, `harga`, `foto`) VALUES
(1, 'HARMAN KARDON Onyx Studio 4 Bluetooth Portable Speaker', 'Harman Kardon Onyx Studio 4 adalah sebuah speaker portabel dengan dukungan koneksi Bluetooth yang memiliki kemampuan untuk mengalirkan audio secara powerful dari sebuah desain ikonik produsen ini. ', 'Bluetooth version: 4.2 | \r\n\r\nSupport: A2DP 1.3, AVRCP 1.6, HFP 1.6 | \r\n\r\nTransducers: Woofer 2 x 75mm, Tweeter 2 x 20mm |\r\n\r\nRated Power: 4 x 15W (AC mode); 4 x 7.5W (Battery mode) | \r\n\r\nFrequency response: 50Hz - 20kHz (-6dB) | \r\n\r\nSignal to noise ratio: 80dB A-weighted • Power supply: 19V/2A | \r\n\r\nBattery type: 3.7V/3000mAh Lithium-ion | ', 'Harman Kardon', '1.950.000,00', 's1.png'),
(2, 'DOSS Touch Wireless Bluetooth V4.0 ', '\r\nDengan 20 tahun inovasi dan tim desain Worldwide dari Amerika Serikat, Kanada, dan Jerman, DOSS tetap kompetitif di industri audio sebagai profesional di seluruh dunia.', 'Broad Compatibility |\r\nMusic on the Go |\r\nCompact and Superior |\r\nSleek Design, Perfect Companion |\r\nSensitive Touch, Elegant Control |', 'Doss', '389,000,0', 's2.png'),
(3, 'Xiaomi Portable Bluetooth Speaker', 'Xiaomi Mi Portable Mini Bluetooth Speaker merupakan speaker praktis yang dibuat dengan ukuran mungil untuk mendukung portabilitas yang optimal. ', 'Bluetooth version: 4.0 |\r\n\r\nEffective distance: 5 m |\r\n\r\nRated power: 2 W |\r\n\r\nSNR: 53 dB |\r\n\r\nType of battery: Built-in rechargeable lithium battery | \r\n\r\nBattery life: 4 hours (60dBA / 1m, pink noise) |\r\n\r\nBody weight: 58 g |\r\n\r\nDimension: 52x52x25mm |', 'Xiaomi', '161,000,00', '5cd573e42711f.png'),
(4, 'Logitech Speaker X100 Orange', 'Logitech kini meluncurkan produk terbaru nya yaitu Logitech X100 Mobile Speaker, sebuah speaker wireless portabel yang menawarkan portabilitas tinggi dengan kualitas suara terbaik di kelasnya khusus bagi pengguna dengan gaya hidup aktif. ', 'Connectivity: Wireless Bluetooth, A2DP |\r\n\r\nOutput Audio: 3.5 mm |\r\n\r\nRange Wireless Bluetooth: 30 feet / 9 meter |\r\n\r\nBattery: Lithium-ion, up to 5 hours |', 'Logitech', '599,000,00', 's3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tv`
--

CREATE TABLE `tv` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `speksifikasi` varchar(1000) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `harga` varchar(55) NOT NULL,
  `foto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tv`
--

INSERT INTO `tv` (`id`, `nama`, `deskripsi`, `speksifikasi`, `brand`, `harga`, `foto`) VALUES
(1, 'Samsung LED TV Full HD 40K6300', 'Full HD yang tajam dan jelas mencapai 200 PQI dengan gambar hidup yang disampaikan melalui teknologi Wide Colour Enhancer.', 'Package Size (WxHxD): 964 x 622 x 122 mm |Set Size with Stand (WxHxD): 901.1 x 620.1 x 179.0 mm |Set Size without Stand (WxHxD): 901.1 x 550.8 x 78.0 mm |Set Weight with Stand: 8.5 kg |Series: 5 |Resolution: 1,920 × 1,080', 'Samsung', 'Rp.4.189.000,00', '1.png'),
(2, 'XIAOMI Smart Android LED TV 32" - Mi LED 4A', 'Xiaomi Mi LED 4A merupakan debut perdana smart TV LED berukuran 32 inch. Kali ini Xiaomi memamerkan televisi modern bergaya minimalis yang dirancang dengan bazel tipis.', 'LED |\r\n32 Inch |\r\nHD (1366 x 768) |\r\nSlot untuk 3 HDMI, 2 USB, dan koneksi Bluetooth & Wifi |\r\nGaransi	Garansi Xiaomi 1 Tahun |\r\nMi LED 4A [32 Inch] |', 'Xiaomi', '1.999.000,00', 'xiaomitv.jpg'),
(3, 'LG LED TV 49UJ632T 49 Inch UHD Smart TV', 'LG UHD Smart TV J632T mengusung tampilan layar Ultra High Definition dengan fitur digital pintar yang mampu mengakomodasi kebutuhan multimedia secara optimal. i.', 'LED |\r\n49 inch |\r\n3840x2160 |\r\n20 watt |\r\n2Ch |\r\n3x HDMI, 2x USB2.0, LAN, Composite In, RF In, WiFi 802.11 ac, Digital Audio Output (Optical), line out, headphone out |', 'LG', '9,729,000,00', 'lgtv.jpg'),
(4, 'SONY LED Smart TV 4K 55 Inch - KD-55X8500', 'SONYmempersembahkan produk terbarunya berupa Y LED Smart Android TV 4K 55 Inch \r\n\r\nUntuk yang terbaik dalam kualitas gambar, TV memadukan kecemerlangan 4K dengan kecerahan, warna, dan detail High Dynamic Range (HDR).', 'Layar 55 inci |\r\n\r\n3.840 x 2.160 (UHD) |\r\n\r\nSmart TV |\r\n\r\n4K High Dynamic Range |\r\n\r\n4K X-reality PRO |\r\n\r\nYoutube & Netflix |\r\n\r\nSmartphone Plug & Play |\r\n\r\nClearAudio+ |\r\n\r\nHDMI & USB |\r\n\r\nKonsumsi Daya150 |\r\n\r\nResolusi3.840 x 2.160 (UHD) |\r\n\r\nkelengkapan PaketTV, Remote TV, Buku Manual dll. |', 'Sony', '13,699,000,00', 'sonytv.jpg'),
(5, 'Sony Full HD Smart TV 40W650D', 'Nikmati kualitas gambar Full HD yang memukau, apa pun yang Anda tonton. Mesin pemrosesan unik Sony X-Reality PRO menganalisis, membersihkan, dan memperhalus gambar untuk memberikan tampilan dengan detail indah. ', 'Smart TV |\r\nPanel LED |\r\n1920 x 1080 pixels |\r\n40" |\r\nDigital |\r\nUSB |	\r\nHDMI |', 'Sony', '4,775,000,00', 'sonytv1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(25) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `created_at`) VALUES
(13, 'admin', '$2y$10$c8cj5JN.s7PnLm4flIcOPOIwsCrnpKlKropmb4I8Vg2AG1njd./ti', '1556952812'),
(15, 'sulthan', '$2y$10$sjbfGct6mCajPulDSCMZv.YHkyhAdWMVnvs4zKlHmBLmtv3BX60IS', '1557416608'),
(17, 'asep', '$2y$10$OXtxm3bzq0YMS6lNskPGd.8BxyKBz2u2uO7mgVTDhpzzy/3h9nXLO', '1557542663'),
(18, 'username', '$2y$10$gLEEvyBv4Rtp3S.kDjINa.9uOlRXTOfJyevgLm921ytS7w/jywX7C', '1600324758');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac`
--
ALTER TABLE `ac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`),
  ADD KEY `brand` (`brand`),
  ADD KEY `foto` (`foto`);

--
-- Indexes for table `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earphone`
--
ALTER TABLE `earphone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotlist`
--
ALTER TABLE `hotlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`),
  ADD KEY `foto` (`foto`),
  ADD KEY `brand` (`brand`),
  ADD KEY `deskripsi` (`deskripsi`),
  ADD KEY `harga` (`harga`),
  ADD KEY `speksifikasi` (`speksifikasi`(767));

--
-- Indexes for table `hp`
--
ALTER TABLE `hp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kulkas`
--
ALTER TABLE `kulkas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speaker`
--
ALTER TABLE `speaker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tv`
--
ALTER TABLE `tv`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`),
  ADD KEY `deskripsi` (`deskripsi`),
  ADD KEY `speksifikasi` (`speksifikasi`(767)),
  ADD KEY `brand` (`brand`),
  ADD KEY `harga` (`harga`),
  ADD KEY `foto` (`foto`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac`
--
ALTER TABLE `ac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `camera`
--
ALTER TABLE `camera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `earphone`
--
ALTER TABLE `earphone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hotlist`
--
ALTER TABLE `hotlist`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hp`
--
ALTER TABLE `hp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `kulkas`
--
ALTER TABLE `kulkas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laptop`
--
ALTER TABLE `laptop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speaker`
--
ALTER TABLE `speaker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tv`
--
ALTER TABLE `tv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
