-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 01:10 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traveling`
--

-- --------------------------------------------------------

--
-- Table structure for table `concerts`
--

CREATE TABLE `concerts` (
  `concerts_id` int(11) NOT NULL,
  `name` varchar(23) DEFAULT NULL,
  `adresse` varchar(25) DEFAULT NULL,
  `eventDate` date DEFAULT NULL,
  `eventTime` time DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `concerts`
--

INSERT INTO `concerts` (`concerts_id`, `name`, `adresse`, `eventDate`, `eventTime`, `img`, `Description`) VALUES
(1, 'vienna comic con', 'Messeplatz 1, 1021 wien', '2018-11-17', '01:00:00', 'https://www.gamebusters.at/wp-content/uploads/2017/10/Koop_FB_Header_820x312_VIECC-720x312.png', 'Die VIECC verbindet die Welt von Comic, Anime & Manga, TV- & Film, Merchandise & Gaming und ist ‚the place to be‘. Hier wird Popkultur nicht nur gefeiert, ihr erhaltet auch noch exklusive Einblicke was sich neues tut in der Industrie.'),
(2, 'Weinnachtsmarkt ', 'Volksgarten', '2018-11-17', '09:00:00', 'https://www.top-trier.de/wp-content/uploads/2017/10/weihnachtsmarkt-trier-652x435.jpg', 'Von Mitte November bis Ende Dezember locken viele große und kleinere Weihnachtsmärkte in Wien mit Punsch, süßen Keksen, Kunsthandwerk und Kitsch. Fast jeder Wiener Bezirk hat den einen oder anderen stimmungsvollen Weihnachtsmarkt der zum Flanieren und Ver'),
(3, 'Orange wine festival', 'MuseumsQuartier', '2018-11-19', '02:00:00', 'https://www.viennainside.at/wp-content/uploads/2017/08/20934149_1487424031317926_260915225129866983_o.jpg', 'On Monday, the 19th November 2018, we are kindly inviting you to join us for the most thorough confrontation with orange wines, so far. Orange wines are closing a relatively small, but very important gap in the global wine market, since respect for tradit'),
(4, 'Bundesliga', 'Sportanlage Stadlau', '2018-11-17', '05:00:00', 'http://as00.epimg.net/en/imagenes/2017/06/21/football/1498074403_627644_1498075206_noticia_normal.jpg', 'They each left an indelible mark on the Bundesliga. Ten legends in their own right, now proudly flying the Bundesliga flag across the globe. Get to know the iconic members of the Official Bundesliga Legends Network: Lothar Matthäus, Jiayi Shao, Paulo Serg'),
(5, 'ECVET', 'Albertgasse 35, wien', '2018-11-22', '10:30:00', 'https://tia-org.eu/wp-content/uploads/2018/09/logo_ecvet_gd_0.jpg', 'ECVET steht für \"European Credit System for Vocational Education and Training\". Am 18. Juni 2009 haben Europäisches Parlament und Rat die ECVET-Empfehlung zur Einrichtung eines \"Europäischen Leistungspunktesystems für die Berufsbildung\" verabschiedet'),
(6, 'UEFA', 'Meiereistrasse 7,wien', '2018-11-16', '03:45:00', 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/02/10/11/uefa.jpg?w968h681', 'The Union of European Football Associations (UEFA /juːˈeɪfə/ yoo-AY-fə; French: Union des Associations Européennes de Football;[a] German: Vereinigung Europäischer Fußballverbände)[b] is the administrative body for association football in Europe, although');

-- --------------------------------------------------------

--
-- Table structure for table `resturant`
--

CREATE TABLE `resturant` (
  `resturant_id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `type` varchar(23) DEFAULT NULL,
  `Adresse` varchar(25) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resturant`
--

INSERT INTO `resturant` (`resturant_id`, `name`, `number`, `type`, `Adresse`, `img`, `Description`) VALUES
(1, 'Loft Restaurant', 664412345, 'Italian', 'Praterstrasse 1 1020 Wien', 'https://qul.imgix.net/239e387f-6b5e-457b-86e1-ea27ba18823e/354836_sld.jpg?format=auto&w=1024', 'Elegant, schick und mit einem gewissen Glamour-Faktor präsentiert sich das Wiener Restaurant Das Loft im Sofitel Vienna Stephansdom. Zu finden in allerbester Lage im 2. Stadtbezirk in der Praterstraße, am Ufer eines Seitenarms der Donau und nur ein paar M'),
(2, 'Mas Restaurante', 487843, 'Mexicano', 'Daungasse 1/2,1080 Wien', 'https://qul.imgix.net/b5230074-eb14-4cc4-8d0e-5c716abaaf36/372400_sld.jpg?format=auto&w=1024', 'Und das ganze „mehr\" der guten Dinge im Leben mit einem Mix aus mexikanischen Klängen und House findet ihr im Restaurante más'),
(3, 'Restaurant Ariston', 325235, 'Austria', 'Abt-Karl-Gasse 25 1180 Wi', 'https://qul.imgix.net/f362797b-4842-485c-9e61-3383ba22716e/363545_sld.jpg?format=auto&w=1024', 'Mitten im 18. Bezirk von Wien lockt das Restaurant Ariston mit leckeren Spezialitäten der griechischen Küche. In der Abt-Karl-Gasse kommen auch Vegetarier dank der zahlreichen fleischlosen Optionen voll auf ihre Kosten. Bei sonnigem Wetter setzt du dich i'),
(4, 'Ebi 7', 65875464, 'Italian', 'Mariahilfer Strasse 112 1', 'https://qul.imgix.net/b7d9a7d7-446f-4137-bed6-35342d290638/282446_landscape.jpg?format=auto&w=1024', 'Liebe Gäste, bitte beachten Sie, dass Ihnen bei einer Online-Reservierung der Tisch für zwei Stunden zur Verfügung steht. Bei besonderen Wünschen bitten wir Sie, sich telefonisch im Restaurant zu melden. Bei kurzfristigen Reservierungen für Gruppen ab 10 '),
(5, 'freiraum', 23576, 'German', 'Mariahilfer Strasse 117 1', 'https://qul.imgix.net/68d5346c-4e9d-44c6-93b3-47a24142e46f/222045_sld.jpg?format=auto&w=1024', 'Das freiraum in der Mariahilfer Straße ist ein Restaurant, in dem es sich ausschließlich um das Wohlbefinden der Gäste dreht. Täglich von 8 bis 2 Uhr nachts (am Wochenende sogar bis 4 Uhr) geöffnet, wird hier den Besuchern immer ein Ort geboten, an dem si'),
(6, 'Le Burger', 23654, 'France', 'Mariahilferstrasse 114 10', 'https://qul.imgix.net/28499038-4230-46b2-b889-015b33200383/329827_landscape.jpg?format=auto&w=1024', 'Wer Burger liebt, der sollte das Le Burger im 7. Bezirk von Wien unbedingt kennenlernen. Das Restaurant in der Mariahilfer Straße bereitet diesen Klassiker der amerikanischen Küche frisch und aus den besten Zutaten zu – und das auch noch ganz nach den Wün'),
(7, 'Stern', 7236478, 'German', 'Braunhubergasse 6 1110 Wi', 'https://qul.imgix.net/fef67c99-ff89-48ad-8fc6-5b3be3bbc7cc/383714_sld.jpg?format=auto&w=1024', 'Christian Werner wartet in seinem Restaurant Stern mit feinen Wiener Spezialitäten auf, die er auf seine ganz eigene Art und Weise interpretiert. Gesottenes und Schulterscherzl, Beinfleisch, Altwiener Eräpfelsuppe, das legendäre Fischgulasch von heimische'),
(8, 'DOOR No. 8', 672354, 'Austria', 'Neubaugasse 8 1070 Wien', 'https://qul.imgix.net/ef554d8a-4b67-4905-a9c2-105465af4e56/201674_sld.jpg?format=auto&w=1024', 'Liebe Gäste, bitte beachten, dass ein Tisch bei einer Online-Reservierung für drei Stunden zur Verfügung gestellt wird. Möchte man den Tisch länger beanspruchen, bitten wir darum, das Restaurant telefonisch zu kontaktieren. Vielen Dank!'),
(9, 'Das Augustin', 6523, 'turkish', 'Märzstraße 67 1150 Wien', 'https://qul.imgix.net/bb2346b2-6059-491d-babb-a29d3b92638f/210753_sld.jpg?format=auto&w=1024', 'Lust auf etwas Leckeres aus der internationalen Cuisine, ein Glas Wein, Bier oder einen Cocktail in einer lauschigen Atmosphäre bei netten Menschen? Dann ist Das Augustin im 15. Wiener Bezirk genau richtig.'),
(10, 'Neni am Naschmarkt', 783465, 'france', 'Naschmarkt Stand 510 1060', 'https://qul.imgix.net/d58eea0f-7a65-4215-9612-f5d4060f7856/51972_landscape.jpg?format=auto&w=1024', 'Liebe Gäste, bitte beachten Sie, dass Reservierungen für 2 Personen nur telefonisch oder per E-Mail möglich sind. Vielen Dank!\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `things`
--

CREATE TABLE `things` (
  `things_id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `adresse` varchar(250) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `discription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `things`
--

INSERT INTO `things` (`things_id`, `name`, `adresse`, `img`, `discription`) VALUES
(1, 'Schonbrunn ', 'Schlosstrasse 47, Vienna 1130, Austria', 'https://media-cdn.tripadvisor.com/media/photo-w/0e/1b/71/e4/schloss-schonbrunn-c.jpg', 'The Cultural World Heritage Site of Schönbrunn Palace is Austria\'s most frequently visited tourist attraction. In the palace the residential and state rooms with their original furnishings and decorations convey an authentic impression of the imperial lif'),
(2, 'Historic Center of Vienna', 'Innere Stadt, Vienna, Austria\r\n', 'https://media-cdn.tripadvisor.com/media/photo-w/0f/28/2f/2c/sky-bar.jpg', 'The historic centre of Vienna is rich in beautiful architecture, including Baroque castles and gardens, as well as the late-19th-century Ringstrasse lined with grand buildings, monuments and parks.'),
(3, 'Imperial Palace (Hofburg)', 'Vienna 1010, Austria', 'https://media-cdn.tripadvisor.com/media/photo-s/01/7a/8b/94/hofburg-wien-innerer.jpg', 'For centuries the Vienna Hofburg was the centre of the Habsburg empire. Today the palace houses three museums which afford historically authentic insights into the traditions and everyday life of the imperial court'),
(4, 'Belvedere Palace Museum', 'Prinz-Eugen-Strasse 27, Vienna 1030, Austria', 'https://media-cdn.tripadvisor.com/media/photo-w/13/80/54/93/oberes-belvedere-aussenansicht.jpg', 'The two Belvedere palaces were built in the early eighteenth century by the famous Baroque architect Johann Lucas von Hildebrandt to be used as the summer residence of Prince Eugene of Savoy (1663–1736).'),
(5, 'Kunsthistorisches Museum', 'Maria-Theresien-Platz | 1010 Vienna, Vienna 1010, Austria', 'https://media-cdn.tripadvisor.com/media/photo-o/01/45/46/bc/kunsthistorisches-museum.jpg', 'Experience one of the world\'s foremost museums! Let yourself be enchanted by works spanning five millennia, from Ancient Egypt to the modern era. Experience unique major works by Dürer, Raphael, Titian and Velázquez as well as the world\'s larges'),
(6, 'The Third Man Museum', 'Pressgasse 25 | Main Entrance Corner Pressgasse / Muehlgasse, Vienna 1040, Austria', 'https://media-cdn.tripadvisor.com/media/photo-s/03/1d/90/16/the-third-man-museum.jpg', 'OPEN EVERY SATURDAY 2 - 6 pm! CLOSED from January 07 - February 28, 2019!!! For more opening hours check our webpage ! The THIRD MAN MUSEUM is THE place to go but ONLY for film fans and all those interested in the post-war history of Vienna. Private..');

-- --------------------------------------------------------

--
-- Table structure for table `usern`
--

CREATE TABLE `usern` (
  `usern_id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `pass` varchar(57) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `user_type`, `password`) VALUES
