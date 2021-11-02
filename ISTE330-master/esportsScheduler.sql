/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS esportsScheduler;
CREATE DATABASE esportsScheduler;
USE esportsScheduler;

--
-- Table 'General User'
--

DROP TABLE IF EXISTS `generalUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generalUser` (
	`userIdNumber` int(100) NOT NULL AUTO_INCREMENT,
    `roleId` int(3) NOT NULL DEFAULT '0',
    `password` varchar(30) NOT NULL DEFAULT '',
    `name` varchar(100) NOT NULL DEFAULT '',
    `email` varchar(50) NOT NULL DEFAULT '',
    `userName` varchar(20) NOT NULL DEFAULT '',
    `interest` varchar(30) NOT NULL DEFAULT '',
    PRIMARY KEY (`userIdNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO generalUser(userIdNumber, roleId, password, name, email, userName, interest) VALUES (1, 0, "a123", "Joshua Bong", "jxb1666@g.rit.edu", "jxb1666", "League of Legends");
INSERT INTO generalUser(userIdNumber, roleId, password, name, email, userName, interest) VALUES (2, 0, "b123", "Kyle Clark", "kyx1234@g.rit.edu", "kyx1234", "League of Legends");
INSERT INTO generalUser(userIdNumber, roleId, password, name, email, userName, interest) VALUES (3, 0, "c123", "David Kim", "ddd1336@g.rit.edu", "ddd1336", "CSGO");
INSERT INTO generalUser(userIdNumber, roleId, password, name, email, userName, interest) VALUES (4, 0, "d123", "Allen Bean", "all4636@g.rit.edu", "all4636", "Starcraft");
INSERT INTO generalUser(userIdNumber, roleId, password, name, email, userName, interest) VALUES (6, 0, "f123", "Justin McAdam", "jxm5556@g.rit.edu", "jxm5556", "League of Legends");
INSERT INTO generalUser(userIdNumber, roleId, password, name, email, userName, interest) VALUES (7, 0, "g123", "Vincent Do", "vdd5555@g.rit.edu", "vdd5555", "Dota2");
INSERT INTO generalUser(userIdNumber, roleId, password, name, email, userName, interest) VALUES (8, 0, "h123", "Ken Yi", "kyk8778@g.rit.edu", "kyk8778", "League of Legends");
INSERT INTO generalUser(userIdNumber, roleId, password, name, email, userName, interest) VALUES (9, 0, "i123", "George Bush", "gbg3332@g.rit.edu", "gbg3332", "CSGO");
INSERT INTO generalUser(userIdNumber, roleId, password, name, email, userName, interest) VALUES (10, 0, "j123", "Abraham Link", "ali3232@g.rit.edu", "ali3232", "League of Legends");
INSERT INTO generalUser(userIdNumber, roleId, password, name, email, userName, interest) VALUES (11, 0, "k123", "Mike Lowry", "mlo6718@g.rit.edu", "mlo6718", "League of Legends");


--
-- Table 'Student User;
--

DROP TABLE IF EXISTS `studentUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentUser` (
	`userIdNumber` int(100) NOT NULL AUTO_INCREMENT,
    `roleId` int(10) NOT NULL DEFAULT '1',
	`password` varchar(30) NOT NULL DEFAULT '',
    `name` varchar(100) NOT NULL DEFAULT '',
    `email` varchar(50) NOT NULL DEFAULT '',
    `userName` varchar(20) NOT NULL DEFAULT '',
    `interest` varchar(30) NOT NULL DEFAULT '',
	`playerExperience` int(10) NOT NULL DEFAULT '0',
    `currentRank` varchar(15) NOT NULL DEFAULT '',
    `playerPosition` varchar(15) NOT NULL DEFAULT '',
    `playerPercentile` decimal(4,2) NOT NULL DEFAULT 0.00,
    `playerWinLoss` decimal(4,2) NOT NULL DEFAULT 0.00,
    PRIMARY KEY (`userIdNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO studentUser(userIdNumber, roleId, password, name, email, userName, interest, playerExperience, currentRank, playerPosition, playerPercentile, playerWinLoss) VALUES (7, 1, "123123", "Brandon Nyugen", "bnn2334@g.rit.edu", "bnn2334", "League of Legend", 2, "Gold 3", "Support", 25.21, 51.22); 
INSERT INTO studentUser(userIdNumber, roleId, password, name, email, userName, interest, playerExperience, currentRank, playerPosition, playerPercentile, playerWinLoss) VALUES (5, 1, "e123", "Joseph Berry", "jjb1246@g.rit.edu", "jjb1246", "Dota2", 3, "Guardian 7", "Carry", 56.44, 49.01);
INSERT INTO studentUser(userIdNumber, roleId, password, name, email, userName, interest, playerExperience, currentRank, playerPosition, playerPercentile, playerWinLoss) VALUES (12, 1, "ag123123", "Gabby Lee", "gle2211@g.rit.edu", "gle2211", "League of Legend", 3, "Gold 3", "Top", 22.98, 51.22);
INSERT INTO studentUser(userIdNumber, roleId, password, name, email, userName, interest, playerExperience, currentRank, playerPosition, playerPercentile, playerWinLoss) VALUES (13, 1, "gag123", "Nick Brown", "nbb2919@g.rit.edu", "nbb2919", "League of Legend", 3, "Gold 4", "ADC", 36.01, 49.01);
INSERT INTO studentUser(userIdNumber, roleId, password, name, email, userName, interest, playerExperience, currentRank, playerPosition, playerPercentile, playerWinLoss) VALUES (14, 1, "ns23413", "Michael Strout", "mst0991@g.rit.edu", "mst0991", "League of Legend", 3, "Gold 2", "Jungle", 19.36, 51.22);
INSERT INTO studentUser(userIdNumber, roleId, password, name, email, userName, interest, playerExperience, currentRank, playerPosition, playerPercentile, playerWinLoss) VALUES (15, 1, "anj435345", "Brian Armstrong", "bat3381@g.rit.edu", "bat3381", "League of Legend", 3, "Gold 3", "Mid", 24.63, 50.63);
INSERT INTO studentUser(userIdNumber, roleId, password, name, email, userName, interest, playerExperience, currentRank, playerPosition, playerPercentile, playerWinLoss) VALUES (16, 1, "sha234a", "Ivan Nam", "ivn2219@g.rit.edu", "ivn2219", "League of Legend", 3, "Gold 1", "Mid", 17.95, 49.72);
INSERT INTO studentUser(userIdNumber, roleId, password, name, email, userName, interest, playerExperience, currentRank, playerPosition, playerPercentile, playerWinLoss) VALUES (17, 1, "ahnxdvbd", "Ryan Truman", "ryr2341@g.rit.edu", "ryr2341", "League of Legend", 3, "Gold 4", "ADC", 36.11, 49.09);
INSERT INTO studentUser(userIdNumber, roleId, password, name, email, userName, interest, playerExperience, currentRank, playerPosition, playerPercentile, playerWinLoss) VALUES (18, 1, "aqar23", "Jacob Pok", "jpp1992@g.rit.edu", "jpp1992", "League of Legend", 3, "Gold 3", "Support", 29.85, 51.23);
INSERT INTO studentUser(userIdNumber, roleId, password, name, email, userName, interest, playerExperience, currentRank, playerPosition, playerPercentile, playerWinLoss) VALUES (19, 1, "ajgjnd1223", "Bill Park", "bpk1938@g.rit.edu", "bpk1938", "League of Legend", 3, "Gold 2", "Top", 19.92, 55.29);
INSERT INTO studentUser(userIdNumber, roleId, password, name, email, userName, interest, playerExperience, currentRank, playerPosition, playerPercentile, playerWinLoss) VALUES (20, 1, "ansfhy66", "Tyler Cullman", "tcu2310@g.rit.edu", "tcu2310", "League of Legend", 3, "Gold 3", "Jungle", 25.32, 55.10);
INSERT INTO studentUser(userIdNumber, roleId, password, name, email, userName, interest, playerExperience, currentRank, playerPosition, playerPercentile, playerWinLoss) VALUES (21, 1, "ahadfg", "Tim Lim", "til1929@g.rit.edu", "til1929", "League of Legend", 3, "Gold 2", "Support", 27.52, 51.23);

--
-- Table 'Admin user'
--

 DROP TABLE IF EXISTS `adminUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
 CREATE TABLE `adminUser` (
	`userIdNumber` int(100) NOT NULL AUTO_INCREMENT,
    `roleId` int(10) NOT NULL DEFAULT '2',
	`password` varchar(30) NOT NULL DEFAULT '',
    `name` varchar(100) NOT NULL DEFAULT '',
    `email` varchar(50) NOT NULL DEFAULT '',
    `userName` varchar(20) NOT NULL DEFAULT '',
    
    PRIMARY KEY (`userIdNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO adminUser (userIdNumber, roleId, password, name, email, userName) VALUES (0, 2, "admin", "Joshua Bong", "jxb1657@g.rit.edu", "admin"); 

--
-- Table 'event'
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
	`eventId` int(10) NOT NULL DEFAULT 0,
	`gameGenre` varchar(15) NOT NULL DEFAULT '',
    `gameName` varchar(30) NOT NULL DEFAULT '',
    `tournamentDate` date NOT NULL DEFAULT '0000-00-00',
    `tournamentLocation` varchar(50) NOT NULL DEFAULT '',
    `capacity` int(10) NOT NULL DEFAULT '10',
    `availability` varchar(50) NOT NULL DEFAULT '',
     PRIMARY KEY (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO event(eventId, gameGenre, gameName, tournamentDate, tournamentLocation, capacity, availability) VALUES (1, "MOBA", "League of Legends", '2019-11-14', "Rochester, NY", '10', "Full");
INSERT INTO event(eventId, gameGenre, gameName, tournamentDate, tournamentLocation, capacity, availability) VALUES (2, "FPS", "CSGO", '2019-11-14', "Rochester, NY", '10', "Open");
INSERT INTO event(eventId, gameGenre, gameName, tournamentDate, tournamentLocation, capacity, availability) VALUES (3, "RTS", "Starcraft", '2019-11-14', "Rochester, NY", '10', "Open");
INSERT INTO event(eventId, gameGenre, gameName, tournamentDate, tournamentLocation, capacity, availability) VALUES (4, "MOBA", "Dota2", '2019-11-14', "Rochester, NY", '10', "Open");

--
-- Table 'eventDetail'
--

DROP TABLE IF EXISTS `eventDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventDetail` (
	`eventId` int(10) NOT NULL DEFAULT 0,
    `user1` varchar(30) NOT NULL DEFAULT '',
    `user2` varchar(30) NOT NULL DEFAULT '',
    `user3` varchar(30) NOT NULL DEFAULT '',
    `user4` varchar(30) NOT NULL DEFAULT '',
    `user5` varchar(30) NOT NULL DEFAULT '',
    `user6` varchar(30) NOT NULL DEFAULT '',
    `user7` varchar(30) NOT NULL DEFAULT '',
    `user8` varchar(30) NOT NULL DEFAULT '',
    `user9` varchar(30) NOT NULL DEFAULT '',
    `user10` varchar(30) NOT NULL DEFAULT '',

     PRIMARY KEY (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO eventDetail(eventId, user1, user2, user3, user4, user5, user6, user7, user8, user9, user10) VALUES (1, "gle2211", "nbb2919", "mst0991", "bat3381", "ivn2219", "ryr2341", "jpp1992", "bpk1938", "tcu2310", "til1929" );
INSERT INTO eventDetail(eventId, user1, user2, user3, user4, user5, user6, user7, user8, user9, user10) VALUES (2, " ", " ", " ", " ", " ", " ", " ", " ", " ", " " );
INSERT INTO eventDetail(eventId, user1, user2, user3, user4, user5, user6, user7, user8, user9, user10) VALUES (3, " ", " ", " ", " ", " ", " ", " ", " ", " ", " ");
INSERT INTO eventDetail(eventId, user1, user2, user3, user4, user5, user6, user7, user8, user9, user10) VALUES (4, " ", " ", " ", " ", " ", " ", " ", " ", " ", " ");

--
-- Table 'rankingList'
--

DROP TABLE IF EXISTS `rankinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rankingList` (
	`rankNumber` int(100) NOT NULL AUTO_INCREMENT, 
    `gameId` int(100) NOT NULL DEFAULT 0,
    `gameName` varchar(30) NOT NULL DEFAULT '',
    `userName` varchar(20) NOT NULL DEFAULT '',
    `currentRank` varchar(15) NOT NULL DEFAULT '',
    `convertedRank` int(10) NOT NULL DEFAULT 0,
    PRIMARY KEY (`rankNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (1, "League of Legends", "gle221", "Gold 3", 6);
INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (1, "League of Legends", "nb2919", "Gold 4", 6);
INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (1, "League of Legends", "mst0991", "Gold 2", 6);
INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (1, "League of Legends", "bat3881", "Gold 3", 6);
INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (1, "League of Legends", "ivn2219", "Gold 1", 6);
INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (1, "League of Legends", "ryr2341", "Gold 4", 6);
INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (1, "League of Legends", "jpp1992", "Gold 3", 6);
INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (1, "League of Legends", "bpk1938", "Gold 2", 6);
INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (1, "League of Legends", "tcu2310", "Gold 3", 6);
INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (1, "League of Legends", "til1829", "Gold 2", 6);
INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (1, "League of Legends", "til1829", "Gold 2", 6);
INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (1, "League of Legends", "bnn2334", "Gold 3", 6);
INSERT INTO rankingList (gameId, gameName, userName, currentRank, convertedRank) VALUES (4, "Dota2", "jjb1246", "Guardian 7", 3);


-- 
-- Table 'Team'
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
	`teamName` varchar(20) NOT NULL DEFAULT'',
    `avgRank` varchar(15) NOT NULL DEFAULT '',
    `gameName` varchar(30) NOT NULL DEFAULT '',
    PRIMARY KEY (`gameName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
