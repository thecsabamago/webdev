-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2019. Dec 28. 14:04
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `filmek`
--

CREATE DATABASE filmek;
USE filmek;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `cim` varchar(200) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `evszam` smallint(5) UNSIGNED DEFAULT NULL,
  `hossz` smallint(5) UNSIGNED DEFAULT NULL,
  `boritokep` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `leiras` mediumtext COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `film`
--

INSERT INTO `film` (`id`, `cim`, `evszam`, `hossz`, `boritokep`, `leiras`) VALUES
(1, 'Joker', 2019, 122, 'Joker.jpg', 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.'),
(2, 'The Shawshank Redemption', 1994, 144, 'TheShawshankRedemption.jpg\r\n', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.'),
(3, 'The Godfather', 1972, 175, 'TheGodfather.jpg', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.'),
(4, 'The Godfather: Part II', 1974, 202, 'TheGodfatherII.jpg', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.'),
(5, 'The Dark Knight', 2008, 152, 'TheDarkKnight.jpg', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.'),
(6, '12 Angry Men', 1957, 96, '12AngryMen.jpg', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.'),
(7, 'Schindler s List', 1993, 205, 'SchindlersList.jpg', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.'),
(8, 'The Lord of the Rings: The Return of the King', 2003, 212, 'TheReturnoftheKing.jpg', 'Gandalf and Aragorn lead the World of Men against Sauron s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.'),
(9, 'Pulp Fiction', 1994, 154, 'PulpFiction.jpg\r\n', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.'),
(10, 'The Good,the Bad and the Ugly', 1966, 161, 'TheGoodtheBadandtheUgly.jpg\r\n', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.'),
(11, 'Fight Club', 1999, 139, 'FightClub.jpg\r\n', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.'),
(12, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 178, 'TheFellowshipoftheRing.jpg', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.'),
(13, 'Forrest Gump', 1994, 144, 'ForrestGump.jpg', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.'),
(14, 'Inception', 2010, 148, 'Inception.jpg', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.'),
(15, 'Star Wars: Episode V - The Empire Strikes Back', 1980, 124, 'TheEmpireStrikesBack.jpg', 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy'),
(16, 'The Lord of the Rings: The Two Towers', 2002, 179, 'TheTwoTowers.jpg', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron s new ally, Saruman, and his hordes of Isengard.'),
(17, 'The Matrix', 1999, 136, 'TheMatrix.jpg', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.'),
(18, 'Goodfellas', 1990, 146, 'Goodfellas.jpg', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.'),
(19, 'One Flew Over the Cuckoos Nest', 1975, 133, 'CuckoosNest.jpg\r\n', 'A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.'),
(20, 'Seven Samurai', 1954, 227, 'SevenSamurai.jpg', 'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
