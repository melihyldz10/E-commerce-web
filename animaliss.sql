-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 May 2021, 22:38:10
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `animaliss`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `EmailAdresi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `AdSoyad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `TelefonNumarasi` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `Gorsel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yetki` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `admin_vasif` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `admin_hakkinda` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `goster` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `EmailAdresi`, `sifre`, `AdSoyad`, `TelefonNumarasi`, `Gorsel`, `yetki`, `admin_vasif`, `admin_hakkinda`, `goster`) VALUES
(1, 'Melihyldz8@gmail.com', '0d4f4805c36dc6853edfa4c7e1638b48', 'Melih Gazi Yıldız', '05346867583', 'img/melihyldz.png', 'Yönetici', 'Developer/seo', 'Melih gazi Yıldız Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae aut minima nihil sit distinctio recusandae doloribus ut fugit officia voluptate soluta.', 1),
(24, 'osmankoyuncu396@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Osman Koyuncu', '5438476353', 'img/karakalem.jpg', 'Yonetici', 'Vasıfsız', 'Kendi Çapında Takılıyor', 1),
(33, 'deneme@gmail.com', '8f10d078b2799206cfe914b32cc6a5e9', 'deneme', '5346542', 'img/attachment_78850031d.png', 'Yetki', 'df', 'dsfdsf', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adresler`
--

CREATE TABLE `adresler` (
  `id` int(30) UNSIGNED NOT NULL,
  `K_id` int(50) NOT NULL,
  `ad_soyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `Ilce` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `Sehir` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `TelefonNumarasi` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `adresler`
--

INSERT INTO `adresler` (`id`, `K_id`, `ad_soyad`, `Adres`, `Ilce`, `Sehir`, `TelefonNumarasi`) VALUES
(8, 27, 'Osman Koyuncu', 'Cerrahpaşa Mah.', 'Fatih', 'İstanbul', '5438476353');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `SiteAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `SiteTitle` varchar(60) COLLATE utf8_turkish_ci NOT NULL,
  `SiteDescription` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `SiteKeywords` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `SiteCopyrightMetni` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `SiteLogo` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `Favicon` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `SiteEmailAdresi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `SiteEmailSifresi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `SiteAdres` text COLLATE utf8_turkish_ci NOT NULL,
  `SiteTelefon` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `SiteReklam` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `SiteMisyon` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `MisyonGorsel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `MisyonBaslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `MisyonAciklama` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `SiteAdi`, `SiteTitle`, `SiteDescription`, `SiteKeywords`, `SiteCopyrightMetni`, `SiteLogo`, `Favicon`, `SiteEmailAdresi`, `SiteEmailSifresi`, `SiteAdres`, `SiteTelefon`, `SiteReklam`, `SiteMisyon`, `MisyonGorsel`, `MisyonBaslik`, `MisyonAciklama`) VALUES
(1, 'Animalis', 'Animalis', 'Kedi, köpek ve diğer evcil hayvanlarınız için en sağlıklı ve en uygun fiyatlarla ürünlerimize sahip olabilirsiniz. bunun yanında sokak hayvanlarına da', 'Köpek,kedi,hayvan,Mama', 'Copyright © 2021. Tüm Hakları Saklıdır.', 'img/logo.png', 'img/favicon.png', 'Deneme@gmail.com', 'deneme', 'Cihangir, Petrol Ofisi Cd. No: 7, 34310 Avcılar/İstanbul', '(534)-0151-1004', 'img/reklam.png', 'deneme', '', 'denemeBaslık', 'denemeAÇıklama');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `encoksatanurun`
--

CREATE TABLE `encoksatanurun` (
  `Urun_ID` int(11) NOT NULL,
  `Satis_Miktari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gecmissiparis`
--

CREATE TABLE `gecmissiparis` (
  `id` int(11) NOT NULL,
  `Kullanici_ID` int(11) NOT NULL,
  `Urun_ID` int(11) NOT NULL,
  `Alim_Adet` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gecmissiparis`
--

INSERT INTO `gecmissiparis` (`id`, `Kullanici_ID`, `Urun_ID`, `Alim_Adet`) VALUES
(1, 27, 6, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `misyonvisyon`
--

CREATE TABLE `misyonvisyon` (
  `id` int(11) NOT NULL,
  `MisyonBaslik` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `MisyonAciklama` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `MisyonGorsel` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `misyonvisyon`
--

INSERT INTO `misyonvisyon` (`id`, `MisyonBaslik`, `MisyonAciklama`, `MisyonGorsel`) VALUES
(15, 'Yaratıcılık', 'Yaratıcılığın ancak çocukların oyunda söz hakkı olduğunda ortaya çıkabileceğine inanıyoruz. Bu nedenle Toyi olarak tüm oyun süreçlerimizde çocuğu odağa alan serbest ve yapılandırılmamış oyun deneyimlerini destekliyoruz.', 'img/creativity-3.png'),
(23, 'Oyun Yoluyla Öğrenme', 'Biz, yetişkinlerin değil çocukların oyunun uzmanları olduğuna inanıyoruz. Çocuklar oyunu nasıl oynayacaklarını zaten biliyor. Toyi olarak çocukların bu yüzyılda ihtiyaç duydukları yaşam boyu becerilerini geliştirmelerine yardımcı oluyoruz.', 'img/play.png'),
(24, 'Oyuna Erişim', 'Oyunun tüm çocukların hakkı olduğunu biliyoruz bu nedenle tüm çocukların oyun hakkını destekleyecek mekanizmalar geliştirmeye çalışıyoruz.', 'img/accesibility-2.png');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `populerurunbilgileri`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `populerurunbilgileri` (
`Urun_Ad` varchar(100)
,`Urun_Resim` varchar(200)
,`Urun_Fiyat` int(11)
,`Satis_Miktari` int(11)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `satis`
--

CREATE TABLE `satis` (
  `Satis_ID` int(11) NOT NULL,
  `Urun_ID` int(11) NOT NULL,
  `Kullanici_ID` int(11) NOT NULL,
  `adet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `satis`
--

INSERT INTO `satis` (`Satis_ID`, `Urun_ID`, `Kullanici_ID`, `adet`) VALUES
(1, 6, 27, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `Sepet_ID` int(11) NOT NULL,
  `Kullanici_ID` int(11) NOT NULL,
  `Urun_ID` int(11) NOT NULL,
  `Alim_Adet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`Sepet_ID`, `Kullanici_ID`, `Urun_ID`, `Alim_Adet`) VALUES
(31, 27, 6, 1),
(33, 27, 8, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sozlesmevemetin`
--

CREATE TABLE `sozlesmevemetin` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `HakkimizdaMetni` text NOT NULL,
  `HakkimizdaMetniFooter` text NOT NULL,
  `HakkimizdaMetniGorsel` varchar(30) NOT NULL,
  `jumbotronBaslik` text NOT NULL,
  `jumbotronMetin` text NOT NULL,
  `UyelikSozlesmesiMetni` text NOT NULL,
  `KullanimKosullariMetni` text NOT NULL,
  `GizlilikSozlesmesiMetni` text NOT NULL,
  `MesafeliSatisSozlesmesiMetni` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sozlesmevemetin`
--

INSERT INTO `sozlesmevemetin` (`id`, `HakkimizdaMetni`, `HakkimizdaMetniFooter`, `HakkimizdaMetniGorsel`, `jumbotronBaslik`, `jumbotronMetin`, `UyelikSozlesmesiMetni`, `KullanimKosullariMetni`, `GizlilikSozlesmesiMetni`, `MesafeliSatisSozlesmesiMetni`) VALUES
(1, 'Sitemizin kuruluş amacı hayvanların barınma, beslenme ve bakım ihtiyaçlarını karşılamak içindir. Bunu başarabilmek için açtığımız site hem evinizdeki hemde dışarıdaki hayvanların sevinç kaynağı olacaktır. Siz evcil hayvanınıza ürün alıp onu mutlu ederken bizde, sizin bize kattığınız destekle sokak hayvanlarını mutlu edeceğiz.', 'Sitemizin kuruluş amacı hayvanların barınma, beslenme ve bakım ihtiyaçlarını karşılamak içindir.', 'img/Hakkimizdaİmage.png', 'YENİ SİTEMİZE HOŞGELDİNİZ', 'Dünya ve Türkiye de artık vazgeçilmez olmuş en iyi Hayvan ürünleriniz sitemizde bulabilir ve bu şekilde Sokak hayvanlarına bir yardım eli uzatmış olabilirsiniz.', 'Üyelik Sözleşme Metnidir.Üyelik Sözleşme Metnidir.Üyelik Sözleşme Metnidir.Üyelik Sözleşme Metnidir.Üyelik Sözleşme Metnidir.Üyelik Sözleşme Metnidir.Üyelik Sözleşme Metnidir.Üyelik Sözleşme Metnidir.Üyelik Sözleşme Metnidir.Üyelik Sözleşme Metnidir.Üyelik Sözleşme Metnidir.Üyelik Sözleşme Metnidir.', 'kullanım Kosulları Metni.kullanım Kosulları Metni.kullanım Kosulları Metni.kullanım Kosulları Metni.kullanım Kosulları Metni.kullanım Kosulları Metni.kullanım Kosulları Metni.kullanım Kosulları Metni.kullanım Kosulları Metni.kullanım Kosulları Metni.kullanım Kosulları Metni.', 'Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.Gizlilik Sozlesme Metni.', 'Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.Mesafeli satis sozlesmesi metni.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sponsor`
--

CREATE TABLE `sponsor` (
  `S_id` int(30) UNSIGNED NOT NULL,
  `EmailAdresi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `FirmaAd` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Sifre` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `TelefonNumarasi` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `iban` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kayitTarih` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sponsor`
--

INSERT INTO `sponsor` (`S_id`, `EmailAdresi`, `FirmaAd`, `Sifre`, `TelefonNumarasi`, `iban`, `kayitTarih`) VALUES
(12, 'melihyldz8@gmail.com', 'taps istanbul', '41f1e2e6fe348987c5a203648ff508c2', '05346867583', '7895469', '1619043402'),
(15, 'osmankoyuncu396@gmail.com', 'Example', '202cb962ac59075b964b07152d234b70', ' ', ' ', '1620990277'),
(27, 'test@gmail.com', 'dasda', '81dc9bdb52d04dc20036dbd8313ed055', ' ', ' ', '1621168379');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sponsoronay`
--

CREATE TABLE `sponsoronay` (
  `onay_id` int(11) NOT NULL,
  `EmailAdresi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `FirmaAd` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Sifre` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kayitTarih` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `Urun_ID` int(11) NOT NULL,
  `Sponsor_ID` int(11) NOT NULL,
  `Urun_Ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `Urun_Fiyat` int(11) NOT NULL,
  `Urun_Kategori` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Urun_Tur` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Urun_Miktar` int(11) NOT NULL,
  `Urun_Resim` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `Urun_Aciklama` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`Urun_ID`, `Sponsor_ID`, `Urun_Ad`, `Urun_Fiyat`, `Urun_Kategori`, `Urun_Tur`, `Urun_Miktar`, `Urun_Resim`, `Urun_Aciklama`) VALUES
(6, 12, 'Deneme ', 150, 'Kopek', 'Beslenme', 200, 'karakalem.jpg', 'dsdfs'),
(8, 15, 'Deneme 2', 150, 'Kedi', 'Beslenme', 100, 'karakalem.jpg', 'assasda');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `K_id` int(10) UNSIGNED NOT NULL,
  `KullaniciAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `EmailAdresi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Sifre` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `Ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Soyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `TelefonNumarasi` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `kayitTarih` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`K_id`, `KullaniciAdi`, `EmailAdresi`, `Sifre`, `Ad`, `Soyad`, `TelefonNumarasi`, `kayitTarih`) VALUES
(12, 'melihyldz', 'melihyldz8@gmail.com', '41f1e2e6fe348987c5a203648ff508c2', 'Melih Gazi', 'Yıldız', '5346867583', '1619040948'),
(27, 'osman', 'osmankoyuncu396@gmail.com', '202cb962ac59075b964b07152d234b70', ' Osman', ' Koyuncu', '5438476353 ', '1620989594');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `uye_sepeti`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `uye_sepeti` (
`Urun_ID` int(11)
,`Urun_Resim` varchar(200)
,`Urun_Ad` varchar(100)
,`Urun_Fiyat` int(11)
,`Alim_Adet` int(11)
,`K_id` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Görünüm yapısı `populerurunbilgileri`
--
DROP TABLE IF EXISTS `populerurunbilgileri`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `populerurunbilgileri`  AS  select `urunler`.`Urun_Ad` AS `Urun_Ad`,`urunler`.`Urun_Resim` AS `Urun_Resim`,`urunler`.`Urun_Fiyat` AS `Urun_Fiyat`,`encoksatanurun`.`Satis_Miktari` AS `Satis_Miktari` from (`urunler` join `encoksatanurun` on(`urunler`.`Urun_ID` = `encoksatanurun`.`Urun_ID`)) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `uye_sepeti`
--
DROP TABLE IF EXISTS `uye_sepeti`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `uye_sepeti`  AS  select `urunler`.`Urun_ID` AS `Urun_ID`,`urunler`.`Urun_Resim` AS `Urun_Resim`,`urunler`.`Urun_Ad` AS `Urun_Ad`,`urunler`.`Urun_Fiyat` AS `Urun_Fiyat`,`sepet`.`Alim_Adet` AS `Alim_Adet`,`uyeler`.`K_id` AS `K_id` from ((`urunler` join `sepet` on(`urunler`.`Urun_ID` = `sepet`.`Urun_ID`)) join `uyeler` on(`uyeler`.`K_id` = `sepet`.`Kullanici_ID`)) ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `adresler`
--
ALTER TABLE `adresler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `encoksatanurun`
--
ALTER TABLE `encoksatanurun`
  ADD KEY `Urun_ID` (`Urun_ID`);

--
-- Tablo için indeksler `gecmissiparis`
--
ALTER TABLE `gecmissiparis`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `misyonvisyon`
--
ALTER TABLE `misyonvisyon`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `satis`
--
ALTER TABLE `satis`
  ADD PRIMARY KEY (`Satis_ID`),
  ADD KEY `Urun_ID` (`Urun_ID`),
  ADD KEY `Kullanici_ID` (`Kullanici_ID`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`Sepet_ID`),
  ADD KEY `Urun_ID` (`Urun_ID`),
  ADD KEY `Kullanici_ID` (`Kullanici_ID`);

--
-- Tablo için indeksler `sozlesmevemetin`
--
ALTER TABLE `sozlesmevemetin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`S_id`);

--
-- Tablo için indeksler `sponsoronay`
--
ALTER TABLE `sponsoronay`
  ADD PRIMARY KEY (`onay_id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`Urun_ID`),
  ADD KEY `Sponsor_ID` (`Sponsor_ID`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`K_id`),
  ADD UNIQUE KEY `KullaniciAdi` (`KullaniciAdi`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `adresler`
--
ALTER TABLE `adresler`
  MODIFY `id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `gecmissiparis`
--
ALTER TABLE `gecmissiparis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `misyonvisyon`
--
ALTER TABLE `misyonvisyon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `satis`
--
ALTER TABLE `satis`
  MODIFY `Satis_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `Sepet_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `sozlesmevemetin`
--
ALTER TABLE `sozlesmevemetin`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `S_id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `sponsoronay`
--
ALTER TABLE `sponsoronay`
  MODIFY `onay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `Urun_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `K_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `encoksatanurun`
--
ALTER TABLE `encoksatanurun`
  ADD CONSTRAINT `encoksatanurun_ibfk_1` FOREIGN KEY (`Urun_ID`) REFERENCES `urunler` (`Urun_ID`);

--
-- Tablo kısıtlamaları `sepet`
--
ALTER TABLE `sepet`
  ADD CONSTRAINT `sepet_ibfk_2` FOREIGN KEY (`Urun_ID`) REFERENCES `urunler` (`Urun_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
