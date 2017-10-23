-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Вер 12 2017 р., 04:28
-- Версія сервера: 5.7.16
-- Версія PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `yii2shop`
--

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `keywords` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 0, 'Одежда для женщин', NULL, NULL),
(2, 0, 'Одежда для мужчин', NULL, NULL),
(3, 0, 'Всё для детей', NULL, NULL),
(4, 0, 'Телефоны и аксессуары', NULL, NULL),
(5, 0, 'Компьютерная техника', NULL, NULL),
(6, 0, 'Автотовары', NULL, NULL),
(7, 0, 'Бижутерия и часы', NULL, NULL),
(8, 0, 'Сумки и обувь', NULL, NULL),
(9, 0, 'Для дома и сада', NULL, NULL),
(10, 0, 'Электроника', NULL, NULL),
(11, 0, 'Красота и здоровье', NULL, NULL),
(12, 0, 'Спорт и развлечения', NULL, NULL),
(13, 0, 'Техника и инструменты', NULL, NULL),
(14, 1, 'Популярные категории', NULL, NULL),
(15, 1, 'Куртки и пальто', NULL, NULL),
(16, 1, 'Низ', NULL, NULL),
(17, 1, 'Нижнее бельё', NULL, NULL),
(22, 2, 'Верх', NULL, NULL),
(23, 2, 'Одежда и аксессуары', NULL, NULL),
(24, 2, 'Низ', NULL, NULL),
(25, 2, 'Аксессуары', NULL, NULL),
(26, 3, 'Детские товары', NULL, NULL),
(27, 3, 'Одежда для девочек', NULL, NULL),
(28, 3, 'Игрушки и хобби', NULL, NULL),
(29, 3, 'Обувь и сумки', NULL, NULL),
(30, 3, 'Одежда для мальчиков', NULL, NULL),
(31, 4, 'Мобильные телефоны', NULL, NULL),
(32, 4, 'Сумки и чехлы', NULL, NULL),
(33, 4, 'Запчасти', NULL, NULL),
(34, 4, 'Аксессуары для телефонов', NULL, NULL),
(35, 5, 'Планшеты и аксессуары', NULL, NULL),
(36, 5, 'Безопасность и защита', NULL, NULL),
(37, 5, 'Ноутбуки', NULL, NULL),
(38, 5, 'Устройства хранения', NULL, NULL),
(39, 5, 'Офисная электроника', NULL, NULL),
(40, 5, 'Сеть', NULL, NULL),
(41, 6, 'Электроника для авто', NULL, NULL),
(42, 6, 'Аксессуары', NULL, NULL),
(43, 6, 'Инструменты и уход', NULL, NULL),
(44, 7, 'Бижутерия и часы', NULL, NULL),
(45, 7, 'Часы', NULL, NULL),
(46, 7, 'Ювелирные украшения', NULL, NULL),
(47, 8, 'Женские сумки', NULL, NULL),
(48, 8, 'Женская обувь', NULL, NULL),
(49, 8, 'Обувь', NULL, NULL),
(50, 8, 'Мужские сумки', NULL, NULL),
(51, 8, 'Мужская обувь', NULL, NULL),
(52, 9, 'Домашний декор', NULL, NULL),
(53, 9, 'Текстиль для дома', NULL, NULL),
(54, 9, 'Рукоделие и вышивка', NULL, NULL),
(55, 9, 'Внутреннее освещение', NULL, NULL),
(56, 9, 'Кухня, столовая, бар', NULL, NULL),
(57, 10, 'Аксессуары и запчасти', NULL, NULL),
(58, 10, 'Фото и все для камеры', NULL, NULL),
(59, 10, 'Аудио и видео', NULL, NULL),
(60, 10, 'Умная электроника', NULL, NULL),
(61, 11, 'Макияж', NULL, NULL),
(62, 11, 'Уход за кожей', NULL, NULL),
(63, 11, 'Маникюр и инструменты', NULL, NULL),
(64, 11, 'Уход за волосами и укладка', NULL, NULL),
(65, 11, 'Здоровье и гигиена', NULL, NULL),
(66, 12, 'Кемпинг и туризм', NULL, NULL),
(67, 12, 'Игры с мячом', NULL, NULL),
(68, 12, 'Обувь', NULL, NULL),
(69, 13, 'Бытовая техника', NULL, NULL),
(70, 13, 'Инструменты', NULL, NULL),
(71, 13, 'Безопасность и защита', NULL, NULL),
(72, 13, 'Материалы для ремонта', NULL, NULL),
(73, 14, 'Платья', NULL, NULL),
(74, 14, 'Блузки и рубашки', NULL, NULL),
(75, 14, 'Футболки', NULL, NULL),
(76, 14, 'Майки', NULL, NULL),
(77, 14, 'Комбинезоны', NULL, NULL),
(78, 14, 'Пижамы и халаты', NULL, NULL),
(79, 15, 'Спортивные куртки', NULL, NULL),
(80, 15, 'Толстовки и кофты', NULL, NULL),
(81, 15, 'Стандартные куртки', NULL, NULL),
(82, 15, 'Тренчи', NULL, NULL),
(83, 15, 'Кардиганы', NULL, NULL),
(84, 15, 'Пуловеры', NULL, NULL),
(85, 16, 'Юбки', NULL, NULL),
(86, 16, 'Шорты', NULL, NULL),
(87, 16, 'Джинсы', NULL, NULL),
(88, 16, 'Брюки и капри', NULL, NULL),
(89, 16, 'Леггинсы', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `text` text,
  `likes` int(11) DEFAULT NULL,
  `deslikes` int(11) DEFAULT NULL,
  `data` int(20) DEFAULT NULL,
  `public` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `text` text,
  `data` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `is_main` int(1) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `file_puth` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1493055046),
