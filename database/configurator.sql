-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 05 2021 г., 19:34
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `configurator`
--

-- --------------------------------------------------------

--
-- Структура таблицы `casse`
--

CREATE TABLE `casse` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format_id` tinyint(3) UNSIGNED NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'noPhoto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `casse`
--

INSERT INTO `casse` (`id`, `manufacturer`, `model`, `format_id`, `price`, `photo`) VALUES
(1, 'test', 'test', 1, '50.00', 'noPhoto');

-- --------------------------------------------------------

--
-- Структура таблицы `cpu`
--

CREATE TABLE `cpu` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequency` smallint(5) UNSIGNED NOT NULL,
  `socket_id` tinyint(3) UNSIGNED NOT NULL,
  `cores` tinyint(3) UNSIGNED NOT NULL,
  `threads` tinyint(3) UNSIGNED NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '/noPhoto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cpu`
--

INSERT INTO `cpu` (`id`, `manufacturer`, `model`, `frequency`, `socket_id`, `cores`, `threads`, `price`, `photo`) VALUES
(1, 'AMD', 'Ryzen 3 3300x', 4000, 1, 4, 8, '120.00', '/noPhoto'),
(2, 'Intel', 'Core i3 10100', 4200, 2, 4, 8, '130.00', '/noPhoto');

-- --------------------------------------------------------

--
-- Структура таблицы `format`
--

CREATE TABLE `format` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `format`
--

INSERT INTO `format` (`id`, `name`) VALUES
(1, 'atx');

-- --------------------------------------------------------

--
-- Структура таблицы `gpu`
--

CREATE TABLE `gpu` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_frequency` smallint(6) NOT NULL,
  `memory_frequency` smallint(5) UNSIGNED NOT NULL,
  `memory_type` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memory_capacity` tinyint(3) UNSIGNED NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'noPhoto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `keyboard`
--

CREATE TABLE `keyboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_russian_keys` tinyint(1) NOT NULL DEFAULT 1,
  `has_numpad` tinyint(1) NOT NULL DEFAULT 1,
  `connection_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'usb',
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'noPhoto',
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `monitor`
--

CREATE TABLE `monitor` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolution` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1920 x 1080p',
  `diagonal` int(11) NOT NULL DEFAULT 21,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'noPhoto',
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `motherboard`
--

CREATE TABLE `motherboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chipset` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ram_slots` tinyint(3) UNSIGNED NOT NULL,
  `max_frequency` smallint(5) UNSIGNED NOT NULL DEFAULT 2400,
  `ram_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socket_id` tinyint(3) UNSIGNED NOT NULL,
  `number_of_cpu` tinyint(3) UNSIGNED NOT NULL,
  `number_of_gpu` tinyint(3) UNSIGNED NOT NULL,
  `format_id` tinyint(3) UNSIGNED NOT NULL,
  `number_of_rom` tinyint(3) UNSIGNED NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `motherboard`
--

INSERT INTO `motherboard` (`id`, `manufacturer`, `model`, `chipset`, `ram_slots`, `max_frequency`, `ram_type`, `socket_id`, `number_of_cpu`, `number_of_gpu`, `format_id`, `number_of_rom`, `photo`, `price`) VALUES
(5, 'test', 'test', 'test', 4, 4000, 'ddr4', 2, 2, 3, 1, 2, 'test', '100.00');

-- --------------------------------------------------------

--
-- Структура таблицы `mouse`
--

CREATE TABLE `mouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpi` smallint(5) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'office',
  `model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'noPhoto',
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `psu`
--

CREATE TABLE `psu` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `power` smallint(5) UNSIGNED NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'noPhoto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ram`
--

CREATE TABLE `ram` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequency` smallint(5) UNSIGNED NOT NULL DEFAULT 2400,
  `memory_capacity` tinyint(3) UNSIGNED NOT NULL,
  `memory_type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(5,2) NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '/noPhoto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rom`
--

CREATE TABLE `rom` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_speed` smallint(5) UNSIGNED NOT NULL,
  `write_speed` smallint(5) UNSIGNED NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'noPhoto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `socket`
--

CREATE TABLE `socket` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `socket`
--

INSERT INTO `socket` (`id`, `name`) VALUES
(1, 'AM4'),
(2, '1151');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `casse`
--
ALTER TABLE `casse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case___format` (`format_id`);

--
-- Индексы таблицы `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cpu___socket` (`socket_id`);

--
-- Индексы таблицы `format`
--
ALTER TABLE `format`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gpu`
--
ALTER TABLE `gpu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `keyboard`
--
ALTER TABLE `keyboard`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `motherboard`
--
ALTER TABLE `motherboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `motherboard___socket` (`socket_id`),
  ADD KEY `motherboard___format` (`format_id`);

--
-- Индексы таблицы `mouse`
--
ALTER TABLE `mouse`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `psu`
--
ALTER TABLE `psu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rom`
--
ALTER TABLE `rom`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `socket`
--
ALTER TABLE `socket`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `casse`
--
ALTER TABLE `casse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cpu`
--
ALTER TABLE `cpu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `format`
--
ALTER TABLE `format`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `gpu`
--
ALTER TABLE `gpu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `keyboard`
--
ALTER TABLE `keyboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `monitor`
--
ALTER TABLE `monitor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `motherboard`
--
ALTER TABLE `motherboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `mouse`
--
ALTER TABLE `mouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `psu`
--
ALTER TABLE `psu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ram`
--
ALTER TABLE `ram`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `rom`
--
ALTER TABLE `rom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `socket`
--
ALTER TABLE `socket`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `casse`
--
ALTER TABLE `casse`
  ADD CONSTRAINT `case___format` FOREIGN KEY (`format_id`) REFERENCES `format` (`id`);

--
-- Ограничения внешнего ключа таблицы `cpu`
--
ALTER TABLE `cpu`
  ADD CONSTRAINT `cpu___socket` FOREIGN KEY (`socket_id`) REFERENCES `socket` (`id`);

--
-- Ограничения внешнего ключа таблицы `motherboard`
--
ALTER TABLE `motherboard`
  ADD CONSTRAINT `motherboard___format` FOREIGN KEY (`format_id`) REFERENCES `format` (`id`),
  ADD CONSTRAINT `motherboard___socket` FOREIGN KEY (`socket_id`) REFERENCES `socket` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