(0, 'seber', 'seber@gmail.com', 'user', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `vienna`
--

CREATE TABLE `vienna` (
  `vienna_id` int(11) NOT NULL,
  `fk_concerts_id` int(11) DEFAULT NULL,
  `fk_resturant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vienna`
--

INSERT INTO `vienna` (`vienna_id`, `fk_concerts_id`, `fk_resturant_id`) VALUES
(1, NULL, NULL),
(2, NULL, NULL),
(3, NULL, NULL),
(4, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, NULL, NULL),
(9, NULL, NULL),
(10, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`concerts_id`);

--
-- Indexes for table `resturant`
--
ALTER TABLE `resturant`
  ADD PRIMARY KEY (`resturant_id`);

--
-- Indexes for table `things`
--
ALTER TABLE `things`
  ADD PRIMARY KEY (`things_id`);

--
-- Indexes for table `usern`
--
ALTER TABLE `usern`
  ADD PRIMARY KEY (`usern_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vienna`
--
ALTER TABLE `vienna`
  ADD PRIMARY KEY (`vienna_id`),
  ADD KEY `fk_resturant_id` (`fk_resturant_id`),
  ADD KEY `fk_concerts_id` (`fk_concerts_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vienna`
--
ALTER TABLE `vienna`
  ADD CONSTRAINT `vienna_ibfk_1` FOREIGN KEY (`fk_resturant_id`) REFERENCES `resturant` (`resturant_id`),
  ADD CONSTRAINT `vienna_ibfk_2` FOREIGN KEY (`fk_concerts_id`) REFERENCES `concerts` (`concerts_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
