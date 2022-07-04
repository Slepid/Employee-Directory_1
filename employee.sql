-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 01 2022 г., 08:23
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `employee`
--

-- --------------------------------------------------------

--
-- Структура таблицы `infemployee`
--

CREATE TABLE `infemployee` (
  `ID_emplpoyee` int(11) NOT NULL,
  `Surname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MiddleName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BornDate` date DEFAULT NULL,
  `PhoneNumber` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PostalAddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Registration_Date` date DEFAULT NULL,
  `departament` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `infemployee`
--

INSERT INTO `infemployee` (`ID_emplpoyee`, `Surname`, `Name`, `MiddleName`, `BornDate`, `PhoneNumber`, `PostalAddress`, `Registration_Date`, `departament`, `post`) VALUES
(1, 'Петров', 'Александр', 'Евгеньевич', '1989-07-06', '89637373281', 'Pet@mail.ru', NULL, 'Отдел кадров', 'Рекрутёр'),
(2, 'Симонов', 'Максим', 'Игоревич', '1985-06-04', '89122311545', 'Sim@mail.ru', NULL, 'Отдел кадров', 'Специалист по кадрам'),
(3, 'Романов', 'Максим', 'Алексеевич', '1990-07-01', '89654789654', 'Rome@list.ru', NULL, 'Отдел кадров', 'Специалист по компенсациям и льготам'),
(4, 'Сергеева', 'Мария', 'Викторовна', '1999-12-22', '89632145879', 'Serg@mail.ru', NULL, 'Отдел кадров', 'Рекрутёр'),
(5, 'Шмелёва', 'Валентина', 'Алексеевна', '1984-09-10', '89654123456', 'Shmel@gmail.ru', NULL, 'Отдел кадров', 'Специалист по компенсациям и льготам'),
(6, 'Иванов', 'Артём', 'Сергеевич', '1991-05-11', '89632145879', 'Iva@list.ru', NULL, 'Отдел кадров', 'Рекрутёр'),
(7, 'Смирнов', 'Илья', 'Александрович', '1988-02-19', '89874563213', 'Sirno@mail.ru', NULL, 'Отдел продаж', 'Менеджер по продажам'),
(8, 'Пожидаев', 'Дмитрий', 'Витальевич', '1989-05-08', '89636541322', 'Poz@list.ru', NULL, 'Отдел продаж', 'Менеджер по продажам'),
(9, 'Михайлов', 'Виктор', 'Сергеевич', '1990-07-18', '89654896541', 'Mih@gmail.ru', NULL, 'Отдел продаж', 'Менеджер по продажам'),
(10, 'Олефиренко', 'Алексей', 'Викторович', '1995-08-01', '897456231235', 'Olef@list.ru', NULL, 'Отдел продаж', 'Менеджер по продажам'),
(31, 'Поляков', 'Виктор', 'Сергеевич', '1979-04-11', '89616332233', 'polakov@mail.ru', NULL, 'IT отдел', 'Системный администратор'),
(34, 'Петров', 'Александр', 'Олегович', '1988-03-22', '89645656221', 'plz@mail.ru', NULL, 'IT отдел', 'Системный администратор'),
(35, 'Бочкина', 'Алексадра', 'Сергеевна', '2000-05-21', '89456123322', 'alex@list.ru', NULL, 'IT отдел', 'Программист'),
(36, 'Павлов', 'Даниил', 'Борисович', '1999-09-05', '89612233212', 'pavlik@gmail.ru', NULL, 'IT отдел', 'Инженер'),
(37, 'Сергеев', 'Сергей', 'Сергеевич', '1978-10-14', '89105554412', 'sergeev@mail.ru', NULL, 'IT отдел', 'Программист'),
(38, 'Морозкина', 'Ирина', 'Владимировна', '1998-01-01', '89445461231', 'moroz@mail.ru', NULL, 'Call центр', 'Оператор контактного ценра'),
(39, 'Сергеев', 'Сергей', 'Витальевич', '2000-08-22', '89616380987', 'sergeev@mail.ru', '2022-06-30', 'Call центр', 'Оператор контактного ценра'),
(40, 'Великанов', 'Николай', 'Валентинович', '1998-02-20', '89671456647', 'Velik@mail.ru', '2022-06-30', 'Программист', 'IT отдел');

-- --------------------------------------------------------

--
-- Структура таблицы `managers`
--

CREATE TABLE `managers` (
  `ID_managers` int(11) NOT NULL,
  `Surname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MiddleName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhoneNumber` bigint(20) DEFAULT NULL,
  `PostalAddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ID_emplpoyee` int(11) DEFAULT NULL,
  `Subordinates` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departament` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `managers`
--

INSERT INTO `managers` (`ID_managers`, `Surname`, `Name`, `MiddleName`, `PhoneNumber`, `PostalAddress`, `ID_emplpoyee`, `Subordinates`, `departament`) VALUES
(1, 'Павлов', 'Даниил', 'Игоревич', 89654125896, 'Pavlov@gmail.ru', 1, '1', 'Отдел кадров'),
(2, 'Павлов', 'Даниил', 'Игоревич', 89654121212, 'Pavlov@gmail.ru', 2, '2', 'Отдел кадров'),
(3, 'Гвай', 'Никита', 'Александрович', 89655656231, 'GV@mail.ru', 7, '7', 'Отдел продаж'),
(4, 'Гвай', 'Никита', 'Александрович', 89655656231, 'GV@mail.ru', 8, '8', 'Отдел продаж'),
(5, 'Гвай', 'Никита', 'Александрович', 89655656231, 'GV@mail.ru', 9, '9', 'Отдел продаж'),
(7, 'Полякова', 'Марина', 'Игоревна', 89654121234, 'Polecova@list.ru', 31, '31', 'IT отдел'),
(8, 'Полякова', 'Марина', 'Игоревна', 89654121234, 'Polecova@list.ru', 8, '34', 'IT отдел'),
(10, 'Сидоров', 'Алексей', 'Викторович', 89654123021, 's@list.ru', NULL, 'Нет людей в подчинении', 'Call центр'),
(11, 'Петров', 'Иван', 'Сидорович', 8962144563, 'pprt@mail.ru', NULL, 'Нет людей в подчинении', 'Call центр'),
(22, 'Павлов', 'Даниил', 'Игоревич', 89654125896, 'Pavlov@gmail.ru', 3, '3', 'Отдел кадров'),
(23, 'Павлов', 'Даниил', 'Игоревич', 89654125896, 'Pavlov@gmail.ru', 4, '4', 'Отдел кадров'),
(24, 'Павлов', 'Даниил', 'Игоревич', 89654125896, 'Pavlov@gmail.ru', 5, '5', 'Отдел кадров'),
(25, 'Павлов', 'Даниил', 'Игоревич', 89654125896, 'Pavlov@gmail.ru', 6, '6', 'Отдел кадров'),
(26, 'Полякова', 'Марина', 'Игоревна', 89654121234, 'Polecova@list.ru', 35, '35', 'IT отдел'),
(27, 'Полякова', 'Марина', 'Игоревна', 89654121234, 'Polecova@list.ru', 36, '36', 'IT отдел'),
(28, 'Полякова', 'Марина', 'Игоревна', 89654121234, 'Polecova@list.ru', 37, '37', 'IT отдел'),
(29, 'Гвай', 'Никита', 'Александрович', 89655656231, 'GV@mail.ru', 10, '10', 'Отдел продаж');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `infemployee`
--
ALTER TABLE `infemployee`
  ADD PRIMARY KEY (`ID_emplpoyee`);

--
-- Индексы таблицы `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`ID_managers`),
  ADD KEY `ID_emplpoyee` (`ID_emplpoyee`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `infemployee`
--
ALTER TABLE `infemployee`
  MODIFY `ID_emplpoyee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `managers`
--
ALTER TABLE `managers`
  MODIFY `ID_managers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `managers_ibfk_1` FOREIGN KEY (`ID_emplpoyee`) REFERENCES `infemployee` (`ID_emplpoyee`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
