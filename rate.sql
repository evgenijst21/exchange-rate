-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 30 2021 г., 15:18
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rate`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data`
--

CREATE TABLE `data` (
  `id` bigint UNSIGNED NOT NULL,
  `currency_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `char_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_code` int NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data`
--

INSERT INTO `data` (`id`, `currency_id`, `name`, `english_name`, `char_code`, `num_code`, `value`) VALUES
(1, 'R01060', 'Армянских драмов', 'Armenian drams', 'AMD', 51, '14,8053'),
(2, 'R01010', 'Австралийский доллар', 'Australian dollar', 'AUD', 36, '52,7807'),
(3, 'R01020A', 'Азербайджанский манат', 'Azerbaijani manat', 'AZN', 944, '42,8257'),
(4, 'R01100', 'Болгарский лев', 'Bulgarian lev', 'BGN', 975, '43,3978'),
(5, 'R01115', 'Бразильский реал', 'Brazilian real', 'BRL', 986, '13,4018'),
(6, 'R01090B', 'Белорусский рубль', 'Belarusian ruble', 'BYN', 933, '29,0485'),
(7, 'R01350', 'Канадский доллар', 'Canadian dollar', 'CAD', 124, '57,3462'),
(8, 'R01775', 'Швейцарский франк', 'Swiss frank', 'CHF', 756, '78,3216'),
(9, 'R01375', 'Китайский юань', 'CNY', 'CNY', 156, '11,2494'),
(10, 'R01760', 'Чешских крон', 'Czech crowns', 'CZK', 203, '33,3398'),
(11, 'R01215', 'Датская крона', 'Danish krone', 'DKK', 208, '11,4152'),
(12, 'R01239', 'Евро', 'Euro', 'EUR', 978, '84,8755'),
(13, 'R01035', 'Фунт стерлингов Соединенного королевства', 'British pound sterling', 'GBP', 826, '98,3726'),
(14, 'R01200', 'Гонконгских долларов', 'Hong Kong dollars', 'HKD', 344, '93,4820'),
(15, 'R01135', 'Венгерских форинтов', 'Hungarian forints', 'HUF', 348, '23,6171'),
(16, 'R01270', 'Индийских рупий', 'Indian rupees', 'INR', 356, '98,0617'),
(17, 'R01820', 'Японских иен', 'Japanese yen', 'JPY', 392, '65,4177'),
(18, 'R01370', 'Киргизских сомов', 'Kyrgyz soms', 'KGS', 417, '85,7753'),
(19, 'R01815', 'Вон Республики Корея', 'Won Republic of Korea', 'KRW', 410, '61,4446'),
(20, 'R01335', 'Казахстанских тенге', 'Kazakhstani tenge', 'KZT', 398, '17,0920'),
(21, 'R01500', 'Молдавских леев', 'Moldovan lei', 'MDL', 498, '41,2242'),
(22, 'R01535', 'Норвежских крон', 'Norwegian kroner', 'NOK', 578, '83,8509'),
(23, 'R01565', 'Польский злотый', 'Polish zloty', 'PLN', 985, '18,3498'),
(24, 'R01585F', 'Румынский лей', 'Romanian leu', 'RON', 946, '17,1496'),
(25, 'R01770', 'Шведских крон', 'Swedish crowns', 'SEK', 752, '83,2332'),
(26, 'R01625', 'Сингапурский доллар', 'Singapore dollar', 'SGD', 702, '53,5952'),
(27, 'R01670', 'Таджикских сомони', 'Tajik somoni', 'TJS', 972, '64,1913'),
(28, 'R01710A', 'Новый туркменский манат', 'New Turkmen manat', 'TMT', 934, '20,8185'),
(29, 'R01700J', 'Турецких лир', 'Turkish lira', 'TRY', 949, '82,1766'),
(30, 'R01720', 'Украинских гривен', 'Ukrainian hryvnia', 'UAH', 980, '27,3823'),
(31, 'R01235', 'Доллар США', 'U.S. dollar', 'USD', 840, '72,7608'),
(32, 'R01717', 'Узбекских сумов', 'Uzbek soums', 'UZS', 860, '68,1561'),
(33, 'R01589', 'СДР (специальные права заимствования)', 'SDR (Special Drawing Rights)', 'XDR', 960, '102,9813'),
(34, 'R01810', 'Южноафриканских рэндов', 'South African rand', 'ZAR', 710, '48,4030');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2021_09_28_150513_create_data_table', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data`
--
ALTER TABLE `data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
