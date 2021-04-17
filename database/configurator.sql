-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 17 2021 г., 22:30
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

-- --------------------------------------------------------

--
-- Структура таблицы `config`
--

CREATE TABLE `config` (
  `id` int(10) UNSIGNED NOT NULL,
  `case_id` int(10) UNSIGNED DEFAULT NULL,
  `keyboard_id` int(10) UNSIGNED DEFAULT NULL,
  `monitor_id` int(10) UNSIGNED DEFAULT NULL,
  `motherboard_id` int(10) UNSIGNED DEFAULT NULL,
  `mouse_id` int(10) UNSIGNED DEFAULT NULL,
  `psu_id` int(10) UNSIGNED DEFAULT NULL,
  `total_price` int(10) UNSIGNED,
  `discount_price` int(10) UNSIGNED DEFAULT NULL,
  `discount_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Структура таблицы `cpu_config`
--

CREATE TABLE `cpu_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `cpu_id` int(10) UNSIGNED DEFAULT NULL,
  `config_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `discount`
--

CREATE TABLE `discount` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('percent','units') COLLATE utf8mb4_unicode_ci DEFAULT 'percent',
  `value` decimal(10,2) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `format`
--

CREATE TABLE `format` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Структура таблицы `gpu_config`
--

CREATE TABLE `gpu_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `gpu_id` int(10) UNSIGNED DEFAULT NULL,
  `config_id` int(10) UNSIGNED DEFAULT NULL
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
-- Структура таблицы `ram_config`
--

CREATE TABLE `ram_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `ram_id` int(10) UNSIGNED DEFAULT NULL,
  `config_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rules` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `rules`) VALUES
(1, 'admin', '{}'),
(2, 'user', NULL);

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
-- Структура таблицы `rom_config`
--

CREATE TABLE `rom_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `rom_id` int(10) UNSIGNED DEFAULT NULL,
  `config_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `socket`
--

CREATE TABLE `socket` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  `token` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role_id`, `token_expires`, `token`) VALUES
(7, 'Alex', '$2b$10$uG3nVZOUkmZ9S40O/BnmfuO/90XEMTLRKjkgxvX6bRxSKc2BKVzyy', 2, '2021-04-17 03:54:59', '$2b$04$K2vgmUlf.jLkwErVgE0j1O'),
(10, 'test', '$2b$10$1J.LtEPqAc8386/3kvvoEOu7KMpgNMvAH7FW0ZozSVDfYBMc14L66', 2, '2021-04-17 21:00:30', '$2b$04$9h.zQ1H5slygTvIAYAxjYu');

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
-- Индексы таблицы `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_discount_id_fk` (`discount_id`),
  ADD KEY `config_user_id_fk` (`user_id`);

--
-- Индексы таблицы `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cpu___socket` (`socket_id`);

--
-- Индексы таблицы `cpu_config`
--
ALTER TABLE `cpu_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cpu_config_config_id_fk` (`config_id`);

--
-- Индексы таблицы `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `gpu_config`
--
ALTER TABLE `gpu_config`
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
-- Индексы таблицы `ram_config`
--
ALTER TABLE `ram_config`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rom`
--
ALTER TABLE `rom`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rom_config`
--
ALTER TABLE `rom_config`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `socket`
--
ALTER TABLE `socket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_username_uindex` (`username`),
  ADD KEY `user_roles_id_fk` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `casse`
--
ALTER TABLE `casse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `config`
--
ALTER TABLE `config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cpu`
--
ALTER TABLE `cpu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `cpu_config`
--
ALTER TABLE `cpu_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT для таблицы `gpu_config`
--
ALTER TABLE `gpu_config`
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
-- AUTO_INCREMENT для таблицы `ram_config`
--
ALTER TABLE `ram_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `rom`
--
ALTER TABLE `rom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `rom_config`
--
ALTER TABLE `rom_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `socket`
--
ALTER TABLE `socket`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `casse`
--
ALTER TABLE `casse`
  ADD CONSTRAINT `case___format` FOREIGN KEY (`format_id`) REFERENCES `format` (`id`);

--
-- Ограничения внешнего ключа таблицы `config`
--
ALTER TABLE `config`
  ADD CONSTRAINT `config_discount_id_fk` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`),
  ADD CONSTRAINT `config_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `cpu`
--
ALTER TABLE `cpu`
  ADD CONSTRAINT `cpu___socket` FOREIGN KEY (`socket_id`) REFERENCES `socket` (`id`);

--
-- Ограничения внешнего ключа таблицы `cpu_config`
--
ALTER TABLE `cpu_config`
  ADD CONSTRAINT `cpu_config_config_id_fk` FOREIGN KEY (`config_id`) REFERENCES `config` (`id`);

--
-- Ограничения внешнего ключа таблицы `motherboard`
--
ALTER TABLE `motherboard`
  ADD CONSTRAINT `motherboard___format` FOREIGN KEY (`format_id`) REFERENCES `format` (`id`),
  ADD CONSTRAINT `motherboard___socket` FOREIGN KEY (`socket_id`) REFERENCES `socket` (`id`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `user_roles_id_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
