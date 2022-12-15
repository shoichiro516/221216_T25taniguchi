-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2022 年 12 月 15 日 11:23
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_shoshi_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `bookname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `bookurl` text COLLATE utf8_unicode_ci NOT NULL,
  `bookcom` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `bookname`, `bookurl`, `bookcom`, `date`) VALUES
(1, 'あ', '1234', 'fghjkl', '2022-12-10 18:48:38'),
(2, '経済発展の理論', 'https://www.amazon.co.jp/s?k=%E7%B5%8C%E6%B8%88%E7%99%BA%E5%B1%95%E3%81%AE%E7%90%86%E8%AB%96&adgrpid=50083891101&gclid=CjwKCAiA-dCcBhBQEiwAeWidtTgLJC2Yq4u2GZ-Wr1borj0JFmo9Cm-Pyh6sa2kzqqOBUOcA2EoeaRoCMoYQAvD_BwE&hvadid=618701177231&hvdev=c&hvlocphy=1009308&hvnetw=g&hvqmt=e&hvrand=14100861756963056141&hvtargid=kwd-332463678626&hydadcr=21803_13404584&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_1sq5qosta6_e', '本書が発刊されて約100年が経過するが、著者シュムペーターが提起したイノベーション理論を上回る経営理論は未だ見出されていない。特に、彼が提起したイノベーターの三つの動機は、その後の経営理論に大きな影響を及ぼしている。', '2022-12-10 18:56:10'),
(3, '磯野家の', '', '', '2022-12-15 18:44:46'),
(4, 'SLAM DUNKのひみつ', 'http://www.amazon.com/asdfghjkl;:]zxcvbnm,./_qwertyuiop@[1234567890-^¥', '今年映画化されたSLUM DUNKの隠されたエピソードを初披露。桜木花道の父親と名将、田岡茂一は同じ高校の同級生だった…。', '2022-12-15 18:47:12'),
(5, '大人の科学', 'http://gakken.co.jp/otona', '懐かしの『○年の科学』が大人向けに復刊！', '2022-12-15 19:06:45'),
(6, 'ジーズの秘密', 'http://gsac.com/rtyuiofghjkvbnm', 'ジーズアカデミー誕生秘話が今、明かされる、、、', '2022-12-15 19:16:57');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