('m170424_132634_create_news_table_user', 1493055048),
('m170424_132712_create_news_table_product', 1493055048),
('m170424_132728_create_news_table_category', 1493055049),
('m170424_132747_create_news_table_comment', 1493055049),
('m170424_132814_create_news_table_order', 1493055049),
('m170424_132936_create_news_table_image', 1493055049),
('m170424_133005_create_news_table_products_options', 1493055050),
('m170424_133028_create_news_table_feedback', 1493055050);

-- --------------------------------------------------------

--
-- Структура таблиці `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data_created` int(20) DEFAULT NULL,
  `data_updated` int(20) DEFAULT NULL,
  `data_over` int(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `sum` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(5) DEFAULT NULL,
  `name` text,
  `text` text,
  `hit` varchar(100) DEFAULT '0',
  `new` varchar(100) DEFAULT '1',
  `sale` varchar(100) DEFAULT '0',
  `rank` varchar(10) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `keywords` text,
  `description` text,
  `data_create` int(20) DEFAULT NULL,
  `data_update` int(20) DEFAULT NULL,
  `public` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `text`, `hit`, `new`, `sale`, `rank`, `view`, `keywords`, `description`, `data_create`, `data_update`, `public`) VALUES
(1, 1, 'Simplee Apparel Оборками slash шея женщины dress Летом стиль с плеча сексуальные платья vestidos Белый tube beach dress cotton', 'Производитель:SIMPLEEМатериал:ХлопокСтиль:Секси и клубныйСилуэт:ШирокиеРисунок:СплошнойДлина рукава:Без рукавовУкрашение:С оборкамиДлина платья:Выше колена, миниТип рукава:С ПлечаЛиния талии:ЕстественныйВырез:Воротник с открытой шеейСезон:ЛетоРазмер модели:DR016Пол:Женщины', '0', '1', '0', '0', 0, NULL, NULL, NULL, NULL, 1),
(2, 1, 'Simplee Apparel Sexy с плеча блесток кисточкой лето dress 2016 beach party short dress Женщины спинки vintage dress vestidos', 'Производитель:SIMPLEEПол:ЖенщиныВырез:Воротник с открытой шеейСтиль:БогемныйТип рукава:С ПлечаСилуэт:ТрапециевидныйСезон:ЛетоУкрашение:БлёсткиМатериал:Полиэстер,Спандекс,Ткань мешРисунок:СплошнойДлина платья:Выше колена, миниДлина рукава:ПолныйЛиния талии:ЕстественныйРазмер модели:DR413Season:2016 New Spring & SummerOccation:Beach , Party', '1', '1', '1', '0', 0, NULL, NULL, NULL, NULL, 1),
(3, 1, 'Simplee Sexy кружева спинки bodycon dress Винтаж замши выдалбливают короткие dress 2017 Женщин тонкий рукавов партии black dress', 'Производитель:SIMPLEEМатериал:ПолиэстерСтиль:Секси и клубныйСилуэт:ЧехолРисунок:СплошнойДлина рукава:Без рукавовУкрашение:ПолыеДлина платья:Выше колена, миниТип рукава:Тонкая лямкаЛиния талии:ЕстественныйВырез:Воротник со спрямлёнными угламиСезон:ЛетоРазмер модели:DR718Пол:Женщины', '1', '0', '1', '0', 0, NULL, NULL, NULL, NULL, 1),
(4, 1, 'Simplee daaaaaaaaa Apparel Sexy с плеча блесток кисточкой лето dress 2016 beach party short dress Женщины спинки vintage dress vestidos', 'Производитель:SIMPLEEПол:ЖенщиныВырез:Воротник с открытой шеейСтиль:БогемныйТип рукава:С eeeeeeeeeeeeeeee ПлечаСилуэт:ТрапециевидныйСезон:ЛетоУкрашение:БлёсткиМатериал:Полиэстер,Спандекс,Ткань мешРисунок:СплошнойДлина платья:Выше колена, миниДлина рукава:ПолныйЛиния талии:ЕстественныйРазмер модели:DR413Season:2016 New Spring & SummerOccation:Beach , Party', '1', '1', '1', '0', 0, NULL, NULL, NULL, NULL, 1),
(5, 1, 'Simplee Sexy кружева спинки bodycon dress Винтаж замши выдалбливают короткие dress 2017 Женщин тонкий рукавов партии black dress', 'Производитель:SIMPLEEМатериал:ПолиэстерСтиль:Секси и клубныйСилуэт:ЧехолРисунок:СплошнойДлина рукава:Без рукавовУкрашение:ПолыеДлина платья:Выше колена, миниТип рукава:Тонкая лямкаЛиния талии:ЕстественныйВырез:Воротник со спрямлёнными угламиСезон:ЛетоРазмер модели:DR718Пол:Женщины', '1', '1', '0', '0', 0, NULL, NULL, NULL, NULL, 1),
(6, 1, 'Simplee Apparel Оборками slash шея женщины dress Летом стиль с плеча сексуальные платья vestidos Белый tube beach dress cotton', 'Производитель:SIMPLEEМатериал:ХлопокСтиль:Секси и клубныйСилуэт:ШирокиеРисунок:СплошнойДлина рукава:Без рукавовУкрашение:С оборкамиДлина платья:Выше колена, миниТип рукава:С ПлечаЛиния талии:ЕстественныйВырез:Воротник с открытой шеейСезон:ЛетоРазмер модели:DR016Пол:Женщины', '0', '1', '0', '0', 0, NULL, NULL, NULL, NULL, 1),
(7, 1, 'Simplee Apparel Sexy с плеча блесток кисточкой лето dress 2016 beach party short dress Женщины спинки vintage dress vestidos', 'Производитель:SIMPLEEПол:ЖенщиныВырез:Воротник с открытой шеейСтиль:БогемныйТип рукава:С ПлечаСилуэт:ТрапециевидныйСезон:ЛетоУкрашение:БлёсткиМатериал:Полиэстер,Спандекс,Ткань мешРисунок:СплошнойДлина платья:Выше колена, миниДлина рукава:ПолныйЛиния талии:ЕстественныйРазмер модели:DR413Season:2016 New Spring & SummerOccation:Beach , Party', '1', '1', '1', '0', 0, NULL, NULL, NULL, NULL, 1),
(8, 1, 'Simplee Sexy кружева спинки bodycon dress Винтаж замши выдалбливают короткие dress 2017 Женщин тонкий рукавов партии black dress', 'Производитель:SIMPLEEМатериал:ПолиэстерСтиль:Секси и клубныйСилуэт:ЧехолРисунок:СплошнойДлина рукава:Без рукавовУкрашение:ПолыеДлина платья:Выше колена, миниТип рукава:Тонкая лямкаЛиния талии:ЕстественныйВырез:Воротник со спрямлёнными угламиСезон:ЛетоРазмер модели:DR718Пол:Женщины', '1', '0', '1', '0', 0, NULL, NULL, NULL, NULL, 1),
(9, 1, 'Simplee daaaaaaaaa Apparel Sexy с плеча блесток кисточкой лето dress 2016 beach party short dress Женщины спинки vintage dress vestidos', 'Производитель:SIMPLEEПол:ЖенщиныВырез:Воротник с открытой шеейСтиль:БогемныйТип рукава:С eeeeeeeeeeeeeeee ПлечаСилуэт:ТрапециевидныйСезон:ЛетоУкрашение:БлёсткиМатериал:Полиэстер,Спандекс,Ткань мешРисунок:СплошнойДлина платья:Выше колена, миниДлина рукава:ПолныйЛиния талии:ЕстественныйРазмер модели:DR413Season:2016 New Spring & SummerOccation:Beach , Party', '1', '1', '1', '0', 0, NULL, NULL, NULL, NULL, 1),
(10, 1, 'Simplee Sexy кружева спинки bodycon dress Винтаж замши выдалбливают короткие dress 2017 Женщин тонкий рукавов партии black dress', 'Производитель:SIMPLEEМатериал:ПолиэстерСтиль:Секси и клубныйСилуэт:ЧехолРисунок:СплошнойДлина рукава:Без рукавовУкрашение:ПолыеДлина платья:Выше колена, миниТип рукава:Тонкая лямкаЛиния талии:ЕстественныйВырез:Воротник со спрямлёнными угламиСезон:ЛетоРазмер модели:DR718Пол:Женщины', '1', '1', '0', '0', 0, NULL, NULL, NULL, NULL, 1),
(11, 1, 'Simplee Sexy кружева спинки bodycon dress Винтаж замши выдалбливают короткие dress 2017 Женщин тонкий рукавов партии black dress', 'Производитель:SIMPLEEМатериал:ПолиэстерСтиль:Секси и клубныйСилуэт:ЧехолРисунок:СплошнойДлина рукава:Без рукавовУкрашение:ПолыеДлина платья:Выше колена, миниТип рукава:Тонкая лямкаЛиния талии:ЕстественныйВырез:Воротник со спрямлёнными угламиСезон:ЛетоРазмер модели:DR718Пол:Женщины', '1', '1', '0', '0', 0, NULL, NULL, NULL, NULL, 1),
(12, 1, 'Simplee Apparel Оборками slash шея женщины dress Летом стиль с плеча сексуальные платья vestidos Белый tube beach dress cotton', 'Производитель:SIMPLEEМатериал:ХлопокСтиль:Секси и клубныйСилуэт:ШирокиеРисунок:СплошнойДлина рукава:Без рукавовУкрашение:С оборкамиДлина платья:Выше колена, миниТип рукава:С ПлечаЛиния талии:ЕстественныйВырез:Воротник с открытой шеейСезон:ЛетоРазмер модели:DR016Пол:Женщины', '0', '1', '0', '0', 0, NULL, NULL, NULL, NULL, 1),
(13, 1, 'Simplee Apparel Sexy с плеча блесток кисточкой лето dress 2016 beach party short dress Женщины спинки vintage dress vestidos', 'Производитель:SIMPLEEПол:ЖенщиныВырез:Воротник с открытой шеейСтиль:БогемныйТип рукава:С ПлечаСилуэт:ТрапециевидныйСезон:ЛетоУкрашение:БлёсткиМатериал:Полиэстер,Спандекс,Ткань мешРисунок:СплошнойДлина платья:Выше колена, миниДлина рукава:ПолныйЛиния талии:ЕстественныйРазмер модели:DR413Season:2016 New Spring & SummerOccation:Beach , Party', '1', '1', '1', '0', 0, NULL, NULL, NULL, NULL, 1),
(14, 1, 'Simplee Sexy кружева спинки bodycon dress Винтаж замши выдалбливают короткие dress 2017 Женщин тонкий рукавов партии black dress', 'Производитель:SIMPLEEМатериал:ПолиэстерСтиль:Секси и клубныйСилуэт:ЧехолРисунок:СплошнойДлина рукава:Без рукавовУкрашение:ПолыеДлина платья:Выше колена, миниТип рукава:Тонкая лямкаЛиния талии:ЕстественныйВырез:Воротник со спрямлёнными угламиСезон:ЛетоРазмер модели:DR718Пол:Женщины', '1', '0', '1', '0', 0, NULL, NULL, NULL, NULL, 1),
(15, 1, 'Simplee daaaaaaaaa Apparel Sexy с плеча блесток кисточкой лето dress 2016 beach party short dress Женщины спинки vintage dress vestidos', 'Производитель:SIMPLEEПол:ЖенщиныВырез:Воротник с открытой шеейСтиль:БогемныйТип рукава:С eeeeeeeeeeeeeeee ПлечаСилуэт:ТрапециевидныйСезон:ЛетоУкрашение:БлёсткиМатериал:Полиэстер,Спандекс,Ткань мешРисунок:СплошнойДлина платья:Выше колена, миниДлина рукава:ПолныйЛиния талии:ЕстественныйРазмер модели:DR413Season:2016 New Spring & SummerOccation:Beach , Party', '1', '1', '1', '0', 0, NULL, NULL, NULL, NULL, 1),
(16, 1, 'Simplee Sexy кружева спинки bodycon dress Винтаж замши выдалбливают короткие dress 2017 Женщин тонкий рукавов партии black dress', 'Производитель:SIMPLEEМатериал:ПолиэстерСтиль:Секси и клубныйСилуэт:ЧехолРисунок:СплошнойДлина рукава:Без рукавовУкрашение:ПолыеДлина платья:Выше колена, миниТип рукава:Тонкая лямкаЛиния талии:ЕстественныйВырез:Воротник со спрямлёнными угламиСезон:ЛетоРазмер модели:DR718Пол:Женщины', '1', '1', '0', '0', 0, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `productoptions`
--

CREATE TABLE `productoptions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_integer` int(11) DEFAULT NULL,
  `size_string` varchar(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп даних таблиці `productoptions`
--

INSERT INTO `productoptions` (`id`, `product_id`, `price`, `length`, `height`, `width`, `size_integer`, `size_string`, `weight`, `color`, `material`, `count`) VALUES
(1, 1, 578, 20, 43, 40, 43, 'L', 35, 'red', 'Льон', 53),
(2, 1, 578, 23, 45, 43, 45, 'XL', 39, 'red', 'Льон', 53);

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text,
  `auth_key` text,
  `secret_key` text,
  `nikname` varchar(255) DEFAULT NULL,
  `avatar` text,
  `first_name` varchar(255) DEFAULT NULL,
  `second_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `house` varchar(10) DEFAULT NULL,
  `data_registration` int(20) DEFAULT NULL,
  `data_update` int(20) DEFAULT NULL,
  `rols` int(1) DEFAULT '1',
  `public` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Індекси таблиці `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `productoptions`
--
ALTER TABLE `productoptions`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT для таблиці `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблиці `productoptions`
--
ALTER TABLE `productoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
