/**
 * @Project: FiveM Tools
 * @License: GNU General Public License v3.0
 */

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steamId` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `steamId` (`steamId`)
);
