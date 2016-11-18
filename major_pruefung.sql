# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.26)
# Datenbank: ci
# Erstellt am: 2016-06-01 14:04:24 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO `news` (`id`, `title`, `slug`, `text`)
VALUES
	(1,'Einführung','Lektion1','Lorem ipsum...'),
	(2,'OOP 1','Lektion2','Unterschied zur bisherigen Programmierung\nFunktionsweise an programmunabhängigem Beispiel (bitte nicht Auto)\nKlassendiagramme/Klassengruppierung für Bildersammlung\nOOP-Begriffe\nKapselung\nVererbung\nPolymorpie\nOOP am Beispiel von PHP (Konto)\nAufgabe\nErstellen Sie in Dreiergruppen ein Klassendiagramm für Ihre Teilaufgabe. In der nächsten Woche setzen wir die Teile zu einem gemeinsamen Projekt zusammen.\n'),
	(3,'OOP 2','Lektion3','Wie bisher...'),
	(5,'MVC mit Codeigniter','Lektion4','Codeigniter\nCI-Ordner ist Stammordner\nIm CI-Ordner, den wir als Stammordner der Website definieren befinden sich neben der index-Datei drei weitere Ordner: \napplication\nIn diesem Ordner werden wir arbeiten. Es ist unser Applikationsordner. ci ist so aufgebaut, dass keine Arbeiten ausserhalb dieses Ordners nötig sind.\nsystem\nIm system-Ordner sind die Kernfunktionen des Frameworks abgelegt. Natürlich haben wir die Möglichkeit einzugreifen, werden es jedoch nicht tun.\nuser_guide\nDiesen Ordner können wir löschen. Er beinhaltet die komplette Dokumentation. Er hat keine funktionale Bedeutung.\n\nindex.php\nIn der index-Datei müssen wir keine Änderungen vornehmen. Es ist zwar möglich dort einige Einstellungen zu verändern, aber das wird frühestens für fortgeschrittene Projekte relevant.\n\nIn application/config finden wir eine Vielzahl von Konfigurationsdateien, von denen wir uns im Moment nur config.php, database. php und routing.php anschauen wollen.\n\nconfig.php\nVon den vielen Einstellungsoptionen werden wir nur eine einzige verändern. Tragen Sie in der ersten Option „Base Site URL“ die Adresse Ihrer Domain ein. Wenn Sie also mit Hilfe von XAMPP entwickeln (und davon gehe ich aus) tragen Sie hier  „http://localhost“ ein.\nAb Zeile 308 finden Sie die Option „Encryption Key“. Falls Sie später Daten verschlüsselt übertragen wollen, müssen Sie hier einen entsprechenden Key hinterlegen.\n\ndatabase.php\nWie man vom Namen unschwer ableiten kann werden in dieser Datei die Einstellungen der Datenbankanbindung gespeichert. Die Begriffe „hostname“, „username“, „password“ und „database“ sind selbsterklärend. Bemerkenswert ist aber, dass sie je nach verwendeter Datenbank unter „dbdriver“ verschiedene Datenbanktreiber angeben können. Später werden wir sehen, wie codeigniter Datenbankabfragen stark vereinfacht. Wir werden keine SQL-Statemens mehr schreiben, sondern datenbankunabhängige Abfragen formulieren. Dadurch ist codeigniter in der Lage mit den selben Abfragen unterschiedliche Datebank Management Systeme zu bedienen.\n\nroutes.php\nZuerst stellen wir fest, dass beim Aufruf einer Seite immer index.php, gefolgt von mehreren durch Schrägstriche getrennten Abschnitten als Adresse angegeben wird.\nDurch Anpassung der htaccess-Datei können wir auch die Anzeige der ausblenden, was wir aber der Einfachheit halber noch nicht tun.\nWenn wir also einen Seite mit Namen „news“ aufrufen wollen lautet die Adresse:\nhttp://www.mySite.ch/index.php/news\nTechnisch gesehen wird der entsprechende Controller aufgerufen. Was ein Controller ist erkläre ich gleich. Zuerst möchte ich mir mit Ihnen routes.php ansehen.\n\n\nDas Codeigniter-Framework arbeitet nach dem MVC-Prinzip. \nDieses Prinzip trennt die Daten von der Darstellung. Es gibt das Datenmodell, welches den Zugriff, die Manipulation und die Bereitstellung der benötigten Daten regelt. Häufig gibt es für ein Projekt nicht nur ein Model, sondern viele Modelle, meist für jedes Objekt ein eigenes Model.\nDie Darstellung der Daten, also das Aussehen der Webseite wird im View geregelt. Dort sorgen Platzhalter für das gewünschte Aussehen. Beim Aufruf des Views wird der View mit den nötigen Daten aus dem Model oder den Models versorgt.\nAllerdings kommunizieren Model und View nicht direkt miteinander. Diesen Teil übernimmt der Controller. Er holt die Daten aus dem Model und schickt sie in womöglich aufgearbeiteter Form an den View weiter. Im Falle von Codeigniter können wir uns die Seite aus mehreren View zusammenbauen. Einen für den Header, einen für den Hauptbereich und einen für den Footer. \nWir werden gleich am praktischen Beispiel sehen, was das alles bedeutet. \n'),
	(6,'Major Media Application','major-media-application','kjashdlgkj alkfjahsk jafgkjh fgkjahgök ajdfgökajdhfgl kdjfhkajd fgkjadhfög kajdhfögkjadyhf'),
	(7,'Media Application','media-application','kjashdlgkj alkfjahsk jafgkjh fgkjahgök ajdfgökajdhfgl kdjfhkajd fgkjadhfög kajdhfögkjadyhf'),
	(8,'Media Application','media-application','kjashdlgkj alkfjahsk jafgkjh fgkjahgök ajdfgökajdhfgl kdjfhkajd fgkjadhfög kajdhfögkjadyhf'),
	(9,'hat geklappt','hat-geklappt','ja');

/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `password`)
VALUES
	(1,'martin','12345'),
	(2,'simonne','54321'),
	(3,'wolfgang','00000');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
